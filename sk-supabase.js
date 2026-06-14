// ════════════════════════════════════════════════════════════
// Safety Korean — Supabase 동기화 (비파괴 레이어)
// ────────────────────────────────────────────────────────────
// ▸ 아래 url / anonKey 가 비어 있으면 아무 일도 안 함 → 앱은 지금처럼
//   localStorage 로만 동작합니다 (안전).
// ▸ 값을 채우면 가입·세션·진도가 localStorage 와 Supabase 에 "둘 다" 저장됩니다.
// ▸ 설정 방법은 SUPABASE_SETUP.md 참고.
// ════════════════════════════════════════════════════════════

const SK_SUPABASE_CONFIG = {
  url:     '',   // ← 예: 'https://xxxxxxxx.supabase.co'  (Project Settings → API → Project URL)
  anonKey: '',   // ← 예: 'eyJhbGciOi...'                  (Project Settings → API → anon public)
};

window.SKSync = (function () {
  let sb = null, initPromise = null;

  function enabled() {
    return !!(SK_SUPABASE_CONFIG.url && SK_SUPABASE_CONFIG.anonKey);
  }

  function loadSDK() {
    if (window.supabase) return Promise.resolve();
    return new Promise((resolve, reject) => {
      const s = document.createElement('script');
      s.src = 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2';
      s.onload = resolve;
      s.onerror = reject;
      document.head.appendChild(s);
    });
  }

  async function init() {
    if (!enabled()) return null;
    if (sb) return sb;
    if (!initPromise) {
      initPromise = (async () => {
        await loadSDK();
        sb = window.supabase.createClient(SK_SUPABASE_CONFIG.url, SK_SUPABASE_CONFIG.anonKey);
        return sb;
      })();
    }
    return initPromise;
  }

  // 실패해도 앱에 영향 없도록 모든 호출은 try/catch + fire-and-forget
  async function safe(fn) {
    if (!enabled()) return;
    try { const client = await init(); if (client) await fn(client); }
    catch (e) { console.warn('[SKSync]', e?.message || e); }
  }

  return {
    enabled,

    // 가입/프로필 저장
    upsertUser(u) {
      return safe(c => c.from('sk_users').upsert({
        id: u.id, username: u.username, name: u.name, phone: u.phone,
        lang: u.lang, type: u.type, company_code: u.companyCode || null,
        employee_num: u.employeeNum || null, notif_time: u.notifTime || null,
        visa_type: u.visaType || null, visa_expiry: u.visaExpiry || null,
        registered_at: u.registeredAt || new Date().toISOString(),
        password: u.password || null, // ⚠️ MVP: 평문. 운영 시 해시 필요 (SETUP 참고)
      }));
    },

    // 학습 진도(완료 일자/포인트/연속) 저장
    saveProgress(userId, done, points, streak) {
      if (!userId) return;
      return safe(c => c.from('sk_progress').upsert({
        user_id: userId, done: done || [], points: points || 0,
        streak: streak || 0, updated_at: new Date().toISOString(),
      }));
    },

    // 세션(퀴즈 응시 기록) 저장
    saveSession(s) {
      if (!s) return;
      return safe(c => c.from('sk_sessions').upsert({
        id: s.id, user_id: s.userId, day: s.day, score: s.score,
        total: s.total, pct: s.pct, passed: s.passed, duration: s.duration,
        company_code: s.companyCode || null, date: s.date,
      }));
    },
  };
})();

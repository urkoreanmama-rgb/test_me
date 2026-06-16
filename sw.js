// Service Worker — 안전 한국어 Safety Korean
const CACHE = 'sk-v10'; // 모바일: 리디렉트 응답 재구성 (cleanUrls 308로 페이지 안 열리던 문제 해결)
// HTML(내비게이션)은 precache 안 함 — cleanUrls 308 리디렉트를 캐시하면 안 되므로 런타임 캐시만 사용
const ASSETS = ['./manifest.json', './icon.svg', './sk-supabase.js'];

self.addEventListener('install', e => {
  // 개별 캐시(실패 무시) — 자산 하나가 실패해도 설치가 깨지지 않음
  e.waitUntil(
    caches.open(CACHE).then(c => Promise.all(ASSETS.map(a => c.add(a).catch(()=>{}))))
      .then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys().then(keys => Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k))))
      .then(() => self.clients.claim())
  );
});

// 리디렉트된 응답은 내비게이션에서 브라우저가 거부함 → 깨끗한(redirect 플래그 없는) 복사본으로 재구성
async function cleanRedirect(res){
  const body = await res.clone().blob();
  return new Response(body, { status: res.status, statusText: res.statusText, headers: res.headers });
}

// 네트워크 우선: 온라인이면 항상 최신을 받고, 실패(오프라인) 시에만 캐시 사용
self.addEventListener('fetch', e => {
  if(e.request.method !== 'GET') return;
  e.respondWith((async () => {
    try {
      let res = await fetch(e.request);
      if(res.redirected) res = await cleanRedirect(res);   // cleanUrls 308 대응
      if(res.ok && new URL(e.request.url).origin === location.origin){
        const copy = res.clone();
        caches.open(CACHE).then(c => c.put(e.request, copy)).catch(()=>{});
      }
      return res;
    } catch(err) {
      const cached = await caches.match(e.request);
      return cached || Response.error();
    }
  })());
});

// ── 알람 (Notification) ──
self.addEventListener('message', e => {
  if (e.data && e.data.type === 'SCHEDULE_NOTIF') {
    scheduleNotif(e.data.msUntil, e.data.userName);
  }
});

function scheduleNotif(ms, name) {
  setTimeout(() => {
    self.registration.showNotification('📚 오늘 한국어 공부 했어요?', {
      body: `${name}씨, 매일 5분! 안전 한국어 수업이 기다려요 🦺`,
      icon: './icon.svg',
      badge: './icon.svg',
      tag: 'study-reminder',
      renotify: true,
      actions: [{ action: 'open', title: '지금 공부하기' }],
      data: { url: './education.html' }
    });
    scheduleNotif(24 * 60 * 60 * 1000, name); // 매일 반복
  }, ms);
}

self.addEventListener('notificationclick', e => {
  e.notification.close();
  e.waitUntil(
    self.clients.matchAll({ type: 'window' }).then(clients => {
      if (clients.length > 0) { clients[0].focus(); return; }
      self.clients.openWindow('./education.html');
    })
  );
});

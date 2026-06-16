// Service Worker — 안전 한국어 Safety Korean
const CACHE = 'sk-v9'; // 디자인 개편: 오렌지 제거, 애플/앤트로픽 미니멀
const ASSETS = ['./education.html', './manifest.json', './icon.svg', './sk-supabase.js'];

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

// 네트워크 우선: 온라인이면 항상 최신을 받고, 실패(오프라인) 시에만 캐시 사용
self.addEventListener('fetch', e => {
  if(e.request.method !== 'GET') return;
  e.respondWith(
    fetch(e.request).then(res => {
      if(res && res.ok && new URL(e.request.url).origin === location.origin){
        const copy = res.clone();
        caches.open(CACHE).then(c => c.put(e.request, copy)).catch(()=>{});
      }
      return res;
    }).catch(() => caches.match(e.request))
  );
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

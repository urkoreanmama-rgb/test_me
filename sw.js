// Service Worker — 안전 한국어 Safety Korean
const CACHE = 'sk-v6'; // 동티모르어 콘텐츠 + Supabase 동기화 레이어
const ASSETS = ['./education.html', './manifest.json', './icon.svg', './sk-supabase.js'];

self.addEventListener('install', e => {
  e.waitUntil(caches.open(CACHE).then(c => c.addAll(ASSETS)).then(() => self.skipWaiting()));
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys().then(keys => Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k))))
      .then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', e => {
  e.respondWith(
    caches.match(e.request).then(cached => cached || fetch(e.request))
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

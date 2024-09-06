const CACHE_NAME = 'my-cache-v1';
const urlsToCache = [
    '/',
    '/styles/style.scss',
    '/scripts/index.js',
    '/images/yuriy-kovalev-nN1HSDtKdlw-unsplash.jpg',
    // أضف هنا أي ملفات أخرى تريد تخزينها في الكاش
];

self.addEventListener('install', (event) => {
    event.waitUntil(
        caches.open(CACHE_NAME)
            .then((cache) => {
                return cache.addAll(urlsToCache);
            })
    );
});

self.addEventListener('fetch', (event) => {
    event.respondWith(
        caches.match(event.request)
            .then((response) => {
                return response || fetch(event.request);
            })
    );
});

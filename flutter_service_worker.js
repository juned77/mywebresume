'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "4a4eb508f370146499a8701134a39a6e",
"/main.dart.js": "6f524b9f275f201e138015771e31e770",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/manifest.json": "e95acf67800f18fd7f3c19274fdb4b70",
"/assets/LICENSE": "3ccfae91a495db9305168255dbfde287",
"/assets/AssetManifest.json": "4bda24dc8dd905b291d6104198824d2f",
"/assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/images/banner.jpg": "ae0a0a03b5974b32a9ecef82e0c6d6b4",
"/assets/assets/images/banner1.jpg": "a3cec82dbff7f2c5f2bf428d89ba6b51",
"/assets/assets/images/developer.png": "282862f687cedbb64634acc16252c0ae",
"/assets/assets/images/my_pic.jpg": "9ee244f457e6adfee07960d79e4c2a69",
"/assets/assets/icons/lnk.png": "30c453b7f5fbdb09ea0cb42a5dc7a6e5",
"/assets/assets/icons/instagram.png": "d91dc7f6feae27f1e9d57bbc7681c76b",
"/assets/assets/icons/fb.png": "61a96c78b48018b48fbb6254a93b93f8",
"/assets/assets/icons/ins.png": "4a8c23476a7c20c5bee2a752a6f96e9e",
"/assets/assets/icons/linkedin.png": "5578d25f864f153febacbcb30c8f2d8a",
"/assets/assets/icons/facebook.png": "43f79d1aa170a9ad019e8a03e51b40eb"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});

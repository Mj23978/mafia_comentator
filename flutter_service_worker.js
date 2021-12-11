'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "canvaskit/canvaskit.js": "43fa9e17039a625450b6aba93baf521e",
"canvaskit/profiling/canvaskit.js": "f3bfccc993a1e0bfdd3440af60d99df4",
"canvaskit/profiling/canvaskit.wasm": "a9610cf39260f60fbe7524a785c66101",
"canvaskit/canvaskit.wasm": "04ed3c745ff1dee16504be01f9623498",
"version.json": "ee5be99859e41e753162e13c08ae3950",
"manifest.json": "cd697848a031ff01dd4f23553a320b86",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"main.dart.js": "9f24019d17ce00f4d255f15269fe8f35",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "22091dc1929973287f408e187539d30b",
"/": "22091dc1929973287f408e187539d30b",
"assets/FontManifest.json": "3ca64090b9da4a7c0a3988ea3cda93fc",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/AssetManifest.json": "9dd409184136394da6e0ca61b97bf33e",
"assets/assets/icons/note.svg": "068aaba9bc6b9966bc79c6a12cabac53",
"assets/assets/icons/hand.svg": "0580b2187b2c78c2fd10446fc38068ff",
"assets/assets/icons/gun.svg": "a711d00fb0a568a860507ae80ef86c73",
"assets/assets/icons/ff.svg": "7eaecf0d3463e1ce37a922bfdde871f9",
"assets/assets/icons/mask.svg": "68b58da9c61c3c0a8e58dfae2e054bd0",
"assets/assets/icons/clock.svg": "fd74284cca4741bffab1cab544ebedd4",
"assets/assets/flare/error_check.flr": "d9f54791d0d79935d22206966707e4b3",
"assets/assets/flare/space_coffee.riv": "43dda90ecd022ff832965d58175d1e8b",
"assets/assets/flare/game-controller.riv": "23d9d29167c46dd9e2570f5a3cfad6dd",
"assets/assets/flare/success_check.flr": "9d163bcc6f6b58566e0abde7761a67a0",
"assets/assets/flare/simple-tree.riv": "418280e6c29f1a6a7d414fdaffe64f47",
"assets/assets/flare/warning_check.flr": "ff4a110b8d905dedb4d4639a17399703",
"assets/assets/flare/loading.flr": "b6987a8e6de74062b8c002539d2d043e",
"assets/assets/flare/warbanner.riv": "eb3475ae2204aeab19d1c1c019aa252e",
"assets/assets/flare/info_check.flr": "f6b81c2aa3ae36418c13bfd36d11ac04",
"assets/assets/translations/en-US.json": "aacd7bd14f55275b06ceb008f75521e4",
"assets/assets/translations/languages.json": "fc8a83e4581225bfc703dce8130c2332",
"assets/assets/translations/fa-IR.json": "cfac51372c1698d0bb24ffb6d60912d0",
"assets/assets/images/rusty-bg.jfif": "98168a04abc9582cedf6296586f08d27",
"assets/assets/images/city.png": "b7d9a676057204d7a2272cdd70fac3f7",
"assets/assets/images/Background.jpg": "a87df1b4bdd833985178f8a0a9c24f39",
"assets/assets/images/last-station-bg-landscape.png": "1cc7ea95e130f0d3d9e1ea6a50c28aba",
"assets/assets/images/last_station_events_bg.jpg": "504a2b8933683d3e4b017fbc805966c5",
"assets/assets/images/mafia_rules_bg.jpg": "a1d356665f6f2a6bc871878565175de8",
"assets/assets/images/mafia-bg-portrait.jpg": "047cf0a658930ed11aeacc1ef88941ef",
"assets/assets/images/mafia-bg-landscape.jpg": "cf94a8300b2fc8f0e7bd3ff8084f909b",
"assets/assets/images/last-station-rules.jpg": "4c8226b4ab532cc8e3bd717802c978b3",
"assets/assets/images/mafia_heros/Private%2520Detective.jpg": "4e6324f88f642027e803a22688d09f21",
"assets/assets/images/mafia_heros/Alchemist.jpg": "80d1f2828f964bcbf1d65efb27932e3a",
"assets/assets/images/mafia_heros/Bully.jpg": "314ced6b32ace0713f9b261f18047c55",
"assets/assets/images/mafia_heros/Santa.jpg": "55f4ea010b3d62f9642671d7724b1c4c",
"assets/assets/images/mafia_heros/Witch.jpg": "173659dc56a796987265baf5c5675df3",
"assets/assets/images/mafia_heros/Doctor.jpg": "bb0617e80d9d33f7b9a4cb17ec4ebb59",
"assets/assets/images/mafia_heros/Armor%2520Man.jpg": "be015eb5a6524546637cf16efcbb2860",
"assets/assets/images/mafia_heros/Gangester.jpg": "447872963c713bac948d0f4aae44455d",
"assets/assets/images/mafia_heros/Bomber.jpg": "5211b9a9665e4085873a45473c26548c",
"assets/assets/images/mafia_heros/Colonel.jpg": "4b71730fcf9f971621ccebb1064e02d7",
"assets/assets/images/mafia_heros/Snow%2520Man.jpg": "5cecc188daa517b9409b5934c65993d5",
"assets/assets/images/mafia_heros/Messiah.jpg": "6bb75a9fb7cac9fc4e84f59ce3c508eb",
"assets/assets/images/mafia_heros/Shadow.jpg": "7f47fabb7aada2102773dae5432e3ee7",
"assets/assets/images/mafia_heros/Gunsmith.jpg": "ca226d5417504864dfd6d81215d3298b",
"assets/assets/images/mafia_heros/Soldier.jpg": "218cd2d31da8a7e233d8083d9ee827c1",
"assets/assets/images/mafia_heros/Sniper.jpg": "26043c265b70999f7562486a3f0c217e",
"assets/assets/images/mafia_heros/Cowboy.jpg": "a7fa1510e99dce02e085708f386d8db6",
"assets/assets/images/mafia_heros/Nurse.jpg": "8bbb73ac5fbb04a87ba3191ae14765b8",
"assets/assets/images/mafia_heros/Priest.jpg": "da27055f0cd311925c5c3f45b7a41ee4",
"assets/assets/images/mafia_heros/Inspecter.jpg": "8dcb6f73d584ca3b538c10dffd0fb27c",
"assets/assets/images/mafia_heros/godfather.jpg": "3a13a51aeda208fc4a664f49e39a56ff",
"assets/assets/images/mafia_heros/Judah.jpg": "7431c5840f538337782859c5bb6dab18",
"assets/assets/images/mafia_heros/Carer.jpg": "b2b4ee8dfa7805a077ffc181c5ba6e1a",
"assets/assets/images/mafia_heros/Psychiatrist.jpg": "d14137f157522509972f8e4bad5273d3",
"assets/assets/images/mafia_heros/Civilian.jpg": "4b0a6e454ce12f2653416e6494e10ce2",
"assets/assets/images/mafia_heros/Duelist.jpg": "8ef9f9937db8f9632bf792bade5a1985",
"assets/assets/images/mafia_heros/Prosecutor.jpg": "74b23217ecc024dc71e187c3358832cb",
"assets/assets/images/mafia_heros/Terrorist.jpg": "a0a45d9237066784dcae7fc63eadab88",
"assets/assets/images/heros/shokaran.jpg": "f38e0dbaf6155c635292b02c426d5469",
"assets/assets/images/heros/saket.jpg": "5b4a413808faca3e9d37f449ccb2e4ac",
"assets/assets/images/heros/deshne.jpg": "d8a487c884cc933fb8fe42ab1749b5a2",
"assets/assets/images/heros/ozbak.jpg": "98089185a7eeab542899ce62aacd088a",
"assets/assets/images/heros/gholchomagh.jpg": "b79a26539d5c82d58e82bd9634d10838",
"assets/assets/images/heros/makare.jpg": "7ef16dcd568740453b5ef8019b896000",
"assets/assets/images/heros/mokhber.jpg": "a080c880e5feb2cf76d7001c167f3a4d",
"assets/assets/images/heros/pir.jpg": "45afe9209cfe9e562295038ce630b047",
"assets/assets/images/heros/khalasi.jpg": "6b99e77eb89dd7be6f40f77ca2bd5e10",
"assets/assets/images/heros/rend.jpg": "daeba383a15324f710be553ecc3991fc",
"assets/assets/images/heros/tabib.jpg": "4c8ca29b7b1a202955b8789c623ed8a4",
"assets/assets/images/heros/dana.jpg": "04a4d0cc9155ebdf37a44bdfc8c74674",
"assets/assets/images/heros/marmoz.jpg": "faa2c58421baa0ccc493d98cdf98d72b",
"assets/assets/images/heros/namir.jpg": "10f13c03f44a64aa64c6a5a936ca5b85",
"assets/assets/images/heros/motamed.jpg": "51dbdb986b61295f32211607a71ed7fe",
"assets/assets/images/heros/ablah.jpg": "4c80e1df8f1f5c161ef5b23d34447c2f",
"assets/assets/images/last-station-bg-portraite.jpg": "42d716edf4daaff3c30b4c2bf7d44a44",
"assets/NOTICES": "dcb8af19a6592b59830382e10b3a6d15",
"assets/packages/easy_localization/i18n/en-US.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/easy_localization/i18n/ar-DZ.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/en.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/easy_localization/i18n/ar.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/ionicons/fonts/Ionicons.ttf": "0cdf2a324d5c21f08c7f446476aa2ee3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

const DEMO_SITES = {
  "ahmed.sitoprima.online": "/ahmed/index.html",
  "marco.sitoprima.online": "/marco/index.html",
};

export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    const host = url.hostname.toLowerCase();
    const demoPath = DEMO_SITES[host];

    if (demoPath) {
      return env.ASSETS.fetch(new URL(demoPath, url.origin));
    }

    return env.ASSETS.fetch(request);
  },
};

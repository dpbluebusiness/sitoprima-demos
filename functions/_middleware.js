const DEMO_SITES = {
  "ahmed.sitoprima.online": "/ahmed/index.html",
  "marco.sitoprima.online": "/marco/index.html",
};

export async function onRequest(context) {
  const url = new URL(context.request.url);
  const demoPath = DEMO_SITES[url.hostname.toLowerCase()];

  if (demoPath) {
    return context.env.ASSETS.fetch(new URL(demoPath, url.origin));
  }

  return context.next();
}

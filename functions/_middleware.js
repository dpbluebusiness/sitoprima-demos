export async function onRequest(context) {
  const url = new URL(context.request.url);
  const host = url.hostname.toLowerCase();

  if (host === "ahmed.sitoprima.online") {
    const assetUrl = new URL("/ahmed/index.html", url.origin);
    return context.env.ASSETS.fetch(assetUrl);
  }

  return context.next();
}

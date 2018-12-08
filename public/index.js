const functions = require('firebase-functions');
const fs = require('fs');
const xss = require('xss');
const i18n = require('./i18n/locale-en.json')

/* Trigger: /demo-xxxx  */
/* 詳細ページへの直接アクセスは、metaタグを埋め込んでからindex.htmlを返す */
exports.returnWithOGP = functions.https.onRequest((req, res) => {
  res.set('Cache-Control', 'public, max-age=86400, s-maxage=2592000');

  const url = req.path.match(/\/demo-([^\/\?]*)/)[1];
  const title = url.charAt(0).toUpperCase() + url.slice(1)

  fs.readFile('./embed.html', 'utf8', function (err, templateHtml) {
    if (err) {
      res.status(500).send(err);
    }

    const responseHtml = templateHtml
      .replace(/\<title>(.*)<\/title>/g, `<title>${xss(title)} | Semantic UI Riot</title>`)
      .replace(/\{{title}}/g, xss(title))
      .replace(/\{{url}}/g, xss(url))
      .replace(/\{{description}}/g, i18n[url].description)
      ;

    res.status(200).send(responseHtml);
  })
});
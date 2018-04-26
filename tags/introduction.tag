<root>
  <h1 class="ui header">
    Semantic UI Riot
    <div class="sub header">Semantic-UI-Riot integration.</div>
  </h1>
  <h2 class="ui dividing header" id="introduction">Introduction</h2>
  <p>
    Semantic UI Riot is
    <a href="https://semantic-ui.com/">Riot</a> integration for
    <a href="https://semantic-ui.com/">Semantic UI</a>.
    <div class="ui images">
      <a href="https://semantic-ui.com/">
        <img class="ui mini image" src="https://semantic-ui.com/images/logo.png" />
      </a>
      <a href="http://riotjs.com/">
        <img class="ui tiny image" src="http://riotjs.com/img/logo/riot120x.png" />
      </a>
    </div>

  </p>
  <h2 class="ui dividing header" id="started">Getting started</h2>

  <section>
    <h3 class="ui header" id="tag">1) Use in tag file</h3>
    <h4>index.html</h4>
    <div class="ui inverted segment">
      <pre class="prettyprint">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
  &lt;link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.css"&gt;
&lt;/head&gt;
&lt;body&gt;
  &lt;sample>&lt;/sample&gt;
  &lt;script type="riot/tag" src="sample.tag">&lt;/script&gt;
  &lt;script src="https://cdn.jsdelivr.net/npm/riot@3.9/riot+compiler.min.js">&lt;/script&gt;
  &lt;script src="https://cdn.jsdelivr.net/npm/semantic-ui-riot/dist/semantic-ui-riot.min.js">&lt;/script&gt;
  &lt;script&gt;
    riot.mount('sample')
  &lt;/script&gt;
&lt;/body&gt;
&lt;/html&gt;
    </pre>
    </div>
    <h4>sample.tag</h4>
    <div class="ui inverted segment">
      <pre class="prettyprint"><code>
      <sample>
        <su-checkbox>Make my profile visible</su-checkbox>
      </sample>
    </code></pre>
    </div>
  </section>

  <section>
    <h3 class="ui header" id="webpack">2) Use with webpack</h3>

    <div class="ui inverted segment">
      <pre class="prettyprint"><code>
      npm install --save semantic-ui-riot
    </code></pre>
    </div>

    <h4>index.js</h4>
    <div class="ui inverted segment">
      <pre class="prettyprint"><code>
        import riot from 'riot'
        import 'semantic-ui-riot'
        import './app.tag'
        riot.mount('app')
    </code></pre>
    </div>

    <h4>webpack.config.js</h4>
    <div class="ui inverted segment">
      <pre class="prettyprint"><code>
      module.exports = {
        module: {
          rules: [
            {
              test: /\.tag$/,
              exclude: /node_modules/,
              use: 'riot-tag-loader'
            }
          ]
        },
        plugins: [
          new webpack.LoaderOptionsPlugin({ options: {} }),
          new webpack.ProvidePlugin({
            riot: 'riot',
          })
        ]
      };
    </code></pre>
    </div>

    <h4>index.html</h4>

    <div class="ui inverted segment">
      <pre class="prettyprint"><code>
      <!DOCTYPE html>
      <html>
        <head>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.css">
        </head>
        <body>
          <sample></sample>
          <script src="main.js"></script>
        </body>
        </html>
      </code></pre>
    </div>

    <h4>sample.tag</h4>
    <div class="ui inverted segment">
      <pre class="prettyprint"><code>
        <sample>
          <su-checkbox>Make my profile visible</su-checkbox>
        </sample>
      </code></pre>
    </div>
  </section>

  <style>
    section {
      margin: 2.5rem 0;
    }
  </style>

</root>
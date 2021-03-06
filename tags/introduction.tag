<introduction>
  <h2 class="ui dividing header" id="introduction">Introduction</h2>
  <p>
    Semantic UI Riot is a set of <a href="https://v3.riotjs.now.sh/">Riot</a> components based on
    <a href="https://semantic-ui.com/">Semantic UI</a> markup and CSS.<br />
    As a result no dependency on jQuery or Semantic UI's JavaScript is required.
    <div class="ui images">
      <a href="https://semantic-ui.com/">
        <img class="ui mini image" src="https://semantic-ui.com/images/logo.png" />
      </a>
      <a href="https://v3.riotjs.now.sh/">
        <img class="ui tiny image" src="https://v3.riotjs.now.sh/img/logo/riot120x.png" />
      </a>
    </div>

  </p>
  <h2 class="ui dividing header" id="started">Getting started</h2>

  <section>
    <h3 class="ui header" id="tag">1) Use in tag file</h3>
    <h4>index.html</h4>
    <div class="ui inverted segment">
      <pre class="language-markup"><code>
        <!DOCTYPE html>
        <html>
        <head>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
        </head>
        <body>
          <sample></sample>
          <script type="riot/tag" src="sample.tag"></script>
          <script src="https://cdn.jsdelivr.net/npm/riot@3.9/riot+compiler.min.js"></script> 
          <script src="https://cdnjs.cloudflare.com/ajax/libs/date-fns/1.29.0/date_fns.min.js"></script>
          <script src="https://cdn.jsdelivr.net/npm/semantic-ui-riot/dist/semantic-ui-riot.min.js"></script>
          <script>
            riot.mount('sample')
          </script>
        </body>
        </html>
      </code></pre>
    </div>
    <h4>sample.tag</h4>
    <div class="ui inverted segment">
      <pre class="language-markup"><code>
      <sample>
        <su-checkbox>Make my profile visible</su-checkbox>
      </sample>
    </code></pre>
    </div>
  </section>

  <section>
    <h3 class="ui header" id="webpack">2) Use with webpack</h3>

    <div class="ui inverted segment">
      <pre class="language-bash"><code>
        npm install --save semantic-ui-riot
      </code></pre>
    </div>

    <h4>index.js</h4>
    <div class="ui inverted segment">
      <pre class="language-javascript"><code>
        import riot from 'riot'
        import 'semantic-ui-riot'
        import './sample.tag'
        riot.mount('sample')
      </code></pre>
    </div>

    <h4>webpack.config.js</h4>
    <div class="ui inverted segment">
      <pre class="language-javascript"><code>
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
              riot: 'riot'
            })
          ]
        };
      </code></pre>
    </div>

    <h4>index.html</h4>

    <div class="ui inverted segment">
      <pre class="language-markup"><code>
        <!DOCTYPE html>
        <html>
        <head>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
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
      <pre class="language-markup"><code>
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

    #introduction {
      margin-top: calc(2rem - 0.142857em);
    }
  </style>

</introduction>
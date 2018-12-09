const webpack = require('webpack');
const escapeHtml = require('escape-html')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const CopyWebpackPlugin = require('copy-webpack-plugin')
require("@babel/polyfill");

const escapeCode = code => {
  code = escapeHtml(code).replace(/{/g, '\\{').replace(/}/g, '\\}')
  var minLength = -1
  code.split("\n").forEach(element => {
    if (ltrim(element).length === 0) {
      return;
    }
    var length = element.length - ltrim(element).length;
    if (minLength === -1 || minLength > length) {
      minLength = length;
    }
  });
  return code.split("\n").filter((element, index) => {
    return !(index === 0 && ltrim(element).length === 0);
  }).map(element => {
    return element.substring(minLength)
  }).join("\n");
}

const ltrim = target => {
  return target.replace(/^\s+/, "");
}

const config = {
  entry: ["@babel/polyfill", "./src/index.js"],
  output: {
    path: __dirname + '/'
  },
  module: {
    rules: [
      {
        test: /\.tag$/,
        exclude: /node_modules/,
        use: [
          {
            loader: 'riot-tag-loader',
            options: {
              type: 'es6', // transpile the riot tags using babel
              hot: true
            }
          },
          {
            loader: 'xmp-escape-loader',
            options: {
              tag: '<code>',
              escape: escapeCode
            }
          },
          {
            loader: 'eslint-loader',
            options: {
              fix: true,
              emitWarning: true,
            }
          },
        ]
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: ['babel-loader']
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      },
    ]
  },
  plugins: [
    new webpack.LoaderOptionsPlugin({ options: {} }),
    new webpack.ProvidePlugin({
      riot: 'riot'
    }),
    new CopyWebpackPlugin(['images/**/*.png', 'images/**/manifest.json', 'images/**/*.ico', 'i18n/**/*'])
  ]
};

module.exports = (env, argv) => {
  if (argv.mode === 'development') {
    config.devtool = 'inline-source-map'
  }
  if (argv.mode === 'production') {
    const baseUrl = 'https://semantic-ui-riot.firebaseapp.com'
    config.plugins.push(new HtmlWebpackPlugin({
      filename: 'index.html',
      template: 'template.html',
      meta: {
        'og-type': { id: 'og-type', property: 'og:type', content: 'website' },
        'og-title': { id: 'og-title', property: 'og:title', content: 'Semantic UI Riot' },
        'og-url': { id: 'og-url', property: 'og:url', content: baseUrl },
        'og-description': {
          id: 'og-description', property: 'og:description',
          content: 'Semantic UI Riot is Riot integration for Semantic UI.'
        },
        'description': {
          id: 'description', name: 'description',
          content: 'Semantic UI Riot is Riot integration for Semantic UI.'
        },
        'keywords': { id: 'keywords', name: 'keywords', content: 'semantic-ui, riot, semantic-ui-riot, Semantic UI Riot, component' },
        'google-site-verification': { name: 'google-site-verification', content: 'umLyMBAa2da8o7yNerzQHIFEhextnHXrNUsEQ5d6OS4' }
      }
    }))
    config.plugins.push(new HtmlWebpackPlugin({
      filename: 'embed.html',
      template: 'template.html',
      meta: {
        'og-type': { id: 'og-type', property: 'og:type', content: 'article' },
        'og-title': { id: 'og-title', property: 'og:title', content: '{{title}} | Semantic UI Riot' },
        'og-url': { id: 'og-url', property: 'og:url', content: `${baseUrl}/{{url}}` },
        'og-description': { id: 'og-description', property: 'og:description', content: '{{description}}' },
        'description': { id: 'description', name: 'description', content: '{{description}}' },
        'keywords': { id: 'keywords', name: 'keywords', content: 'semantic-ui, riot, semantic-ui-riot, Semantic UI Riot, component, {{title}}' }
      }
    }))
    config.output.path = __dirname + '/public'
  }
  return config;
};
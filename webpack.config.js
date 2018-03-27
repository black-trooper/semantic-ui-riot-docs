const webpack = require('webpack');
const path = require('path');
const escapeHtml = require('escape-html')

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

module.exports = {
  output: {
    path: __dirname + '/docs/'
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
      }
    ]
  },
  devtool: 'source-map',
  plugins: [
    new webpack.LoaderOptionsPlugin({ options: {} }),
    new webpack.ProvidePlugin({
      riot: 'riot',
    })
  ]
};
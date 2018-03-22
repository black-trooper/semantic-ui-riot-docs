const webpack = require('webpack');
const path = require('path');

module.exports = {
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
  devtool: 'source-map'
};
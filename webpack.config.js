const path = require('path');

module.exports = {
  mode: 'development',
  devtool: 'source-map', // or 'inline-source-map'
  entry: './js-interpreter.js',
  output: {
    filename: 'interpreter.umd.js',
    path: path.resolve(__dirname),
    library: 'Interpreter',
    libraryTarget: 'umd',
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: [path.resolve(__dirname, 'js-interpreter')],
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env'],
          },
        },
      },
    ],
  },
  resolve: {
    fallback: {
      "vm": require.resolve("vm-browserify"),
    },
  },
};

const elmSource = __dirname + '/web/static/js/elm';
var ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  entry: {
    app: [
      "./web/static/js/app.js",
      "./web/static/js/elm/Main.elm"
    ]
  },
  output: {
    path: "./priv/static/js",
    filename: "app.js"
  },
  module: {
    loaders: [
      {
        test: /\.elm$/,
        exclude: /(node_modules|elm-stuff)/,
        loader: `elm-webpack?cwd=${elmSource}`
      },
      {
        test: /\.js$/,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel',
        query: {
          presets: ['es2015']
        }
      },
      {
        test: /\.scss$/,
        loader: ExtractTextPlugin.extract('css!sass')
      }
    ]
  },
  plugins: [
    new ExtractTextPlugin('../css/app.css', {
      allChunks: true
    })
  ]
};

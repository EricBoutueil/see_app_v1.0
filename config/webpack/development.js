const environment = require('./environment')

// module.exports = environment.toWebpackConfig()


module.exports = {
mode: 'development'
  plugins: [
    new webpack.NamedModulesPlugin(),
    new webpack.DefinePlugin({ "process.env.NODE_ENV": JSON.stringify("development") }),
  ]
}

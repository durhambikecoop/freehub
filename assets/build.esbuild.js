const ImportGlobPlugin = require('esbuild-plugin-import-glob')

require('esbuild').build({
  entryPoints: ['./src/index.js'],
  bundle: true,
  outdir: '../app/assets/builds',
  publicPath: 'assets',
  sourcemap: true,
  plugins: [
    ImportGlobPlugin.default()
  ]
})

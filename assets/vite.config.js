import { defineConfig } from 'vite'

export default defineConfig({
  root: './src',
  build: {
    outDir: '../../public',
    copyPublicDir: false,
    rollupOptions: {
      input: {
        'index': './src/index.js'
      }
    },
    manifest: true
  }}
)
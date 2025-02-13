import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  build: {
    outDir: 'dist', // le dossier de sortie de l'app
    minify: 'esbuild', // pour une minification efficace
    chunkSizeWarningLimit: 1000, // augmenter ou diminuer la limite si nécessaire
  }
})

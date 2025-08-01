// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  // Für lokale Entwicklung auskommentiert
  // site: 'https://USERNAME.github.io', 
  // base: '/REPOSITORY_NAME', 
  
  // Für GitHub Pages Deployment, ersetzen Sie die Kommentare mit:
  // site: 'https://IHR_USERNAME.github.io',
  // base: '/IHR_REPOSITORY_NAME',
  
  output: 'static',
  vite: {
    plugins: [tailwindcss()]
  }
});
// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  site: 'https://USERNAME.github.io', // Ersetzen Sie USERNAME mit Ihrem GitHub-Benutzernamen
  base: '/REPOSITORY_NAME', // Ersetzen Sie REPOSITORY_NAME mit dem Namen Ihres Repositorys
  output: 'static',
  vite: {
    plugins: [tailwindcss()]
  }
});
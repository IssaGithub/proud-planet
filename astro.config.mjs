// @ts-check
import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
  // GitHub Pages Konfiguration (aktiviert für Deployment)
  site: 'https://izayt.github.io', 
  base: '/Olive_Gashi', 
  
  output: 'static',
  integrations: [tailwind()]
});
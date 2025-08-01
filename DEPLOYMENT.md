# 🚀 GitHub Pages Deployment Anleitung

Diese Anleitung führt Sie durch den Prozess der automatischen Bereitstellung Ihres Olive Gold Shops auf GitHub Pages.

## 📋 Voraussetzungen

- Ein GitHub-Konto
- Git installiert auf Ihrem Computer
- Das Olive Gold Projekt auf Ihrem lokalen Computer

## 🔧 Setup-Schritte

### 1. GitHub Repository erstellen

1. Gehen Sie zu [GitHub](https://github.com) und loggen Sie sich ein
2. Klicken Sie auf **"New Repository"**
3. Geben Sie einen Namen ein (z.B. `olive-gold-shop`)
4. Setzen Sie das Repository auf **"Public"** (für GitHub Pages kostenlos)
5. Klicken Sie auf **"Create Repository"**

### 2. Astro-Konfiguration anpassen

Öffnen Sie `astro.config.mjs` und passen Sie die URLs an:

```javascript
export default defineConfig({
  site: 'https://IHR_USERNAME.github.io',
  base: '/IHR_REPOSITORY_NAME', // z.B. '/olive-gold-shop'
  output: 'static',
  vite: {
    plugins: [tailwindcss()]
  }
});
```

**Beispiel:**
- Wenn Ihr GitHub-Username `johndoe` ist
- Und Ihr Repository `olive-gold-shop` heißt
- Dann wird Ihre URL: `https://johndoe.github.io/olive-gold-shop`

### 3. Projekt zu GitHub pushen

```bash
# Im proud-planet Verzeichnis:
git init
git add .
git commit -m "Initial commit: Olive Gold Shop"
git branch -M main
git remote add origin https://github.com/IHR_USERNAME/IHR_REPOSITORY_NAME.git
git push -u origin main
```

### 4. GitHub Pages aktivieren

1. Gehen Sie zu Ihrem Repository auf GitHub
2. Klicken Sie auf **"Settings"** (oben rechts)
3. Scrollen Sie zu **"Pages"** (linke Seitenleiste)
4. Unter **"Source"** wählen Sie **"GitHub Actions"**
5. Die Actions-Workflow-Datei wird automatisch erkannt

### 5. Erste Bereitstellung

Nach dem Push wird automatisch die GitHub Action ausgeführt:

1. Gehen Sie zu **"Actions"** Tab in Ihrem Repository
2. Sie sehen den Workflow **"Deploy to GitHub Pages"** laufen
3. Nach ~3-5 Minuten ist Ihre Website live!

## 🌐 Zugriff auf Ihre Website

Nach erfolgreichem Deployment ist Ihre Website verfügbar unter:
**`https://IHR_USERNAME.github.io/IHR_REPOSITORY_NAME`**

## 🔄 Automatische Updates

Jedes Mal, wenn Sie Änderungen zum `main` Branch pushen, wird Ihre Website automatisch neu deployed:

```bash
# Änderungen machen
git add .
git commit -m "Beschreibung der Änderungen"
git push origin main
```

## ⚙️ Alternative Konfigurationen

### Für Root-Domain (USERNAME.github.io)

Wenn Sie Ihr Repository `USERNAME.github.io` nennen, verwenden Sie diese Konfiguration:

```javascript
export default defineConfig({
  site: 'https://IHR_USERNAME.github.io',
  // base: '/', // Entfernen oder auskommentieren
  output: 'static',
  vite: {
    plugins: [tailwindcss()]
  }
});
```

### Für Custom Domain

Wenn Sie eine eigene Domain verwenden möchten:

1. Erstellen Sie eine `CNAME` Datei im `public/` Ordner mit Ihrer Domain
2. Konfigurieren Sie DNS-Einstellungen bei Ihrem Domain-Anbieter
3. Aktualisieren Sie die `site` Konfiguration:

```javascript
export default defineConfig({
  site: 'https://www.ihre-domain.de',
  output: 'static',
  vite: {
    plugins: [tailwindcss()]
  }
});
```

## 🛠️ Troubleshooting

### Problem: 404-Fehler auf GitHub Pages

**Lösung:** Überprüfen Sie die `base` Konfiguration in `astro.config.mjs`

### Problem: CSS/JS-Dateien werden nicht geladen

**Lösung:** Stellen Sie sicher, dass die `site` URL korrekt ist

### Problem: Workflow schlägt fehl

**Lösung:** 
1. Überprüfen Sie die Actions-Logs auf GitHub
2. Stellen Sie sicher, dass GitHub Pages in den Repository-Einstellungen aktiviert ist
3. Überprüfen Sie die Permissions in der workflow-Datei

## 📊 Monitoring

Nach dem Deployment können Sie überwachen:

- **GitHub Actions:** Deployment-Status und Logs
- **GitHub Pages:** Traffic und Performance-Statistiken
- **Repository Insights:** Besucher und Klone

## 🔐 Sicherheit

- **HTTPS:** GitHub Pages verwendet automatisch HTTPS
- **Automatische Updates:** Sicherheitsupdates durch GitHub Actions
- **Environment Secrets:** Für API-Keys und sensible Daten

## 📈 Performance-Optimierung

Ihr Astro-Shop ist bereits optimiert für:
- ✅ Static Site Generation (SSG)
- ✅ Automatische CSS/JS-Minification
- ✅ Image Optimization
- ✅ CDN-Bereitstellung durch GitHub

---

**🎉 Herzlichen Glückwunsch! Ihr Olive Gold Shop ist jetzt live auf GitHub Pages!**

Bei Fragen zur Bereitstellung, besuchen Sie die [GitHub Pages Dokumentation](https://docs.github.com/en/pages) oder die [Astro Deployment Docs](https://docs.astro.build/en/guides/deploy/github/). 
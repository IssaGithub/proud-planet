#!/bin/bash

# 🚀 Olive Gold Shop - GitHub Deployment Script
# Dieses Script automatisiert das Initial-Deployment zu GitHub

echo "🫒 Olive Gold Shop - GitHub Deployment"
echo "======================================"

# Überprüfe ob Git installiert ist
if ! command -v git &> /dev/null; then
    echo "❌ Git ist nicht installiert. Bitte installieren Sie Git zuerst."
    exit 1
fi

# Frage nach GitHub Details
echo ""
read -p "📝 GitHub Username: " GITHUB_USERNAME
read -p "📝 Repository Name (z.B. olive-gold-shop): " REPO_NAME

if [ -z "$GITHUB_USERNAME" ] || [ -z "$REPO_NAME" ]; then
    echo "❌ Username und Repository Name sind erforderlich."
    exit 1
fi

# Aktualisiere Astro Config
echo ""
echo "⚙️  Aktualisiere Astro-Konfiguration..."

# Backup der ursprünglichen Datei
cp astro.config.mjs astro.config.mjs.backup

# Ersetze Platzhalter in astro.config.mjs
sed -i.bak "s/USERNAME/$GITHUB_USERNAME/g" astro.config.mjs
sed -i.bak "s/REPOSITORY_NAME/$REPO_NAME/g" astro.config.mjs

echo "✅ Astro-Konfiguration aktualisiert"
echo "   Site: https://$GITHUB_USERNAME.github.io"
echo "   Base: /$REPO_NAME"

# Git Repository initialisieren
echo ""
echo "📦 Initialisiere Git Repository..."

if [ ! -d ".git" ]; then
    git init
    echo "✅ Git Repository initialisiert"
else
    echo "✅ Git Repository bereits vorhanden"
fi

# Dateien hinzufügen
echo ""
echo "📁 Füge Dateien hinzu..."
git add .

# Erstelle Initial Commit
echo "💾 Erstelle Initial Commit..."
git commit -m "🫒 Initial commit: Olive Gold Shop

- Premium Olivenöl Online-Shop
- Astro.js + Tailwind CSS
- Responsive Design
- GitHub Pages Ready
- 6 Premium Produktkategorien
- Kontaktformular
- SEO-optimiert

Ready for deployment to GitHub Pages!"

# Setze main branch
git branch -M main

# Füge Remote Origin hinzu
REPO_URL="https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
echo ""
echo "🔗 Füge Remote Repository hinzu..."
echo "   $REPO_URL"

if git remote get-url origin &> /dev/null; then
    git remote set-url origin $REPO_URL
    echo "✅ Remote Origin aktualisiert"
else
    git remote add origin $REPO_URL
    echo "✅ Remote Origin hinzugefügt"
fi

# Push zu GitHub
echo ""
echo "🚀 Pushe zu GitHub..."
echo "   (Sie werden nach Ihren GitHub-Anmeldedaten gefragt)"

if git push -u origin main; then
    echo ""
    echo "🎉 Deployment erfolgreich!"
    echo "======================================"
    echo ""
    echo "📋 Nächste Schritte:"
    echo "1. Gehen Sie zu: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
    echo "2. Klicken Sie auf 'Settings' → 'Pages'"
    echo "3. Wählen Sie 'GitHub Actions' als Source"
    echo "4. Warten Sie ~5 Minuten"
    echo ""
    echo "🌐 Ihre Website wird verfügbar sein unter:"
    echo "   https://$GITHUB_USERNAME.github.io/$REPO_NAME"
    echo ""
    echo "📊 Überwachen Sie das Deployment unter:"
    echo "   https://github.com/$GITHUB_USERNAME/$REPO_NAME/actions"
    echo ""
else
    echo ""
    echo "❌ Push fehlgeschlagen!"
    echo "💡 Stellen Sie sicher, dass:"
    echo "   - Das Repository auf GitHub existiert"
    echo "   - Sie die richtigen Zugangsdaten haben"
    echo "   - Das Repository public ist (für kostenloses GitHub Pages)"
    echo ""
    echo "🔄 Versuchen Sie erneut mit: git push -u origin main"
fi

echo ""
echo "📖 Detaillierte Anleitung: Siehe DEPLOYMENT.md"
echo "🆘 Support: Siehe README.md" 
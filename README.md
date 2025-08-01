# 🫒 Olive Gold - Premium Olivenöl Shop

Ein exklusiver Online-Shop für hochwertiges griechisches Olivenöl, entwickelt mit **Astro.js** und **Tailwind CSS**.

## ✨ Features

- **🎨 Hochwertiges Design**: Elegante und moderne Benutzeroberfläche mit Premium-Ästhetik
- **📱 Responsive Design**: Optimiert für alle Geräte (Desktop, Tablet, Mobile)
- **🚀 Astro.js**: Blitzschnelle Performance mit Static Site Generation
- **🎯 Tailwind CSS**: Utility-first CSS Framework für konsistentes Styling
- **🛒 Shop-Funktionalität**: Produktkatalog mit Filterung und Warenkorb
- **📧 Kontaktformular**: Interaktives Kontaktformular mit Validierung
- **🔍 SEO-optimiert**: Optimiert für Suchmaschinen

## 🏗️ Projektstruktur

```
proud-planet/
├── src/
│   ├── components/          # Wiederverwendbare UI-Komponenten
│   │   ├── Header.astro     # Navigation und Header
│   │   ├── Footer.astro     # Footer mit Links und Kontaktinfo
│   │   └── ProductDetail.astro  # Produktdetail-Komponente
│   ├── layouts/             # Layout-Templates
│   │   └── Layout.astro     # Haupt-Layout mit Meta-Tags und Fonts
│   ├── pages/               # Seiten der Website
│   │   ├── index.astro      # Homepage mit Hero und Produktvorschau
│   │   ├── shop.astro       # Produktkatalog mit Filterung
│   │   └── contact.astro    # Kontaktseite mit Formular
│   └── styles/              # CSS-Dateien
│       └── global.css       # Globale Styles und Tailwind
├── public/                  # Statische Assets
├── astro.config.mjs         # Astro-Konfiguration
├── tailwind.config.js       # Tailwind-Konfiguration
├── package.json             # Abhängigkeiten und Scripts
└── tsconfig.json           # TypeScript-Konfiguration
```

## 🚀 Installation & Setup

### Voraussetzungen

- Node.js (Version 18 oder höher)
- npm oder yarn

### Installation

1. **Repository klonen**
   ```bash
   git clone [repository-url]
   cd olive-gold-shop
   ```

2. **Abhängigkeiten installieren**
   ```bash
   npm install
   ```

3. **Entwicklungsserver starten**
   ```bash
   npm run dev
   ```

4. **Website öffnen**
   Öffnen Sie [http://localhost:4321](http://localhost:4321) in Ihrem Browser

### Verfügbare Scripts

```bash
# Entwicklungsserver starten
npm run dev

# Projekt für Produktion bauen
npm run build

# Produktions-Build lokal testen
npm run preview

# TypeScript-Typprüfung
npm run astro check
```

## 🎨 Design-System

### Farbpalette

- **Primary**: Amber-Töne (#F59E0B, #D97706, #B45309)
- **Neutral**: Stone-Töne für Text und Hintergründe
- **Accent**: Grün für Bio-Produkte, Lila für Limited Editions

### Typografie

- **Headlines**: Playfair Display (Serif)
- **Body Text**: Inter (Sans-serif)
- **Buttons**: Inter Semi-bold

### Komponenten

- **Buttons**: Abgerundete Ecken mit Hover-Effekten
- **Cards**: Weiche Schatten und Hover-Animationen
- **Navigation**: Sticky Header mit Backdrop-Blur
- **Forms**: Fokus-States mit Amber-Akzenten

## 📦 Produktkatalog

Der Shop enthält verschiedene Olivenöl-Kategorien:

- **Classic**: Traditionelle Olivenöle für den täglichen Gebrauch
- **Bio**: Biologisch zertifizierte Premium-Öle
- **Limited**: Exklusive Editionen und Raritäten
- **Intense**: Kräftige Öle für deftige Gerichte
- **Mild**: Sanfte Öle für empfindliche Gaumen

### Produktmerkmale

- Hochauflösende Produktbilder (3D-Style)
- Detaillierte Beschreibungen und Spezifikationen
- Preisangaben mit Sale-Markierungen
- Feature-Tags (Bio, Kaltgepresst, etc.)
- Bewertungssystem (5 Sterne)

## 🛒 E-Commerce Features

### Produktkatalog
- **Filterung**: Nach Kategorie, Preis, Features
- **Sortierung**: Preis, Alphabet, Beliebtheit
- **Suche**: Schnelle Produktsuche
- **Pagination**: Für große Produktmengen

### Produktdetails
- **Bildergalerie**: Mehrere Ansichten pro Produkt
- **Spezifikationen**: Technische Details und Inhaltsstoffe
- **Bewertungen**: Kundenfeedback und Ratings
- **Verwandte Produkte**: Cross-Selling-Empfehlungen

### Warenkorb
- **Add to Cart**: Einfaches Hinzufügen von Produkten
- **Mengenauswahl**: Flexible Bestellmengen
- **Zwischenspeicherung**: LocalStorage für Warenkorbpersistenz
- **Checkout-Flow**: Mehrstufiger Bestellprozess

## 📧 Kontakt & Support

### Kontaktformular
- **Validierung**: Client-side und Server-side Validation
- **Kategorien**: Verschiedene Anfrage-Typen
- **Datenschutz**: DSGVO-konforme Datenverarbeitung
- **Bestätigung**: Automatische Bestätigungsmails

### Kundenservice
- **Telefon-Support**: Mo-Fr 9:00-18:00 Uhr
- **E-Mail-Support**: Antwort innerhalb 24h
- **FAQ-Bereich**: Häufige Fragen und Antworten
- **Live-Chat**: Für schnelle Hilfe (geplant)

## 🔧 Technische Details

### Performance
- **Static Site Generation**: Vorgenerierte HTML-Seiten
- **Image Optimization**: Automatische Bildoptimierung
- **CSS Purging**: Entfernung ungenutzter CSS-Regeln
- **Lazy Loading**: Verzögertes Laden von Bildern

### SEO
- **Meta Tags**: Optimierte Title und Description
- **Structured Data**: Schema.org Markup
- **Sitemap**: Automatisch generierte XML-Sitemap
- **Open Graph**: Social Media Optimierung

### Accessibility
- **ARIA Labels**: Barrierefreie Navigation
- **Keyboard Navigation**: Vollständige Tastaturunterstützung
- **Color Contrast**: WCAG 2.1 konform
- **Screen Reader**: Optimiert für Hilfstechnologien

## 🚢 Deployment

### Build für Produktion

```bash
# Projekt bauen
npm run build

# Build-Ordner wird erstellt: dist/
```

### Deployment-Optionen

- **Vercel**: Automatisches Deployment via Git
- **Netlify**: Drag & Drop oder Git Integration
- **GitHub Pages**: Kostenloser Static Hosting
- **AWS S3 + CloudFront**: Enterprise-Level CDN

### Umgebungsvariablen

```env
# API URLs
PUBLIC_API_BASE_URL=https://api.olivegold.de
PUBLIC_STRIPE_KEY=pk_live_...

# Analytics
PUBLIC_GA_ID=G-XXXXXXXXXX
PUBLIC_HOTJAR_ID=XXXXXXX

# Contact Form
CONTACT_FORM_ENDPOINT=https://formspree.io/f/...
SMTP_HOST=smtp.gmail.com
SMTP_USER=info@olivegold.de
SMTP_PASS=app_password
```

## 📊 Analytics & Tracking

### Google Analytics 4
- **Page Views**: Seitenaufrufe und Verweildauer
- **Conversions**: Käufe und Ziele
- **User Behavior**: Nutzerverhalten und Pfade
- **E-Commerce**: Detailliertes Shop-Tracking

### Heatmaps (Hotjar)
- **Click Tracking**: Wo klicken Nutzer?
- **Scroll Maps**: Wie weit scrollen Besucher?
- **Session Recordings**: Echte Nutzersessions
- **Feedback**: User-Feedback-Widget

## 🔐 Sicherheit

### Datenschutz
- **DSGVO-konform**: EU-Datenschutzverordnung
- **Cookie-Banner**: Einverständnis-Management
- **SSL-Verschlüsselung**: HTTPS für alle Seiten
- **Datenminimierung**: Nur notwendige Daten sammeln

### Formular-Sicherheit
- **CSRF-Schutz**: Cross-Site Request Forgery Prevention
- **Rate Limiting**: Schutz vor Spam und Bots
- **Input Validation**: Server-side Eingabeprüfung
- **Captcha**: reCAPTCHA für Formulare

## 🤝 Mitwirken

Beiträge zum Projekt sind willkommen! Bitte befolgen Sie diese Schritte:

1. **Fork** das Repository
2. **Branch** erstellen (`git checkout -b feature/neue-funktion`)
3. **Änderungen** committen (`git commit -m 'Neue Funktion hinzugefügt'`)
4. **Push** zum Branch (`git push origin feature/neue-funktion`)
5. **Pull Request** erstellen

### Code-Standards

- **ESLint**: Automatische Code-Qualitätsprüfung
- **Prettier**: Einheitliche Code-Formatierung
- **TypeScript**: Typisierung für bessere Wartbarkeit
- **Kommentare**: Dokumentation komplexer Funktionen

## 📄 Lizenz

Dieses Projekt steht unter der MIT-Lizenz. Siehe `LICENSE` Datei für Details.

## 📞 Support

Bei Fragen oder Problemen:

- **E-Mail**: support@olivegold.de
- **Issues**: [GitHub Issues](https://github.com/username/olive-gold-shop/issues)
- **Dokumentation**: [Wiki](https://github.com/username/olive-gold-shop/wiki)

---

**Entwickelt mit ❤️ für authentische griechische Olivenöl-Tradition**

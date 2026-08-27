param(
  [Parameter(Mandatory = $true)]
  [string]$Nome,

  [Parameter(Mandatory = $true)]
  [string]$BusinessName,

  [string]$Tipo = "Attività locale",
  [string]$Citta = "Italia",
  [string]$Tagline = "Qualità, cura e un servizio che fa la differenza.",
  [string]$Description = "Anteprima sito web per il cliente. Personalizza testi, foto e contatti.",
  [string]$WhatsApp = "393000000000",
  [string]$PhoneDisplay = "+39 300 000 0000",
  [string]$Address = "Via Example 1",
  [string]$Hours = "Lun–Sab 9:00–19:00",
  [string]$LogoLetter = "",
  [string]$PrimaryColor = "#0d9488",
  [string]$PrimaryColorDark = "#0f766e",
  [string]$HeroImage = "https://images.unsplash.com/photo-1497366216548-37526070297c?auto=format&fit=crop&w=900&q=80",
  [string]$Gallery1 = "https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=600&q=80",
  [string]$Gallery2 = "https://images.unsplash.com/photo-1497215842964-222b430dc094?auto=format&fit=crop&w=600&q=80",
  [string]$Gallery3 = "https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=600&q=80",
  [string]$Service1Title = "Servizio 1",
  [string]$Service1Text = "Descrivi il primo servizio o prodotto.",
  [string]$Service2Title = "Servizio 2",
  [string]$Service2Text = "Descrivi il secondo servizio o prodotto.",
  [string]$Service3Title = "Servizio 3",
  [string]$Service3Text = "Descrivi il terzo servizio o prodotto."
)

$ErrorActionPreference = "Stop"
$slug = $Nome.ToLower() -replace "[^a-z0-9\-]", ""
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$target = Join-Path $root $slug
$template = Join-Path $root "_template\index.html"

if (-not (Test-Path $template)) {
  throw "Template non trovato: _template/index.html"
}

if (Test-Path $target) {
  throw "La cartella '$slug' esiste già. Scegli un altro nome."
}

if ([string]::IsNullOrWhiteSpace($LogoLetter)) {
  $LogoLetter = $BusinessName.Substring(0, 1).ToUpper()
}

$waText = [uri]::EscapeDataString("Ciao, vorrei informazioni")
$waLink = "https://wa.me/$WhatsApp`?text=$waText"

New-Item -ItemType Directory -Path $target | Out-Null

$html = Get-Content $template -Raw -Encoding UTF8
$replacements = @{
  "{{BUSINESS_NAME}}"       = $BusinessName
  "{{BUSINESS_TYPE}}"       = $Tipo
  "{{CITY}}"                = $Citta
  "{{TAGLINE}}"             = $Tagline
  "{{DESCRIPTION}}"         = $Description
  "{{WHATSAPP_LINK}}"       = $waLink
  "{{LOGO_LETTER}}"         = $LogoLetter
  "{{PRIMARY_COLOR}}"       = $PrimaryColor
  "{{PRIMARY_COLOR_DARK}}"    = $PrimaryColorDark
  "{{HERO_IMAGE}}"          = $HeroImage
  "{{GALLERY_1}}"           = $Gallery1
  "{{GALLERY_2}}"           = $Gallery2
  "{{GALLERY_3}}"           = $Gallery3
  "{{SERVICE_1_TITLE}}"     = $Service1Title
  "{{SERVICE_1_TEXT}}"      = $Service1Text
  "{{SERVICE_2_TITLE}}"     = $Service2Title
  "{{SERVICE_2_TEXT}}"      = $Service2Text
  "{{SERVICE_3_TITLE}}"     = $Service3Title
  "{{SERVICE_3_TEXT}}"      = $Service3Text
  "{{ADDRESS}}"             = $Address
  "{{HOURS}}"               = $Hours
  "{{PHONE_DISPLAY}}"       = $PhoneDisplay
}

foreach ($key in $replacements.Keys) {
  $html = $html.Replace($key, $replacements[$key])
}

Set-Content -Path (Join-Path $target "index.html") -Value $html -Encoding UTF8

Write-Host ""
Write-Host "Creato: $slug/" -ForegroundColor Green
Write-Host "Link demo: https://sitoprima.online/$slug/" -ForegroundColor Cyan
Write-Host ""
Write-Host "Prossimi passi:"
Write-Host "  1. Modifica $slug/index.html se serve (foto, testi)"
Write-Host "  2. git add $slug"
Write-Host "  3. git commit -m `"Add demo: $BusinessName`""
Write-Host "  4. git push"
Write-Host ""

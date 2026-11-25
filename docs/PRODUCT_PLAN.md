# FridgeQuest – Product & Engineering Plan

## Vision

FridgeQuest ist eine eigenständige mobile Consumer-App für iOS und Android.
Sie hilft Einzelpersonen, Familien und Wohngemeinschaften dabei,
Lebensmittelverschwendung zu reduzieren, indem Bestand, Charaktere,
Gamification und KI-gestützte Mahlzeitenplanung zu einem angenehmen
Alltagsfluss verbunden werden.

> Your food has a story.

## Gleichrangige Ziele

### Product Excellence

- Ein echtes Alltagsproblem lösen.
- Hochwertige, warme und intuitive Nutzeroberfläche.
- Lebensmittelcharaktere, Animationen und Gamification als Kern der Identität.
- Möglichst wenig manuelle Eingabe.

### Engineering Excellence

- Modularer und langfristig wartbarer Aufbau.
- Klare Trennung von UI, Geschäftslogik, Datenhaltung und AI.
- Tests, CI/CD, Security, Observability und dokumentierte Entscheidungen.
- Cloud-native Deployment auf Google Cloud Platform.

### AI Engineering Excellence

- KI nur dort einsetzen, wo sie konkreten Nutzen liefert.
- OCR, Computer Vision, Agentic AI und ML schrittweise integrieren.
- Qualität, Latenz, Kosten und Zuverlässigkeit messbar evaluieren.
- Deterministische Geschäftslogik nicht durch unnötige KI ersetzen.

## Zentraler Nutzerfluss

**Einkaufen → scannen → bestätigen → Kühlschrank verwalten → Rezept generieren → kochen → Lebensmittel retten → XP erhalten**

## MVP

Der erste Produktkern umfasst:

- Registrierung und Authentifizierung
- Haushalt und Haushaltsmitgliedschaft
- manueller Lebensmittelbestand
- Barcode-Erfassung
- Kassenzettel-OCR mit Review und Bestätigung
- Charaktere und deterministische Charakterzustände
- Verbrauchs- und Entsorgungsworkflow
- XP, Level und einfaches Impact-Dashboard
- Rezeptgenerierung mit validierten AI-Tools
- lokale, reproduzierbare Entwicklung und Cloud-Staging

## Nicht im ersten MVP

- eigene YOLO-Modelle
- Verbrauchs- und Waste-Prediction
- intelligenter Shopping Agent
- Multi-Agent Collaboration
- umfangreiche 3D-Spielwelt
- Supermarktintegrationen
- Premium-Abonnement

## Technische Zielarchitektur

- Mobile: Flutter und Dart
- State Management: Riverpod
- Mobile Architecture: MVVM
- Backend: Python und FastAPI
- Datenbank: PostgreSQL
- ORM und Migrationen: SQLAlchemy und Alembic
- Authentifizierung: Firebase Auth
- LLM: Gemini über Vertex AI
- AI-Orchestrierung: LangChain und LangGraph
- OCR: PaddleOCR
- Deployment: Cloud Run und Cloud SQL
- Storage: Google Cloud Storage
- Testing: Flutter Test und pytest

## Erste Meilensteine

1. PRD und Produktentscheidungen
2. Figma Design System und Kern-Screens
3. Architektur- und Datenmodell-Dokumentation
4. Flutter- und Repository-Fundament
5. Erster Vertical Slice: Lebensmittel anlegen, speichern, laden und als Charakter anzeigen
6. Gamification und Consume-Workflow
7. Receipt Intelligence
8. Recipe Agent
9. Cloud MVP und AI-Evaluation

## Qualitätskriterien

- zentrale Business Logic mindestens 80 % getestet
- keine unbestätigten Scan-Ergebnisse im Bestand
- serverseitige Autorisierung für Haushalte
- idempotente Verbrauchs- und XP-Transaktionen
- strukturierte Recipe-Agent-Outputs mindestens 99 % gültig im Testdatensatz
- überprüfbare harte Rezept-Constraints im Testdatensatz zu 100 % eingehalten
- nachvollziehbare Latenz-, Kosten- und Fehlermessung

## Bewusste Produktregel

Technologien werden nicht eingesetzt, um den Stack künstlich zu vergrößern.
Jede neue Komponente muss einen konkreten Nutzerwert oder einen belegbaren
Engineering-Nutzen liefern.

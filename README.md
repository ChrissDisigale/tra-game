# KodiQuest Tanzania

KodiQuest Tanzania is a mobile-first HTML5 educational game prototype for TRA tax education. Its tagline is **Chagua Herufi, Jibu Swali, Jenga Taifa.** Players answer short tax questions by tapping moving letters in order before the chain reaches the original character Joka Kodi.

## Run it

Open `index.html` directly in a modern browser, or serve the folder with any simple static server. There is no build step, Node runtime, package manager, or backend.

## Project structure

```text
index.html                 screen structure and accessible controls
styles.css                 mobile-first visual system and responsive layout
script.js                  state, navigation, game engine, animation and storage
content/questions.js       105 verified TRA-linked tax-education questions
content/research-sources.js official source register and review metadata
content/lessons.js         66 structured Maktaba lessons
content/lesson-categories.js 20 Maktaba categories
content/glossary.js        54 glossary terms
content/official-sources.js official TRA source registry
library.css                Maktaba-specific responsive UI and animations
content/levels.js          three levels and stage tuning
content/translations.js    short Swahili/English copy strings
assets/illustrations/      original Joka Kodi SVG
assets/icons/              production icon handoff directory
assets/sounds/             optional audio handoff directory
assets/animations/         animation handoff directory
```

## Game structure

There are three levels with 30 core questions each (10 are randomly selected per run), plus 15 revision questions:

1. **Msingi wa Kodi** — TRA, TIN, TAX, EFD, receipts and basic concepts.
2. **Biashara na Uwajibikaji** — VAT, PAYE, SDL, WHT, returns and records.
3. **Bingwa wa Kodi** — IDRAS, customs, compliance, declaration and digital services.

Each level has Easy, Medium and Challenge questions. Level 2 unlocks after Level 1 is completed; Level 3 unlocks after Level 2.

## Adding questions

Add an object to `window.KZ_QUESTIONS` in `content/questions.js`:

```js
{
  id: 'l1-new', level: 1, stage: 'easy', type: 'short-answer',
  category: 'MSAMIATI',
  questionSw: 'Swali lako?', questionEn: 'Your question?',
  answer: 'TIN', hintSw: 'Kidokezo kifupi.',
  explanationSw: 'Maelezo salama na mafupi.',
  sourceLabel: 'TRA Tax Education'
}
```

For multiple choice, use `type: 'multiple-choice'` and add `options: ['A','B','C','D']`. Keep content educational and avoid hard-coded rates, thresholds, penalties or deadlines that may change.

## LocalStorage

The game stores one JSON object under `kodiquest-tanzania-state-v1`. It includes player profile, unlocked levels, score, XP, progress, achievements, reviewed concepts, settings, and current gameplay values. The Settings screen can reset saved progress.

## Supported browsers

Current Chrome, Edge, Safari and Firefox on mobile and desktop. The prototype uses SVG `getPointAtLength`, `requestAnimationFrame`, CSS animations, LocalStorage and optional Web Audio. Audio is off by default and the game remains playable without it.

## Accessibility and performance

Semantic buttons/forms, keyboard activation, focus outlines, ARIA labels, large touch targets, visible feedback, pause support and reduced-motion support are included. The moving chain uses transforms/position updates within one SVG stage and pauses when the tab is hidden.

## Maktaba ya Kodi

The Maktaba is a structured learning centre with 66 verified lesson records:

- 26 beginner lessons
- 24 intermediate lessons
- 16 advanced lessons
- 20 topic categories
- 54 glossary terms

Lessons have a concise **Muhtasari** mode and a section-based **Somo Kamili** mode. The full mode includes objectives, explanatory sections, original SVG/CSS-style diagrams, knowledge checks, official source panels, bookmarks, XP, progress persistence and a related-game action. Search, category filters, bookmarks, recommendations, glossary search and demo analytics are frontend-only and work with LocalStorage.

Maktaba content is separated into `content/lessons.js`, `content/lesson-categories.js`, `content/glossary.js` and `content/official-sources.js`. To add a lesson, add a data row to `lessonData` with a verified source key, then choose or extend an animation key in `lessonAnimation`. Every active lesson is validated before rendering and must have a verified official source.

Learning state is stored under `kodiQuestLearningState`, including lesson progress, bookmarks, quiz scores, XP, streak, recent lessons, wrong-topic recommendations and official-source clicks. Content that may change by financial year is marked for annual review.

## Disclaimer

Maudhui haya ni kwa madhumuni ya elimu ndani ya mchezo. Sheria, viwango, masharti na mifumo vinaweza kubadilika. Tumia vyanzo rasmi vya TRA kuthibitisha taarifa za sasa.

## Prototype limitations and roadmap

This presentation prototype uses CSS/emoji character details, generated Web Audio tones, demo leaderboard data, and a lightweight local-only profile. A production release should add TRA-reviewed content, official source links per card, localized English UI, recorded audio, richer SVG states, analytics with consent, secure account sync, classroom tools, QA across target devices, and an accessibility audit.

## Kodi Inajenga Taifa / Faida za Kulipa Kodi

The new `tax-benefits-screen` is an interactive learning section rather than a static information page. It includes 12 development categories, summary and comprehensive modes, category scenarios, a 20-question scenario bank, a before/after community comparison, a seven-step public-revenue timeline, official TRA source links, and a friendly Joka Kodi guide.

Development Points are game-only learning points stored under `kodiQuestTaxBenefitsState`. They can be earned for summaries, quizzes, comprehensive lessons and level completion, then contributed to eight illustrative community projects. Project visuals change through five stages (0%, 25%, 50%, 75%, 100%); they are educational visualisations and are not government expenditure records.

Educational wording deliberately describes collective public revenue and official budgeting processes. The section never claims that one person’s exact tax payment funded one named school, road, hospital or other project. Source links are kept in `content/tax-benefits.js`; add a category to `taxBenefitCategories`, a project to `communityProjects`, and scenarios to `taxBenefitScenarios`. Keep every new claim cautious, source-backed and free of unverified rates, deadlines or penalties.

The state also stores explored categories, completed summaries, completed quizzes, project progress and unlocked badges. Reduced-motion users keep all content and interactions while continuous particle-style motion is minimised. The community scene uses lightweight emoji/CSS visuals for this prototype; production work should replace them with TRA-reviewed illustrated assets and usability-tested animations.

## User manual

The complete Swahili user manual is available as `KodiQuest-Tanzania-User-Manual.pdf`. Its editable source is `USER_MANUAL.md`, and the PDF can be regenerated with:

```bash
swift -module-cache-path /tmp/kz-swift-cache tools/generate-user-manual.swift
```

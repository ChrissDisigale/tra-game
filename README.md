# KodiZuma Tanzania

KodiZuma Tanzania is a mobile-first HTML5 educational game prototype for TRA tax education. Its tagline is **Chagua Herufi, Jibu Swali, Jenga Taifa.** Players answer short tax questions by tapping moving letters in order before the chain reaches the original character Joka Kodi.

## Run it

Open `index.html` directly in a modern browser, or serve the folder with any simple static server. There is no build step, Node runtime, package manager, or backend.

## Project structure

```text
index.html                 screen structure and accessible controls
styles.css                 mobile-first visual system and responsive layout
script.js                  state, navigation, game engine, animation and storage
content/questions.js       36 stable tax-education questions
content/levels.js          three levels and stage tuning
content/translations.js    short Swahili/English copy strings
assets/illustrations/      original Joka Kodi SVG
assets/icons/              production icon handoff directory
assets/sounds/             optional audio handoff directory
assets/animations/         animation handoff directory
```

## Game structure

There are three levels with 12 questions each (10 are randomly selected per run):

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

The game stores one JSON object under `kodizuma-tanzania-state-v1`. It includes player profile, unlocked levels, score, XP, progress, achievements, reviewed concepts, settings, and current gameplay values. The Settings screen can reset saved progress.

## Supported browsers

Current Chrome, Edge, Safari and Firefox on mobile and desktop. The prototype uses SVG `getPointAtLength`, `requestAnimationFrame`, CSS animations, LocalStorage and optional Web Audio. Audio is off by default and the game remains playable without it.

## Accessibility and performance

Semantic buttons/forms, keyboard activation, focus outlines, ARIA labels, large touch targets, visible feedback, pause support and reduced-motion support are included. The moving chain uses transforms/position updates within one SVG stage and pauses when the tab is hidden.

## Disclaimer

Maudhui haya ni kwa madhumuni ya elimu ndani ya mchezo. Sheria, viwango, masharti na mifumo vinaweza kubadilika. Tumia vyanzo rasmi vya TRA kuthibitisha taarifa za sasa.

## Prototype limitations and roadmap

This presentation prototype uses CSS/emoji character details, generated Web Audio tones, demo leaderboard data, and a lightweight local-only profile. A production release should add TRA-reviewed content, official source links per card, localized English UI, recorded audio, richer SVG states, analytics with consent, secure account sync, classroom tools, QA across target devices, and an accessibility audit.

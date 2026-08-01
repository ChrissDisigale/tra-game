# KodiQuest Tanzania

## Mwongozo wa Mtumiaji

### Chagua Herufi, Jibu Swali, Jenga Taifa.

Toleo la prototype • 31 Julai 2026

## 1. Karibu KodiQuest Tanzania

KodiQuest Tanzania ni mchezo wa elimu ya kodi unaochanganya maswali, herufi zinazosafiri, Joka Kodi na masomo mafupi. Lengo ni kumsaidia mchezaji kuelewa TRA, TIN, risiti, EFD, VAT, PAYE, kodi ya zuio, kumbukumbu za biashara na dhana za huduma za umma kwa njia nyepesi na ya kuvutia.

Mchezo huu ni wa elimu. Sio mfumo wa kulipa kodi, kutoa ushauri wa kisheria, kufanya tathmini ya kodi au kuthibitisha taarifa za sasa. Kwa maamuzi halisi, tumia vyanzo rasmi vya TRA.

## 2. Kuanza mchezo

1. Fungua `index.html` kwenye browser ya kisasa, au tumia local server.
2. Kwenye ukurasa wa karibu, chagua **Anza Mchezo**.
3. Jaza jina, jinsia, mkoa na avatar.
4. Chagua **Hifadhi na Endelea**.
5. Ramani ya viwango itafunguka. Level 1 ndiyo mwanzo wa safari.

Kama tayari umecheza, kitufe cha **Endelea na Mchezo** husaidia kurudi kwenye maendeleo yaliyohifadhiwa.

## 3. Wasifu wa mchezaji

Wasifu unahifadhiwa kwenye kifaa chako kupitia LocalStorage. Sehemu ya jinsia ina chaguo **Mwanaume** au **Mwanamke**. Mkoa una orodha ya mikoa ya Tanzania pamoja na Zanzibar.

Avatar ni kwa utambulisho wa ndani ya mchezo tu. Usitumie jina au taarifa nyeti unazotaka kuzilinda kwenye kifaa kinachotumiwa na watu wengi.

## 4. Jinsi ya kucheza

Kila swali lina kadi ya swali, timer, score, combo na maisha. Herufi hutembea kwenye njia iliyopinda kuelekea Joka Kodi.

1. Soma swali.
2. Tambua herufi ya kwanza ya jibu.
3. Gusa herufi sahihi inapopita kwenye njia.
4. Endelea kwa mpangilio hadi answer slots zijazwe.
5. Jibu likikamilika, linathibitishwa moja kwa moja; pia unaweza kutumia **Thibitisha**.

Usichague herufi kwa kubahatisha. Jibu la TIN ni T, kisha I, kisha N. Herufi isiyofuata mpangilio haitajazwa kwenye nafasi ya jibu.

## 5. Timer, maisha na Joka Kodi

Timer hupungua wakati swali linaendelea. Ikifika karibu na mwisho, mwonekano hubadilika na kutoa tahadhari. Ikiisha au herufi zikamfikia Joka Kodi, input hufungwa kwa muda, dragon hufanya animation ya kumeza herufi, na maisha moja hupungua.

Ujumbe wa kushindwa ni wa kujifunza, si wa kuadhibu. Utaona jibu sahihi na maelezo mafupi ili uweze kujaribu tena.

**Pause** husimamisha timer na movement. Chagua **Endelea**, **Anza swali upya**, au **Rudi ramani**.

## 6. Score, combo, hints na XP

Alama huongezeka kwa jibu sahihi. Bonus hutokana na muda uliobaki, kutofanya makosa na combo. Hint inaweza kusaidia kwa kufunua herufi, kuondoa distractor au kupunguza kasi, lakini inaweza kupunguza bonus.

Combo huonyesha mfululizo wa majibu sahihi. Ukikosea swali, combo inaweza kuanza upya. XP na achievements zinaonyesha maendeleo ya kujifunza; si cheti rasmi wala uthibitisho wa ujuzi wa kisheria.

## 7. Ramani ya viwango

**Level 1: Msingi wa Kodi** — TRA, TIN, TAX, EFD, risiti, mlipakodi na purpose ya kodi.

**Level 2: Biashara na Uwajibikaji** — VAT, PAYE, SDL, WHT, records, filing, return na malipo.

**Level 3: Bingwa wa Kodi** — IDRAS, customs, imports, exports, compliance, declaration, assessment na huduma za kidijitali.

Level inayofuata hufunguka baada ya mahitaji ya level iliyotangulia kutimizwa. Kila level ina stages Easy, Medium na Challenge.

## 8. Maktaba ya Kodi

Fungua **Maktaba** kupitia ukurasa wa karibu au ramani. Tafuta kwa maneno kama `TIN`, `VAT`, `risiti`, `PAYE` au `EFD`. Tumia category chips na filters kutazama beginner, intermediate, advanced, completed au bookmarked lessons.

Kila somo lina:

- **Muhtasari:** maana, key points, mfano, kumbukumbu na quick question.
- **Somo Kamili:** maelezo ya sehemu kwa sehemu, animation, scenario, quiz, glossary, lesson connections na source panel.

Unaweza kuhifadhi lesson, kusoma kwa sauti ikiwa browser ina Speech Synthesis, kufungua chanzo rasmi na kuendelea ulipoishia. Progress ya Maktaba inahifadhiwa chini ya `kodiQuestLearningState`.

## 9. Kodi Inajenga Taifa

Sehemu ya **Faida za Kodi** inaeleza kwa lugha rahisi jinsi kodi zinazokusanywa pamoja zinavyoweza kuchangia mapato ya serikali yanayotumika kupitia bajeti, mipango na huduma za umma.

Chunguza maeneo 12: Elimu, Afya, Barabara na Usafiri, Maji Safi, Usalama na Dharura, Masoko na Biashara, Umeme na Taa, Kilimo, Mazingira, Huduma za Kidijitali, Huduma za Jamii, na Utawala.

Kila category ina summary, somo pana, scenario, quiz na source. Usiseme “kodi yako imejenga shule hii.” Ujumbe sahihi ni: **Kodi zinazokusanywa pamoja huchangia mapato ya serikali yanayotumika kugharamia huduma za umma na maendeleo ya taifa.**

## 10. Pointi za Maendeleo na jamii ya mfano

**Pointi za Maendeleo** ni currency ya mchezo pekee; hazihusiani na malipo halisi ya kodi. Zinapatikana kwa kukamilisha summary, somo kamili, quiz na baadhi ya milestones.

Pointi zinaweza kuchangiwa kwenye miradi ya mfano: shule, kituo cha afya, barabara, maji, soko, taa za barabarani, kituo cha kidijitali na mazingira. Kila mradi hubadilika kwa hatua 0%, 25%, 50%, 75% na 100%—si progress bar pekee; illustration yenyewe hubadilika.

Mifano hiyo ni visualisation ya elimu, si rekodi ya matumizi ya serikali wala ahadi ya mradi halisi. Mchakato wa mapato, bajeti, upangaji na utekelezaji huhusisha taasisi na hatua mbalimbali.

## 11. Scenarios na quiz ya maendeleo

Kwenye category kamili, soma scenario na chagua jibu linalofaa. Jibu sahihi huonyesha explanation na linaweza kutoa Pointi za Maendeleo. Kuna scenarios kuhusu risiti, records, shule, afya, barabara, maji, huduma za kidijitali, mazingira na vyanzo rasmi.

Ukikosea, soma maelezo kisha jaribu tena. Lengo ni kuelewa uhusiano wa dhana, si kukariri jibu pekee.

## 12. Progress, bookmarks na saved data

Mchezo na Maktaba hutumia LocalStorage. Data inaweza kujumuisha jina, progress ya levels, score, lessons zilizokamilika, bookmarks, quiz scores, XP, Development Points, project progress na badges.

Kwenye **Mipangilio**, unaweza kuwasha reduced motion, low-data mode na sound. Chaguo la reset linafuta maendeleo yaliyohifadhiwa kwenye browser hiyo; litumie kwa uangalifu.

## 13. Accessibility na matumizi ya simu

Game imeundwa portrait-first kwa 360×800 hadi 430×932. Buttons ni kubwa kwa kugusa, kuna keyboard focus, labels za ARIA, pause support na feedback isiyotegemea rangi pekee.

Washa **Hali ya mwendo mdogo** ikiwa animation inakusumbua. Washa **Hali ya data kidogo** ikiwa unataka kupunguza effects. Ukifungua kwenye desktop, layout inapanuka bila kubadilisha mechanics kuu.

## 14. Vyanzo rasmi na usalama wa taarifa

Tumia links za TRA ndani ya game kwa kujifunza zaidi:

- https://www.tra.go.tz/
- https://www.tra.go.tz/sw/page/paying-taxes
- https://www.tra.go.tz/sw/page/income-tax-for-individuals
- https://www.tra.go.tz/sw/page/withholding-tax
- https://www.tra.go.tz/sw/tax-club
- https://taxpayersportal.tra.go.tz/ept/main

Sheria, viwango, masharti, mifumo na deadlines vinaweza kubadilika. Thibitisha taarifa za sasa kupitia TRA kabla ya kufanya uamuzi wa biashara au kodi.

## 15. Troubleshooting

**Screen haifunguki:** hakikisha mafaili yote yako ndani ya folder moja na umefungua `index.html`. Jaribu local server ikiwa browser inazuia baadhi ya resources.

**Progress haionekani:** tumia browser ile ile na origin ile ile. Private browsing inaweza kuzuia LocalStorage.

**Sauti haisikiki:** sound imezimwa kwa default; iwashe kwenye settings na gusa screen kwanza. Browser inaweza kukataa audio kabla ya user interaction.

**Animation ni nzito:** washa reduced motion au low-data mode.

**Chanzo hakifunguki:** hakikisha una internet; links za nje hufunguka tab mpya na zinategemea upatikanaji wa tovuti husika.

## 16. Muhtasari wa msimamizi

KodiQuest ni prototype ya HTML5 inayofanya kazi bila backend. Content iko kwenye `content/`, UI iko kwenye `index.html` na `styles.css`, mechanics na state ziko kwenye `script.js`. Usibadilishe tax facts bila kupitia chanzo rasmi, tarehe ya review na mchakato wa content verification.

Kwa matumizi ya uzalishaji, ongeza review ya TRA, analytics yenye consent, account sync salama, SVG illustrations zilizokaguliwa, audio iliyorekodiwa, tests za vifaa mbalimbali na accessibility audit.

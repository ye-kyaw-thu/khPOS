# khPOS (draft released 1.0) UNDER CONSTRUCTION!!! Please wait!
khPOS (Khmer Part-of-Speech) Corpus for Khmer NLP Research and Developments

## Lincense
Creative Commons Attribution-NonCommercial-Share Alike 4.0 International (CC BY-NC-SA 4.0) License  
[Details Info of License](https://creativecommons.org/licenses/by-nc-sa/4.0/)

## Introduction
The khPOS Corpus (Khmer POS Corpus) is a 12,000 sentences (25,626 words) manually word segmented and POS tagged corpus developed for Khmer language NLP research and developments. We collected Khmer sentences from websites that include various area such as economics, news, politics. Moreover it is also contained some student list and voter list of national election committee of Cambodia. The average number of words per sentence in the whole corpus is 10.75. Here, some symbols such as "។" (Khmer sign Khan), "៖" (Khmer sign Camnuc pii kuuh), "-", "?", "\[", "\]" etc. also counted as words. The shotest sentence contained only 1 word and longest sentence contained 169 words as follows (here, line number : Khmer sentence):

1814 : " ម៉ែ ឥត មាន ស្អប់_ខ្ពើម ឪពុក កូន ឯង ទេ ម៉ែ តែង នឹក មក កូន នឹង ឪពុក ឯង ពុំ មាន ភ្លេច ព្រម_ទាំង អ្នក\~ភូមិ ផង របង ជាមួយ ឯង ទៀត ដែល ម្ដាយ ធ្លាប់ នៅ ជាមួយ គេ ប៉ុន្តែ ម៉ែ ជាតិ ជា ទេព_ធីតា ពុំ អាច នៅ ជាមួយ មនុស្ស_លោក បាន យូរ ទេ រាល់ ថ្ងៃ ម៉ែ តែង ទៅ បំពេញ កិច្ច នៅ ចំពោះ មុខ ព្រះ\~ភក្ត្រ ព្រះ\~ឥន្ទ្រាធិរាជ គឺ សុំ អង្វរ ឲ្យ ព្រះ\~អង្គ ប្រទាន ពរ ដល់ កូន ឯង និង ឪពុក កូន ឯង កុំ បី ខាន មិន តែ ប៉ុណ្ណោះ ម្ដាយ បាន ទាំង ទូល សុំ ព្រះ\~ឥន្ទ្រ ឲ្យ ព្រះ\~អង្គ មេត្តា ផ្សាយ នូវ សុភ_មង្គល ដល់ មនុស្ស នៅ ឋាន នេះ ទូទៅ ផង កូន_ប្រុស ពន្លក ម្ដាយ ! ម្ដាយ ពុំ អាច នៅ ជាមួយ_នឹង កូន បាន ទៀត តែ ម្ដាយ យក កូន ឯង ទៅ លេង ប្រាសាទ ម្ដាយ ឯ ឋាន លើ មួយ ដង ម្ដាយ នឹង នាំ កូន ឯង ទៅ មុជ_ទឹក ក្នុង អាង ក្រអូប នៅ_ក្នុង សួន ព្រះ\~ឥន្ទ្រ ហើយ ទឹក នោះ នឹង ជម្រះ កាយ កូន ឯង ឲ្យ បាត់ ធំ ក្លិន មនុស្ស_លោក បន្ទាប់_ពី នោះ មក ម្ដាយ នឹង នាំ កូន ឯង ចូល ទៅ_ក្នុង ប្រាសាទ រួច នាំ កូន ឯង ទៅ ថ្វាយ_បង្រះ\~ឥន្ទ្រ " ។

## Word Segmentation
In Khmer texts, words composed of single or multiple syllables are usually not separated by white space. Spaces are used for easier reading and generally put between phrases, but there are no clear rules for using spaces in Khmer language. Therefore, word segmentation is a necessary prerequisite for POS tagging. Four classes of segment (word) types were observed during the manual segmentation of the corpus of Khmer text, each representing a different type of word, these were:

  - Word Type 1: Single Words
  - Word Type 2: Compound Words
  - Word Type 3: Compound Words with Prefix
  - Word Type 4: Compound Words with Suffix

For the detail information of the word segmentation rules and how we built a Khmer word segmentation model, please refer to our published paper (see Publiation Section).

## POS Tags
Part of speech is a category to which a word is assigned in accordance with its syntactic functions. In Khmer grammatical system, many linguists has defined their own POS according to their trend of research. Even though, many books are published, there are no standard agreement yet especially on number and name of POS tags. Comparing to English language, some English POS are not used in Khmer language, such as gerund, comparative and superlative adjectives, particle, etc. Based on CHOUN NATH dictionary, Khmer POS Tag set is defined. Some new POS tags that are not defined in the dictionary are added for considering word disambiguation task. Unlike English grammar, some Khmer sentences consist of more than one verb.

The definitions and descriptions of POS tags are presented in detail as follow:
1. Abbreviation (AB): For example, គម or គ.ម for kilometer (km), អសប for United Nation (UN), ពស or ព.ស for ពុទ សក ជ (Buddhism era), នប or ន.ប for នគរ ល (police), អហ or អ.ហ for  វុធហត  (Police Military) etc.
2. Adjective is a word used to modify or describe the noun. Adjective is usually at the right hand side of noun. There are very few adjectives that their positions are before noun. ក្រហម (red), កន្លះ (half), ប្លែក (strange), តូច (small), ល្អ (good), ស្អាត (beautiful) etc.
3. Adverb (RB): An adverb is a word that is used to modify verb, adjective or another adverb. For example, ណាស់ (very), ពុំ (not), ទើប (just), ពេកក្រៃ (very), ហើយ (already) etc.
4. Auxiliary Verb (AUX): Only three groups of verbs are tagged as auxiliary verb that used to make tense.
   - Past form: បាន or មាន + Verb
   - Progressive form: កំពុង + Verb
   - Future form: នឹង + Verb
5. Cardinal Number (CD): A cardinal number is a word or a number that denoting the quality. For example, បី (three), ១០០ (100), ចតុ (four), ពាន់ (thousand), លាន (million) etc. 
6. Conjunction (CC): Conjunction is a word to connect between words, phrases, and sentences. ក៏ប៉ុន្តែ (but), ពីព្រោះ (because), ដ្បិត (for, since), ទម្រាំតែ (until), ពុំនោះសោត (otherwise), បើ (if) etc.
7. Currency (CUR): CUR for currency symbol such as: ៛, \$, ₤, € etc.
8. Determiner Pronoun (DT): In Khmer grammar, determiners are classified under pronoun unlike English. It is used to tell location or/and uncertainty of noun. They are equivalent to English words: this, that, those, these, all, every, each, some etc. For example, នេះ (this), នោះ (that), ទាំងនេះ (these), ទាំងអស់ (all), នានា (various), ខ្លះ (some), សព្វ (every) etc.
9. Double Sign (DBL): Double sign (ៗ) is used to remind reader to read the previous word twice. For example, មនុស្ស/NN (people) គ្រប់/DT (every) ៗ/DBL គ្នា/PRO (person), "everybody" in English.
10. Et Cetera  (ETC): ។ល។ is equal to et cetera (etc.) in English.
11. Full Stop (KAN): There are two full stops in Khmer language, ។ for sentence and ៕ for paragraph.
12. Interjection (UH): Word represents sound of animal, machine, and surprised sound. Interjections are always at the beginning of a sentence, and mostly followed by exclamation mark. For example, អូ (Oh!), ម៉េវ (Meow), អ៊ុះ (uh) etc.
13. Measure Word (M): Measure Words are classified to describe different quality corresponding class of noun. Some of these words can not be found in English. For example: ព្រះសង្គ/NN (monk) ២/CD (2) អង្គ/M (person), សំលៀកបំពាក់/NN (cloth) ១/CD (1), សម្រាប់/M (set), ឆ្កែ/NN (dog) ១/CD (1) ក្បាល/M (head) etc.
14. Noun (NN): A noun is a word or compound word that identifies a person, an animal, an object, an idea, a thing, etc. For example: ឡាន (Car), ការអភិវឌ្ឍន៍ (Development), សកម្មភាព (Action), ខ្មៅដៃ (Pencil), ទឹកកក (Ice) etc.
15. Particle (PA): We consider three types of particle and they are hesitation, response and final. For the two medial particle words  ក៏ ("so, then, but" in English) and នូវ ("of, with" in English) \[1\], we consider them as RB and IN.
    - Hesitation Particle: ខ្ញុំ (I) គិត (think) …អ៊ើ/PA (Er. . .) មិន (not) ឃើញ (see), ("I er… don’t think so" in English)
    - Response Particle: អើ/PA (Hm, Ah) ខ្ញុំ (I) ដឹង (know) ហើយ (already), ("Hmm I already know" in English)
    - Final Particle: There are some final particles such as ណា៎, សិន and ចុះ. Example usage of ណា៎: កុំ/RB (don't) ភ្លេច/VB (forget) ណា៎/PA, ("Hmm don't forget!" in English), Example usage of សិន: ចាំ/VB (wait) បន្តិច/RB (a while) សិន/PA, Example usage of ចុះ: ទៅ/VB (go) ចុះ/PA
16. Preposition (IN): Preposition is a word or a compound word that is used to connect two different words or phrases. It indicate the place, time, possession, relation etc. For example, ចំពោះ (to), ដល់ (to), ដើម្បី (in order to), ក្នុង (in), លើ (on), រវាង (between, around) etc. 
17. Pronoun (PRO): A pronoun is a word that substitutes of a noun or a noun phrase. Those words are equivalent to Englis word: I, he, she, it, we, they, them, him, her etc. For example, ខ្ញុំ (I), គាត់ (he or she), យើង (we), ពួកយើង (our group or we), ខ្ញុំបាទ (polite form of I, me), ទូលបង្គំ (I, me for conversation with royal family) etc.
18. Proper Noun (PN): A proper noun is a noun that represents of a unique thing, for example, name of person, name of place and name of date etc. For example: សុខា (Sokha) ភ្នំពេញ (Phnom Penh), ថ្ងៃអង្គារ (Tuesday), កាល់តិច (Caltex), មេគង្គ (Mekong) etc. 
19. Question Word (QT): In Khmer language, តើ is mostly used in the beginning of an interrogative sentence. For example, 
តើ/QT អ្នក/PRO (you) ឈ្មោះ/NN (name) អ្វី/PRO (what)?, "What is your name?" in English.
20. Relative Pronoun (RPN): In Khmer language, there is only one relative pronoun. It is ដែល "that, which, where, who" in English. 
21. Symbol (SYM): SYM for others sign or symbol such as: +, -, \*, \/, ៖, =, @, \#, \% etc.
22. VB\_JJ: VB\_JJ is a tag for an adjective which its original form is a Verb. Currently, there is no proposed POS tag name for such kind of Khmer words. Although we can use JJ tag, we want to clarify by using VB\_JJ POS tag for its function and also for semantic purpose. For example: 

    - The word សម្រាប់ (for) or ដើម្បី (to) is normally removed in both written and spoken Khmer. 
   កន្លែង/NN (place) សម្រាប់ (for) ធ្វើការ/VB\_JJ (working), office in English  
   ម៉ាស៊ីន/NN (Machine) សម្រាប់ (for) បោក/VB\_JJ (washing) ខោអាវ/NN (cloth), washing machine in English 
   ពួកគាត់/PRO (they) អាច/VB (can) មាន/VB (have) ការងារ/NN (work) ធ្វើ/VB\_JJ (to do)
    - When Khmer Relative Pronoun is removed, the verb form keep the same as it was. It must be VB\_JJ it is no longer a Verb in subbordiante clause.
    សិស្ស (student) ដែល (who) មាន/VB (has) ពិន្ទុ (mark) ខ្ពស់ (hight) នឹង (will) ទទួលបាន (get) អាហារូបករណ៍ (scholarship), student who has hight mark will get a scholarship in English but when ដែល who is removed, មាន/VB (has) should become មាន/VB\_JJ (having) 
23. Verb (VB): Verb is a word that shows the action, even, and condition. Verb is a middle part of phrase. Normally, verb always need object and sometime it also need complement. For example, ស្តាប់ (listen), មានប្រសាសន៍ (say), ស្រលាញ់ (love), ច្រៀង (sing), បើកបរ (drive) etc.
24. Verb Complement (VCOM): Its original form is a verb, but it will turn into VCOM when two verbs in a sentence to emphasize the first verb. Especially, a compound verb is splitted by the word មិន (no or not), the first part is a verb and the second part is VCOM. For example, លក់ (sell) ដាច់/VCOM (a lot), ប្រលង (exam) មិន (no) ជាប់/VCOM (pass), ដេក/VB (sleep), មិន/RB (not) លក់/VCOM (sleep well) etc.
 
## Files/Scripts
Corpus-draft-ver-1.0/ (latest version)

**Scripts:** 
mk-wordtag.pl : Perl script for printing word only file, tag only file, listing compound-words etc.
mk-pair.pl : Perl script for combining word file and tag file to word/tag format

**Data:**
data/ : Data preparation folder for incremental POS-tagging models

**Models:** 
This repository
Search
Pull requests
Issues
Marketplace
Explore
 @ye-kyaw-thu
 Sign out
 Unwatch 3
  Star 4  Fork 1 ye-kyaw-thu/myPOS
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Insights  Settings
myPOS (Myanmar Part-of-Speech) Corpus for Myanmar NLP Research and Developments Edit
pos-tagging
mypos-corpus
myanmar
myanmar-language
myanmar-nlp
part-of-speech-tagger
pos
Manage topics
 335 commits
 1 branch
 0 releases
 1 contributor
 Python 65.0%	 Shell 19.3%	 Perl 15.7%
Python	Shell	Perl
Clone or download  Create new file Upload files Find file Branch: master New pull request
Latest commit 44a53fb  on Jun 3 @ye-kyaw-thu  ye-kyaw-thu Update note.txt
CICLING2017	Update note.txt	6 months ago
corpus-draft-ver-0.9	Create note.txt	7 months ago
corpus-draft-ver-1.0	Update note.txt	7 months ago
README.md	Update README.md	7 months ago
 README.md
myPOS (draft released 1.0)

myPOS Corpus (Myanmar Part-of-Speech Corpus) for Myanmar language NLP Research and Developments

Lincense

Creative Commons Attribution-NonCommercial-Share Alike 4.0 International (CC BY-NC-SA 4.0) License
Details Info of License

Introduction

The myPOS Corpus (Myanmar POS Corpus) is a 11,000 sentences (264,920 words or 242,865 words if we consider compound words) manually word segmented and POS tagged corpus developed for Myanmar language NLP research and developments. We collected Myanmar sentences from Wikipedia that include various area such as economics, history, news, politics and philosophy. The average number of words per sentence in the whole corpus is 21.78. The longest sentence contained 423 words and shortest sentence contained 2 words as follows (here, line number : Myanamr sentence):

Longest sentence : 423 words
2201 : လူ ခပ်သိမ်း ၏ မျိုးရိုး ဂုဏ်သိက္ခာ နှင့်တကွ လူ တိုင်း အညီအမျှ ခံစားခွင့် ရှိ သည့် အခွင့်အရေး များ ကို အသိအမှတ်ပြု ခြင်း သည် လူ ခပ်သိမ်း ၏ လွတ်လပ် မှု ၊ တရားမျှတ မှု ၊ ငြိမ်းချမ်း မှု တို့ ၏ အခြေခံ အုတ်မြစ် ဖြစ် သောကြောင့် လည်းကောင်း ၊ လူ့ အခွင့်ရေး များ ကို အရေးမထား မထီလေးစားပြု ခြင်း သည် လူ ခပ်သိမ်း ၏ အကျင့် သိက္ခာ ကို ချိုးဖောက် ဖျက်ဆီး တတ် သည့် ရက်စက် ကြမ်းကြုတ် သော အပြုအမူ များ ကို ဖြစ်ပေါ် စေ ခဲ့ သောကြောင့် လည်းကောင်း ၊ လွတ်လပ် စွာ ဖွင့်ဟ ပြောဆို နိုင် မှု လွတ်လပ် စွာ သက်ဝင် ယုံကြည် နိုင် မှု ၊ ကြောက်ရွံ့ ခြင်း ၊ ချို့ငဲ့ ခြင်း တို့ မှ ကင်းလွတ် စွာ အသက်မွေး နိုင် မှု တို့ ကို ခံစား ရယူ နိုင် စေ မည့် လောက တစ် ခု ပေါ်ပေါက် လာ ရန် အရေး ကို လူ ခပ်သိမ်း တို့ က မိမိ တို့ ၏ အထက်သန်ဆုံး သော လိုလား ချက် ဆန္ဒ ကြီး အဖြစ် ဖြင့် ကြွေးကြော် ကြေညာ ပြီး ဖြစ် သောကြောင့် လည်းကောင်း ၊ လူ ခပ်သိမ်း တို့ သည် ၊ တရားလက်လွတ် နှိပ်စက်ကလူပြု မှု ၊ အုပ်စိုး မှု နှင့် ဖိစီး ညှဉ်းပန်း မှု တို့ ကို နောက်ဆုံး မလွှဲသာမရှောင်သာ လက်နက် စွဲကိုင် ကာ တော်လှန် ခြင်း ၊ ပုန်ကန် ခြင်း မ ပြု စေရန် ၊ လူ့ အခွင့်ရေး များ ကို ဥပဒေ ဖြင့် ထိန်းသိမ်း ကာကွယ် ပေး ရ မည် ဖြစ် သောကြောင့် လည်းကောင်း ၊ နိုင်ငံ အချင်းချင်း ချစ်ခင် ရင်းနှီး စွာ ဆက်ဆံ ရေး ကို ပိုမို တိုးတက် စေရန် ကြံဆောင် ရ မည် ဖြစ် သောကြောင့် လည်းကောင်း ၊ ကမ္ဘာ့ ကုလသမဂ္ဂ အဖွဲ့ ဝင် တို့ သည် မူလ လူ့ အခွင့်အရေး များ ကို လည်းကောင်း ၊ လူ ၏ ဂုဏ်သိက္ခာ ကို လည်းကောင်း ၊ ယောက်ျား မိန်းမ တို့ ၏ တူညီ သည့် အခွင့်အရေး များ ကို လည်းကောင်း ၊ လေးစား ယုံကြည် ပါ သည် ဟု ကုလသမဂ္ဂ တွင် ထပ်မံ ၍ အတည်ပြု ပြီး သည့် ပြင် ၊ လူမှု ကြီးပွား တိုးတက် ရေး နှင့်တကွ ပိုမို လွတ်လပ် ကောင်းမွန် သော လူ့ ဘဝ အဆင့်အတန်း တို့ ကို မြှင့်တင် ရန် သန္နိဋ္ဌာန်ချ ပြီး ဖြစ် သောကြောင့် လည်းကောင်း ၊ ကမ္ဘာ့ ကုလသမဂ္ဂ အဖွဲ့ ဝင် နိုင်ငံ တို့ သည် ကုလသမဂ္ဂ အဖွဲ့ နှင့် ပူးပေါင်း ၍ လူ့ အခွင့်အရေး များ ကို လည်းကောင်း ၊ အခြေခံ လွတ်လပ်ခွင့် အခွင့်အရေး များ ကို လည်းကောင်း ၊ ကမ္ဘာ့ တစ်ဝန်း လုံး တွင် ရိုသေ လေးစား ကျင့်သုံး စောင့်စည်း ကြ ခြင်း ကို အားပေး မည် ဟု ကတိပြု ပြီး ဖြစ် သောကြောင့် လည်းကောင်း ၊ ထို ကြောင့် အထွေထွေညီလာခံ က အပြည်ပြည် ဆိုင်ရာ လူ့ အခွင့်အရေး ကြေညာစာတမ်း ကို လူ တိုင်း အဖွဲ့အစည်း တိုင်း သည် အစဉ် နှလုံးသွင်း လျက် ကမ္ဘာ တစ်ဝန်း လုံး တွင် အဆိုပါ အခွင့်အရေး များ နှင့် လွတ်လပ်ခွင့် များ ကို ရိုသေ လေးစား ကြ စေရန် ဆုံးမ သွန်သင် ခြင်း ဖြင့် အားထုတ် ကြ ရ မည် ဟု လည်းကောင်း ၊ ကုလသမဂ္ဂ အဖွဲ့ ဝင် နိုင်ငံ များ နှင့် ထို နိုင်ငံ တို့ ၏ အာဏာပိုင် အတွင်း ရှိ နယ်ပယ် ဆိုင်ရာ တိုင်းသူပြည်သား များ အား အဆိုပါ အခွင့်အရေး နှင့် လွတ်လပ်ခွင့် များ ကို ကျယ်ကျယ်ပြန့်ပြန့် ထိရောက် စွာ သိမှတ် ကျင့်သုံး စောင့်စည်း ကြ စေရန် ပြည်တွင်း ပြည်ပ ဆိုင်ရာ တိုးတက် သော ဆောင်ရွက် ချက် များ ဖြင့် အားထုတ် ကြ ရ မည် ဟု လည်းကောင်း ရည်ရွယ် ပြီးလျှင် လူ့ အခွင့်အရေး များ ဆိုင်ရာ အပြည်ပြည် ဆိုင်ရာ ကြေညာစာတမ်း ကို နိုင်ငံ ခပ်သိမ်း ၊ လူ ခပ်သိမ်း တို့ တပြေးညီ စွာ ဆောင်ရွက် နိုင် ကြ စိမ့်သောငှာ ယခု ထုတ်ပြန် ကြေညာ လိုက် သည် ။ total : 1

Shortest sentence : 2 word(s)
20 : သူခိုး ။
1336 : အိုကေ ။
2312 : ဒေးကတ်အာ ။
2511 : ဗေကင်ဖရန်စစ် ။
2568 : ဘာ ။
3735 : ကျည်းကန်ရှင်ကြီး ။
4842 : ဖယ် ။
5320 : တဆိတ်လောက် ။
5604 : ဆပင်နိုဇာဗီ ။
6927 : ဒူးထောက် ။
6982 : ကန့်အိုင် ။
8239 : ကွန်ဖူးဇီး ။
9918 : ဟုတ်ကဲ့ ။
10196 : ဟေး ။
10902 : အမလေး ။
total : 15

Average words per line : 21.78

Word Segmentation

In Myanmar texts, words composed of single or multiple syllables are usually not separated by white space. Spaces are used for easier reading and generally put between phrases, but there are no clear rules for using spaces in Myanmar language. Therefore, word segmentation is a necessary prerequisite for POS tagging. In our myPOS corpus, we did manual word segmentation based on following six rules:

Myanmar word can usually be identified by the combination of root word, prefix and suffix.
Unsegmented word: စားသည် (eat)
Segmented word:	စား/v သည်/ppm
Plural Nouns are identified by following the particle.
Unsegmented word: ကျောင်းသားများ (students)
Segmented word:	ကျောင်းသား/n များ/part
Possessive words are identified by following post positional marker.
Unsegmented word: ကျွန်တော်၏စာအုပ် (my book)
Segmented word:	ကျွန်တော်/n ၏/ppm စာအုပ်/n
Noun is identified with the combination of particle to the verb or the adjective.
Unsegmented word: ဆက်သွယ်ရေး (communication), ရိုးသားမှု(honesty)
Segmented word:	ဆက်သွယ်/v ရေး/part, ရိုးသား/adj မှု/part
Particle state the type of noun , and used after number or text number.
Unsegmented word: ၁၀ယောက် (10 people), ငါးခု (five pieces)
Segmented word:	၁၀/num ယောက်/part, ငါး/tn ခု/part
We put breakpoints ("|", pipe character) for compound words.
Unsegmented word:ခရမ်းမြို့နယ် (Khayan township)
Segmented word: ခရမ်း/n|မြို့နယ်/n
POS Tags

15 Myanmar POS are used in our tag set to meet the necessity of further NLP processing such as information extraction, semantic processing and machine translation. The definitions and descriptions of POS tags are presented in detail as follows:

POS Tag	Brief Definition	Examples
abb	Abbreviation	အထက(Basic Education High School), လ.ဝ (Confidentiality)
adj	Adjective	ရဲရင့် (brave), လှပ (beautiful), မွန်မြတ် (noble)
adv	Adverb	ဖြေးဖြေး (slow), နည်းနည်း (less)
conj	Conjunction	နှင့် (and), ထို့ကြောင့် (therefore), သို့မဟုတ် (or)
fw	Foreign Word	1, 2, 3, Myanmar, ミャンマー (Myanmar in Japanese), BBC, Google. 缅甸 (Myanmar in Chinese)
int	Interjection	အမလေး (Oh My God!)
n	Noun	ကျောင်း (school), စာအုပ် (book), ဒေါ်အောင်ဆန်းစုကြည် (Daw Aung San Suu Kyi), လွတ်လပ်ရေး (freedom)
num	Number	၁ (1), ၂ (2), ၃ (3), ၁၀ (10), ၁၀၀ (100), ၁၀၀၀ (1000)
part	Particle	များ (used to form the plural nouns as "-s" , "-es"), ခဲ့ (the past tense "-ed"), သင့် (modal verb "shall"), လိမ့် (modal verb "will"), နိုင် (modal verb "can")
ppm	Post-positional Marker	သည်, က, ကို, အား, သို့, မှာ, တွင် (at, on ,in, to)
pron	Pronoun	ကျွန်တော် (I), ကျွန်မ (I), သင် (you), သူ (he), သူမ (she)
punc	Punctuation	။, ၊, (, ), , _ , ', "
sb	Symbol	?, #, &, %, $, £, ¥, 𝜆, π, ÷, +, ×, @
tn	Text Number	တစ် (one), နှစ် (two), သုံး (three), တစ်ရာ (one hundred), တစ်ထောင် (one thousand)
v	Verb	ကူညီ (help), လိုက်နာ (observe), အားပေး (encourage)
Files/Scripts

Corpus-draft-ver-1.0/ (latest version)
mypos-dver.1.0.txt : myPOS Corpus draft version 1.0, UTF-8 text file format
mypos-dver.1.0.word.txt : print out word only (i.e. without POS tags) of myPOS Corpus draft version 1.0
mypos-dver.1.0.cword.txt : print out words and compound words of myPOS Corpus draft version 1.0
mypos-dver.1.0.lcw.txt : list of compound Myanmar words of myPOS draft version 1.0 (17,562 words)
mypos-dver.1.0.lcw.uniq.txt : unique list of compound Myanmar words of myPOS draft version 1.0 (8,627 words)
mypos-dver.1.0.tag.txt : print out POS-tagged only of myPOS draft version 1.0

Scripts:
mk-wordtag.pl : Perl script for printing word only file, tag only file, listing compound-words etc.
mk-pair.pl : Perl script for combining word file and tag file to word/tag format
how2run.txt : Example usages of perl scripts

Data:
data/ : Data preparation folder for incremental POS-tagging models

Models:

3gHMM/ : Incremental training (2,000 to 12,000 sentences) of 3-gram HMM (Hidden Markov Model) models with khPOS corpus.
Running logfile: note.txt

crf/ : Incremental training (2,000 to 12,000 sentences) of CRF POS-tagging models with khPOS corpus.
Running logfile: note.txt

kytea/ : Incremental training (2,000 to 12,000 sentences) of L2 regularized SVM models with khPOS corpus.
Running logfile: note

low-resource-pos-tagging-2014/: Incremental training (2,000 to 12,000 sentences) of 2hours annotation approach models with khPOS corpus.
Running logfile: note.txt

maxent/ : Incremental training (2,000 to 12,000 sentences) of Maximum Entrophy models with khPOS corpus.
Running logfile: note.txt

rdr/ : Incremental training (1,000 to 10,000 sentences) of RDR (Ripple Down Rule-based) models with khPOS corpus.
Running logfile: note.txt

## Development and Support

Contributors

Vichet Chea
[Ye Kyaw Thu](https://sites.google.com/site/yekyawthunlp/) 

## Publication
Vichet Chea, Ye Kyaw Thu, Chenchen Ding, Masao Utiyama, Andrew Finch and Eiichiro Sumita, "Khmer Word Segmentation Using Conditional Random Fields", In Khmer Natural Language Processing 2015 (KNLP2015), December 4, 2015, Phnom Penh, Cambodia. 
[paper](http://khmernlp.org/2015/wp-content/uploads/2016/09/Paper-Khmer-Word-Segmentation-Using-.pdf)

## Reference

Madeline Elizabeth. Ehrman, Kem Sos, Foreign Service Institute (U.S.), and Defense Language Institute (U.S.). Contemporary Cambodian: grammatical sketch, by Madeline E. Ehrman, with the assistance of Kem Sos. Foreign Service Institute, Dept. of State; \[for sale by the Supt. of Docs., U.S. Govt. Print. O .\] Washington, 1972.

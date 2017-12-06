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
\end{enumerate}
    
23. Verb (VB): Verb is a word that shows the action, even, and condition. Verb is a middle part of phrase. Normally, verb always need object and sometime it also need complement. For example, ស្តាប់ (listen), មានប្រសាសន៍ (say), ស្រលាញ់ (love), ច្រៀង (sing), បើកបរ (drive) etc.

24. Verb Complement (VCOM): Its original form is a verb, but it will turn into VCOM when two verbs in a sentence to emphasize the first verb. Especially, a compound verb is splitted by the word មិន (no or not), the first part is a verb and the second part is VCOM. For example, លក់ (sell) ដាច់/VCOM (a lot), ប្រលង (exam) មិន (no) ជាប់/VCOM (pass), ដេក/VB (sleep), មិន/RB (not) លក់/VCOM (sleep well) etc.
 
## Publication
Vichet Chea, Ye Kyaw Thu, Chenchen Ding, Masao Utiyama, Andrew Finch and Eiichiro Sumita, "Khmer Word Segmentation Using Conditional Random Fields", In Khmer Natural Language Processing 2015 (KNLP2015), December 4, 2015, Phnom Penh, Cambodia. 
[paper](http://khmernlp.org/2015/wp-content/uploads/2016/09/Paper-Khmer-Word-Segmentation-Using-.pdf)

## Reference

Madeline Elizabeth. Ehrman, Kem Sos, Foreign Service Institute (U.S.), and Defense Language Institute (U.S.). Contemporary Cambodian: grammatical sketch, by Madeline E. Ehrman, with the assistance of Kem Sos. Foreign Service Institute, Dept. of State; \[for sale by the Supt. of Docs., U.S. Govt. Print. O .\] Washington, 1972.

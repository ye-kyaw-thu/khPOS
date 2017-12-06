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
2. Adjective is a word used to modify or describe the noun. Adjective is usually at the right hand side of noun. There are very few adjectives that their positions are before noun. {\kh \small{ក្រហម}} (red), {\kh \small{កន្លះ}} (half), {\kh \small{ប្លែក}} (strange), {\kh \small{តូច}} (small), {\kh \small{ល្អ}} (good), {\kh \small{ស្អាត}} (beautiful) etc.

\item Adverb (RB): An adverb is a word that is used to modify verb, adjective or another adverb. For example, {\kh \small{ណាស់}} (very), {\kh \small{ពុំ}} (not), {\kh \small{ទើប}} (just), {\kh \small{ពេកក្រៃ}} (very), {\kh \small{ហើយ}} (already) etc.

\item Auxiliary Verb (AUX): Only three groups of verbs are tagged as auxiliary verb that used to make tense.
\begin{itemize}
  \item Past form: {\kh \small{បាន}} or {\kh \small{មាន}} + Verb
  \item Progressive form: {\kh \small{កំពុង}} + Verb
  \item Future form: {\kh \small{នឹង}} + Verb
\end{itemize}
    
\item Cardinal Number (CD): A cardinal number is a word or a number that denoting the quality. For example, {\kh \small{បី}} (three), {\kh \small{១០០}} (100), {\kh \small{ចតុ}} (four), {\kh \small{ពាន់}} (thousand), {\kh \small{លាន}} (million) etc. 

\item Conjunction (CC): Conjunction is a word to connect between words, phrases, and sentences. {\kh \small{ក៏ប៉ុន្តែ}} (but), {\kh \small{ពីព្រោះ}} (because), {\kh \small{ដ្បិត}} (for, since), {\kh \small{ទម្រាំតែ}} (until), {\kh \small{ពុំនោះសោត}} (otherwise), {\kh \small{បើ}} (if) etc.

\item Currency (CUR): CUR for currency symbol such as: {\kh \small{៛}}, \$, ₤, € etc.

\item Determiner Pronoun (DT): In Khmer grammar, determiners are classified under pronoun unlike English. It is used to tell location or/and uncertainty of noun. They are equivalent to English words: this, that, those, these, all, every, each, some etc. For example, {\kh \small{នេះ}} (this), {\kh \small{នោះ}} (that), {\kh \small{ទាំងនេះ}} (these), {\kh \small{ទាំងអស់}} (all), {\kh \small{នានា}} (various), {\kh \small{ខ្លះ}} (some), {\kh \small{សព្វ}} (every) etc.

\item Double Sign (DBL): Double sign ({\kh \small{ៗ}}) is used to remind reader to read the previous word twice. For example, {\kh \small{មនុស្ស}}/NN (people) {\kh \small{គ្រប់}}/DT (every) {\kh \small{ៗ}}/DBL {\kh \small{គ្នា}}/PRO (person), \dquotes{everybody} in English.

\item Et Cetera  (ETC): {\kh \small{។ល។}} is equal to et cetera (etc.) in English.

\item Full Stop (KAN): There are two full stops in Khmer language, {\kh \small{។}} for sentence and {\kh \small{៕}} for paragraph.

\item Interjection (UH): Word represents sound of animal, machine, and surprised sound. Interjections are always at the beginning of a sentence, and mostly followed by exclamation mark. For example, {\kh \small{អូ​}} (Oh!), {\kh \small{ម៉េវ}} (Meow), {\kh \small{អ៊ុះ}} (uh) etc.

\item Measure Word (M): Measure Words are classified to describe different quality corresponding class of noun. Some of these words can not be found in English. For example: {\kh \small{ព្រះសង្គ}}/NN (monk) {\kh \small{២}}/CD (2) {\kh \small{អង្គ}}/M (person), {\kh \small{សំលៀកបំពាក់}}/NN (cloth) {\kh \small{១}}/CD (1), {\kh \small{សម្រាប់}}/M (set), {\kh \small{ ឆ្កែ}}/NN (dog) {\kh \small{១}}/CD (1) {\kh \small{ក្បាល}}/M (head) etc.

\item Noun (NN): A noun is a word or compound word that identifies a person, an animal, an object, an idea, a thing, etc. For example: {\kh \small{ឡាន}} (Car), {\kh \small{ការអភិវឌ្ឍន៍}} (Development), {\kh \small{សកម្មភាព}} (Action), {\kh \small{ខ្មៅដៃ}} (Pencil), {\kh \small{ទឹកកក}} (Ice) etc.

\item Particle (PA): We consider three types of particle and they are hesitation, response and final. For the two medial particle words  {\kh \small{ក៏}} (\dquotes{so, then, but} in English) and {\kh \small{នូវ}} (\dquotes{of, with} in English) \cite{nla.cat-vn334929}, we consider them as RB and IN.

\item Hesitation Particle: {\kh \small{ខ្ញុំ}} (I) {\kh \small{គិត}} (think) …{\kh \small{អ៊ើ}}/PA (Er. . .) {\kh \small{មិន}} (not) {\kh \small{ឃើញ}} (see), (\dquotes{I er… don’t think so} in English)
\item Response Particle: {\kh \small{អើ}}/PA (Hm, Ah) {\kh \small{ខ្ញុំ}} (I) {\kh \small{ដឹង}} (know) {\kh \small{ហើយ}} (already), (\dquotes{Hmm I already know} in English)
\item Final Particle: There are some final particles such as {\kh \small{ណា៎}}, {\kh \small{សិន}} and {\kh \small{ចុះ}}. \\
Example usage of {\kh \small{ណា៎}}: {\kh \small{កុំ}}/RB (don't) {\kh \small{ភ្លេច}}/VB (forget) {\kh \small{ណា៎}}/PA, (\dquotes{Hmm don't forget!} in English), Example usage of {\kh \small{សិន}}: {\kh \small{ចាំ}}/VB (wait) {\kh \small{បន្តិច}}/RB (a while) {\kh \small{សិន}}/PA, Example usage of {\kh \small{ចុះ}}: {\kh \small{ទៅ}}/VB (go) {\kh \small{ចុះ}}/PA
\end{itemize}

\item Preposition (IN): Preposition is a word or a compound word that is used to connect two different words or phrases. It indicate the place, time, possession, relation etc. For example, {\kh \small{ចំពោះ}} (to), {\kh \small{ដល់}} (to), {\kh \small{ដើម្បី}} (in order to), {\kh \small{ក្នុង}} (in), {\kh \small{លើ}} (on), {\kh \small{រវាង}} (between, around) etc. 

\item Pronoun (PRO): A pronoun is a word that substitutes of a noun or a noun phrase. Those words are equivalent to Englis word: I, he, she, it, we, they, them, him, her etc. For example, {\kh \small{ខ្ញុំ}} (I), {\kh \small{គាត់}} (he or she), {\kh \small{យើង}} (we), {\kh \small{ពួកយើង}} (our group or we), {\kh \small{ខ្ញុំបាទ}} (polite form of I, me), {\kh \small{ទូលបង្គំ}} (I, me for conversation with royal family) etc.

\item Proper Noun (PN): A proper noun is a noun that represents of a unique thing, for example, name of person, name of place and name of date etc. For example: {\kh \small{សុខា}} (Sokha) {\kh \small{ភ្នំពេញ}} (Phnom Penh),{\kh \small{ ថ្ងៃអង្គារ}} (Tuesday), {\kh \small{កាល់តិច}} (Caltex), {\kh \small{មេគង្គ}} (Mekong) etc. 

\item Question Word (QT): In Khmer language, {\kh \small{តើ}} is mostly used in the beginning of an interrogative sentence. For example, 
{\kh \small{តើ}}/QT {\kh \small{អ្នក}}/PRO (you) {\kh \small{ឈ្មោះ}}/NN (name) {\kh \small{អ្វី}}/PRO (what)?, \dquotes{What is your name?} in English.

\item Relative Pronoun (RPN): In Khmer language, there is only one relative pronoun. It is {\kh \small{ ដែល }}\dquotes{that, which, where, who} in English. 

\item Symbol (SYM): SYM for others sign or symbol such as: $+, -$, *, \/, ៖, =, @, \#, \% etc.

\item VB\_JJ: VB\_JJ is a tag for an adjective which its original form is a Verb. Currently, there is no proposed POS tag name for such kind of Khmer words. Although we can use JJ tag, we want to clarify by using VB\_JJ POS tag for its function and also for semantic purpose. For example: 

\item The word {\kh \small{សម្រាប់}} (for) or {\kh \small{ដើម្បី}} (to) is normally removed in both written and spoken Khmer. \\
{\kh \small{កន្លែង}}/NN (place) {\kh \small{សម្រាប់}} (for){\kh \small{ ធ្វើការ}}/VB\_JJ (working), office in English  \\
{\kh \small{ម៉ាស៊ីន}}/NN (Machine) {\kh \small{សម្រាប់}} (for) {\kh \small{បោក}}/VB\_JJ (washing) {\kh \small{ខោអាវ}}/NN (cloth), washing machine in English \\
{\kh \small{ពួកគាត់}}/PRO (they) {\kh \small{អាច}}/VB (can) {\kh \small{មាន}}/VB (have) {\kh \small{ការងារ}}/NN (work){\kh \small{ ធ្វើ}}/VB\_JJ (to do)

\item When Khmer Relative Pronoun is removed, the verb form keep the same as it was. It must be VB\_JJ it is no longer a Verb in subbordiante clause. \\

{\kh \small{សិស្ស}} (student) {\kh \small{ដែល}} (who) {\kh \small{មាន}}/VB (has) {\kh \small{ពិន្ទុ}} (mark) {\kh \small{ខ្ពស់}} (hight) {\kh \small{នឹង}} (will) {\kh \small{ទទួលបាន}} (get) {\kh \small{អាហារូបករណ៍}} (scholarship), student who has hight mark will get a scholarship in English but when {\kh \small{ដែល}} who is removed, {\kh \small{មាន}}/VB (has) should become {\kh \small{មាន}}/VB\_JJ (having)
\end{enumerate}
    
\item Verb (VB): Verb is a word that shows the action, even, and condition. Verb is a middle part of phrase. Normally, verb always need object and sometime it also need complement. For example, {\kh \small{ស្តាប់}} (listen), {\kh \small{មានប្រសាសន៍}} (say), {\kh \small{ស្រលាញ់}} (love), {\kh \small{ច្រៀង}} (sing), {\kh \small{បើកបរ}} (drive) etc.

\item Verb Complement (VCOM): Its original form is a verb, but it will turn into VCOM when two verbs in a sentence to emphasize the first verb. Especially, a compound verb is splitted by the word {\kh \small{មិន}} (no or not), the first part is a verb and the second part is VCOM. For example, {\kh \small{លក់}} (sell) {\kh \small{ដាច់}}/VCOM (a lot), {\kh \small{ប្រលង}} (exam) {\kh \small{មិន}} (no) {\kh \small{ជាប់}}/VCOM (pass), {\kh \small{ដេក}}/VB (sleep), {\kh \small{មិន}}/RB (not) {\kh \small{លក់}}/VCOM (sleep well) etc.
 
## Publication
Vichet Chea, Ye Kyaw Thu, Chenchen Ding, Masao Utiyama, Andrew Finch and Eiichiro Sumita, "Khmer Word Segmentation Using Conditional Random Fields", In Khmer Natural Language Processing 2015 (KNLP2015), December 4, 2015, Phnom Penh, Cambodia. 
[paper](http://khmernlp.org/2015/wp-content/uploads/2016/09/Paper-Khmer-Word-Segmentation-Using-.pdf)

## Reference

#set document(title: "Is the proposed distinction of gaming disorder into a predominantly online vs\. offline form meaningful? Empirical evidence from a large German speaking gamer sample", author: ("Christian Montag", "Bruno Schivinski", "Halley M. Pontes"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Montag, Schivinski and Pontes \(2021\), open access \(CC BY 4\.0\) #h(1fr) Addictive Behaviors Reports] },
  footer: context { set text(size: 8.5pt, fill: rgb("#5b6476")); h(1fr); counter(page).display(); h(1fr) })
#set text(font: ("Libertinus Serif", "New Computer Modern", "DejaVu Sans"), size: 11pt, lang: "en")
#set par(justify: true, leading: 0.78em, spacing: 0.9em, first-line-indent: 1.2em)
#show heading.where(level: 1): it => block(above: 1.5em, below: 0.8em, text(size: 12.5pt, weight: "bold", it.body))
#show heading.where(level: 2): it => block(above: 1.2em, below: 0.6em, text(size: 11pt, weight: "bold", style: "italic", it.body))
#show link: set text(fill: rgb("#15203b"))

// ---------------- title page
#set par(first-line-indent: 0em)
#v(1.2cm)
#text(size: 10pt, weight: "bold", fill: rgb("#8a5a00"), tracking: 0.04em)[Open access article]
#v(0.5em)
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Is the proposed distinction of gaming disorder into a predominantly online vs\. offline form meaningful? Empirical evidence from a large German speaking gamer sample]]
#v(0.8em)
#text(size: 12pt)[Christian Montag, Bruno Schivinski, Halley M\. Pontes]
#v(0.2em)
#text(size: 10pt, style: "italic")[Ulm University\; RMIT University\; Birkbeck, University of London]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Montag, C\., Schivinski, B\., & Pontes, H\. M\. (2021). Is the proposed distinction of gaming disorder into a predominantly online vs\. offline form meaningful? Empirical evidence from a large German speaking gamer sample. #emph[Addictive Behaviors Reports, 14], Article 100391. #link("https://doi.org/10.1016/j.abrep.2021.100391")[https:\/\/doi.org\/10\.1016\/j\.abrep\.2021\.100391]
  #v(0.9em)
  Open access article distributed under the terms of the Creative Commons Attribution 4\.0 International License \(https:\/\/creativecommons\.org\/licenses\/by\/4\.0\/\)\. Originally published in Addictive Behaviors Reports, 14, 100391 \(2021\), #link("https://doi.org/10.1016/j.abrep.2021.100391")[https:\/\/doi.org\/10\.1016\/j\.abrep\.2021\.100391]\. Changes made: the text has been re\-typeset\; content is unchanged\.
  #v(0.9em)
  This version reproduces the content of the published open access article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published open access article \(CC BY 4\.0\)\; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/online-offline-gaming-disorder-devices.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Is the proposed distinction of gaming disorder into a predominantly online vs\. offline form meaningful? Empirical evidence from a large German speaking gamer sample]]
#v(0.6em)
#par(first-line-indent: 0em)[Christian Montag#super[a]\*, Bruno Schivinski#super[b] and Halley M\. Pontes#super[c]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[a]Department of Molecular Psychology, Institute of Psychology and Education, Ulm University, Ulm, Germany\; #super[b]School of Media and Communication, RMIT University, VIC 3000 Melbourne, Australia\; #super[c]Department of Organizational Psychology, Birkbeck, University of London, London, United Kingdom]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Christian Montag]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() In the eleventh revision of the International Classification of Diseases \(ICD\-11\), Gaming Disorder \(GD\) is distinguished between disordered gaming occurring predominantly online, offline, and unspecified\. Currently, no study has investigated whether such a distinction is meaningful in diagnosing disordered gaming\. Therefore, a large group of gamers with varied tendencies towards disordered gaming was recruited to examine this issue\. A large sample \(N \= 2,768\) was recruited and data were collected on disordered gaming, along with information on their preferred gaming mode and device used to play\. The present study shows that the distinction between online and offline gaming mode proposed by the WHO is meaningful because online gamers presented with the highest disordered gaming scores followed by mixed gamers \(those stating to equally prefer online and offline gaming\), and offline gamers\. Finally, it was also observed that the type of device for gaming used associated with disordered gaming levels\. Specifically, those reporting mostly to use their desktop computer for gaming showed the highest disordered gaming scores\. The present study lends empirical support for the consideration of both gaming mode and gaming device in the study of disordered gaming\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Gaming disorder, Internet gaming disorder, Gaming mode, Offline, Online, Gaming device]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 24 August 2021\; received in revised form 22 October 2021\; accepted 28 October 2021\; available online 1 November 2021\.]]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Background
#par(first-line-indent: 0em)[Video game playing is a popular leisure activity worldwide and an emerging psychosocial phenomenon\. However, concerns regarding potential detrimental effects due to excessive and dysregulated gaming engagement leading to disordered gaming have been reported as video game play is a pervasive activity across the entire lifespan \(Kircaburun et al\., 2020, Pontes, 2018\)\.]

As previously suggested \(Pontes & Griffiths, 2020\), the increased scholarly concerns about the potential addictive effects of video games coupled with the emerging body of empirical evidence supporting the clinical relevance of disordered gaming warranted the inclusion of ‘Internet Gaming Disorder’ \(IGD\) as a tentative mental health disorder within the fifth revision of the #emph[Diagnostic and Statistical Manual of Mental Disorders] \(DSM\-5\) \(American Psychiatric Association, 2013\)\. More recently, disordered gaming has gained further medical recognition as the World Health Organization decided to include Gaming Disorder \(GD\) in the eleventh revision of the #emph[International Classification of Diseases] \(ICD\-11\) as an official psychiatric condition after extensive controversies and scholarly debates \(e\.g\., Aarseth et al\., 2016, Griffiths et al\., 2017, Higuchi et al\., 2017, Kuss et al\., 2017, van Rooij et al\., 2018\)\.

In terms of its conceptualization, GD refers to a psychiatric condition in which individuals \(i\) lose control over gaming, \(ii\) continue gaming despite the experience of adverse consequences, and \(iii\) give increasing priority to gaming over previously enjoyed and relevant life interests \(World Health Organization, 2020\)\. However, for a GD diagnosis to be present, the WHO suggests that symptoms must occur within a 12\-month timeframe and the gaming behavior must lead to significant impairments in everyday life, creating difficulties and functional impairments in several areas of life \(e\.g\., professional, academic, family, romantic\) \(World Health Organization, 2020\)\.

== Structural characteristics in gaming
#par(first-line-indent: 0em)[Although the diagnostic features of GD have been established, little is known about some of its key underlying mechanisms, especially those associated with the way in which video games are developed\. It is widely known that different types of video games present with unique addictive potential based on specific design features related to their structural characteristics \(Griffiths and Nuyens, 2017, King et al\., 2010a, King et al\., 2011, Montag et al\., 2019a\)\. Structural characteristics within video games refer to those characteristics responsible for inducing play behavior in the first place, or for the inducements related to sustaining play behavior irrespective of the gamer’s psychological, physiological or socioeconomic status \(Wood, Griffiths, Chappell, & Davies, 2004\)\. Although different types of video game genres exist \(e\.g\., Multiplayer Online Battle Arena \[MOBA\], First\-Person Shooter \[FPS\], Massively Multiplayer Online Role\-Playing Games \[MMORPGs\]\), these are not typically thought of as structural characteristics per se as structural characteristics comprise the elements and components within video games and not the video games themselves \(Griffiths and Nuyens, 2017, Stavropoulos et al\., 2020a\)\.]

In the context of video game play, several structural characteristics taxonomies have been proposed by early research\. The first study to empirically examine the structural characteristics of video games \(i\.e\., Wood et al\., 2004\) suggested a total of 12 structural characteristics related to sound, graphics, background and setting, duration of game, rate of play, advancement rate, use of humor, control options, game dynamics, winning and losing features, character development, brand assurance, and multiplayer features\.

Following this early study, King, Delfabbro, and Griffiths \(2010b\) identified five broad types of structural features within video games including a total of 24 unique features that are thought to influence playing behaviors uniquely\. Accordingly, these five structural features within video games are associated with \(i\) the social features of video games, \(ii\) manipulation and control influencing outcomes in video games, \(iii\) the narrative and identity features allowing players to engage in avatar creation and storytelling, \(iv\) the reward and punishment aspects of video games determining wins and losses within the game, and \(v\) the presentation features of video games which impact on auditory and visual experiences \(King et al\., 2010b\)\.

== The role of structural characteristics in GD
#par(first-line-indent: 0em)[In the gambling studies field, structural characteristics have been widely investigated in previous research, with specific taxonomies specifically devised for both online \(McCormack & Griffiths, 2013\) and offline \(Parke & Griffiths, 2007\) gambling activities as the means for engaging in the activity \(i\.e\., online or offline\) may present with unique addictive potential\. Previous research in gambling investigating this issue suggested that online gambling is more likely to contribute to gambling disorder than offline gambling in vulnerable individuals \(Griffiths et al\., 2009, Wu et al\., 2015\)\. Online gambling may heighten people’s risk of getting addicted to gambling \(Wu et al\., 2015\)\. Internet facilitates gambling activities, availability, and promotes opportunities to gamble, which may lead to greater exposure to the activity and the experience of related harmful outcomes \(González\-Cabrera et al\., 2021\)\.]

With regards to the WHO diagnostic framework for gaming disorder \(i\.e\., GD\), the WHO distinguishes between GD due to predominantly online gaming activities \(6C51\.0\) and predominantly offline gaming activities \(6C51\.1\) \(World Health Organization, 2020\)\. Additionally, a third category referred to as “unspecified” also exists within this diagnostic framework\. This third category may characterize individuals who engage in their gaming activities equally online and offline, without a specific focus\. Although the addictive potential of other behavioral addictions such as gambling has been investigated in reference to specific structural characteristics such as online and offline \(i\.e\., land\-based\) gambling, to our knowledge no previous research examined the role of similar structural characteristic features within the WHO diagnostic framework for GD\.

It is plausible that the unique design features of video games associated to their structural characteristics might constitute a potential risk factor for GD\. One structural characteristic that has not yet been comprehensively investigated relates to multiplayer features, which comprises a specific type of structural characteristic associated with cooperative and interactive gaming behaviors allowing players to socialize with other gamers, form alliances within the game, and to engage in competitive game play \(Wood et al\., 2004\)\. It is key to investigate the role of structural characteristics in GD as they can be seen as in\-built rewards with the potential to elicit compulsive gaming behaviors through a partial reinforcement effect \(Griffiths & Nuyens, 2017\)\.

Within the APA diagnostic framework for disordered gaming \(i\.e\., IGD\) \(American Psychiatric Association, 2013\), previous research corroborated the role of multiplayer features as a particularly relevant structural characteristic in disordered gaming \(an online feature\)\. In their study, Lemmens and Hendriks \(2016\) recruited a sample of 2442 gamers to examine the role of online gaming for disordered gaming within the APA diagnostic framework for IGD\. Overall, this study found that even though online and offline gaming were both related to IGD, online gaming showed significantly higher associations with IGD than offline gaming \(Lemmens & Hendriks, 2016\)\. This finding is unsurprising as the criteria for IGD incorporates the role of the internet \(hence the online aspect of GD\)\. Furthermore, disordered gamers were found to spend up to more than four times as much time playing online games \(in detail: online role playing games\) compared to non\-disordered gamers \(Lemmens & Hendriks, 2016\)\.

== Comorbidities and neuropsychological correlates in GD
#par(first-line-indent: 0em)[Previous empirical research and review studies on GD proposed a wide range of key comorbidities and neuropsychological correlates both predicting and resulting in disordered gaming \(see González\-Bueso et al\., 2018, Karaca et al\., 2017, Kuss et al\., 2018, Macur and Pontes, 2021, Männikkö et al\., 2020, Pontes et al\., 2015, Yao et al\., 2017\)\. More recently, important factors pertaining specifically to emerging issues linked with variables such as loneliness, attention problems, and depression have been supported in both cross\-sectional \(Montag et al\., 2019b\) and longitudinal research \(Teng et al\., 2021, here depression and anxiety\)\.]

A recent study conducted by Moore, Satel and Pontes \(in press\) investigated whether disordered gaming could be predicted by health and wellbeing factors such as depression, anxiety, loneliness, attention problems, physical health problems, and psychological wellbeing in a sample of young adults and found that about 15% of the variability in GD could be explained by these predictors\. In a similar vein, a recent study by Severo et al\. \(2020\) reported that IGD was associated with severe depressive symptoms, poor sleep quality, and increased time spent gaming in a sample of 555 individuals\.

At a neuropsychological level, attention deficit has also been established as a correlate of GD\. A study by Stavropoulos et al\. \(2019\) found in a cross\-cultural sample of Australian and American gamers that those showing higher levels of inattention and hyperactivity symptoms presented with higher levels of disordered gaming\. Similarly, recent research \(Wang et al\., 2020\) proposed that the underlying neural mechanism explaining the association between GD and loneliness relates to the effective connection from the left pregenual anterior cingulate cortex to the left laterobasal amygdala as it has been shown to mediate the relationship between the GD and loneliness\.

In terms of comorbid depressive symptoms in GD, both longitudinal \(e\.g\., Burleigh et al\., 2018, Teng et al\., 2021\) and cross\-sectional \(e\.g\., O’Farrell et al\., 2020, Pontes, 2017\) research support the links between these two phenomena\.

Given that the existing evidence supporting the association between loneliness, attention problems, and depression with disordered gaming have been mostly established under the APA diagnostic framework for IGD, little is known about the extent to which such associations can be replicated under the WHO diagnostic for GD\. Therefore, it is key to explore this issue further\.

== The current study
#par(first-line-indent: 0em)[Despite the initial research by Lemmens and Hendriks \(2016\), to our knowledge no further research has been conducted to explore the role of structural characteristics \(online vs\. offline games\) in terms of the WHO diagnostic framework for GD\. From a scientific standpoint, this is timely as the WHO itself proposed the distinction between online and offline disordered gaming as relevant\. Although a substantial amount of video games focusing on the offline gaming experience exists, numerous video games require an internet connection due to their online nature\. This is not only true for many Freemium games made for smartphones, but also for classic console games where players can meet with other fellow gamers online to play together\. Note that Freemium games refer to video games where the product itself \(i\.e\., the video game\) is “free” but potential revenue can be made from the sales of extra in\-game features such as avatar customization, new or additional life, increase in health points or energy, additional turns, in\-game items, and the like\. The sole perspective of Freemium games goes beyond the scope of this study and was not distinguished from online gaming\.]

With this is in mind, the present study aims to examine the role of internet features within the WHO diagnostic framework for GD to investigate whether online, offline or mixed gamers differ in terms of their GD symptomatology\. Given that online games provide a wide range of features and the ability to play with other gamers online, it is expected that GD levels will be higher among online gamers in comparison to offline gamers, while gamers who equally prefer online and offline games being expected to fall in between both the online and offline groups of gamers\. In this context, we also mention that tendencies towards attentional problems, depression, and loneliness were assessed because earlier works by Pontes et al\., 2019, Montag et al\., 2019b demonstrated that these phenotypes are robustly \(and positively\) associated with higher tendencies towards GD\. By inclusion of these measures, the current study will be able to test whether the three gamer groups \(i\.e\., online, offline, mixed\) differ in tendencies towards GD, but also with respect to the covarying tendencies related to the aforementioned psychopathological symptoms\.

Furthermore, since not all forms of gambling are equally problematic as online gambling presents with differential addictive potential depending on the medium \(i\.e\., device\) in which the activity takes place \(see Gainsbury, Liu, Russell, & Teichert, 2016\), the present study also aimed to investigate whether the device used to play video games would be associated with different patterns of GD\.

= Material and methods
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Participants
#par(first-line-indent: 0em)[Through the promotion of the team’s German GD self\-test\-platform via radio, TV, and social media starting in May 2019 to August 2020, a final sample of N \= 2,768 \(2,356 males and 412 females\; mean#sub[age] \= 28\.70, SD#sub[age] \= 11\.91\; Germany \= 2126, Luxemburg \= 10, Austria \= 126, Switzerland \= 475, other country \= 31\; mean\-education: 4\.36 \(SD \= 1\.89\; where 1 \= no education to 7 \= degree from university\) was recruited\. A total of 13 participants stated to be professional gamers\. Participants were only included when they inserted full and plausible information\; were over 11 years \(12–17\-year\-old stated to have parental approval\)\; and mentioned to have played computer games in the last 12 months\. The informed consent was provided electronically\. Participants with implausible age information were not included in the analyses \(e\.g\., stating to be \> 17 years on the informed consent page, but then stated to be minor age\)\. Participants \(n \= 90\; 3\.25%\), who took the survey in the early stages of the COVID\-19 pandemic \(between February and August 2020\) were not deleted during the data cleaning stage as the exclusion of such participants – given the small overall proportion \- would not influence the quality and robustness of the analysis\.]

Of note, the present study is part of a larger ongoing study conducted by Montag et al\. \(2019b\) where data from 1,429 participants were investigated\. This earlier study did not focus on the gaming mode nor on gaming devices used in the context of GD\. Note that the only prominent variables not presented in this work stems from a questionnaire assessing gaming motives\. Gaming motives have been investigated in detail in this earlier study, and although of interest to the present work, it would deviate from the focus of the present study\. Internal consistencies of all questionnaires were adequate \(i\.e\., 0\.73 or higher\)\. Participants were incentivized with feedback based on their own answers to some of the measures they filled in\. The study was approved by the research team’s University Ethics Committee \(N°: 2018\/95\)\.

== Measures
#par(first-line-indent: 0em)[For the present study, it is of importance that all participants filled in standardized assessment tools examining individual differences in tendencies towards disordered gaming according to both the WHO and APA diagnostic frameworks\. Moreover, all participants completed self\-reported measures assessing symptoms of loneliness, attention problems, and depression\. All participants also provided information on playing predominantly online, offline, or mixed \(i\.e\., equally preferring online and offline games\) video games, and if they predominantly used a console, desktop\-computer, laptop or a smartphone device for gaming\.]

#block(above: 1em, below: 0.5em)[#text(size: 10.5pt)[Gaming Disorder Test \(GDT\)]]
#par(first-line-indent: 0em)[All participants filled in the GDT \(Pontes et al\., 2021\), which consists of four items being answered on a five\-point Likert scale \(“never” \= 1 to “very often” \= 5\), assessing disordered gaming as per the WHO diagnostic framework\. Test scores can range between 4 and 20 points, and higher scores indicate greater tendencies towards GD\. Cronbach’s alpha in the present sample was 0\.86\.]

#block(above: 1em, below: 0.5em)[#text(size: 10.5pt)[Internet Gaming Disorder Scale–Short\-Form \(IGDS9\-SF\)]]
#par(first-line-indent: 0em)[Participants also filled in the IGDS9\-SF by Pontes and Griffiths \(2015\), which consists of nine items answered within a five\-point Likert scale \(“never” \= 1 to “very often” \= 5\), assessing disordered gaming as per the APA diagnostic framework\. Test scores can range between 9 and 45 points, with elevated scores indicating higher tendencies towards IGD\. In the present sample, Cronbach’s alpha was 0\.88\.]

#block(above: 1em, below: 0.5em)[#text(size: 10.5pt)[Loneliness, attention problems, and depression]]
#par(first-line-indent: 0em)[Participants filled in questionnaires on loneliness \(UCLA loneliness scale\; Russell, 1996\), attention problems \(attention problems scale\; Swing et al\., 2010\), and the patient health questionnaire without the suicide item \(PHQ\-8\; Kroenke et al\., 2001\)\. Higher scores in the scales indicate higher tendencies towards loneliness, attention problems, and\/or depressive symptoms\.]

The three item UCLA loneliness scale was administered with a five\-point Likert scale format ranging from “strongly disagree” \= 1 to “strongly agree” \= 5 \(original presented wording in Pontes et al\. \(2021\): “never” \= 1 to “often” \= 4\)\. In the present sample, its Cronbach’s alpha was excellent \(0\.87\)\. The attention problem scale, also containing three items, was administered with a five\-point Likert scale format ranging from “strongly disagree” \= 1 to “strongly agree” \= 5\. In terms of scoring, both measures can yield scores ranging between 3 and 15 points, with greater scores suggesting higher symptomatology\. The attention problem scale presented a Cronbach’s alpha of 0\.73\. Furthermore, the PHQ\-8 questionnaire was administered with a four\-point Likert scale format ranging from “not at all” \= 1 to “nearly every day” \= 4\. The PHQ\-8 provides total scores ranging from 8 to 32 points, with greater scores suggesting higher levels of depressive symptoms\. In the present sample, the PHQ\-8 had a Cronbach’s alpha of 0\.82\. The internal reliability of all the scales used in this study in terms of Cronbach’s alpha were above the recommended literature threshold of 0\.70 \(Bagozzi and Youjae 1988\)\.

== Statistical analyses
#par(first-line-indent: 0em)[We conducted several #emph[t]\-tests to investigate the influence of gender on the gaming and psychopathological variables\. Correlational analyses were also performed on the main variables of interest to obtain an overview of the main associations in the present sample\. For simplicity, we present results from Multivariate Analysis of Covariance \(MANCOVAs\) with the dependent variables of gaming time \(i\.e\., weekly time spent gaming\), GD according to the WHO and APA diagnostic frameworks, as well as attention problems, loneliness, and depression symptoms\. While age was inserted as covariate, gender and gaming mode \(i\.e\., online, offline, mixed\) were inserted as independent variables\. In a second MANCOVA model, the independent variable of gaming mode was exchanged for the gaming device variable \(i\.e\., console vs\. desktop computer vs\. laptop vs\. mobile device such as a smartphone\)\.]

Please note that with the large sample size investigated, and with no meaningful differences when using non\-parametric tests, we present findings from parametric testing\. Given the brevity of this paper, we hint to a full explanation of all measures in the earlier work \(Montag et al\., 2019b\)\. The following results are presented for the full sample, because no interaction effect with gender was observed\. The full data set is available at the Open Science Framework \(OSF\) \(https:\/\/osf\.io\/ntyhr\/\)\.

= Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Descriptive statistics
#par(first-line-indent: 0em)[As presented in Table 1, gender significantly influenced all variables with females presenting lower scores on gaming related variables compared to males \(i\.e\., weekly time spent gaming, GD, and IGD\)\. Statistical significance of the difference of scores across males and females was tested with independent #emph[t]\-tests\. The reverse picture emerged for attention problems, loneliness, and depressive symptoms variables\.]

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Descriptive statistics and differences between scores of males and females]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[Total \(#emph[n] \= 2,768\)]], [#strong[Males \(#emph[n] \= 2,356\)]], [#strong[Females \(#emph[n] \= 412\)]], [#strong[#emph[t]]], [#strong[df]], [#strong[#emph[p]]]),
table.hline(stroke: 0.5pt),
[Weekly time spent gaming], [20\.39 \(15\.73\) \[16\]], [20\.99 \(15\.80\) \[18\]], [16\.97 \(14\.85\) \[14\]], [4\.81], [2766], [\< \.001],
[Gaming Disorder], [8\.69 \(3\.62\) \[8\]], [8\.85 \(3\.66\) \[8\]], [7\.79 \(3\.20\) \[7\]], [6\.05], [614,904], [\< \.001],
[Internet Gaming Disorder], [17\.44 \(7\.03\) \[15\]], [17\.72 \(7\.15\) \[16\]], [15\.89 \(6\.07\) \[14\]], [5\.49], [628,071], [\< \.001],
[Attention Problems], [6\.53 \(2\.56\) \[6\]], [6\.48 \(2\.56\) \[6\]], [6\.81 \(2\.56\) \[7\]], [−2\.44], [2766], [\< \.05],
[Loneliness], [6\.22 \(3\.04\) \[6\]], [6\.16 \(3\.01\) \[6\]], [6\.53 \(3\.19\) \[6\]], [−2\.20], [546,660], [\< \.05],
[Depression], [13\.78 \(4\.35\) \[13\]], [13\.62 \(4\.32\) \[13\]], [14\.69 \(4\.39\) \[14\]], [−4\.63], [2766], [\< \.001],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Values are #emph[M] \(#emph[SD]\) \[median\]\.]
]
#v(12pt)
== Correlation patterns between the variables of interest
#par(first-line-indent: 0em)[For interested scholars, Pearson correlations are reported between all metric variables of importance \(including age\)\. The results indicate that age was inversely and significantly associated with all gaming variables and attention problems\. Therefore age, was considered in the subsequent analysis\. A summary of the results can be found in Table 2\.]

#page(flipped: true)[
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Correlation analysis between metric variables of interest]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 9pt)[#table(columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), align: (left, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[Weekly time spent gaming]], [#strong[Gaming Disorder]], [#strong[Internet Gaming Disorder]], [#strong[Attention Problems]], [#strong[Loneliness]], [#strong[Depression]], [#strong[Age]]),
table.hline(stroke: 0.5pt),
[Weekly time spent gaming], [], [0\.38], [0\.43], [0\.10], [0\.21], [0\.26], [−0\.14],
[Gaming Disorder], [], [], [0\.84], [0\.50], [0\.41], [0\.54], [−0\.13],
[Internet Gaming Disorder], [], [], [], [0\.47], [0\.45], [0\.58], [−0\.15],
[Attention Problems], [], [], [], [], [0\.37], [0\.53], [−0\.04#super[\*]],
[Loneliness], [], [], [], [], [], [0\.53], [0\.03 \(n\.s\.\)],
[Depression], [], [], [], [], [], [], [0\.002 \(n\.s\.\)],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[All correlations are presented on two tailed level\; all #emph[p] \< \.001 except #super[\*]#emph[p] \< \.05 and n\.s\. Please note that with Spearman correlations effect sizes differ slightly \(Pearson correlations are reported here as with the large sample size we prefered to present parametric tests throughout\)\. The Spearman correlations can be found alongside the data via the OSF\-link in this paper\.]
]
#v(12pt)
]
== Relationship between gaming mode and gaming device
#par(first-line-indent: 0em)[As the present study aimed to investigate the impact of gaming mode \(i\.e\., online, offline, and mixed\) and gaming device \(i\.e\., console, desktop computer, laptop, and mobile device\) on relevant gaming variables, we checked if these variables could be regarded as independent from each other\. To do this, a χ#super[2] test was performed, and the results revealed that this was not the case \(χ#super[2] \= 92\.22, df \= 6, #emph[p] \< \.001\)\. As can be seen in the Fig\. 1, this effect was primarily driven by the group stating to mainly use the desktop computer for gaming\. Whereas in all other groups, the device was most often used to play online games, followed by people stating to mainly play offline games, and then the group of gamers playing both online and offline games \(see exception mobile device\), in the desktop\-computer group, a comparably large group of participants stated to use the desktop computer for both online #emph[and] offline gaming\.]

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 1 Participants stated which device they usually used to play video games\. In all #emph[devices groups] one can see that the most prevailing gaming mode is online\. The offline and mixed mode groups are approximately equally large in each device group with the exception of the desktop device, where the #emph[mixed group] is much larger than the offline mode group, but still smaller than the online mode group\.]]
#v(0.6em)
== Testing the variables of gaming mode and gaming device on the dependent variables of interest \(including the disordered gaming scales\)
#par(first-line-indent: 0em)[As can be seen in Table 3, the gaming mode variable influenced significantly gaming time and disordered gaming variables, but not attention problems, loneliness or depressive symptoms\. The pattern that emerged indicated that offline gaming was associated with the lowest weekly time spent gaming and lowest disordered gaming test scores according to both APA and WHO diagnostic frameworks\. Moreover, the highest level of disordered gaming and greater weekly time spent gaming was associated with online gaming\. Interestingly, the highest effects sizes were observed for the dependent variables “weekly time spent gaming” \(about 4% explained variance\) followed by the GD scores \(each about 2% explained variance\)\.]

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 3.] Associations between different gaming modes \(predominantly online, both online and offline, predominantly offline\) and gaming variables, attentional problems, loneliness, and depressive tendencies]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[Online \(#emph[n] \= 1,490\)]], [#strong[Mixed \(#emph[n] \= 740\)]], [#strong[Offline \(#emph[n] \= 538\)]], [#strong[#emph[F]#sub[\(2,2761\)]]], [#strong[#emph[p]]], [#strong[η#super[2]]]),
table.hline(stroke: 0.5pt),
[Weekly time spent gaming], [23\.02 \(16\.44\)], [20\.66 \(15\.18\)], [12\.73 \(11\.38\)], [58\.59], [\< \.001], [0\.041],
[Gaming Disorder], [9\.27 \(3\.74\)], [8\.51 \(3\.47\)], [7\.32 \(3\.04\)], [27\.49], [\< \.001], [0\.020],
[Internet Gaming Disorder], [18\.68 \(7\.31\)], [17\.00 \(6\.70\)], [14\.63 \(5\.66\)], [31\.40], [\< \.001], [0\.022],
[Attention Problems], [6\.64 \(2\.61\)], [6\.35 \(2\.47\)], [6\.45 \(2\.57\)], [0\.76], [n\.s\.], [0\.001],
[Loneliness], [6\.15 \(3\.08\)], [6\.25 \(2\.95\)], [6\.36 \(3\.05\)], [0\.04], [n\.s\.], [0\.000],
[Depression], [13\.91 \(4\.46\)], [13\.69 \(4\.38\)], [13\.53 \(3\.98\)], [1\.32], [n\.s\.], [0\.001],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Values are #emph[M] \(#emph[SD]\)\; results from MANCOVA\. Test scores can range between 4 and 20 points \(Gaming Disorder\), 9 and 45 points \(Internet Gaming Disorder\), 3 and 15 points \(Attention Problems\), 3 and 15 points \(Loneliness\) and 8 and 32 points \(Depression\)\.]
]
#v(12pt)
In Fig\. 2, we depict for better clarity one of the main results from Table 3 showing how gaming mode is associated with GDT scores\. Please note that the results are also highly significant if analyses are run, where the influence of gaming mode on GD is calculated, while inserting loneliness, attention problems, and depression as covariates \(WHO framework of disordered gaming as dependent variable: F#sub[\(2, 2762\)] \= 83,41, p \< \.001, η#super[2] \= 0\.057\; APA framework of disordered gaming as dependent variable: F#sub[\(2, 2762\)] \= 104,87, p \< \.001, η#super[2] \= 0\.071\)\.

#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 2 Gaming Disorder Test scores were highest in the group of participants stating to mainly do online games, followed by the group stating to play mostly both types of games \(online and offline\) and the offline gamers group\. Post hoc tests revealed that all groups differed significantly from each other\.]]
#v(0.6em)
== Associations between GD and gaming\-related variables
#par(first-line-indent: 0em)[Further analysis revealed that the variable assessing preference for gaming device was robustly associated both with weekly time spent gaming and disordered gaming scores\. The results indicated that participants preferring desktop\-computers for gaming also reported the highest weekly time spent gaming and greatest levels of disordered gaming \(as per the APA and WHO diagnostic frameworks\) compared to other gaming devices\. A summary of the findings is found in Table 4\.]

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 4.] Associations between different gaming devices and gaming variables, attention problems, loneliness, and depressive tendencies]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[Console \(#emph[n] \= 772\)]], [#strong[Desktop\-Computer \(#emph[n] \= 1441\)]], [#strong[Laptop \(#emph[n] \= 278\)]], [#strong[Mobile device \(#emph[n] \= 277\)]], [#strong[#emph[F]#sub[\(3,2759\)]]], [#strong[#emph[p]]], [#strong[η#super[2]]]),
table.hline(stroke: 0.5pt),
[Weekly time spent gaming], [17\.11 \(13\.04\)], [24\.15 \(16\.89\)], [16\.50 \(13\.77\)], [13\.91 \(12\.81\)], [27\.86], [\< \.001], [0\.029],
[Gaming Disorder], [8\.29 \(3\.43\)], [8\.99 \(3\.68\)], [8\.47 \(3\.65\)], [8\.45 \(3\.66\)], [4\.88], [\.002], [0\.005],
[Internet Gaming Disorder], [16\.98 \(6\.87\)], [17\.99 \(7\.07\)], [16\.68 \(6\.97\)], [16\.65 \(7\.12\)], [2\.68], [\< \.05], [0\.003],
[Attention Problems], [6\.48 \(2\.63\)], [6\.44 \(2\.51\)], [6\.68 \(2\.48\)], [6\.97 \(2\.70\)], [5\.64], [\< \.001], [0\.006],
[Loneliness], [5\.90 \(2\.92\)], [6\.32 \(3\.05\)], [6\.59 \(3\.27\)], [6\.19 \(3\.04\)], [1\.91], [n\.s\.], [0\.002],
[Depression], [13\.65 \(4\.25\)], [13\.71 \(4\.41\)], [13\.99 \(4\.43\)], [14\.25 \(4\.25\)], [1\.30], [n\.s\.], [0\.001],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Values are #emph[M] \(#emph[SD]\)\; results from MANCOVA\. Test scores can range between 4 and 20 points \(Gaming Disorder\), 9 and 45 points \(Internet Gaming Disorder\), 3 and 15 points \(Attention Problems\), 3 and 15 points \(Loneliness\) and 8 and 32 points \(Depression\)\.]
]
#v(12pt)
No interaction effects between the preferred gaming mode and preferred gaming device variables could be observed on any of the reported variables presented in Table 3, Table 4\. Therefore, we refrain from reporting detailed statistical results here\. Interested readers can consult the data set used in this study that is available through OSF \(https:\/\/osf\.io\/ntyhr\/\)\.

= Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The present study aimed to investigate whether gaming mode would be associated with different levels of disordered gaming as such a distinction has been made in the WHO diagnostic framework for GD\. According to the results obtained, this distinction is indeed meaningful because individuals playing predominantly online games were associated with the highest levels of disordered gaming in the present study, followed by mixed gamers, and offline gamers\. Hence, considering gaming mode helps estimating if a gamer might be more vulnerable for developing disordered gaming\. Please note that the explained variance in disordered gaming scores due to gaming mode is in the small area \(about 2%\), but is slightly larger when testing gaming mode in the context of weekly time spent gaming \(about 4%\), a variable associated with disordered gaming \(GD: #emph[r] \= 0\.38, hence about 14% shared variance\; see Table 2\)\.]

The current study did not only investigate gaming mode, but also the preferred gaming device in the context of GD\. Interestingly, we first observed that all devices were mainly used for online gaming activities\. This is also illustrated by 1,490 participants \(53\.83%\) preferring to play online games, followed by mixed gamers \(740\; 26\.73%\), and offline gamers \(538\; 19\.44%\)\. In all gaming device groups, online gamers represented the majority in each group followed by the offline and mixed gamers groups not deviating much in terms of group sizes \(the mobile device group consists nearly of the same number of offline and mixed gamers with mixed gamers n \= 1 higher\)\. An exception to this rule was the desktop computer group, where the group of mixed gamers was much larger than the offline gamers \(mixed gamers are here those stating using the desktop computer for both online and offline gaming\)\.

Finally, we deem it to be highly interesting that those participants stating to play computer games mainly via desktop computers showed both the highest weekly time spent gaming and disordered gaming tendencies\. This needs to be discussed in the future also against the background of Freemium games \(Montag, Lachmann, et al\., 2019a\), which are known to have built\-in gaming elements likely to prolong online play time\. Unfortunately, this is an understudied research area with much knowledge likely existing in the hands of the gaming industry, who can facilitate additional research able to tackle this issue \(Griffiths & Pontes, 2020\), but not independent researchers working isolated \(see also a comparable situation with social media platforms\; Montag et al\., 2021\)\. In general, it is plausible that online gaming is associated with highest disordered gaming levels \(see also Lemmens & Hendriks, 2016\), as online gaming provides more exciting gaming elements \(e\.g\., multiplayer features\) compared to offline games\.

With regards to the comorbidities and correlates investigated in the present study, we found evidence supporting a positive association between disordered gaming with loneliness, attention problems, and depression\. More specifically, disordered gaming as assessed under the WHO and APA diagnostic frameworks both exhibited a highly comparable association pattern \(Montag et al\., 2019b\)\. The findings obtained echo the findings of previous research reporting a positive association between IGD with loneliness \(e\.g\., Montag et al\., 2019b, Rogier et al\., 2021, Wang, 2021\), attention problems \(e\.g\., Chen et al\., 2021, Montag et al\., 2019b, Yen et al\., 2017\), and depression \(e\.g\., Evren et al\., 2019, Jeong et al\., 2019, Montag et al\., 2019b\)\. Despite corroborating previous findings, and the expected association between disordered online gaming and increased tendencies towards psychopathology, our study findings warrant further scrutiny of the inter\-relationships between GD and other comorbidities that have been proposed in the context of IGD, particularly in the context of clinical samples diagnosed with GD\.

Although this study did not observe differences in behaviours across the gender of gamers \(here we touch upon interaction effects with our main research questions\; well\-known main effects of gender on several variables are presented in Table 1\), our findings evidenced that the age of gamers was significantly associated with all gaming variables and investigated attention problems\. The literature indicates that emerging adulthood is a critical point in the prevention of psychiatric disorders and future chronic disease \(Micallef et al\., 2021\)\. This is of great concern as young gamers, if unassisted, may spend long hours playing video games, which may trigger disordered gaming symptoms such as withdrawal \(Coyne et al\., 2015\) and loss of control in the activity \(Antons et al\., 2020\) \- both core drivers of IGD as evidenced in the literature \(Pontes et al\., 2019\)\.

Despite its contributions, the present study comes with limitations\. As a consequence, the findings presented and discussed here should be interpreted with caution\. Although robust statistical methods and valid psychometric tests were administered, the present study based on self\-reported data from individuals\. Such a limitation is of importance to be mentioned in the study of problematic technology use behaviours \(Rozgonjuk et al\., 2021\), since self\-reports are not perfect instruments to check on mental status and disordered behaviours\. We, therefore, recommend researchers to further validate the presented findings using different methodologies \(e\.g\., structured interviews\) and other samples \(e\.g\., using clinical samples\)\.

A further limitation needs to be mentioned: although large, the investigated sample was not representative of the German speaking \(gamer\) population\. Moreover, as often observed in the gaming literature, only a few female gamers could be recruited for this study, and as such, future research should more strongly aim to investigate population of female gamers\. We also recommend further research to extend the findings presented in this study by investigating specific structural characteristics and differences between gaming platforms and gameplay\. For instance, researchers could investigate the differences between analog and digital games, virtual simulators, and avatars \(Stavropoulos et al\., 2020b\) and to which extent they relate to the presented findings\. This is of major interest as gaming structural characteristics relate to the immersive and reality\-shifting nature of modern gaming\.

Furthermore, the present study is cross\-sectional and of correlational nature, forbidding causal inferences between variables\. Hence what we presented in this study are associations between variables\.

= Conclusions
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Despite the aforementioned potential limitations, the authors are optimistic, that the present insights are of value, showing that the distinction between online and offline gaming is meaningful and that even gaming devices are of interest when considering the assessment of disordered gaming under the APA and WHO diagnostic frameworks\.]

= Contributions
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[CM designed the present study\. CM and HP wrote the manuscript\. CM ran the statistical analysis\. BS critically revised the paper\.]

= Funding
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[None\.]

= Declaration of Competing Interest
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The authors declare that they have no known competing financial interests or personal relationships that could have appeared to influence the work reported in this paper\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Aarseth, E\., Bean, A\. M\., Boonen, H\., Colder Carras, M\., Coulson, M\., Das, D\., et al\. \(2017\)\. Scholars’ open debate paper on the World Health Organization ICD\-11 Gaming Disorder proposal\. #emph[Journal of Behavioral Addictions, 6]\(3\), 267–270\. https:\/\/doi\.org\/10\.1556\/2006\.5\.2016\.088

American Psychiatric Association\. \(2013\)\. #emph[Diagnostic and Statistical Manual of Mental Disorders] \(5th ed\.\)\. Arlington, VA: Author\. 7

Antons, S\., Müller, S\. M\., Liebherr, M\., & Brand, M\. \(2020\)\. Gaming Disorder: How to Translate Behavioral Neuroscience Into Public Health Advances\. #emph[Current Behavioral Neuroscience Reports, 7]\(4\), 267–277\. https:\/\/doi\.org\/10\.1007\/s40473\-020\-00216\-3

Bagozzi, R\. P\., & Youjae, Y\. \(1988\)\. On the evaluation of structural equation models\. #emph[Journal of the Academy of Marketing Science, 16]\(1\), 74–94\. https:\/\/doi\.org\/10\.1007\/BF02723327

Burleigh, T\. L\., Stavropoulos, V\., Liew, L\. W\. L\., Adams, B\. L\. M\., & Griffiths, M\. D\. \(2018\)\. Depression, Internet Gaming Disorder, and the moderating effect of the gamer\-avatar relationship: An exploratory longitudinal study\. #emph[International Journal of Mental Health and Addiction, 16]\(1\), 102–124\. https:\/\/doi\.org\/10\.1007\/s11469\-017\-9806\-3

Chen, C\., Dai, S\., Shi, L\., Shen, Y\., & Ou, J\. \(2021\)\. Associations Between Attention Deficit\/Hyperactivity Disorder and Internet Gaming Disorder Symptoms Mediated by Depressive Symptoms and Hopelessness Among College Students\. #emph[Neuropsychiatric Disease and Treatment, 17], 2775–2782\. https:\/\/doi\.org\/10\.2147\/NDT\.S325323

Coyne, S\. M\., Dyer, W\. J\., Densley, R\., Money, N\. M\., Day, R\. D\., & Harper, J\. M\. \(2015\)\. Physiological indicators of pathologic video game use in adolescence\. #emph[Journal of Adolescent Health, 56]\(3\), 307–313\. https:\/\/doi: 10\.1016\/j\.jadohealth\.2014\.10\.271\.

Evren, C\., Evren, B\., Dalbudak, E\., Topcu, M\., & Kutlu, M\. \(2019\)\. Relationship of internet gaming disorder severity with symptoms of anxiety, depression, alexithymia, and aggression among university students\. #emph[Dusunen Adam The Journal of Psychiatry and Neurological Sciences, 32], 227\-235\. https:\/\/doi\.org\/10\.14744\/DAJPNS\.2019\.00032\.

Gainsbury, S\. M\., Liu, Y\., Russell, A\. M\. T\., & Teichert, T\. \(2016\)\. Is all Internet gambling equally problematic? Considering the relationship between mode of access and gambling problems\. #emph[Computers in Human Behavior, 55], 717–728\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2015\.10\.006

González\-Bueso, V\., Santamaría, J\., Fernández, D\., Merino, L\., Montero, E\., & Ribas, J\. \(2018\)\. Association between Internet Gaming Disorder or pathological video\-game use and comorbid psychopathology: A comprehensive review\. #emph[International Journal of Environmental Research and Public Health, 15]\(4\), 668\. https:\/\/doi\.org\/10\.3390\/ijerph15040668

González\-Cabrera, J\., Basterra\-González, A\., Montiel, I\., Calvete, E\., Pontes, H\. M\., & Machimbarrena, J\. M\. \(2022\)\. Loot boxes in Spanish adolescents and young adults: Relationship with internet gaming disorder and online gambling disorder\. #emph[Computers in Human Behavior, 126], 107012\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2021\.107012

Griffiths, M\. D\., Kuss, D\. J\., Lopez\-Fernandez, O\., & Pontes, H\. M\. \(2017\)\. Problematic gaming exists and is an example of disordered gaming: Commentary on: Scholars’ open debate paper on the World Health Organization ICD\-11 Gaming Disorder proposal \(Aarseth et al\.\)\. #emph[Journal of Behavioral Addictions, 6]\(3\), 296–301\. https:\/\/doi\.org\/10\.1556\/2006\.6\.2017\.037

Griffiths, M\. D\., & Nuyens, F\. \(2017\)\. An overview of structural characteristics in problematic video game playing\. #emph[Current]\. #emph[Addiction, 4]\(3\), 272–283\. https:\/\/doi\.org\/10\.1007\/s40429\-017\-0162\-y

Griffiths, M\. D\., Wardle, H\., Orford, J\., Sproston, K\., & Erens, B\. \(2009\)\. Sociodemographic correlates of internet gambling: Findings from the 2007 British Gambling Prevalence Survey\. #emph[CyberPsychology & Behavior, 12]\(2\), 199–202\. https:\/\/doi\.org\/10\.1089\/cpb\.2008\.0196

Griffiths, M\. D\., & Pontes, H\. M\. \(2020\)\. The Future of Gaming Disorder Research and Player Protection: What Role Should the Video Gaming Industry and Researchers Play? #emph[International Journal of Mental Health and Addiction, 18]\(3\), 784–790\. https:\/\/doi\.org\/10\.1007\/s11469\-019\-00110\-4

Higuchi, S\., Nakayama, H\., Mihara, S\., Maezono, M\., Kitayuguchi, T\., & Hashimoto, T\. \(2017\)\. Inclusion of gaming disorder criteria in ICD\-11: A clinical perspective in favor\. #emph[Journal of Behavioral Addictions, 6]\(3\), 293–295\. https:\/\/doi\.org\/10\.1556\/2006\.6\.2017\.049

Jeong, H\., Yim, H\. W\., Lee, S\. Y\., Lee, H\. K\., Potenza, m\. N\., Jo, S\. J\., & Son, H\. J\. \(2019\)\. Reciprocal relationship between depression and Internet gaming disorder in children: A 12\-month follow\-up of the iCURE study using cross\-lagged path analysis\. #emph[Journal of Behavioral Addictions, 8]\(4\), 725–732\. https:\/\/doi\.org\/10\.1556\/2006\.8\.2019\.74\.

Karaca, S\., Saleh, A\., Canan, F\., & Potenza, M\. N\. \(2017\)\. Comorbidity between behavioral addictions and attention deficit\/hyperactivity disorder: A systematic review\. #emph[International Journal of Mental Health and Addiction, 15]\(3\), 701–724\. https:\/\/doi\.org\/10\.1007\/s11469\-016\-9660\-8

King, D\. L\., Delfabbro, P\. H\., & Griffiths, M\. D\. \(2010a\)\. The role of structural characteristics in problem video game playing: A review\. #emph[Cyberpsychology: Journal of Psychosocial Research on Cyberspace, 4]\(1\), article 1\.

King, D\. L\., Delfabbro, P\. H\., & Griffiths, M\. D\. \(2010b\)\. Video game structural characteristics: A new psychological taxonomy\. #emph[International Journal of Mental Health and Addiction, 8]\(1\), 90–106\. https:\/\/doi\.org\/10\.1007\/s11469\-009\-9206\-4

King, D\. L\., Delfabbro, P\. H\., & Griffiths, M\. D\. \(2011\)\. The role of structural characteristics in problematic video game play: An empirical study\. #emph[International Journal of Mental Health and Addiction, 9]\(3\), 320–333\.

Kircaburun, K\., Pontes, H\. M\., Stavropoulos, V\., & Griffiths, M\. D\. \(2020\)\. A brief psychological overview of disordered gaming\. #emph[Current Opinion in Psychology, 36], 38–43\. https:\/\/doi\.org\/10\.1016\/j\.copsyc\.2020\.03\.004

Kroenke, K\., Spitzer, R\. L\., & Williams, J\. B\. W\. \(2001\)\. The PHQ\-9: Validity of a brief depression measure\. #emph[Journal of General Internal Medicine, 16]\(9\), 606–613\. https:\/\/doi\.org\/10\.1046\/j\.1525\-1497\.2001\.016009606\.x

Kuss, D\. J\., Griffiths, M\. D\., & Pontes, H\. M\. \(2017\)\. Chaos and confusion in DSM\-5 diagnosis of Internet Gaming Disorder: Issues, concerns, and recommendations for clarity in the field\. #emph[Journal of Behavioral Addictions, 6]\(2\), 103–109\. https:\/\/doi\.org\/10\.1556\/2006\.5\.2016\.062

Kuss, D\. J\., Pontes, H\. M\., & Griffiths, M\. D\. \(2018\)\. Neurobiological correlates in Internet Gaming Disorder: A systematic literature review\. #emph[Frontiers in Psychiatry, 9], 166\. https:\/\/doi\.org\/10\.3389\/fpsyt\.2018\.00166

Lemmens, J\. S\., & Hendriks, S\. J\. F\. \(2016\)\. Addictive online games: Examining the relationship between game genres and Internet Gaming Disorder\. #emph[Cyberpsychology, Behavior, and Social Networking, 19]\(4\), 270–276\. https:\/\/doi\.org\/10\.1089\/cyber\.2015\.0415

Macur, M\., & Pontes, H\. M\. \(2021\)\. Internet Gaming Disorder in adolescence: Investigating profiles and associated risk factors\. #emph[BMC Public Health, 21]\(1\), 1547\. https:\/\/doi\.org\/10\.1186\/s12889\-021\-11394\-4

Männikkö, N\., Ruotsalainen, H\., Jouko Miettunen, J\., Pontes, H\. M\., & Kääriäinen, M\. \(2020\)\. Problematic gaming behaviour and health\-related outcomes: A systematic review and meta\-analysis\. #emph[Journal of Health Psychology, 25]\(1\), 67–81\. https:\/\/doi\.org\/10\.1177\/1359105317740414

McCormack, A\., & Griffiths, M\. D\. \(2013\)\. A Scoping Study of the Structural and Situational Characteristics of Internet Gambling\. #emph[International Journal of Cyber Behavior, Psychology and Learning \(IJCBPL\), 3]\(1\), 29–49\. http:\/\/doi\.org\/10\.4018\/ijcbpl\.2013010104\.

Micallef, D\., Brennan, L\., Parker, L\., Schivinski, B\., & Jackson, M\. \(2021\)\. Where Do Online Games Fit into the Health Behaviour Ecology of Emerging Adults: A Scoping Review\. #emph[Nutrients, 13]\(8\), 2895\. https:\/\/doi\.org\/10\.3390\/nu13082895

Montag, C\., Hegelich, S\., Sindermann, C\., Rozgonjuk, D\., Marengo, D\., & Elhai, J\. D\. \(2021\)\. On Corporate Responsibility When Studying Social Media Use and Well\-Being\. #emph[Trends in Cognitive Sciences, 25]\(4\), 268–270\.

Montag, C\., Lachmann, B\., Herrlich, M\., & Zweig, K\. \(2019a\)\. Addictive features of social media\/messenger platforms and freemium games against the background of psychological and economic theories\. #emph[International journal of environmental research and public health, 16]\(14\), 2612\. https:\/\/doi\.org\/10\.3390\/ijerph16142612

Montag, C\., Schivinski, B\., Sariyska, R\., Kannen, C\., Demetrovics, Z\., & Pontes, H\. M\. \(2019b\)\. Psychopathological symptoms and gaming motives in disordered gaming—A psychometric comparison between the WHO and APA diagnostic frameworks\. #emph[Journal of Clinical Medicine, 8]\(10\), 1691\.

Moore, S\., Satel, J\., & Pontes, H\. M\. \(in press\)\. Investigating the role of health factors and psychological well\-being in Gaming Disorder\. #emph[Cyberpsychology, Behavior, and Social Networking]\.

O’Farrell, D\. L\., Baynes, K\. L\., Pontes, H\. M\., Griffiths, M\. D\., & Stavropoulos, V\. \(2020\)\. Depression and disordered gaming: Does culture matter? #emph[International Journal of Mental Health and Addiction]\. https:\/\/doi\.org\/10\.1007\/s11469\-020\-00231\-1

Parke, J\., & Griffiths, M\. D\. \(2007\)\. The role of structural characteristics in gambling\. In D\. Smith, D\. Hodgins, & R\. Williams \(Eds\.\), #emph[Research and measurement issues in gambling studies] \(pp\. 211–243\)\. New York: Elsevier\.

Pontes, H\. M\. \(2017\)\. Investigating the differential effects of social networking site addiction and Internet gaming disorder on psychological health\. #emph[Journal of Behavioral Addictions, 6]\(4\), 601–610\. https:\/\/doi\.org\/10\.1556\/2006\.6\.2017\.075

Pontes, H\. M\. \(2018\)\. Making the case for video game addiction: Does it exist or not? In C\. J\. Ferguson \(Ed\.\), #emph[Video Game Influences on Aggression, Cognition, and Attention] \(pp\. 41–57\)\. Cham: Springer International Publishing\.

Pontes, H\. M\., & Griffiths, M\. D\. \(2020\)\. A new era for gaming disorder research: Time to shift from consensus to consistency\. #emph[Addictive Behaviors, 103], 106059\. https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2019\.106059

Pontes, H\. M\., Kuss, D\. J\., & Griffiths, M\. D\. \(2015\)\. Clinical psychology of Internet addiction: A review of its conceptualization, prevalence, neuronal processes, and implications for treatment\. #emph[Neuroscience and Neuroeconomics, 4], 11–23\. https:\/\/doi\.org\/10\.2147\/NAN\.S60982

Pontes, H\. M\., Schivinski, B\., Brzozowska\-Woś, M\., & Stavropoulos, V\. \(2019\)\. Laxer clinical criteria for gaming disorder may hinder future efforts to devise an efficient diagnostic approach: A tree\-based model study\. #emph[Journal of Clinical Medicine, 8]\(10\), 1730\. https:\/\/doi\.org\/10\.3390\/jcm8101730

Pontes, H\. M\., Schivinski, B\., Sindermann, C\., Li, M\., Becker, B\., Zhou, M\., et al\. \(2021\)\. Measurement and conceptualization of Gaming Disorder according to the World Health Organization framework: The development of the Gaming Disorder Test\. #emph[International Journal of Mental Health and Addiction, 19]\(2\), 508–528\. https:\/\/doi\.org\/10\.1007\/s11469\-019\-00088\-z8

Rogier, G\., Zobel, S\. B\., & Velotti, P\. \(2021\)\. COVID\-19, loneliness and technological addiction: Longitudinal data\. #emph[Journal of Gambling Issues, 47], 108–120\. https:\/\/doi\.org\/10\.4309\/jgi\.2021\.47\.4

Rozgonjuk, D\., Schivinski, B\., Pontes, H\. M\., & Montag, C\. \(2021\)\. Problematic Online Behaviors Among Gamers: The Links Between Problematic Gaming, Gambling, Shopping, Pornography Use, and Social Networking\. #emph[International Journal of Mental Health and Addiction, October\.]\. https:\/\/doi\.org\/10\.1007\/s11469\-021\-00590\-3

Russell, D\. W\. \(1996\)\. UCLA Loneliness Scale \(version 3\): Reliability, validity, and factor structure\. #emph[Journal of Personality Assessment, 66]\(1\), 20–40\. https:\/\/doi\.org\/10\.1207\/s15327752jpa6601\_2

Severo, R\. B\., Soares, J\. M\., Affonso, J\. P\., Giusti, D\. A\., de Souza Junior, A\. A\., de Figueiredo, V\. L\., et al\. \(2020\)\. Prevalence and risk factors for internet gaming disorder\. #emph[Brazilian Journal of Psychiatry, 42]\(5\), 532–535\. https:\/\/doi\.org\/10\.1590\/1516\-4446\-2019\-0760

Stavropoulos, V\., Adams, B\. L\., Beard, C\. L\., Dumble, E\., Trawley, S\., Gomez, R\., & Pontes, H\. M\. \(2019\)\. Associations between attention deficit hyperactivity and internet gaming disorder symptoms: Is there consistency across types of symptoms, gender and countries? #emph[Addictive Behaviors Reports, 9], Article 100158\.

Stavropoulos, V\., Pontes, H\. M\., Gomez, R\., Schivinski, B\., & Griffiths, M\. \(2020a\)\. Proteus Effect Profiles: How Do they Relate with Disordered Gaming Behaviours? #emph[Psychiatric Quarterly, 91]\(3\), 615–628\. https:\/\/doi\.org\/10\.1007\/s11126\-020\-09727\-4

Stavropoulos, V\., Gomez, R\., Mueller, A\., Yucel, M\., & Griffiths, M\. \(2020b\)\. User\-avatar bond profiles: How do they associate with disordered gaming? #emph[Addictive behaviors, 103], Article 106245\.

Swing, E\. L\., Gentile, D\. A\., Anderson, C\. A\., & Walsh, D\. A\. \(2010\)\. Television and video game exposure and the development of attention problems\. #emph[Pediatrics, 126]\(2\), 214–221\. https:\/\/doi\.org\/10\.1542\/peds\.2009\-1508

Teng, Z\., Pontes, H\. M\., Nie, Q\., Griffiths, M\. D\., & Guo, C\. \(2021\)\. Depression and anxiety symptoms associated with internet gaming disorder before and during the COVID\-19 pandemic: A longitudinal study\. #emph[Journal of Behavioral Addictions, 10]\(1\), 169–180\. https:\/\/doi\.org\/10\.1556\/2006\.2021\.00016

van Rooij, A\. J\., Ferguson, C\. J\., Colder Carras, M\., Kardefelt\-Winther, D\., Shi, J\., Aarseth, E\., et al\. \(2018\)\. A weak scientific basis for gaming disorder: Let us err on the side of caution\. #emph[Journal of Behavioral Addictions, 7]\(1\), 1–9\. https:\/\/doi\.org\/10\.1556\/2006\.7\.2018\.19

Wang, Y\. \(2021\)\. The Impact of Interparental Conflicts on Online Game Addiction Symptomatology: The Mediating Roles of the Parent\-Adolescent Relationship and Loneliness in Adolescents\. #emph[Psychological Reports, 00332941211016751]\. https:\/\/doi\.org\/10\.1177\/00332941211016751

Wang, M\., Zeng, N\., Zheng, H\., Du, X\., Potenza, M\. N\., & Dong, G\. H\. \(2020\)\. Altered effective connectivity from the pregenual anterior cingulate cortex to the laterobasal amygdala mediates the relationship between internet gaming disorder and loneliness\. #emph[Psychological Medicine, 1]–#emph[10]\. https:\/\/doi\.org\/10\.1017\/S0033291720002366

Wood, R\. T\. A\., Griffiths, M\. D\., Chappell, D\., & Davies, M\. N\. O\. \(2004\)\. The structural characteristics of video games: A psycho\-structural analysis\. #emph[CyberPsychology & Behavior, 7]\(1\), 1–10\. https:\/\/doi\.org\/10\.1089\/109493104322820057

World Health Organization\. \(2020, May 13\)\. ICD\-11 Beta Draft: 6C51 Gaming disorder\. Retrieved from http:\/\/apps\.who\.int\/classifications\/icd11\/browse\/f\/en\#\/http%3a%2f%2fid\.who\.int%2ficd%2fentity%2f1448597234\.

Wu, A\. M\. S\., Lai, M\. H\. C\., & Tong, K\. K\. \(2015\)\. Internet Gambling Among Community Adults and University Students in Macao\. #emph[Journal of Gambling Studies, 31]\(3\), 643–657\. https:\/\/doi\.org\/10\.1007\/s10899\-014\-9451\-8

Yao, Y\. W\., Liu, L\., Ma, S\. S\., Shi, X\. H\., Zhou, N\., Zhang, J\. T\., & Potenza, M\. N\. \(2017\)\. Functional and structural neural alterations in Internet gaming disorder: A systematic review and meta\-analysis\. #emph[Neuroscience & Biobehavioral Reviews, 83], 313–324\.

Yen, J\. Y\., Liu, T\. L\., Wang, P\. W\., Chen, C\. S\., Yen, C\. F\., & Ko, C\. H\. \(2017\)\. Association between Internet Gaming Disorder and adult attention deficit and hyperactivity disorder and their correlates: Impulsivity and hostility\. #emph[Addictive Behaviors, 64], 308–313\. https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2016\.04\.024


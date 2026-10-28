#set document(title: "The interplay between time spent gaming and disordered gaming: A large\-scale world\-wide study", author: ("Halley M. Pontes", "Bruno Schivinski", "Christopher Kannen", "Christian Montag"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Pontes et al\. \(2022\), open access \(CC BY 4\.0\) #h(1fr) Social Science & Medicine] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[The interplay between time spent gaming and disordered gaming: A large\-scale world\-wide study]]
#v(0.8em)
#text(size: 12pt)[Halley M\. Pontes, Bruno Schivinski, Christopher Kannen, Christian Montag]
#v(0.2em)
#text(size: 10pt, style: "italic")[Birkbeck, University of London\; RMIT University\; Ulm University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Pontes, H\. M\., Schivinski, B\., Kannen, C\., & Montag, C\. (2022). The interplay between time spent gaming and disordered gaming: A large\-scale world\-wide study. #emph[Social Science & Medicine, 296], Article 114721. #link("https://doi.org/10.1016/j.socscimed.2022.114721")[https:\/\/doi.org\/10\.1016\/j\.socscimed\.2022\.114721]
  #v(0.9em)
  Open access article distributed under the terms of the Creative Commons Attribution 4\.0 International License \(https:\/\/creativecommons\.org\/licenses\/by\/4\.0\/\)\. Originally published in Social Science & Medicine, 296, 114721 \(2022\), #link("https://doi.org/10.1016/j.socscimed.2022.114721")[https:\/\/doi.org\/10\.1016\/j\.socscimed\.2022\.114721]\. Changes made: the text has been re\-typeset and Fig\. 1 redrawn\; content is unchanged\.
  #v(0.9em)
  This version reproduces the content of the published open access article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published open access article \(CC BY 4\.0\)\; the publisher\'s typesetting and layout have been removed and Fig\. 1 redrawn\.
Downloaded from #link("https://schivinski.com/papers/time-spent-gaming-disordered-gaming.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[The interplay between time spent gaming and disordered gaming: A large\-scale world\-wide study]]
#v(0.6em)
#par(first-line-indent: 0em)[Halley M\. Pontes#super[a]\*, Bruno Schivinski#super[b], Christopher Kannen#super[c] and Christian Montag#super[c]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[a]Department of Organizational Psychology, Birkbeck, University of London, London, United Kingdom\; #super[b]School of Media and Communication, RMIT University, Melbourne, Victoria, 3000, Australia\; #super[c]Department of Molecular Psychology, Institute of Psychology and Education, Ulm University, 89081, Ulm, Germany]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Halley M\. Pontes]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() #strong[Background:] ‘Gaming Disorder’ \(GD\) is now an officially recognized mental health disorder according to the World Health Organization \(WHO\) framework while ‘Internet Gaming Disorder \(IGD\) remains as a tentative disorder as per the American Psychiatric Association \(APA\) framework\. Although both GD and IGD reflect disordered gaming tendencies marked by excessive time spent gaming, little is known about the extent to which too much time spent gaming becomes particularly problematic\. Moreover, emerging research has highlighted the need to further explore how both disordered gaming frameworks perform in the assessment and estimation of disordered gaming symptoms and related behaviors\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Methods:] The primary aim of the present study was to shed light on the complex relationship between time spent gaming and disordered gaming and to provide prevalence estimates of disordered gaming across the WHO and APA frameworks\. This study adopted an online survey methodology and a cross\-sectional design in a large sample of 123,262 eligible gamers from 168 countries\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Results:] The results obtained indicated that the prevalence rate of disordered gaming among the participants was smaller when assessed with the WHO framework \(i\.e\., 1\.96%\) in comparison to the APA framework \(i\.e\., 4\.97%\)\. Additionally, the relationship between time spent gaming and disordered gaming varied, and disordered gaming was associated on average with 34\.53 h of gaming a week within the APA framework \(i\.e\., with at least five criteria endorsed\; higher gaming\-time\-averages for those endorsing more criteria\) and an average of 40\.13 h a week within the WHO framework \(i\.e\., with all criteria endorsed\)\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Conclusions:] The relationship between weekly time spent gaming and disordered gaming is multifaceted and varies according to the diagnostic framework adopted\. The results highlight the need for further refinement at the diagnostic level in regard to disordered gaming\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Time spent gaming, Gaming disorder, American Psychiatric association, World health organization]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 15 February 2021\; received in revised form 8 January 2022\; accepted 10 January 2022\; available online 12 January 2022\.]]
#v(0.6em)
= 1\. Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[In May 2019, the World Health Organization \(WHO\) has historically decided to elevate the status of ‘Gaming Disorder’ \(GD\) to an officially recognized mental health disorder to be included in the eleventh revision of the #emph[International Classification of Diseases] \(ICD\-11\) \(Pontes and Griffiths, 2020\)\. Prior to GD becoming an official addictive disorder, the American Psychiatric Association \(APA\) had preliminarily recognized ‘Internet Gaming Disorder’ \(IGD\) as an emerging condition in the fifth revision of the #emph[Diagnostic and Statistical Manual of Mental Disorders] \(DSM\-5\) in May 2013 \(APA, 2013\)\. However, it is worth noting that IGD was proposed as a tentative condition in need of further research \(APA, 2013\)\. When experienced at more severe levels, disordered gaming can lead to problems that may include academic failure, job loss or marriage failure as the gaming behavior tends to displace usual and expected social, work and\/or educational, relationship and family activities \(APA, 2013\)\.]

Although the term GD and IGD both refer to the same psychological phenomenon, they are significantly distinct in diagnostic terms\. Based on the APA framework \(APA, 2013\), disordered gaming is indicated by the endorsement of at least five of the following nine diagnostic criteria: \(i\) preoccupation with gaming, \(ii\) the experience of withdrawal symptoms when gaming is not possible, \(iii\) the experience of tolerance, which escalates the need to be engaged in gaming activities, \(iv\) unsuccessful attempts to control the gaming behavior, \(v\) loss of interest in previous activities such as hobbies and entertainment as a result of and with the exception of gaming, \(vi\) continued dysregulated gaming behavior despite knowledge of psychosocial problems, \(viii\) deception of significant others, such as family members or even therapists regarding the amount of time spent gaming, \(viii\) engaging in gaming to escape or relieve negative moods, and \(ix\) jeopardizing or losing a significant relationship, job or educational or career opportunities due to gaming\.

The WHO framework \(WHO, 2020\) defines disordered gaming as a dysfunctional phenomenon whereby gamers experience \(i\) impaired control over gaming behaviors, \(ii\) a substantial increase in the priority given to gaming to the extent that it takes precedence over all other previously meaningful interests, \(iii\) continuation and escalation of the gaming behavior irrespective of the occurrence of serious negative consequences as a result of the excessive engagement with the activity, and \(iv\) significant impairments in personal, family, social, educational, professional, and\/or other important areas of functioning\. In addition to these four criteria, differential diagnosis can be achieved by ruling out the presence of hazardous gaming, bipolar type I and type II disorders \(WHO, 2020\)\.

Despite the marked diagnostic differences, both frameworks proposed a consensual timeframe for the diagnosis of disordered gaming\. The APA \(APA, 2013\) defined that the clinical presentation of disordered gaming relates to a behavioral pattern manifested by persistent and dysregulated gaming, leading to clinical and functional impairment within a 12\-month timeframe\. Similarly, the WHO \(WHO, 2020\) defined that disordered gaming manifests through a pattern of recurrent gaming behavior in which its key clinical symptoms also manifest within a 12\-month timeframe\. Nevertheless, the required duration prescribed by the WHO may be shortened if all diagnostic requirements are met and symptoms are severe\.

Due to the significant heterogeneity across both frameworks for disordered gaming, scholars have now started to examine how these differences may impact on clinical and empirical outcomes\. More recently, Montag et al\. \(2019\) have recruited a large and heterogenous sample of German gamers to examine how such diagnostic heterogeneity in the APA and WHO framework may impact on the interplay between disordered gaming, psychiatric symptoms, well\-being factors \(i\.e\., depression, loneliness, and attention problems\), and psychological motives to play video games\. After analyzing the results, the study concluded that \(i\) prevalence rates of disordered gaming differed significantly according to the chosen framework, with the WHO framework producing more conservative prevalence rates \(i\.e\., 3\.28%\) in comparison to the APA framework \(i\.e\., 5\.74%\), and that \(ii\) only marginal estimation differences had emerged across the two frameworks in a mediation analysis of the relationship between psychiatric symptoms, well\-being factors, and disordered gaming through psychological motives to play video games\.

Although research on disordered gaming has greatly evolved over the last two decades, little is known about how much gaming is too much when drawing the line between disordered and non\-disordered gaming in regard to time spent gaming\. The current literature suggests that time spent gaming is a significant predictor of disordered gaming as increased amounts of time devoted to gaming robustly predict augmented levels of disordered gaming symptoms \(Evren et al\., 2018\; Pontes and Griffiths, 2016\; Pontes et al\., 2014, 2016, 2019, 2021\)\. However, the lack of empirical evidence regarding the relationship between disordered gaming and time spent gaming in the context of the two leading disordered gaming frameworks is particularly worrisome\.

Although previous research has investigated the role of time spent gaming in relation to disordered gaming \(see Milani et al\., 2018\), no previous investigation has been conducted to ascertain how time spent gaming and disordered gaming comparatively intertwines in the context of the APA and WHO frameworks\.

Given the consistent evidence supporting the association between time spent gaming and disordered gaming \(Buono et al\., 2020\; Triberti et al\., 2018\), exploring this relationship further is paramount due to the potential that time spent on gaming activities has to inform and enhance diagnostic practices and to help elucidate the impact of excessive engagement with gaming on psychological health and well\-being more broadly\. To this end, little and inconsistent guidance has been provided by official medical bodies \(e\.g\., APA and WHO\) to enable researchers, mental health practitioners, and other stakeholders \(e\.g\., parents\) to understand how much is too much when it comes to drawing the line between healthy and unhealthy gaming engagement\.

Currently, the APA \(APA, 2013\) suggest in the DSM\-5 that those experiencing disordered gaming will have more hours spent gaming as ‘they typically devote 8–10 h or more per day to this activity and at least 30 h per week’ \(p\. 796\)\. The WHO, however, did not provide any specification at all regarding what constitutes healthy gaming in terms of time spent with the activity\. Taken together, there is currently a lack of an evidence\-based understanding in relation to how time spent on gaming activities relates to disordered gaming at different levels of this disorder\.

Beyond elucidating the extent to which time spent gaming may become problematic in terms of amplifying or mitigating disordered gaming symptoms, further understanding this complex relationship is particularly relevant and timely given the emerging mounting evidence from large and robust studies linking heavy use of digital media \(such as gaming\) with decreased psychological well\-being \(Twenge, 2019\)\. Therefore, considering the aforementioned rationale, the main aim of the present study is to explore the complex interplay between time spent gaming across the APA and WHO frameworks in order to provide specific evidence\-based data informing how much gaming may be too much\. We will also investigate this research question by accounting for the potential effects of gender as it has been established in the literature that male individuals are more prone to suffer from disordered gaming than females \(Fam, 2018\; Su et al\., 2020\)\. Thus, the interplay between time spent gaming and disordered gaming symptoms will account for gender\-related effects\.

Achieving this aim is important for two main reasons\. Firstly, it will help clarify whether potential discrepancies exist across the two leading disordered gaming frameworks when it comes to understanding the relationship between time spent gaming and disordered gaming\. Secondly, it will help illustrate how the relationship between time spent gaming and disordered gaming may differ between males and females\. Thus, this study contributes to the literature by adopting a nuanced gender\-based approach since previous research has shown that females and males often exhibit different patterns of digital technology use that is coupled with unique mental health\-related outcomes \(Twenge et al\., 2020\)\.

= 2\. Methods
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 2\.1\. Participants and procedures
#par(first-line-indent: 0em)[The present study recruited a large multinational sample of gamers in the context of the ‘Smart Gaming’ campaign \(https:\/\/about\.eslgamin g\.com\/portfolio\/smart\-gaming\/, accessed on 9th February 2022\), a global campaign developed to promote responsible and healthy gaming behaviors among diverse gaming communities via the platform htt ps:\/\/do\-i\-play\-too\-much\-videogames\.com \(accessed on 9th February 2022\)\. The current study is part of a large project and it was the result of a partnership established with ESL Gaming to ensure that alongside educating gamers on their behaviors the researchers could independently and autonomously investigate gaming behaviors, individual differences, and health\-related factors in the sample recruited\. The role of ESL Gaming was just to facilitate and promote our survey without having input on any aspects of the study\. Furthermore, the researchers have opted to not receive any incentives or rewards from ESL Gaming when conducting this study to avoid potential conflict of interests\. The study has received ethical approval by the research team’s University Ethics Committee \(College Research Ethics Committee of the Nottingham Trent University \[2018\/95\]\)\. All participants were assured the data used for the analysis was anonymous and confidential\.]

Data was collected via the platform using a designated online survey platform\. The platform was heavily promoted online and offline through several sources including university press releases, specialized gaming forums and websites, online magazines, international news platforms, radio interviews\. No financial incentives were provided to the participants recruited\. Instead, upon completion of the survey, participants were provided with detailed anonymized normative feedback containing graphical and text\-based data\-driven insights into their own gaming behaviors in comparison to those who had completed the survey at that point in time\. In the feedback stage, participants received a unique link tied to their data that could be used at a later time to check their personalized feedback when the study had collected more data so that the feedback could be further compared against a larger pool of participants\. This procedure ensured the participants engaged with the task in a meaningful way\. Both the platform and survey were displayed to participants in English language\.

To minimize potential confounding effects related to the COVID\-19 pandemic, the data to be utilized in the present study include only participants who were recruited between May 2019 to December 2019\. The rationale for this decision was informed by recent reports suggesting that the COVID\-19 pandemic has exacerbated mental health disorders, particularly in relation to gaming and other digital technologies \(Islam et al\., 2021\; Teng et al\., 2021\)\.

While participants aged between 12–15 years were required to provide electronic parental permission, those aged 16 and above were asked to provide an electronic informed consent to partake in the study\. In total, 182,586 participants from 179 countries were initially recruited to the study\.

== 2\.2\. Data management and cleaning procedures
#par(first-line-indent: 0em)[Prior to conducting the data analyses, the initial data set was scrutinized through several steps for the purposes of data cleaning to ensure the robustness of the statistical analyses\. The data cleaning process initially excluded participants that: i\) did not provide parental consent \(#emph[n] \= 11,364, 6\.22%\)\; ii\) were under 12 years of age \(#emph[n] \= 25,633, 14\.03%\)\; iii\) reported being older than 80 years of age \(#emph[n] \= 176, #emph[\<] 0\.09%\)\; iv\) did not play video games in the last 12 months from the date of taking the survey \(#emph[n] \= 634, 0\.34%\)\; v\) endorsed a sham item i\.e\., reported playing a fictitious game \(#emph[n] \= 4,663, 2\.55%\)\; vi\) provided unreasonable amounts of time spent gaming i\.e\., over 119 h a week, which assumes the average of 7 h of daily sleep a week \(#emph[n] \= 760, 0\.41%\)\; vii\) reported playing more than 48 h during the weekend alone \(#emph[n] \= 864, 0\.47%\)\; and viii\) reported not being competent in English language – the survey was administered in English \(#emph[n] \= 15,230, 8\.34%\)\. All data cleaning procedures and analyses were conducted using the statistical package R \(version 4\.0\.0\) \(R Core Team, 2020\)\.]

The data set was further screened for careless and insufficient effort, which occurs when participants engage with the survey with low or little motivation to comply with its instructions and to correctly interpret the contents of the survey items, providing inaccurate responses \(Huang et al\., 2012\)\. Detecting and deterring carelessness and insufficient effort is important as it greatly enhances the quality of the analyses \(Huang et al\., 2012\)\. This procedure included an invariability screening through a long\-string analysis using the #emph[longstring\(\)] function in the careless package \(Yentes and Wilhelm, 2018\), which indicated that no participants had a length of string equal or greater than half of the total length of the survey items utilized in this study \(Curran, 2016\; Huang et al\., 2012\)\. As a result, no further participants were excluded, and the final sample consisted of 123,262 eligible participants from 168 countries \(see Table 1 for further demographic information\)\. The data presented with no missing values due to forced responses being implemented\. As part of the gaming campaign, to receive meaningful feedback on their gaming behaviors, participants were required to fill in the survey completely\.

== 2\.3\. Measures
#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 1.] Sociodemographic characteristics and related gaming behaviors]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Variable]], [#strong[Overall]], [#strong[Female]], [#strong[Male]]),
table.hline(stroke: 0.5pt),
[Sample size \(#emph[n]\)], [123,262], [9,058 \(7\.34\)], [114,204 \(92\.65\)],
[Age \(years\) \(mean, SD\)], [24\.35 \(7\.57\)], [24\.34 \(7\.64\)], [24\.35 \(7\.57\)],
[Age category 12–19 \(#emph[n], %\)], [36,017 \(29\.21\)], [2,404 \(1\.95\)], [33,613 \(27\.26\)],
[Age category 20–39 \(#emph[n], %\)], [82,181 \(66\.67\)], [6,273 \(5\.08\)], [75,908 \(61\.58\)],
[Age category 40–59 \(#emph[n], %\)], [4,826 \(3\.91\)], [343 \(\.27\)], [4,483 \(3\.63\)],
[Age category 60 and above \(#emph[n], %\)], [238 \(\.19\)], [38 \(\.03\)], [200 \(\.16\)],
[Relationship status \(not in a relationship, %\)], [74,852 \(60\.72\)], [4,333 \(3\.51\)], [70,519 \(57\.21\)],
[Employment \(not working, %\)], [59,150 \(47\.98\)], [4,901 \(3\.97\)], [54,249 \(44\.01\)],
[Education \(high school graduate diploma, %\)], [45,192 \(36\.66\)], [3,196 \(2\.59\)], [41,996 \(34\.07\)],
[Weekly time spent gaming \(mean, SD\)], [23\.09 \(16\.59\)], [21\.18 \(17\.02\)], [23\.24 \(16\.55\)],
[Percentage of time spent gaming on weekend \(%\)], [41\.71], [43\.53], [41\.56],
[Mostly played mode of video games \(online, %\)], [42,682 \(34\.62\)], [2,506 \(2\.03\)], [40,176 \(32\.59\)],
[Membership to an in\-game social group \(yes, %\)], [39,091 \(31\.71\)], [2,953 \(2\.39\)], [36,138 \(29\.31\)],
[Gaming disorder prevalence–WHO \(#emph[n], %, 95% CI\)], [2,418 \(1\.96, 1\.88–2\.04\)], [197 \(\.16, \.14–\.18\)], [2,221 \(1\.80, 1\.73–1\.88\)],
[Gaming disorder prevalence–APA \(#emph[n], %, 95% CI\)], [6,127 \(4\.97, 4\.85–5\.09\)], [551 \(\.45, \.41–\.49\)], [5,576 \(4\.52, 4\.41–4\.64\)],
[Gaming disorder severity–WHO \(GDT mean, SD\)], [8\.87 \(3\.19\)], [8\.92 \(3\.37\)], [8\.87 \(3\.18\)],
[Gaming disorder severity–APA \(IGDS9\-SF mean, SD\)], [17\.86 \(6\.23\)], [18\.26 \(6\.57\)], [17\.83 \(6\.20\)],
[#emph[Item\-related descriptive statistics \(mean, SD\)]], [], [], [],
[GDT item 1: Difficulties controlling gaming], [2\.19 \(1\.01\)], [2\.21 \(1\.04\)], [2\.18 \(1\.01\)],
[GDT item 2: Increased priority to gaming], [2\.68 \(1\.07\)], [2\.72 \(1\.11\)], [2\.68 \(1\.07\)],
[GDT item 3: Usage despite problems], [2\.26 \(1\.19\)], [2\.25 \(1\.22\)], [2\.26 \(1\.19\)],
[GDT item 4: Experience of significant problem], [1\.75 \(\.91\)], [1\.73 \(\.94\)], [1\.76 \(\.91\)],
[IGDS9\-SF item 1: Preoccupation], [2\.53 \(1\.19\)], [2\.40 \(1\.21\)], [2\.54 \(1\.19\)],
[IGDS9\-SF item 2: Withdrawal symptoms], [1\.80 \(\.99\)], [1\.89 \(1\.07\)], [1\.79 \(\.98\)],
[IGDS9\-SF item 3: Tolerance], [2\.12 \(1\.10\)], [2\.17 \(1\.15\)], [2\.11 \(1\.10\)],
[IGDS9\-SF item 4: Difficulties controlling gaming], [1\.81 \(\.98\)], [1\.80 \(1\.00\)], [1\.81 \(\.98\)],
[IGDS9\-SF item 5: Loss of interest], [2\.11 \(1\.14\)], [2\.18 \(1\.19\)], [2\.11 \(1\.13\)],
[IGDS9\-SF item 6: Usage despite problems], [1\.89 \(1\.11\)], [1\.88 \(1\.15\)], [1\.89 \(1\.11\)],
[IGDS9\-SF item 7: Deception of others], [1\.53 \(\.90\)], [1\.46 \(\.88\)], [1\.54 \(\.90\)],
[IGDS9\-SF item 8: Playing to escape negative moods], [2\.70 \(1\.26\)], [3\.13 \(1\.26\)], [2\.66 \(1\.25\)],
[IGDS9\-SF item 9: Risking relationships and opportunities], [1\.39 \(\.81\)], [1\.34 \(\.78\)], [1\.39 \(\.82\)],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Notes: SD: Standard Deviation\; GDT: Gaming Disorder Test\; IGDS9\-SF: Internet Gaming Disorder Scale–Short\-Form\. CI \= Confidence Interval\.]
]
#v(12pt)
#block(above: 1em, below: 0.5em)[#text(size: 10.5pt)[2\.3\.1\. Sociodemographic and gaming\-related variables]]
#par(first-line-indent: 0em)[Sociodemographic characteristics and gaming\-related behaviors were collected in terms of country, gender, age, relationship status, employment status, education levels, average weekly time spent gaming, and percentage of weekly time spent gaming on weekends alone, mostly played mode of video games \(online\; offline\; or both\), membership to an in\-game social group \(e\.g\., clan, guild\) \(yes\/no\), and video game play in the past 12 months from the date of taking the survey \(yes\/no\)\. Finally, in line with similar research \(Montag et al\., 2019\), the following sham item was added to the survey to further enhance the quality of the data and help detecting mischievous responding: “#emph[Have you played the game Semeron Online in the last] 12 months?” \(yes\/no\)\.]

#block(above: 1em, below: 0.5em)[#text(size: 10.5pt)[2\.3\.2\. Disordered gaming]]
#par(first-line-indent: 0em)[To measure symptoms of disordered gaming, both the Gaming Disorder Test \(GDT\) \(Pontes et al\., 2021\) and the Internet Gaming Disorder Scale–Short\-Form \(IGDS9\-SF\) \(Pontes and Griffiths, 2015\) were adopted due to the large cross\-cultural evidence supporting the use of these two psychometric tests to assess disordered gaming in diverse populations \(see Beranuy et al\., 2020\; Evren et al\., 2018\; Evren et al\., 2020\; Monacis et al\., 2016\; Montag et al\., 2019\; Pontes and Griffiths, 2016\; Pontes et al\., 2016\; Schivinski et al\., 2018\; Severo et al\., 2020\; Wu et al\., 2017\; Yam et al\., 2019\)\.]

The GDT measures disordered gaming symptoms occurring in the past 12 months according to the WHO framework \(World Health Organization, 2020\) using four items answered on a five\-point Likert scale ranging from 1 ‘never’ to 5 ‘very often’\. GDT total scores are computed by summing the participants’ answers to all four items \(ranging from 4 to 20 points\), with higher scores indicating increased levels of disordered gaming symptoms\. The GDT has been originally developed in English and was the first standardized psychometric test to measure GD \(WHO framework\)\. Furthermore, there is increasing cross\-cultural evidence supporting its use across different cultural contexts as it has been successfully developed and psychometrically investigated in Turkey \(Evren et al\., 2020\), Germany \(Montag et al\., 2019\), and China \(Pontes et al\., 2021\)\. These studies attest the cross\-cultural validity and reliability of the GDT for measuring GD\. Following the existing recommendations for the GDT \(Pontes et al\., 2021\), participants endorsing all GD symptoms \(i\.e\., answering all four items with ‘often’ \[4\] or ‘very often’ \[5\]\) were identified as potentially disordered gamers for the purposes of statistical analyses\. In the present study, the GDT exhibited adequate levels of reliability \(α \= 0\.76\; ω#sub[h] \= 0\.74\; ω#sub[t] \= 0\.78\)\.

Similarly, the IGDS9\-SF assesses disordered gaming symptoms taking place within a 12\-month timeframe, using nine items measuring the severity of disordered gaming and its harmful effects as per the APA framework \(American Psychiatric Association, 2013\)\. The IGDS9\-SF items are answered using a five\-point Likert scale ranging from 1 ‘never’ to 5 ‘very often’\. Total scores for the IGDS9\-SF are computed by summing the individual answers to all nine items \(ranging from 9 to 45 points\), with higher scores signaling greater levels of disordered gaming\. To discriminate between potentially disordered and non\-disordered gamers, the recommended APA approach was implemented, and those providing responses of ‘often’ \(4\) or ‘very often’ \(5\) on at least five out of the nine items were considered as potentially disordered gamers\. The IGDS9\-SF has shown adequate levels of reliability in the present study \(α \= 0\.84\; ω#sub[h] \= 0\.75\; ω#sub[t] \= 0\.85\)\.

== 2\.4\. Statistical analyses
#par(first-line-indent: 0em)[To achieve the main aim of the present study, IBM SPSS and R programming language for statistical computing and graphics \(version 4\.0\.0\) \(R Core Team, 2020\) was utilized to conduct all statistical analyses of the study with the aid of the packages car \(version 3\.0\.8\) \(Fox and Weisberg, 2019\), psych \(version 1\.9\.12\) \(Revelle, 2020\), ufs \(version 0\.7\.2\) \(Gjalt\-Jorn, 2021\), and ggplot2 \(version 3\.3\.1\) \(Wickham, 2016\)\. Initially, a descriptive statistical analysis of the sample and an in\-depth comparative analysis of disordered gaming prevalence rates across both male and female participants was conducted to provide further information about the extent of disordered gaming within the sample\.]

Following this, we explored specific gender\-based patterns of disordered gaming criteria endorsement in function of time spent gaming through data visualization\. Finally, to further explore and consolidate the results obtained from the data visualization step, we computed two one\-way Analysis of Variance \(ANOVA\) models to investigate how weekly time spent gaming is associated with distinct levels of disordered gaming according to the number of criteria endorsed\. Results were provided in regard to the assumptions of the ANOVAs conducted, effect sizes, and post hoc comparison testing whenever applicable\. All the analyses were performed across the APA and WHO frameworks for comparative purposes\.

= 3\. Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 3\.1\. Descriptive statistics and comparative prevalence rates analyses
#par(first-line-indent: 0em)[For readability purposes, this section only reports the overall descriptive statistics of the sample\. Table 1 summarizes all relevant sociodemographic characteristics and gaming\-related behaviors in the overall sample, female, and male subsamples\. Accordingly, the overall sample was mainly represented by males \(i\.e\., 92\.65%, #emph[n] \= 114,204\)\. The mean age was 24\.35 years \(SD \= 7\.57 years\), and the most prevalent age group was between 20\-39 years \(66\.67%\; #emph[n] \= 82,181\)\. About 60\.72% \(#emph[n] \= 74,852\) of all participants in the overall sample declared not being involved in a romantic relationship\. In terms of employment status, about 47\.98% \(#emph[n] \= 59,150\) of all participants reported to be without a paid activity at the time of the survey\.]

Regarding the levels of education, high school graduate diploma was the most frequent reported degree \(36\.66%, #emph[n] \= 45,192\) followed by bachelor’s degree \(22\.51%, #emph[n] \= 27,757\)\. Furthermore, the average weekly time spent gaming \(i\.e\., gaming screen time\) in the overall sample was 23\.09 h \(SD \= 16\.59 h\), with about 41\.71% of this time being spent over the weekend alone\. In terms of other gaming\-related behaviors within the overall sample, video games were played both online and offline \(41\.39%, #emph[n] \= 51,022\), closely followed by those preferring only online games \(34\.62%, #emph[n] \= 42,682\)\. In terms of membership to an in\-game social group, about 31\.71% \(#emph[n] \= 39,091\) of the overall sample reported being members of an organized in\-game social group\. Furthermore, regarding the country of origin of the respondents, the highest proportions of gamers were from Poland \(11\.25%, #emph[n] \= 13,868\), France \(10\.23%, #emph[n] \= 12,616\), Spain \(9\.97%, #emph[n] \= 12,296\), United States \(9\.17%, #emph[n] \= 11,314\), Russia \(8\.06%, #emph[n] \= 9,946\), and the United Kingdom \(5\.23%, #emph[n] \= 6,450\)\. Other countries participated with significantly less participants\.

The prevalence rates and severity levels of disordered gaming observed are reported for the overall sample, female, and male subsamples according to the WHO and APA frameworks \(see Table 1\)\. In the overall sample, the prevalence rate of GD was found to be about 1\.96% \(#emph[n] \= 2,418, 95% Confidence Interval \[CI\] \= 1\.88–2\.04%\) when assessed with the WHO framework and 4\.97% \(#emph[n] \= 6,127, CI \= 4\.85–5\.09\) when assessed under the APA framework\. With regards to the severity levels of GD using the WHO framework, these were as follows: mean#sub[\(GD\.overall\)] \= 8\.87\; SD \= 3\.19\; min \= 4, max \= 20\; mean#sub[\(GD\.female\)] \= 8\.92\; SD \= 3\.37\; min \= 4, max \= 20\; mean#sub[\(GD\.male\)] \= 8\.87\; SD \= 3\.18\; min \= 4, max \= 20\. In terms of the severity levels of IGD as per the APA framework, these were: mean#sub[\(IGD\.overall\)] \= 17\.86\; SD \= 6\.23\; min \= 9, max \= 45\; mean#sub[\(IGD\.female\)] \= 18\.26\; SD \= 6\.57\; min \= 9, max \= 45\; mean#sub[\(IGD\.male\)] \= 17\.83\; SD \= 6\.20\; min \= 9, max \= 4\.5\.

== 3\.2\. Disordered gaming criteria endorsement and time spent gaming
#par(first-line-indent: 0em)[In order to further understand how weekly time spent gaming intertwines with different levels of disordered gaming criteria endorsement across the WHO and APA frameworks, a data visualization approach was employed to illustrate this process taking into account both genders \(see Figs\. 1 and 2\)\.]

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 1\. Number of disordered gaming criteria and average weekly time spent gaming\. Redrawn from the published figure \(values as labelled on it\)\.]]
#v(0.6em)
#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 2\. Disordered gaming status and average weekly time spent gaming across males and females\.]]
#v(0.6em)
The mean scores for the endorsement of each criterion of the WHO and APA frameworks were computed for both females and males using the existing recommendations for the GDT \(Pontes et al\., 2021\) and the recommended APA approach \(detailed within subsection 2\.3\.2\)\. Fig\. 1 illustrates the data visualization findings \(see Supplementary Table 3 for further details\)\. As for the associations between the number of disordered gaming criteria endorsed \(within the APA framework\) and weekly time spent gaming, a linear trend was observed whereby the average weekly time spent increases as the number of criteria endorsed increases among males and females\. Furthermore, at the descriptive level males exhibited higher weekly time spent gaming than females when considering up to five IGD criteria endorsed\.

However, this pattern was reversed and females showed higher weekly time spent gaming when the number of criteria endorsed was between six to nine\. As for the WHO framework, similarly to the APA framework findings, the relationship between number of criteria endorsed and weekly time spent increased linearly\. At the gender\-level, while males showed higher average weekly time spent than females when considering zero to three criteria endorsed, females showed slightly higher weekly time spent gaming than males when considering those endorsing all four criteria\. All in all, at disordered gaming levels, both males and females exceed the threshold of 30 h per week in both the WHO and APA frameworks\.

== 3\.3\. Comparisons of time spent gaming at varying levels of disordered gaming symptom\-endorsement
#par(first-line-indent: 0em)[A one\-way ANOVA was conducted to further investigate the effects of disordered gaming symptom endorsement patterns on time spent gaming across the WHO and APA frameworks in the overall sample\. The parametric assumptions related to the normality of the residuals, linearity, and homoscedasticity were examined\. The normal distribution assumption was fulfilled as there were no absolute values of skewness #emph[\>]3 and kurtosis #emph[\>]8 \(Kline, 2011\) on the dependent variable \(i\.e\., weekly time spent gaming\) and as the residual histogram plot produced a bell\-shaped trend curve\. Moreover, the assumption of linearity was inspected through residual analysis by plotting residuals and fitted values, which indicated no violation of the linearity assumption\. Finally, homogeneity of variance was checked with the Breusch Pagan\-Test \(Breusch and Pagan, 1979\) applying Sidak #emph[p]\-value correction to control for family\-wise error rate \(i\.e\., Type 1 error\), with the results suggesting heteroscedasticity for the two one\-way ANOVA models to be tested \(χ#super[2]#sub[WHO]\[4\] \= 2,275\.40, #emph[p \<] \.001 and χ#super[2]#sub[APA]\[9\] \= 2,404\.90, #emph[p \<] \.001\)\. Consequently, the results of the ANOVA are reported using Welch’s #emph[F] \(Welch, 1951\) as it is recommended as the main alternative to ANOVA #emph[F] test under variance heterogeneity in the residuals \(Jan and Shieh, 2014\)\.]

The effects of disordered gaming symptom endorsement on time spent gaming according to the WHO and APA frameworks in the overall sample is fully summarized on Table 2\. Overall, the results of the ANOVA indicated that there was a significant positive trend showing that an increase in the number of disordered gaming criteria endorsed increased time spent gaming in the WHO \(Welch’s #emph[F]#sub[WHO]\[4, 10,609\.14\] \= 2,441\.29, #emph[p \<] \.001, ω#super[2] \= 0\.09\) and APA framework \(Welch’s #emph[F]#sub[APA]\[9, 5,338\.64\] \= 1,140\.26, #emph[p \<] \.001, ω#super[2] \= 0\.09\)\. Furthermore, both models yielded a medium effect size \(Kirk, 1996\), further suggesting that disordered gaming criteria endorsement accounts for approximately 10% of the total variance in time spent gaming, noting that this finding is based on the assumption of a linear relationship\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Summary of the descriptive statistics and one\-way Analysis of Variance \(ANOVA\) results]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Number of criteria endorsed]], [#strong[#emph[n]]], [#strong[Mean#super[†]]], [#strong[SD]], [#strong[df1\/df2]], [#strong[Welch’s #emph[F]\-ratio]], [#strong[#emph[p]\-value]], [#strong[ω#super[2]]]),
table.hline(stroke: 0.5pt),
[#emph[World Health Organization framework]], [], [], [], [], [], [], [],
[0], [82,379#super[a]], [19\.77#super[a]], [14\.28], [4\/10,609\.14], [2,441\.29], [\< \.001], [0\.09],
[1], [24,494#super[b]], [27\.31#super[b]], [17\.19], [], [], [], [],
[2], [9,687#super[c]], [31\.28#super[c]], [19\.02], [], [], [], [],
[3], [4,284#super[d]], [34\.74#super[d]], [20\.42], [], [], [], [],
[4], [2,418#super[e]], [40\.13#super[e]], [23\.42], [], [], [], [],
[#emph[American Psychiatric Association framework]], [], [], [], [], [], [], [],
[0], [64,659#super[a]], [18\.98#super[abc]], [13\.87], [9\/5,338\.64], [1,140\.26], [\< \.001], [0\.09],
[1], [27,684#super[b]], [24\.41#super[abc]], [16\.20], [], [], [], [],
[2], [13,461#super[c]], [27\.51#super[abc]], [17\.41], [], [], [], [],
[3], [7,286#super[d]], [29\.71#super[abc]], [18\.45], [], [], [], [],
[4], [4,043#super[e]], [32\.04#super[abc]], [19\.11], [], [], [], [],
[5], [2,460#super[fg]], [34\.53#super[ab]], [20\.75], [], [], [], [],
[6], [1,553#super[g]], [36\.67#super[c]], [21\.27], [], [], [], [],
[7], [1,028#super[gh]], [38\.31#super[bc]], [22\.60], [], [], [], [],
[8], [607#super[hi]], [41\.62#super[a]], [24\.24], [], [], [], [],
[9], [479#super[ig]], [41\.19#super[abc]], [24\.78], [], [], [], [],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Notes: Dependent variable \= weekly time spent gaming\. #super[†]The estimates shown on this table were rounded up at the second decimal level\. Means with different subscript letters \(e\.g\., abc\) indicate they are statistically different at the #emph[p] \< \.00009 level \(Games\-Howell test with Bonferroni correction to account for Type 1 error\)\. See Table 1 of the supplementary information for a full summary of the post hoc pairwise comparison testing on all levels of the independent variable using the Games\-Howell test with Bonferroni correction\.]
]
#v(12pt)
Planned contrasts were carried out with Games\-Howell test \(Games and Howell, 1976\) because contrary to Tukey’s HSD, it does not assume equal sample sizes and equal variances between the groups \(Games et al\., 1981\)\. The post hoc pairwise comparison testing was performed with Bonferroni correction and only deemed statistically significant at #emph[p \<] \.00009 to prevent Type 1 errors\. To enhance the readability of the findings, individual pairwise comparisons were omitted from the main manuscript\. See the Supplementary Information for a comprehensive description of all estimates obtained\.

With regards to the WHO framework, the results of this analysis indicated that greater number of disordered gaming criteria endorsed associated with statistically significant higher time spent gaming across all levels tested \(see the Supplementary Information for a comprehensive description of all estimates obtained\)\. As for the APA framework, the planned contrasts revealed that endorsing 5 or 6 criteria \(#emph[t] \[3,239\.19\] \= 3\.12, #emph[p] \= \.057\), 6 or 7 criteria \(#emph[t] \[2,105\.61\] \= 1\.86, #emph[p] \= \.698\), 7 or 8 criteria \(#emph[t] \[1,201\.09\] \= 2\.73, #emph[p] \= \.162\), 7 or 9 criteria \(#emph[t] \[860\.37\] \= 2\.16, #emph[p] \= \.487\), and 8 or 9 criteria \(#emph[t] \[1,015\.74\] \= 0\.29, #emph[p] \= 1\.00\) did not produce a statistically significant effect time spent gaming\. Moreover, all remaining pairwise comparisons in the APA framework led to statistically significant differences in the Games\-Howell test at #emph[p \<] \.00009\.

= 4\. Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The present study sought to contribute to the GD literature by providing robust evidence capable of answering the question of how much gaming may be too much when drawing the line between disordered and non\-disordered gaming behaviors in relation to time spent gaming\. To achieve this aim, a thorough examination of the complex interplay between time spent gaming and disordered gaming was carried out accounting for gamers’ individual differences \(gender\) across the WHO and APA frameworks\.]

The results obtained in the present study indicated that disordered gaming severity and prevalence rates can vary significantly according to the framework adopted\. More specifically, it was found that GD prevalence rates tend to be lower when assessing disordered gaming with the WHO framework \(1\.96%\) as opposed to the APA framework \(4\.97%\)\. This finding concurs with those reported by Montag and colleagues \(Montag et al\., 2019\) showing that disordered gaming prevalence rates tend to be higher when estimated with the APA framework in comparison to the WHO framework\. The existence of heterogeneity in prevalence estimates across the two frameworks is likely to constitute an issue in large\-scale epidemiological research by inflating prevalence rates of disordered gaming given that they were found to be slightly different\. Therefore, future research should further investigate the epidemiological robustness of the APA and WHO framework in ascertaining prevalence rates as it could be possible that the WHO framework may be underestimating prevalence rates\.

Overall, the prevalence estimates obtained here mirror recent findings from nationally representative studies on GD reporting prevalence rates of 1\.9% in the German adult population \(Reer et al\., 2020\) and 1\.6% among Turkish adults \(Ünübol et al\., 2020\)\. We note that general comparisons between our findings and these may not be possible as there are currently no epidemiological findings assessing the prevalence rates of disordered gaming using the WHO framework\.

To further address the issue of how much gaming is too much in terms of disordered and non\-disordered levels of gaming, this study sought to clarify how time spent gaming associates with different levels of disordered gaming criteria endorsement using the WHO and APA frameworks across both genders\. The results of this analysis indicated that the gender\-based relationship between time spent gaming and the number of disordered gaming criteria endorsed could be seen as consistent within a linear trend for both males and females whereby greater number of symptoms endorsed associates with higher average weekly time spent gaming\.

Nevertheless, a closer look at the data shows that in relation to the APA framework, males presented with descriptively higher average weekly time spent gaming than females up until five IGD criteria were endorsed \(including the fifth criteria\), with females showing higher average weekly time spent gaming than males when considering those endorsing six to nine IGD criteria\. Furthermore, in the context of the WHO framework, it was observed that males presented with descriptively higher average weekly time spent gaming than females up until three GD criteria were endorsed \(including the third criteria\), however, a similar change in pattern was observed whereby females presented with higher average weekly time spent gaming than males when considering those endorsing all four GD criteria\. To the best of the authors’ knowledge, our findings represent an important contribution to the field as this is the first empirical study to provide insights on the nuanced gender\-related differences in relation to disordered gaming across the WHO and APA frameworks\.

Another key finding from this study is related to the fact that those potentially experiencing disordered gaming as assessed with the WHO and APA framework invested more than the initially suggested 30 h per week on gaming activities \(APA, 2013\)\. Specifically, in the overall sample it was observed that under the APA framework weekly time spent gaming was on average 34\.53 h \(when endorsing at least 5 criteria\) while under the WHO framework an average of 40\.13 h was observed \(when endorsing all criteria, see Table 2\)\. Consequently, the APA’s contention that disordered gaming is likely to occur at about 30 h of time spent gaming per week was not fully supported by our findings as this figure underestimates the extent of time investment in disordered gaming\. This finding has important implications at several levels\. At the clinical level, such contention may generate unsubstantiated concerns about disordered gaming when assessing time spent gaming alone as gaming at disordered levels is likely to exceed 30 h of weekly time spent gaming\. At the assessment level, this finding may assist in refining the current classification systems for disordered gaming as using time spent gaming when diagnosing disordered gaming may not be as reliable as using indicators of functional impairment \(Billieux et al\., 2017\)\. At the policy level, this finding has the potential to inform future national and international guidelines for time spent gaming as the existing screen time recommendations do not consider specific types of screen time activities \(Houghton et al\., 2015\)\. More specifically, new policy targeting the gaming industry can be developed by local jurisdictions encouraging the gaming industry to share anonymized behavioral data about gamers’ time spent gaming with independent researchers so that the findings presented here can be tested with behavioral data \(as opposed to self\-reported data\), which offers important advantages\. Additionally, future policy regulating the gaming industry may be developed to ensure that electronic gaming consumers are made aware about at which point \(in terms of time investment in gaming\) gaming may become detrimental\. With the aid of behavioral data, scientists can work collaboratively and independently with the gaming industry to develop international guidelines aimed at gaming behaviors that are developmentally adequate by taking into account specific age\-appropriate thresholds of daily and weekly time spent gaming\.

To prevent over\-diagnosis of disordered gaming under the APA framework, future assessment considerations should avoid adopting the current suggestion of 30 h of weekly time spent gaming as potentially indicative of disordered gaming, especially because there is only 10% of shared variance between time spent gaming and the different levels of disordered gaming criteria endorsement, taking into account a linear modeling perspective\. Moreover, APA’s indication of time spent gaming \(i\.e\., hours per week guidance\) might not be an adequate general indicator for all groups of gamers as age needs to be taken into account\. For instance, Paschke et al\. \(2021\) showed that the overlap between time spent gaming and disordered gaming tendencies was larger among younger gamers\. For this reason, different age groups may require distinct guidance on time spent gaming as time spent gaming may be of greater importance to younger gamers\. Accordingly, APA’s general indication \(i\.e\., 30 h of weekly gaming\) implies that a substantial amount of a person’s life will be utilized for gaming activities and this may be problematic, particularly if this time jeopardizes time that would otherwise have been spent with activities such as learning, working, and socializing with family and friends\. Taken together, this suggests that focusing on clinically significant functional impairments is more fruitful than considering time spent gaming alone when assessing disordered gaming and attempting to predict its negative mental health and psychological well\-being outcomes\.

== 4\.1\. Limitations
#par(first-line-indent: 0em)[Although the present study is to the best of the authors’ knowledge the largest survey study conducted to date on disordered gaming considering the WHO and APA frameworks, a few potential limitations are worth noting\. A potential limitation of the present study relates to the fact that self\-reported time spent gaming may not fully capture actual and objective time spent gaming due to limitations within the self\-report methodology in itself\. A further potential limitation relates to the lack of actual clinical data and use of a cross\-sectional research design, which renders causal inferences about time spent gaming and disordered gaming not practical\. Therefore, the present findings should be interpreted with caution and used to guide subsequent research testing new research questions\. Future research should address these potential limitations by using more objective behavioral data to investigate the interplay between time spent gaming and disordered gaming within clinical samples\.]

We also acknowledge that other key stakeholders such as parents and\/or legal guardians were not addressed in the present research because gamers were invited to the present study to get insights into their own gaming behaviors\. However, involving parents can be potentially beneficial among treatment\-refusing youth presenting with disordered gaming \(Riley et al\., 2022\)\. Another benefit to also include the prospective parents, particularly for minors, is that parental gaming behaviors are positively linked with their children’s gaming behaviors \(Wernicke and Montag, 2021\)\. Another important limitation in the present study relates to the lack of clinical research allowing effective diagnosis of disordered gaming, particularly among children and adolescents\. Although there has been clinical research exploring the clinical utility of the APA framework and the IGDS9\-SF \(see Qin et al\., 2020\), more clinical studies are warranted, particularly in relation to the WHO framework and the GDT\.

Despite these potential limitations, the present study presents several strengths\. Firstly, the large sample size recruited for the present study is likely to capture a wide range of gaming behaviors and engagement patterns, including gamers with both low and high levels of disordered gaming and tendencies\. Secondly, the findings obtained here were investigated across the WHO and APA frameworks developed for disordered gaming, lending further cross\-cultural comparability potential to subsequent studies using the two leading frameworks for disordered gaming\. Finally, since no previous study has investigated the extent to which time spent gaming associates with different levels of disordered gaming across the WHO and APA frameworks when accounting for key individual differences \(e\.g\., gender\), our study presents novel evidence\-based insights on the gender differences related to disordered gaming\.

= 5\. Conclusions
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[In conclusion, the present study provides robust findings about the interplay between time spent gaming and disordered gaming across two prevailing frameworks, further advancing the debate about how much is too much when it comes to drawing the line between disordered and non\-disordered gaming behaviors\. Based on the findings derived from a worldwide large sample of 123,262 gamers from 168 countries, the average weekly time spent gaming among disordered gamers recruited varied across the two diagnostic frameworks, with the APA framework suggesting an average of 34\.53 h \(those endorsing five out of nine criteria\) while the WHO framework indicated 40\.13 h \(those endorsing four criteria\)\.]

= Credit statement
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Halley M\. Pontes: Conceptualization, Methodology, Investigation, Writing – Original Draft, Writing – Review & Editing, Visualization, Supervision, Project administration\. Bruno Schivinski: Formal analysis, Data Curation, Writing – Original Draft, Writing – Review & Editing, Visualization\. Christopher Kannen: Methodology, Software, Validation, Investigation, Resources, Data Curation, Project administration\. Christian Montag: Conceptualization, Methodology, Investigation, Writing – Original Draft, Writing – Review & Editing, Visualization, Supervision, Project administration\.]

= Funding
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The authors acknowledge that they received no funding in support for this research\.]

= Appendix A\. Supplementary data
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Supplementary data to this article can be found online at https:\/\/doi\.org\/10\.1016\/j\.socscimed\.2022\.114721\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
American Psychiatric Association, 2013\. Diagnostic and Statistical Manual of Mental Disorders, fifth ed\.

APA, 2013\. Diagnostic and Statistical Manual of Mental Disorders, fifth ed\. Author, Arlington, VA\.

Beranuy, M\., Machimbarrena, J\.M\., Vega\-Osés, M\.A\., Carbonell, X\., Griffiths, M\.D\., Pontes, H\.M\., González\-Cabrera, J\., 2020\. Spanish validation of the internet gaming disorder scale–short form \(IGDS9\-SF\): prevalence and relationship with online gambling and quality of life\. Int\. J\. Environ\. Res\. Publ\. Health 17 \(5\), 1562\. https:\/\/doi\.org\/10\.3390\/ijerph17051562\.

Billieux, J\., King, D\.L\., Higuchi, S\., Achab, S\., Bowden\-Jones, H\., Hao, W\., Long, J\., Lee, H\.K\., Potenza, M\.N\., Saunders, J\.B\., Poznyak, V\., 2017\. Functional impairment matters in the screening and diagnosis of gaming disorder\. J\. Behav\. Add\. 6 \(3\), 285–289\. https:\/\/doi\.org\/10\.1556\/2006\.6\.2017\.036\.

Breusch, T\.S\., Pagan, A\.R\., 1979\. A simple test for heteroscedasticity and random coefficient variation\. Econometrica 47 \(5\), 1287–1294\. https:\/\/doi\.org\/10\.2307\/1911963\.

Buono, F\.D\., Paul, E\., Sprong, M\.E\., Smith, E\.C\., Garakani, A\., Griffiths, M\.D\., 2020\. Gaming and gaming disorder: a mediation model gender, salience, age of gaming onset, and time spent gaming\. Cyberpsychol\., Behav\. Soc\. Netw\. 23 \(9\), 647–651\. https:\/\/doi\.org\/10\.1089\/cyber\.2019\.0445\.

Curran, P\.G\., 2016\. Methods for the detection of carelessly invalid responses in survey data\. J\. Exp\. Soc\. Psychol\. 66, 4–19\. https:\/\/doi\.org\/10\.1016\/j\.jesp\.2015\.07\.006\.

Evren, C\., Dalbudak, E\., Topcu, M\., Kutlu, N\., Evren, B\., Pontes, H\.M\., 2018\. Psychometric validation of the Turkish nine\-item internet gaming disorder scale–short form \(IGDS9\-SF\)\. Psychiatr\. Res\. 265 \(265\), 349–354\. https:\/\/doi\.org\/10\.1016\/j\.psychres\.2018\.05\.002\.

Evren, C\., Pontes, H\.M\., Dalbudak, E\., Babayagmur, B\., Topcu, M\., Kutlu, N\., 2020\. Psychometric validation of the Turkish gaming disorder test: a measure that evaluates disordered gaming according to the world health organization framework\. 8 Psychiatry Clinical Psychopharmacol\. 30 \(2\), 1–8\. https:\/\/doi\.org\/10\.5455\/PCP\.20200429072430\.

Fam, J\.Y\., 2018\. Prevalence of internet gaming disorder in adolescents: a meta\-analysis across three decades\. Scand\. J\. Psychol\. 59 \(5\), 524–531\. https:\/\/doi\.org\/10\.1111\/sjop\.12459\.

Fox, J\., Weisberg, S\., 2019\. An R Companion to Applied Regression, third ed\. Sage, Thousand Oaks, CA\.

Games, P\.A\., Howell, J\.F\., 1976\. Pairwise multiple comparison procedures with unequal N’s and\/or variances: a Monte Carlo study\. J\. Educ\. Stat\. 1 \(2\), 113–125\. https:\/\/doi\.org\/10\.3102\/10769986001002113\.

Games, P\.A\., Keselman, H\.J\., Rogan, J\.C\., 1981\. Simultaneous pairwise multiple comparison procedures for means when sample sizes are unequal\. Psychol\. Bull\. 90 \(3\), 594–598\. https:\/\/doi\.org\/10\.1037\/0033\-2909\.90\.3\.594\.

Gjalt\-Jorn, Peter, 2021\. Quantitative Analysis Made Accessible\. https:\/\/r\-packages\.gitlab\.io\/ufs\/\.

Houghton, S\., Hunter, S\.C\., Rosenberg, M\., Wood, L\., Zadow, C\., Martin, K\., Shilton, T\., 2015\. Virtually impossible: limiting Australian children and adolescents daily screen based media use\. BMC Publ\. Health 15 \(1\), 5\. https:\/\/doi\.org\/10\.1186\/1471\-2458\-15\-5\.

Huang, J\.L\., Curran, P\.G\., Keeney, J\., Poposki, E\.M\., DeShon, R\.P\., 2012\. Detecting and deterring insufficient effort responding to surveys\. J\. Bus\. Psychol\. 27 \(1\), 99–114\. https:\/\/doi\.org\/10\.1007\/s10869\-011\-9231\-8\.

Islam, M\.S\., Sujan, M\.S\.H\., Tasnim, R\., Mohona, R\.A\., Ferdous, M\.Z\., Kamruzzaman, S\., Toma, T\.Y\., Sakib, M\.N\., Pinky, K\.N\., Islam, M\.R\., Siddique, M\.A\.B\., Anter, F\.S\., Hossain, A\., Hossen, I\., Sikder, M\.T\., Pontes, H\.M\., 2021\. Problematic smartphone and social media use among Bangladeshi college and university students amid COVID\-19: the role of psychological well\-being and pandemic related factors\. Front\. Psychiatr\. 12 \(386\) https:\/\/doi\.org\/10\.3389\/fpsyt\.2021\.647386\.

Jan, S\.L\., Shieh, G\., 2014\. Sample size determinations for Welch’s test in one\-way heteroscedastic ANOVA\. Br\. J\. Math\. Stat\. Psychol\. 67 \(1\), 72–93\. https:\/\/doi\.org\/10\.1111\/bmsp\.12006\.

Kirk, R\.E\., 1996\. Practical significance: a concept whose time has come\. Educ\. Psychol\. Meas\. 56 \(5\), 746–759\. https:\/\/doi\.org\/10\.1177\/0013164496056005002\.

Kline, R\.B\., 2011\. Principles and Practice of Structural Equation Modeling, third ed\. The Guildford Press, New York, NY\.

Monacis, L\., De Palo, V\., Griffiths, M\.D\., Sinatra, M\., 2016\. Validation of the internet gaming disorder scale – short\-form \(IGDS9\-SF\) in an Italian\-speaking sample\. J\. Behav\. Add\. 5 \(4\), 683–690\. https:\/\/doi\.org\/10\.1556\/2006\.5\.2016\.083\.

Montag, C\., Schivinski, B\., Sariyska, R\., Kannen, C\., Demetrovics, Z\., Pontes, H\.M\., 2019\. Psychopathological symptoms and gaming motives in disordered gaming—a psychometric comparison between the WHO and APA diagnostic frameworks\. J\. Clin\. Med\. 8 \(10\), 1691\. https:\/\/doi\.org\/10\.3390\/jcm8101691\.

Milani, L\., La Torre, G\., Fiore, M\., Grumi, S\., Gentile, D\.A\., Ferrante, M\., Miccoli, S\., Di Blasio, P\., 2018\. Internet gaming addiction in adolescence: risk factors and maladjustment correlates\. Int\. J\. Ment\. Health Addiction 16, 888–904\. https:\/\/doi\.org\/10\.1007\/s11469\-017\-9750\-2\.

Paschke, K\., Austermann, M\.I\., Simon\-Kutscher, K\., Thomasius, R\., 2021\. Adolescent gaming and social media usage before and during the COVID\-19 pandemic\. SUCHT 67 \(1\), 13–22\. https:\/\/doi\.org\/10\.1024\/0939\-5911\/a000694\.

Pontes, H\.M\., Griffiths, M\.D\., 2015\. Measuring DSM\-5 internet gaming disorder: development and validation of a short psychometric scale\. Comput\. Hum\. Behav\. 45, 137–143\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2014\.12\.006\.

Pontes, H\.M\., Griffiths, M\.D\., 2016\. Portuguese validation of the internet gaming disorder scale–short\-form\. Cyberpsychol\., Behav\. Soc\. Netw\. 19 \(4\), 288–293\. https:\/\/doi\.org\/10\.1089\/cyber\.2015\.0605\.

Pontes, H\.M\., Griffiths, M\.D\., 2020\. A new era for gaming disorder research: time to shift from consensus to consistency\. Addict\. Behav\. 103, 106059\. https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2019\.106059\.

Pontes, H\.M\., Király, O\., Demetrovics, Z\., Griffiths, M\.D\., 2014\. The conceptualisation and measurement of DSM\-5 internet gaming disorder: the development of the IGD\-20 test\. PLoS One 9 \(10\), e110137\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0110137\.

Pontes, H\.M\., Macur, M\., Griffiths, M\.D\., 2016\. Internet Gaming Disorder among Slovenian primary schoolchildren: findings from a nationally representative sample of adolescents\. J\. Behav\. Add\. 5 \(2\), 304–310\. https:\/\/doi\.org\/10\.1556\/2006\.5\.2016\.042\.

Pontes, H\.M\., Schivinski, B\., Brzozowska\-Woś, M\., Stavropoulos, V\., 2019\. Laxer clinical criteria for gaming disorder may hinder future efforts to devise an efficient diagnostic approach: a tree\-based model study\. J\. Clin\. Med\. 8 \(10\), 1730\. https:\/\/doi\.org\/10\.3390\/jcm8101730\.

Pontes, H\.M\., Schivinski, B\., Sindermann, C\., Li, M\., Becker, B\., Zhou, M\., Montag, C\., 2021\. Measurement and conceptualization of Gaming Disorder according to the World Health Organization framework: The development of the Gaming Disorder Test\. Int\. J\. Ment\. Health Addiction 19, 508–521\. https:\/\/doi\.org\/10\.1007\/s11469\-019\-00088\-z\.

Qin, L\., Cheng, L\., Hu, M\., Liu, Q\., Tong, J\., Hao, W\., Luo, T\., Liao, Y\., 2020\. Clarification of the cut\-off score for nine\-item internet gaming disorder scale–short form \(IGDS9\-SF\) in a Chinese context\. Front\. Psychiatr\. 11 \(470\) https:\/\/doi\.org\/10\.3389\/fpsyt\.2020\.00470\.

R Core Team, 2020\. R: A Language and Environment for Statistical Computing\. R Foundation for Statistical Computing, Vienna, Austria\.

Reer, F\., Festl, R\., Quandt, T\., 2020\. Investigating problematic social media and game use in a nationally representative sample of adolescents and younger adults\. Behav\. Inf\. Technol\. 1, 14\. https:\/\/doi\.org\/10\.1080\/0144929X\.2020\.1724333\.

Revelle, W\., 2020\. Psych: Procedures for Psychological, Psychometric, and Personality Research\. Northwestern University, Evanston, Illinois\. R package version 2\.0\.9\. http s:\/\/CRAN\.R\-project\.org\/package\=psych\.

Riley, B\.J\., Baigent, M\., Battersby, M\.W\., King, D\.L\., 2022\. Parent\-delivered contingency management for a treatment\-refusing young adult with gaming disorder: case report\. J\. Fam\. Ther\. https:\/\/doi\.org\/10\.1111\/1467\-6427\.12381\.

Schivinski, B\., Brzozowska\-Woś, M\., Buchanan, E\.M\., Griffiths, M\.D\., Pontes, H\.M\., 2018\. Psychometric assessment of the internet gaming disorder diagnostic criteria: an item response theory study\. Addict\. Behav\. Reports 8, 176–184\. https:\/\/doi\.org\/10\.1016\/j\.abrep\.2018\.06\.004\.

Severo, R\.B\., Pereira Neto Barbosa, A\.P\., Canabarro Fouchy, D\.R\., da Cunha Coelho, F\. M\., Pinheiro, R\.T\., de Figueiredo, V\.L\.M\., de Siqueira Afonso, V\., Pontes, H\.M\., Tavares Pinheiro, K\.A\., 2020\. Development and psychometric validation of internet gaming disorder scale\-short\-form \(IGDS9\-SF\) in a Brazilian sample\. Addict\. Behav\. 103, 106191\. https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2019\.106191\.

Triberti, S\., Milani, L\., Villani, D\., Grumi, S\., Peracchia, S\., Curcio, G\., Riva, G\., 2018\. What matters is when you play: investigating the relationship between online video games addiction and time spent playing over specific day phases\. Addict\. Behav\. Reports 8, 185–188\. https:\/\/doi\.org\/10\.1016\/j\.abrep\.2018\.06\.003\.

Su, W\., et al\., 2020\. Do men become addicted to internet gaming and women to social media? A meta\-analysis examining gender\-related differences in specific internet addiction\. Comput\. Hum\. Behav\. 113 https:\/\/doi\.org\/10\.1016\/j\.chb\.2020\.106480\.

Teng, Z\., Pontes, H\.M\., Nie, Q\., Griffiths, M\.D\., Guo, C\., 2021\. Depression and anxiety symptoms associated with internet gaming disorder before and during the COVID\-19 pandemic: a longitudinal study\. J\. Behav\. Add\. 10 \(1\), 169–180\. https:\/\/doi\.org\/10\.1556\/2006\.2021\.00016\.9

Twenge, J\.M\., 2019\. More time on technology, less happiness? Associations between digital\-media use and psychological well\-being\. Curr\. Dir\. Psychol\. Sci\. 28 \(4\), 372–379\. https:\/\/doi\.org\/10\.1177\/0963721419838244\.

Twenge, J\.M\., Haidt, J\., Joiner, T\.E\., Campbell, E\.K\., 2020\. Underestimating digital media harm\. Nat\. Human Behav\. 4 \(4\), 346–348\. https:\/\/doi\.org\/10\.1038\/s41562\-020\-0839\-4\.

Ünübol, H\., Koç, A\.Ş\., Sayar, G\.H\., Stavropoulos, V\., Kircaburun, K\., Griffiths, M\.D\., 2020\. Measurement, profiles, prevalence, and psychological risk factors of problematic gaming among the Turkish community: a large\-scale national study\. Int\. J\. Ment\. Health Addiction\. https:\/\/doi\.org\/10\.1007\/s11469\-020\-00254\-8\.

Welch, B\.L\., 1951\. On the comparison of several mean values: an alternative approach\. Biometrika 38 \(3\/4\), 330–336\. https:\/\/doi\.org\/10\.2307\/2332579\.

Wernicke, J\., Montag, C\., 2021\. „Gaming“ im Kindesalter\. Psychotherapeut 66 \(2\), 97–104\. https:\/\/doi\.org\/10\.1007\/s00278\-020\-00488\-w\.

WHO, 2020\. ICD\-11 Beta Draft: 6C51 Gaming Disorder\.

Wickham, H\., 2016\. ggplot2: Elegant Graphics for Data Analysis\. Springer International Publishing\.

World Health Organization, 2020\. ICD\-11 Beta Draft: 6C51 Gaming Disorder\.

Wu, T\.Y\., Lin, C\.Y\., Årestedt, K\., Griffiths, M\.D\., Broström, A\., Pakpour, A\.H\., 2017\. Psychometric validation of the Persian nine\-item Internet Gaming Disorder Scale –short Form: does gender and hours spent online gaming affect the interpretations of item descriptions? J\. Behav\. Add\. 6 \(2\), 256–263\. https:\/\/doi\.org\/10\.1556\/2006\.6\.2017\.025\.

Yam, C\.W\., Pakpour, A\.H\., Griffiths, M\.D\., Yau, W\.Y\., Lo, C\.L\.M\., Ng, J\.M\.T\., Lin, C\.Y\., Leung, H\., 2019\. Psychometric testing of three Chinese online\-related addictive behavior instruments among Hong Kong university students\. Psychiatr\. Q\. 90 \(1\), 117–128\. https:\/\/doi\.org\/10\.1007\/s11126\-018\-9610\-7\.

Yentes, R\.D\., Wilhelm, F\., 2018\. careless: procedures for computing indices of careless responding\. R package version 1\.1\.3\.


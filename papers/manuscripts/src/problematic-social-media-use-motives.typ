#set document(title: "Exploring the role of social media use motives, psychological well\-being, self\-esteem, and affect in problematic social media use", author: ("Bruno Schivinski", "Magdalena Brzozowska-Woś", "Ellena Stansbury", "Jason Satel", "Christian Montag", "Halley M. Pontes"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Schivinski et al\. \(2020\), open access \(CC BY 4\.0\) #h(1fr) Frontiers in Psychology] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Exploring the role of social media use motives, psychological well\-being, self\-esteem, and affect in problematic social media use]]
#v(0.8em)
#text(size: 12pt)[Bruno Schivinski, Magdalena Brzozowska\-Woś, Ellena Stansbury, Jason Satel, Christian Montag, Halley M\. Pontes]
#v(0.2em)
#text(size: 10pt, style: "italic")[RMIT University\; University of Tasmania\; Gdansk University of Technology\; Nottingham Trent University\; Ulm University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Schivinski, B\., Brzozowska\-Woś, M\., Stansbury, E\., Satel, J\., Montag, C\., & Pontes, H\. M\. (2020). Exploring the role of social media use motives, psychological well\-being, self\-esteem, and affect in problematic social media use. #emph[Frontiers in Psychology, 11], Article 617140. #link("https://doi.org/10.3389/fpsyg.2020.617140")[https:\/\/doi.org\/10\.3389\/fpsyg\.2020\.617140]
  #v(0.9em)
  Open access article distributed under the terms of the Creative Commons Attribution License \(CC BY, https:\/\/creativecommons\.org\/licenses\/by\/4\.0\/\)\. Originally published in Frontiers in Psychology, 11, 617140 \(16 December 2020\), #link("https://doi.org/10.3389/fpsyg.2020.617140")[https:\/\/doi.org\/10\.3389\/fpsyg\.2020\.617140]\. Changes made: the text has been re\-typeset and an email address removed from the data availability statement\; content is otherwise unchanged\.
  #v(0.9em)
  This version reproduces the content of the published open access article\; it differs only in formatting and pagination, and an email address has been removed from the data availability statement\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published open access article \(CC BY 4\.0\)\; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/problematic-social-media-use-motives.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Exploring the Role of Social Media Use Motives, Psychological Well\-Being, Self\-Esteem, and Affect in Problematic Social Media Use]]
#v(0.6em)
#par(first-line-indent: 0em)[Bruno Schivinski#super[1,2], Magdalena Brzozowska\-Woś#super[3], Ellena Stansbury#super[4], Jason Satel#super[2,5], Christian Montag#super[6] and Halley M\. Pontes#super[2,5]\*]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]School of Media and Communication, RMIT University, Melbourne, VIC, Australia\; #super[2]The International Cyberpsychology and Addictions Research Laboratory \(iCARL\), University of Tasmania, Launceston, TAS, Australia\; #super[3]Department of Marketing, Gdansk University of Technology, Gdańsk, Poland\; #super[4]Psychology Department, Nottingham Trent University, Nottingham, United Kingdom\; #super[5]School of Psychological Sciences, University of Tasmania, Launceston, TAS, Australia\; #super[6]Department of Molecular Psychology, Institute of Psychology and Education, Ulm University, Ulm, Germany]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Halley M\. Pontes]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() Given recent advances in technology, connectivity, and the popularity of social media platforms, recent literature has devoted great attention to problematic Facebook use\. However, exploring the potential predictors of problematic social media use beyond Facebook use has become paramount given the increasing popularity of multiple alternative platforms\. In this study, a sample of 584 social media users \(#emph[M]#sub[age] \= 32\.28 years\; 67\.81% female\) was recruited to complete an online survey assessing sociodemographic characteristics, patterns, and preferences of social media use, problematic social media use \(PSMU\), social media use motives, psychological well\-being, self\-esteem, and positive and negative affect\. Results indicated that 6\.68% \(#emph[n] \= 39\) of all respondents could be potentially classed as problematic users\. Moreover, further analysis indicated that intrapersonal motive \(β \= 0\.38\), negative affect \(β \= 0\.22\), daily social media use \(β \= 0\.18\), surveillance motive \(β \= 0\.12\), and positive affect \(β \= −0\.09\) each predicted PSMU\. These variables accounted for about 37% of the total variance in PSMU, with intrapersonal motive driving the greatest predictive contribution, over and above the effects of patterns of social media use and sociodemographic variables\. These findings contribute to the increasing literature on PSMU\. The results of this study are discussed in light of the existing literature on PSMU\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] problematic social media use, social media motives, problematic behavior, well\-being, self\-esteem, affect, problematic consumer behavior]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Brief research report\. Edited by Julia Brailovskaia, Ruhr University Bochum, Germany\; reviewed by Orsolya Király, Eötvös Loránd University, Hungary, and Amelia Rizzo, University of Messina, Italy\. Received 14 October 2020\; accepted 24 November 2020\; published 16 December 2020\.]]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The use of social media has been growing exponentially, with social media being a globally recognized tool used not only by individuals, but by organizations, brands, and celebrities globally\. In this study, social media is defined as “web\-based services that allow individuals to \(1\) construct a public or semi\-public profile within a bounded system, \(2\) articulate a list of other users with whom they share a connection, and \(3\) view and traverse their list of connections and those made by others within the system” \(Boyd and Ellison, 2007\)\. Examples of popular social media platforms include Facebook, Instagram, YouTube, Twitter, and LinkedIn, among others\.]

Social media reaches a large number of users worldwide, with as many as 71% of adolescents accessing more than one platform, with about 24% of all adolescents admitting to being constantly online due to increased mobile accessibility via smartphones \(Lenhart et al\., 2015\)\. Social media use is not specifically limited to adolescents as adults also use social media platforms as an important socializing and information tool \(Heo et al\., 2015\; Schivinski et al\., 2019\), with social media use influencing different types of behavior across the entire lifespan \(Kuss et al\., 2013\; Schivinski, 2019\)\. Judicious use of social media leads to many advantageous and beneficial psychosocial outcomes, such as greater social support \(Tifferet, 2020\), increased friendship quality \(Wang et al\., 2019b\), higher levels of happiness \(Ward et al\., 2018\), and decreased depression levels \(Wang et al\., 2019a\)\.

However, although moderate use of social media does not interfere with overall functioning and psychological well\-being \(Twigg et al\., 2020\), negative effects stemming from social media use have been examined in the context of excessive and problematic usage\. Research investigating the negative outcomes of social media use has indicated that problematic social media use \(PSMU\) may lead to deteriorated psychological well\-being \(Huang, 2012\; Lin et al\., 2016\) and overall health \(Pontes, 2017\; Brailovskaia et al\., 2020\)\. One of the most prominent negative effects of social media use relates to problematic use stemming from dysregulated usage \(Kuss and Griffiths, 2017\; Radovic et al\., 2017\), often triggered by the design of the social media platforms and the prevailing data business model \(Montag et al\., 2019\)\. However, the literature remains inconclusive, fragmented, and heavily skewed toward the investigation of a single, specific social media platform \(e\.g\., Facebook\) \(e\.g\., see Pontes et al\., 2016\; da Veiga et al\., 2019\; Rozgonjuk et al\., 2020a,b\; Sindermann et al\., 2020\; for exceptions Marengo et al\., 2020\)\.

Despite not being an officially recognized mental health disorder, previous research has demonstrated that PSMU can longitudinally influence a wide range of psychiatric outcomes and behaviors, including, but not limited to, increased severity of insomnia, stress, depression, and anxiety \(Brailovskaia and Margraf, 2017\; Brailovskaia et al\., 2019a\), in addition to suicide\-related outcomes \(Brailovskaia et al\., 2020\)\. At the cross\-sectional level, PSMU has been linked to decreased sleep quality and life satisfaction \(Sha et al\., 2019\; Buda et al\., 2020\; Duradoni et al\., 2020\), emotional maladjustment \(Hawes et al\., 2020\), lower productivity \(Rozgonjuk et al\., 2020d\), narcissistic traits \(Brailovskaia et al\., 2020\), poorer psychological functioning \(Sampasa\-Kanyinga and Lewis, 2015\), phubbing \(Karadag et al\., 2015\), binge drinking \(Spilkov et al\., 2017\), and addictive usage \(Andreassen and Pallesen, 2014\; Ryan et al\., 2014\; Andreassen, 2015\; Pontes et al\., 2018\)\.

Early epidemiological research including representative samples reported PSMU prevalence rates of about 4\.0% among adolescents in Germany \(Müller et al\., 2016\), 4\.5% in Hungarian adolescents \(Bányai et al\., 2017\), 2\.9% in the general Belgian population \(De Cock et al\., 2014\), and 4\.9% in the British population \(Pontes et al\., 2018\)\. More recent epidemiological research has reported a 1\-year PSMU prevalence of 2\.6% among adolescents and younger adults \(Wartberg et al\., 2020\) from the German population \(Reer et al\., 2020\)\.

Based on these recent developments, the present study aims to contribute to the growing body of knowledge on social media use by exploring the role of key factors accounting for PSMU more broadly \(i\.e\., without being attached to a specific social media platform\)\. Given the relatively high number of studies that have investigated problematic Facebook use specifically, rather than using a broader definition of PSMU, understanding potential contributing factors to broad PSMU is paramount because of the continuous and steady growth of social media users and platforms worldwide\. Furthermore, this approach is in agreement with previous literature suggesting that PSMU should be investigated more broadly, without association to specific social media platforms \(Griffiths, 2012\)\.

Understanding PSMU risk factors is key to advancing research on social media behavior\. In this context, motives for social media use have been suggested as a key correlate of PSMU \(Wang et al\., 2016\)\. Previous research has shown that individuals high on affiliative tendency and communication competence often use social media to expand their social networks, demonstrating lower levels of self\-focus and intrapersonal social media use motives \(Lee and Kim, 2014\)\. Similarly, previous research has established that the desire to maintain social relationships among social media users is associated with life satisfaction \(Rae and Lonborg, 2015\)\. Psychological well\-being, self\-esteem, and affect have also been established as key correlates of PSMU, based on the previously established cognitive\-behavioral model of pathological internet use \(PIU\) \(Davis, 2001\)\.

Research on PIU has also revealed significant relationships between internet use and the management of emotional difficulties and negative life outcomes \(Caplan, 2002, 2010\)\. This may imply that PIU, generally, and PSMU, more specifically, may emerge as dysfunctional coping mechanisms to help users manage their negative emotional and affective states \(Kardefelt\-Winther, 2014\)\. Thus, people who use social media to help cope with adverse outcomes and existing difficulties \(e\.g\., poor psychological well\-being\), may feel compelled to systematically use social media on a frequent basis \(Radovic et al\., 2017\), rendering them potentially more vulnerable to developing PSMU due to increased duration of, and exposure to, social media \(Brailovskaia et al\., 2019b\)\.

In order to help further advance current understanding of key PSMU risk factors, the aim of this study is to explore and empirically examine the role of key psychosocial predictors on PSMU, while accounting for potential confounding effects stemming from frequency of social media use and sociodemographic factors\.

= Method
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Participants and Procedures
#par(first-line-indent: 0em)[A cross\-sectional study using an online survey was carried out to explore the role of motives for using social media, positive and negative affect, psychological well\-being, and self\-esteem in predicting PSMU in a convenience sample of English\-speakers 759 social media users\. An online survey hosted on Qualtrics was created and advertised from May to June 2017 on different social media platforms that included Facebook, Twitter, Instagram, and Snapchat where no form of incentives \(e\.g\., financial\) were offered to potential participants\. In the online survey, social media use was defined to all potential participants in terms of the following social media platforms: “#emph[Facebook \(including Messenger\)]”, “#emph[Twitter],” “#emph[Instagram],” “#emph[Snapchat],” and “#emph[Others]” to ensure that the study would capture broad social media behavior\. The online survey was brief and expected to be completed in \~15 min on average\.]

All potential participants were informed about the nature of the study and required to provide online informed consent in order to partake in the study\. Participants were provided with all the necessary information about the ethical aspects of this study \(e\.g\., anonymity, confidentiality, right to discontinue participation, right to withdraw their data after completing the study\)\. All participants were required to be aged at least 18 years old in order to be eligible to partake in the study\. The present study has been granted ethical approval \[#emph[with the Nottingham Trent University]\] Ethics Committee\.

A total of 175 participants were excluded from analyses due to missing data, resulting in a final sample of 584 participants \(#emph[M]#sub[age] \= 32\.28 years, #emph[SD] \= 12\.62 years\), of which 67\.81% \(#emph[n] \= 396\) were female\. About 22\.88% \(#emph[n] \= 157\) of the participants reported not being in a relationship\. In terms of social media use, 96\.58% \(#emph[n] \= 564\) reported accessing social media through a smartphone, and Facebook was reported to be the most used social media platform \(55\.82%, #emph[n] \= 326\), followed by Instagram \(20\.03%, #emph[n] \= 117\), with other platforms \(e\.g\., Tumblr, Reddit\) accounting for 3\.91% \(#emph[n] \= 23\) of the responses\. Furthermore, the majority of participants declared using only one social media platform \(38\.86%, #emph[n] \= 227\) and about 34\.76% \(#emph[n] \= 203\) of all participants reported accessing social media very frequently \(i\.e\., on a daily basis\)\. Finally, 6\.68% \(#emph[n] \= 39\) of all participants could be classified as problematic users \(see Table 1\)\.

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 1.] Structure of the sample, social media \(SM\) patterns of use and preferences, and descriptive statistics \(n \= 584\)]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto), align: (left, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Variable]], [#strong[]]),
table.hline(stroke: 0.5pt),
[Gender \(female, %\)], [396 \(67\.81\)],
[Age \(years\) \(#emph[mean, SD]\)], [32\.28 \(12\.62\)],
[Not in a relationship \(#emph[n], %\)], [157 \(26\.88\)],
[#emph[Most used SM platform \(#emph[n], %\)]], [],
[Facebook \(including “Messenger”\)], [326 \(55\.82\)],
[Instagram], [117 \(20\.03\)],
[Twitter], [60 \(10\.27\)],
[Snapchat], [58 \(9\.93\)],
[Other], [23 \(3\.91\)],
[#emph[Number Of SM Platforms Used Daily, \(#emph[n], %\)]], [],
[1], [227 \(38\.86\)],
[2], [133 \(22\.77\)],
[3], [131 \(22\.43\)],
[4], [69 \(11\.81\)],
[5], [19 \(3\.25\)],
[6 or more], [5 \(0\.85\)],
[#emph[Daily SM Use, \(#emph[n], %\)]], [],
[Very rarely], [24 \(4\.11\)],
[Rarely], [88 \(15\.07\)],
[Frequently], [155 \(26\.54\)],
[Very frequently], [203 \(34\.76\)],
[Access to SM via smartphone \(#emph[n], %\)], [564 \(96\.58\)],
[Daily SM occurrences \(#emph[mean, SD]\)], [18\.58 \(63\.30\)],
[Minutes spent per each session \(#emph[mean, SD]\)], [5\.58 \(38\.76\)],
[#emph[Problematic SM use \(#emph[n], %\)]], [],
[Non\-problematic SM use], [545 \(93\.32\)],
[Problematic SM use], [39 \(6\.68\)],
[#emph[Descriptive Statistics for Overall Scale Scores]], [],
[Problematic SM use \(#emph[mean, SD]\)], [13\.41 \(4\.98\)],
[Psychological well\-being \(#emph[mean, SD]\)], [79\.30 \(12\.24\)],
[Self\-esteem \(#emph[mean, SD]\)], [28\.33 \(6\.32\)],
[SM use motivation: Surveillance \(#emph[mean, SD]\)], [19\.65 \(5\.98\)],
[SM use motivation: Network expansion \(#emph[mean, SD]\)], [12\.59 \(4\.20\)],
[SM use motivation: Intrapersonal motive \(#emph[mean, SD]\)], [17\.26 \(5\.18\)],
[SM use motivation: Relationship maintenance \(#emph[mean, SD]\)], [10\.35 \(2\.70\)],
[Positive Affect \(#emph[mean, SD]\)], [31\.42 \(7\.29\)],
[Negative Affect \(#emph[mean, SD]\)], [21\.52 \(7\.52\)],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Problematic SM use risk was computed using a strict monothetic cut\-off approach, which considered scores ≥ 4 on all six items of the Bergen Social Media Addiction Scale \(BSMAS\)\.]]
]
#v(12pt)
== Measures
#par(first-line-indent: 0em)[Sociodemographic and social media use characteristics were assessed with questions asking about participants\' gender, age, relationship status, preferred social media platform, the number of social media platforms used daily, and whether the platforms were accessed via a smartphone\. Additionally, frequency of social media usage was examined using a five\-point Likert\-scale ranging from very rarely \(1\) to very often \(5\), with the following questions: “#emph[How many times during an average day do you use social media?]” and “#emph[How many minutes on average do you spend per session of social media use?]\.”]

Problematic social media use was measured using the Bergen Social Media Addiction Scale \(BSMAS\) \(Andreassen et al\., 2016\)\. The BSMAS is a six\-item tool measuring PSMU according to the core components of addiction \(i\.e\., salience, mood modification, tolerance, withdraw symptoms, conflict, and relapse\), without a specific timeframe\. All six items are answered with a five\-point Likert\-scale ranging from very rarely \(1\) to very often \(5\)\. Participants were classified as problematic users using a strict monothetic cut\-off approach \(i\.e\., scoring four or above on all six items\)\. Total scores on the BSMAS range from 6 to 30, with high scores denoting higher levels of PSMU\. The BSMAS has been found to exhibit excellent psychometric properties \(Andreassen et al\., 2016\; Chen et al\., 2020\)\. In the present study, the BSMAS exhibited adequate levels of internal consistency \(α \= 0\.83\)\.

Psychological well\-being was assessed using the Scales of Psychological Well\-Being \(SPWB\) test \(Ryff and Keyes, 1995\), which includes 18 items rated on a six\-point Likert scale ranging from strongly disagree \(1\) to strongly agree \(6\), without a specific timeframe\. Total scores can range from 18 to 108, with higher scores suggesting higher levels of psychological well\-being\. In the present study, the SPWB exhibited high levels of internal consistency \(α \= 0\.83\)\.

Self\-esteem was assessed with the 10\-item Rosenberg Self\-Esteem Scale \(RSES\) \(Rosenberg, 1965\) rated on a four\-point Likert scale ranging from strongly agree \(1\) to strongly disagree \(4\), without a specific timeframe\. Total scores can range from 10 to 40, with higher scores indicating greater levels of self\-esteem\. In the present study, the RSES exhibited excellent levels of internal consistency \(α \= 0\.92\)\.

Social media use motives were assessed using an adapted version of the Motivation for Twitter Use Measure \(Lee and Kim, 2014\) by replacing the strict term “Twitter” with “social media\.” This 14\-item measure includes the following four subscales assessing different psychological motivations for using social media websites \(without a specific timeframe\) in general: #emph[surveillance] \(i\.e\., five items covering the motivation to discover pressing social issues, to obtain various interpretations\/explanations on current affairs, to obtain professional knowledge and information, to befriend influential professionals, and to provide useful information to other people\; #emph[network expansion] \(i\.e\., three items covering the motivation to provide information about interests to others, to express feelings and thoughts to others, and to befriend people\)\; #emph[intrapersonal motive] \(i\.e\., four items capturing motivational aspects such as to forget the complications of everyday life, to remember what was done, to pass time, and to record everyday life\)\; and #emph[relationship maintenance] \(i\.e\., two items covering the motivation to contact with friends and family, and to provide updates on current life to friends\/acquaintances\)\. All the 14 items were rated on a seven\-point Likert scale ranging from strongly disagree \(1\) to strongly agree \(7\)\. In the present study, all subscales presented with adequate levels of reliability \(surveillance α \= 0\.75\; network expansion α \= 0\.68\; intrapersonal motive α \= 0\.71\; and relationship maintenance α \= 0\.65\)\.

Positive and negative affect were measured using the 20\-item Positive and Negative Affect Schedule \(PANAS\) \(Watson et al\., 1988\)\. The PANAS comprises 10 items assessing positive affect and 10 items to assess negative affect without a specific timeframe \(i\.e\., trait\-like affect\)\. Participants were requested to indicate their levels of agreement with each item, using a five\-point Likert scale ranging from very slightly or not at all \(1\) to extremely \(5\)\. Total scores for both positive and negative affect subscales ranged from 10 to 50, with higher scores indicating higher levels of positive or negative affect\. In the present study, the PANAS has exhibited high levels of internal consistency \(positive affect α \=0\.84 and negative affect α \= 0\.97\)\.

== Statistical Analyses and Data Analytic Strategy
#par(first-line-indent: 0em)[Statistical analyses comprised the following analyses: \(i\) descriptive statistics of the sample structure, characteristics, and patterns of social media usage\; \(ii\) correlational analysis between the main variables of the study\; \(iii\) independent sample #emph[t]\-tests to establish the profile of the sample in terms of PSMU\; and \(iv\) a stepwise multiple linear regression analysis to investigate the role of potential predictors of PSMU \(i\.e\., psychological well\-being, self\-esteem, social media use motives, and positive and negative affect\), while controlling for the effects of age and gender\. #emph[R]#super[2] and Cohen\'s #emph[d] \(Cohen, 1988\) coefficients were estimated for the assessment of goodness of fit of the multiple linear regression model and effect sizes\. The analyses align with previous exploratory studies on social media behavior \(e\.g\., Pontes et al\., 2018\)\.]

Prior to collecting the data, sample size considerations were examined through a power analysis using G#super[\*]Power \(version 3\.1\.9\.7\) to calculate the minimum sample size needed for the analysis \(Faul et al\., 2009\)\. This a priori test was based on \(i\) pre\-set power \(1\-β \= 0\.95\), \(ii\) medium effect size \(#emph[f] #super[2] \= 0\.15\), and \(iii\) α \=0\.05, with eight predictors \(i\.e\., psychological well\-being, self\-esteem, social media use motives, and positive and negative affect\) and two sociodemographic and usage variables \(age, daily SM use, gender\)\. The results indicated that the required sample size was 172 participants, yielding a power of 0\.95\.

The procedures for data cleansing included examining the normal distribution, as well as univariate, and multivariate outliers in the dataset\. No issues were detected after screening the data, so no further participants were excluded from analyses\. The assumptions of the multiple linear regression analysis were examined in order to determine the suitability of the parametric approach\. Potential multicollinearity issues were inspected using Variation Inflation Factors \(VIF\)\. All VIF values were less than or equal to 1\.49, which is well\-below the threshold of 10, indicating that there were no multicollinearity issues \(Field, 2013\)\. Finally, to minimize Type I errors, Bonferroni correction was applied \(Bland and Altman, 1995\)\. The analyses were carried out using IBM SPSS Statistics, Version 26\.

= Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Descriptive Statistics
#par(first-line-indent: 0em)[All descriptive statistics with means and standard deviations of the variables of interest, can be found in Table 1\. Beyond that, all sample characteristics are described in detail in Table 1\.]

== PSMU Correlates and Profiles
#par(first-line-indent: 0em)[Correlates of PSMU were analyzed with zero\-order Pearson correlations \(#emph[r]\) taking into account all the main variables of the study \(see Table 2\)\. Overall, PSMU was positively associated with intrapersonal motive \(#emph[r] \= 0\.51, #emph[p] \< 0\.01\), negative affect \(#emph[r] \= 0\.37\), relationship maintenance motive \(#emph[r] \= 0\.31, #emph[p] \< 0\.01\), network expansion motive \(#emph[r] \= 0\.29, #emph[p] \< 0\.01\), and surveillance motive \(#emph[r] \= 0\.25, #emph[p] \< 0\.01\)\. Furthermore, PSMU was negatively associated with psychological well\-being \(#emph[r] \= −0\.30, #emph[p] \< 0\.01\), self\-esteem \(#emph[r] \= −0\.27, #emph[p] \< 0\.01\), and positive affect \(#emph[r] \= −0\.08, #emph[p] \< 0\.05\)\. Correlates for the respondents\' age ranged from #emph[r] \= −0\.29, #emph[p] \< 0\.01 \(problematic SM use\) to #emph[r] \= 0\.19, #emph[p] \< 0\.01 \(self\-esteem\)\. Correlates for gender#sub[\(ref:1 \= female\)] ranged from #emph[r] \= −0\.10, #emph[p] \< 0\.01 \(network expansion\) to #emph[r] \= 0\.15, #emph[p] \< 0\.01 \(relationship maintenance\)\.]

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Correlation matrix across the main variables of the study \(n \= 584\)]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1.8fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), align: (left, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[#strong[1]]], [#strong[#strong[2]]], [#strong[#strong[3]]], [#strong[#strong[4]]], [#strong[#strong[5]]], [#strong[#strong[6]]], [#strong[#strong[7]]], [#strong[#strong[8]]], [#strong[#strong[9]]]),
table.hline(stroke: 0.5pt),
[1\. Problematic social media use], [–], [−0\.30#super[\*\*]], [−0\.27#super[\*\*]], [0\.25#super[\*\*]], [0\.29#super[\*\*]], [0\.51#super[\*\*]], [0\.31#super[\*\*]], [−0\.08#super[\*]], [0\.37#super[\*\*]],
[2\. Psychological well\-being], [], [–], [0\.78#super[\*\*]], [−0\.04], [−0\.09#super[\*]], [−0\.22#super[\*\*]], [0\.01], [0\.45#super[\*\*]], [−0\.52#super[\*\*]],
[3\. Self\-esteem], [], [], [–], [−0\.09#super[\*]], [−0\.12#super[\*\*]], [−0\.26#super[\*\*]], [−0\.08], [0\.38#super[\*\*]], [−0\.55#super[\*\*]],
[4\. Surveillance], [], [], [], [–], [0\.40#super[\*\*]], [0\.21#super[\*\*]], [0\.17#super[\*\*]], [0\.12#super[\*\*]], [0\.13#super[\*\*]],
[5\. Network expansion], [], [], [], [], [–], [0\.47#super[\*\*]], [0\.49#super[\*\*]], [−0\.01], [0\.13#super[\*\*]],
[6\. Intrapersonal motive], [], [], [], [], [], [–], [0\.50#super[\*\*]], [−0\.03], [0\.28#super[\*\*]],
[7\. Relationship maintenance], [], [], [], [], [], [], [–], [0\.13#super[\*\*]], [0\.10#super[\*]],
[8\. Positive affect], [], [], [], [], [], [], [], [–], [−0\.08],
[9\. Negative affect], [], [], [], [], [], [], [], [], [–],
[Age], [−0\.29#super[\*\*]], [0\.12#super[\*\*]], [0\.19#super[\*\*]], [−0\.13#super[\*\*]], [−0\.10#super[\*]], [−0\.28#super[\*\*]], [−0\.16#super[\*\*]], [−0\.09#super[\*]], [−0\.25#super[\*\*]],
[Gender], [0\.03], [0\.12#super[\*\*]], [−0\.02], [−0\.09#super[\*]], [−0\.10#super[\*\*]], [0\.07], [0\.15#super[\*\*]], [−0\.01], [−0\.03],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Social media use motivations subdimensions include surveillance, network expansion, intrapersonal motive, relationship maintenance]\; #super[\*\*]zero\-order Pearson correlation \(r\) significant at the 0\.01 level \(two\-tailed\)\; #super[\*]zero\-order Pearson correlation \(r\) significant at the 0\.05 level \(two\-tailed\)\; Gender ref\=1 female\.]
]
#v(12pt)
Using a strict monothetic cut\-off approach, about 6\.68% \(#emph[n] \= 39\) of all participants could be classed as problematic users\. Furthermore, key differences between problematic and non\-problematic users emerged\. It was found that problematic users accessed significantly more social media platforms than non\-problematic users \(Cohen\'s #emph[d] \=0\.60\)\. Compared to non\-problematic users, problematic users also showed increased levels of negative affect \(#emph[d] \= 1\.08\), intrapersonal motive \(#emph[d] \= 1\.07\), surveillance \(#emph[d] \= 0\.53\), network expansion \(#emph[d] \= 0\.48\), and relationship maintenance \(#emph[d] \= 0\.41\) motives\. Finally, problematic users reported lower levels of psychological well\-being \(#emph[d] \= 0\.61\) and self\-esteem \(#emph[d] \= 0\.57\), as compared to non\-problematic users\. Apart from positive affect \(#emph[p] \= 0\.55\), all mean differences across the two groups were statistically significant \(see Table 3\)\.

#page(flipped: true)[
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 3.] Main differences across social media \(SM\) users presenting with low and high risk of problematic social media use \(n \= 584\)]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Measure]], [#strong[Low risk mean \(SD\)]], [#strong[High risk mean \(SD\)]], [#strong[t\-statistic]], [#strong[df]], [#strong[Mean differences]], [#strong[CI lower]], [#strong[CI upper]], [#strong[Cohen\'s d]]),
table.hline(stroke: 0.5pt),
[Number of SM platforms used], [2\.15 \(1\.19\)], [2\.90 \(1\.29\)], [−3\.48], [42\.77], [−0\.74], [−1\.17], [−0\.31], [0\.60],
[Psychological well\-being], [4\.43 \(0\.66\)], [4\.00 \(0\.73\)], [3\.64], [42\.66], [0\.44], [0\.20], [0\.68], [0\.61],
[Self\-esteem], [28\.59 \(6\.19\)], [24\.74 \(7\.19\)], [3\.25], [42\.12], [3\.84], [1\.46], [6\.23], [0\.57],
[Surveillance], [19\.43 \(5\.90\)], [22\.69 \(6\.22\)], [−3\.17], [43\.05], [−3\.26], [−5\.33], [−1\.19], [0\.53],
[Network expansion], [12\.46 \(4\.19\)], [14\.41 \(3\.91\)], [−3\.00], [44\.47], [−1\.96], [−3\.27], [−0\.64], [0\.48],
[Intrapersonal motive], [16\.92 \(5\.07\)], [22\.03 \(4\.38\)], [−6\.95], [45\.62], [−5\.11], [−6\.58], [−3\.63], [1\.07],
[Relationship maintenance], [10\.28 \(2\.69\)], [11\.38 \(2\.59\)], [−2\.56], [44\.10], [−1\.10], [−1\.97], [−0\.24], [0\.41],
[Positive affect], [31\.52 \(7\.22\)], [30\.03 \(8\.18\)], [1\.11], [42\.35], [1\.49], [−1\.23], [4\.21], [0\.19],
[Negative affect], [20\.96 \(7\.16\)], [29\.31 \(8\.22\)], [−6\.17], [42\.23], [−8\.34], [−11\.07], [−5\.62], [1\.08],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Results are statistically significant after applying Bonferroni correction to account for potential Type I error \(i\.e\., p \< 0\.006\)\; SD, standard deviation\; df, degrees of freedom\; CI, confidence interval]\.]
]
#v(12pt)
]
== Predictors of PSMU
#par(first-line-indent: 0em)[A stepwise multiple linear regression was carried out to explore the predictors of PSMU using the main variables of the study\. The final model estimated in the fifth step \(see Table 4\) included intrapersonal motive \(β \= 0\.37, #emph[t] \= 10\.67\), negative affect \(β \= 0\.22, #emph[t] \= 6\.66\), daily social media use \(β \= 0\.18, #emph[t] \= 5\.37\), surveillance motive \(β \= 0\.12, #emph[t] \= 3\.35\), and positive affect \(β \= −0\.09, #emph[t] \= −2\.80\) as significant predictors of PSMU, contributing \~37\.3% of the total variance in PSMU scores\. Among all predictors, intrapersonal motive \(β \= 0\.37\) provided the strongest predictive contribution \(Δ#emph[R]#super[2] \= 0\.009\; Δ#emph[F] \[1, 577\] \= 7\.88, #emph[p] \= 0\.005\)\. The final model excluded the following predictors due to low, or non\-statistically significant, predictive power: psychological well\-being \(#emph[p] \= 0\.10\), self\-esteem \(#emph[p] \= 0\.51\), network expansion motive \(#emph[p] \= 0\.82\), and relationship maintenance motive \(#emph[p] \= 0\.06\)\. Finally, the control variables age and gender emerged as non\-significant predictors of PSMU \(#emph[p] \> 0\.05\)\.]

#page(flipped: true)[
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 4.] The relationship between problematic social media use and key related predictors]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 7.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Predictor]], [#strong[Step 1 #emph[B]]], [#strong[Step 1 SE]], [#strong[Step 1 β]], [#strong[Step 2 #emph[B]]], [#strong[Step 2 SE]], [#strong[Step 2 β]], [#strong[Step 3 #emph[B]]], [#strong[Step 3 SE]], [#strong[Step 3 β]], [#strong[Step 4 #emph[B]]], [#strong[Step 4 SE]], [#strong[Step 4 β]], [#strong[Step 5 #emph[B]]], [#strong[Step 5 SE]], [#strong[Step 5 β]]),
table.hline(stroke: 0.5pt),
[Intrapersonal motive], [0\.50], [0\.03], [0\.51#super[\*\*\*]], [0\.43], [0\.03], [0\.43#super[\*\*\*]], [0\.39], [0\.03], [0\.40#super[\*\*\*]], [0\.37], [0\.04], [0\.38#super[\*\*\*]], [0\.37], [0\.03], [0\.38#super[\*\*\*]],
[Negative affect], [], [], [], [0\.16], [0\.02], [0\.16#super[\*\*\*]], [0\.16], [0\.02], [0\.24#super[\*\*\*]], [0\.16], [0\.02], [0\.23#super[\*\*\*]], [0\.15], [0\.02], [0\.22#super[\*\*\*]],
[Daily social media use], [], [], [], [], [], [], [0\.79], [0\.14], [0\.19#super[\*\*\*]], [0\.74], [0\.14], [0\.18#super[\*\*\*]], [0\.77], [0\.14], [0\.18#super[\*\*\*]],
[Surveillance], [], [], [], [], [], [], [], [], [], [0\.09], [0\.03], [0\.10#super[\*\*]], [0\.10], [0\.03], [0\.12#super[\*\*]],
[Positive affect], [], [], [], [], [], [], [], [], [], [], [], [], [−0\.06], [0\.02], [−0\.09#super[\*\*]],
table.cell(colspan: 16)[#emph[#emph[R]²: \.263 \(26\.3%\)\; \.320 \(32%\)\; \.354 \(35\.4%\)\; \.364 \(36\.4%\)\; \.373 \(37\.3%\)]],
table.cell(colspan: 16)[#emph[Δ#emph[R]² \(steps 2–5\): \.057 \(57%\)\; \.034 \(34%\)\; \.010 \(10%\)\; \.009 \(0\.9%\)]],
table.cell(colspan: 16)[#emph[Model: #emph[F]\(1, 581\) \= 207\.66#super[\*\*\*]\; #emph[F]\(2, 580\) \= 136\.36#super[\*\*\*]\; #emph[F]\(3, 579\) \= 105\.79#super[\*\*\*]\; #emph[F]\(4, 578\) \= 82\.72#super[\*\*\*]\; #emph[F]\(5, 577\) \= 68\.54#super[\*\*\*]]],
table.cell(colspan: 16)[#emph[Steps: Δ#emph[F]\(1, 580\) \= 48\.20#super[\*\*\*]\; Δ#emph[F]\(1, 579\) \= 30\.69#super[\*\*\*]\; Δ#emph[F]\(1, 578\) \= 9\.08#super[\*\*]\; Δ#emph[F]\(1, 577\) \= 7\.88#super[\*\*]]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#super[\*\*\*]#emph[p] \< 0\.001\; #super[\*\*]#emph[p] \< 0\.05\. The final model, i\.e\., Step 5 excluded the following variables due to low or non\-significant predictive power: age and gender \(control variables\), psychological well\-being, self\-esteem, network expansion, and relationship maintenance\. B, unstandardized regression coefficient\; SE, standard error\; β, standardized regression coefficient\; R#super[2], R square\; ΔR#super[2], R square change\.]
]
#v(12pt)
]
= Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[This study contributes to the growing field of PSMU by investigating the role of key correlates and predictors of PSMU, broadly defined\. This is an important contribution to the field given that a relatively large amount of previous research has focused on problematic Facebook use specifically, and exclusively\. Analyses of the data in the present study revealed that intrapersonal motive, negative affect, relationship maintenance, and psychological well\-being were the strongest correlates of PSMU\. Furthermore, intrapersonal motive explained about 26% of the total variance in PSMU, followed by negative affect \(14%\), and relationship maintenance \(10%\), respectively\. Interestingly, broad social media use motives produced strong effects, which is in line with findings from uses and gratification theory \(Blumler and Katz, 2020\), for instance showing that among others, social motives play an important role in understanding social media use \[both to predict intention to use \(see Hossain, 2019\) and continuance usage Hsiao et al\. \(2016\)\]\. A recent work by Sariyska et al\. \(2019\) also found support for the relevance of investigating the affiliative motive in the context of Facebook use, but findings might be also dependent on the cultural context\. In general, these observations also fit with empirical findings from personality psychology, demonstrating that social media users tend to be slightly more extraverted than non\-users \(Marengo et al\., 2020\; Sindermann et al\., 2020\) and it is well\-known that extraverts have a stronger urge to socially interact with other persons\. Note that much research on diverse social media use motives has been conducted in the realm of normal or healthy social media use\.]

As one can see, previous research has considered the relationships between social media use motives and specific factors as described above, such as affiliation and communication confidence \(Lee and Kim, 2014\)\. Nevertheless, we believe the present study is among the first, to the authors\' knowledge, to explore the relationship between broad social media use motives and PSMU\. Moreover, these findings align with previous literature on social media use by supporting the relationship between PSMU with psychological well\-being \(Oh et al\., 2014\), self\-esteem \(Mei et al\., 2016\), and psychological affect \(Caplan, 2002, 2010\)\.

The findings obtained further indicated that about 6\.68% of the sample recruited could be classed as problematic users due to their high\-risk profile of PSMU\. This result aligns with previous research reporting that social media related problems due to PSMU may range from 1\.6% \(Alabi, 2013\) to 18% \(Moghavvemi et al\., 2017\)\. Although epidemiological data on PSMU has been previously reported, additional research on this emerging phenomenon is warranted before any formal psychiatric recognition and further generalizations to the broader population can be made\.

Notwithstanding this, the findings obtained in this study suggest that problematic users used significantly more social media platforms, and presented with increased levels of negative affect, intrapersonal, surveillance, network expansion, and relationship maintenance motives compared to non\-problematic users\. Furthermore, problematic users also presented with decreased levels of psychological well\-being and self\-esteem in comparison to non\-problematic users\. These findings contribute to the growing body of evidence linking PSMU with maladaptive cognition, increased psychiatric distress \(Pontes et al\., 2018\), and decreased well\-being \(Kross et al\., 2013\; Satici and Uysal, 2015\; Błachnio et al\., 2016b\)\.

In terms of key PSMU predictors, the most relevant factors related to intrapersonal motive, followed by negative affect, daily social media use, surveillance motive, and positive affect, which explained about 37\.3% of the total variance in PSMU\. This finding aligns with past research reporting that key predictive factors associated with PSMU are over and above the influence of commonly related sociodemographic variables such as gender and age \(Pontes et al\., 2018\)\.

The intricate connection between intrapersonal motive for using social media and PSMU should be further investigated beyond the linear relationship reported in this study\. Intrapersonal motives comprise self\-directed emotions associated with self\-esteem, guilt, and shame \(Weiner, 2001\)\. This finding supports the notion that individuals using social media in an attempt to better understand themselves and their environment are likely to exhibit greater levels of PSMU, a contention that aligns with emerging research showing that trait emotional intelligence may be thought of as a risk factor for PSMU \(Kircaburun et al\., 2019\; Süral et al\., 2019\)\. This idea needs to be supplemented by recent notions to better understand the detrimental aspects of social media use by distinguishing between active and passive use, whereas passively browsing seems to be associated with the aspects of overuse and negative affect \(e\.g\., Escobar\-Viera et al\., 2018\)\.

The current findings also indicated that PSMU may be explained by other social media use motives since they contributed to predicting PSMU in the present sample\. Furthermore, the results indicated that self\-esteem and the use of multiple social media platforms were linked to PSMU, which may highlight the users\' need to improve their levels of self\-image and self\-esteem, particularly among problematic users \(Błachnio et al\., 2016a\)\. In this context, it is worth mentioning the process of upward social comparison, which can be triggered by comparing the number of “Likes” with others or by comparing life styles \(Vogel et al\., 2014\)\. Taken together, these findings may provide useful information with potential clinical implications about the way individuals use social media in the context of the coronavirus \(COVID\-19\) pandemic as recent studies have reported that increased exposure to disaster\-related information on social media may trigger negative affect, which can elicit mental health disorders \(Zhao and Zhou, 2020\), a contention that is aligned with the findings obtained since negative affect was a strong predictor of PSMU\.

Despite its contributions, the current study presents with several potential limitations\. Although this study found consistent associations between PSMU and psychological well\-being, self\-esteem, negative affect, and social media use motives, its cross\-sectional nature does not allow for causal inferences to be made\. Future research should adopt a longitudinal design to further examine the temporal role of key mechanisms underlying PSMU\. Another potential limitation in the present study relates to the self\-report methodology used, which is likely to have generated well\-known biases and unreliable estimations of participants\' objective social media use \(Rozgonjuk et al\., 2020c\)\. Consequently, it is of high interest to also record behavior directly due to time distortions participants experience while using technology \(e\.g\., Lin et al\., 2015\; Montag et al\., 2015\)\.

Importantly, the present study drew its conclusions on a relatively small sample that was sampled through convenience and self\-selection sampling, further limiting the scope of the findings as any research question addressed with convenience sampling is limited to the sample itself \(Bornstein et al\., 2013\)\. We also acknowledge that the #emph[ad\-hoc] cut\-off approach of the BSMAS, despite being strict, lacks information about its diagnostic accuracy \(e\.g\., sensitivity and specificity\) using clinically diagnosed samples as a gold standard\. Finally, another potential limitation related to the present study relates to the relatively limited number of possible social media use motives that have been investigated, therefore it is likely that different results would have emerged in light of different psychological motives\.

Notwithstanding these potential limitations, this study helps advancing the field of PSMU by further elucidating its key correlates and predictors in terms of psychological well\-being, self\-esteem, social media use motives, and psychological affect\. In conclusion, we found that PSMU was positively associated with intrapersonal motive, negative affect, relationship maintenance motive, network expansion motive, and surveillance motive and negatively associated with psychological well\-being, self\-esteem, and positive affect\. Finally, key predictors of PSMU were related to intrapersonal motive, negative affect, daily social media use, surveillance motive, and positive affect\.

= Data Availability Statement
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The dataset presented in this article is not readily available due to limitations in the confidentiality as per the SREC\'s recommendations\. Requests to access the datasets should be directed to Dr\. Bruno Schivinski\.]

= Ethics Statement
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The studies involving human participants were reviewed and approved by the School of Social Sciences Research Ethics Committee \(SREC\) Nottingham Trent University\. The patients\/participants provided their written informed consent to participate in this study\.]

= Author Contributions
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[BS has performed all final statistical analyses of the study and helped drafting, revising, and reviewing the manuscript\. MB\-W, JS, and CM have all contributed extensively to revising the manuscript and writing its final version\. ES was involved in the design of the study, preliminary statistical analyses, and recruitment of participants in addition to helping draft the manuscript\. HP has designed the study, assisted with the preliminary statistical analyses, drafting, reviewing, and revision of all versions of the manuscript\.]

= Conflict of Interest
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The authors declare that the research was conducted in the absence of any commercial or financial relationships that could be construed as a potential conflict of interest\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Alabi, O\. F\. \(2013\)\. A survey of Facebook addiction level among selected Nigerian university undergraduates\. #emph[N\. Med\. Mass Comm\.] 10, 70–80\.

Andreassen, C\., and Pallesen, S\. \(2014\)\. Social network site addiction \- an overview\. #emph[Curr\. Pharm\. Des\.] 20, 4053–4061\. doi: 10\.2174\/13816128113199990616

Andreassen, C\. S\. \(2015\)\. Online social network site addiction: a comprehensive review\. #emph[Curr\. Addict\. Rep\.] 2, 175–184\. doi: 10\.1007\/s40429\-015\-0056\-9

Andreassen, C\. S\., Billieux, J\., Griffiths, M\. D\., Kuss, D\. J\., Demetrovics, Z\., Mazzoni, E\., et al\. \(2016\)\. The relationship between addictive use of social media and video games and symptoms of psychiatric disorders: a large\-scale cross\-sectional study\. #emph[Psychol\. Addict\. Behav\.] 30, 252–262\. doi: 10\.1037\/adb0000160

Bányai, F\., Zsila, Á\., Király, O\., Maraz, A\., Elekes, Z\., Griffiths, M\. D\., et al\. \(2017\)\. Problematic social media use: results from a large\-scale nationally representative adolescent sample\. #emph[PLoS ONE] 12:e0169839\. doi: 10\.1371\/journal\.pone\.0169839

Błachnio, A\., Przepiorka, A\., and Pantic, I\. \(2016a\)\. Association between Facebook addiction, self\-esteem and life satisfaction: a cross\-sectional study\. #emph[Comput\.] #emph[Human Behav\.] 55, 701–705\. doi: 10\.1016\/j\.chb\.2015\.10\.026

Błachnio, A\., Przepiorka, A\., and Rudnicka, P\. \(2016b\)\. Narcissism and self\-esteem as predictors of dimensions of Facebook use\. #emph[Pers\. Individ\. Diff\.] 90, 296–301\. doi: 10\.1016\/j\.paid\.2015\.11\.018

Bland, J\. M\., and Altman, D\. G\. \(1995\)\. Statistics notes: multiple significance tests: the Bonferroni method\. #emph[BMJ] 310, 170–170\. doi: 10\.1136\/bmj\.310\.6973\.170

Blumler, J\. G\. and Katz, E\. \(2020\)\. #emph[The Uses of Mass Communications: Current] #emph[Perspectives on Gratifications Research\. Sage Annual Reviews of Communication] #emph[Research], Vol\. 3\.

Bornstein, M\. H\., Jager, J\., and Putnick, D\. L\. \(2013\)\. Sampling in developmental science: situations, shortcomings, solutions, and standards\. #emph[Dev\. Rev\.] 33, 357–370\. doi: 10\.1016\/j\.dr\.2013\.08\.003

Boyd, D\. N\., and Ellison, N\. B\. \(2007\)\. Social network sites: definition, history, and scholarship\. #emph[J\. Comput\. Commun\.] 13, 210–230\. doi: 10\.1111\/j\.1083\-6101\.2007\.00393\.x

Brailovskaia, J\., and Margraf, J\. \(2017\)\. Facebook addiction disorder \(FAD\) among German students—a longitudinal approach\. #emph[PLoS ONE] 12:e0189719\. doi: 10\.1371\/journal\.pone\.0189719

Brailovskaia, J\., Margraf, J\., and Köllner, V\. \(2019b\)\. Addicted to Facebook? relationship between Facebook addiction disorder, duration of Facebook use and narcissism in an inpatient sample\. #emph[Psychiatry Res]\. 273, 52–57\. doi: 10\.1016\/j\.psychres\.2019\.01\.016

Brailovskaia, J\., Rohmann, E\., Bierhoff, H\.\-W\., Margraf, J\., and Köllner, V\. \(2019a\)\. Relationships between addictive Facebook use, depressiveness, insomnia, and positive mental health in an inpatient sample: a German longitudinal study\. #emph[J\.] #emph[Behav\. Addict\.] 8, 703–713\. doi: 10\.1556\/2006\.8\.2019\.63

Brailovskaia, J\., Teismann, T\., and Margraf, J\. \(2020\)\. Positive mental health mediates the relationship between Facebook addiction disorder and suicide\-related outcomes: a longitudinal approach\. #emph[Cyberpsychol\. Behav\. Soc\. Netw\.] 23, 346–350\. doi: 10\.1089\/cyber\.2019\.0563

Buda, G\., Lukoševiči¯utė, J\., Šalči¯unaitė, L\., and Šmigelskas, K\. \(2020\)\. Possible effects of social media use on adolescent health behaviors and perceptions\. #emph[Psychol\. Rep]\. doi: 10\.1177\/0033294120922481\. \[Epub ahead of print\]\.

Caplan, S\. E\. \(2002\)\. Problematic Internet use and psychosocial wellbeing: development of a theory\-based cognitive–behavioral measurement instrument\. #emph[Comput\. Human Behav\.] 18, 553–575\. doi: 10\.1016\/S0747\-5632\(02\) 00004\-3

Caplan, S\. E\. \(2010\)\. Theory and measurement of generalized problematic internet use: a two\-step approach\. #emph[Comput\.] #emph[Human Behav\.] 26, 1089–1097\. doi: 10\.1016\/j\.chb\.2010\. 03\.012

Chen, I\. H\., Strong, C\., Lin, Y\. C\., Tsai, M\. C\., Leung, H\., Lin, C\. Y\., et al\. \(2020\)\. Time invariance of three ultra\-brief internet\-related instruments: smartphone Application\-Based Addiction Scale \(SABAS\), Bergen Social Media Addiction Scale \(BSMAS\), and the nine\-item Internet Gaming Disorder Scale\- Short Form \(IGDS\-SF9\) \(Study Part B\)\. #emph[Addict\. Behav\.] 101:105960\. doi: 10\.1016\/j\.addbeh\.2019\.04\.018

Cohen, J\. \(1988\)\. #emph[Statistical Power Analysis for the Behavioral Sciences \(2nd Ed\.\)] New Jersey, NJ: Erlbaum: Hillsdale\.

da Veiga, G\. F\., Sotero, L\., Pontes, H\. M\., Cunha, D\., Portugal, A\., and Relvas, A\. P\. \(2019\)\. Emerging adults and facebook use: the validation of the bergen facebook addiction scale \(BFAS\)\. #emph[Int\.] #emph[J\. Ment\. Health Addict\.] 17, 279–294\. doi: 10\.1007\/s11469\-018\-0018\-2

Davis, R\. A\. \(2001\)\. A cognitive\-behavioral model of pathological internet use\. #emph[Comput\. Human Behav\.] 17, 187–195\. doi: 10\.1016\/S0747\-5632\(00\)00041\-8

De Cock, R\., Vangeel, J\., Klein, A\., Minotte, P\., Rosas, O\., and Meerkerk, G\. J\. \(2014\)\. Compulsive use of social networking sites in Belgium: prevalence, profile, and the role of attitude toward work and school\. #emph[Cyberpsychol\. Behav\.] #emph[Soc\. Netw\.] 17, 166–171\. doi: 10\.1089\/cyber\.2013\.0029

Duradoni, M\., Innocenti, F\., and Guazzini, A\. \(2020\)\. Well\-being and social media: a systematic review of Bergen addiction scales\. #emph[Futur\. Internet] 12:24\. doi: 10\.3390\/fi12020024

Escobar\-Viera, C\. G\., Shensa, A\., Bowman, N\. D\., Sidani, J\. E\., Knight, J\., James, A\. E\., et al\. \(2018\)\. Passive and active social media use and depressive symptoms among United States adults\. #emph[Cyberpsychol\. Behav\. Soc\. Netw\.] 21, 437–443\. doi: 10\.1089\/cyber\.2017\.0668

Faul, F\., Erdfelder, E\., Buchner, A\., and Lang, A\. G\. \(2009\)\. Statistical power analyses using G∗Power 3\.1: tests for correlation and regression analyses\. #emph[Behav\.] #emph[Res\. Methods] 41, 1149–1160\. doi: 10\.3758\/BRM\.41\.4\.1149

Field, A\. \(2013\)\. #emph[Discovering Statistics Using SPSS: and Sex and Drugs and Rock “n”] #emph[Roll, 4th ed\.] London: SAGE Publications Ltd\.

Griffiths, M\. D\. \(2012\)\. Facebook addiction: concerns, criticism, and recommendations—a response to Andreassen and colleagues\. #emph[Psychol\.] #emph[Rep\.] 110, 518–520\. doi: 10\.2466\/01\.07\.18\.PR0\.110\.2\.518\-520

Hawes, T\., Zimmer\-Gembeck, M\. K\., and Campbell, S\. M\. \(2020\)\. Unique associations of social media use and online appearance preoccupation with depression, anxiety, and appearance rejection sensitivity\. #emph[Body Image]\. 33, 66–76\. doi: 10\.1016\/j\.bodyim\.2020\.02\.010

Heo, J\., Chun, S\., Lee, S\., Lee, K\. H\., and Kim, J\. \(2015\)\. Internet use and well\-being in older adults\. #emph[Cyberpsychol\. Behav\. Soc\. Netw\.] 18, 268–272\. doi: 10\.1089\/cyber\.2014\.0549

Hossain, M\. A\. \(2019\)\. Effects of uses and gratifications on social media use: the Facebook case with multiple mediator analysis\. #emph[PSU Res\. Rev]\. 3, 16–28\. doi: 10\.1108\/PRR\-07\-2018\-0023

Hsiao, C\. H\., Chang, J\. J\., and Tang, K\. Y\. \(2016\)\. Exploring the influential factors in continuance usage of mobile social Apps: satisfaction, habit, and customer value perspectives\. #emph[Telematics Inf]\. 33, 342–355\. doi: 10\.1016\/j\.tele\.2015\.08\.014

Huang, C\. \(2012\)\. “Internet use and psychological well\-Being,” in #emph[Encyclopedia of Cyber Behavior], ed Z\. Yan \(Taiwan: IGI Global\), 302–314\. doi: 10\.4018\/978\-1\-4666\-0315\-8\.ch026

Karadag, E\., Tosunta̧s, S\. B\., Erzen, E\., Duru, P\., Bostan, N\., Sahin, B\. M\., et al\. \(2015\)\. Determinants of phubbing, which is the sum of many virtual addictions: a structural equation model\. #emph[J\. Behav\. Addict\.] 4, 60–74\. doi: 10\.1556\/2006\.4\.2015\.005

Kardefelt\-Winther, D\. \(2014\)\. A conceptual and methodological critique of internet addiction research: towards a model of compensatory internet use\. #emph[Comput\. Human Behav\.] 31, 351–354\. doi: 10\.1016\/j\.chb\.2013\.10\.059

Kircaburun, K\., Griffiths, M\. D\., and Billieux, J\. \(2019\)\. Trait emotional intelligence and problematic online behaviors among adolescents: the mediating role of mindfulness, rumination, and depression\. #emph[Pers\. Individ\. Diff\.] 139, 208–213\. doi: 10\.1016\/j\.paid\.2018\.11\.024

Kross, E\., Verduyn, P\., Demiralp, E\., Park, J\., Lee, D\. S\., Lin, N\., et al\. \(2013\)\. Facebook use predicts declines in subjective well\-being in young adults\. #emph[PLoS] #emph[ONE] 8:e69841\. doi: 10\.1371\/journal\.pone\.0069841

Kuss, D\., and Griffiths, M\. \(2017\)\. Social networking sites and addiction: ten lessons learned\. #emph[Int\. J\. Environ\. Res\. Public Health] 14:311\. doi: 10\.3390\/ijerph14030311

Kuss, D\. J\., Griffiths, M\. D\., and Binder, J\. F\. \(2013\)\. Internet addiction in students: prevalence and risk factors\. #emph[Comput\. Human Behav\.] 29, 959–966\. doi: 10\.1016\/j\.chb\.2012\.12\.024

Lee, E\. J\., and Kim, Y\. W\. \(2014\)\. How social is Twitter use? affiliative tendency and communication competence as predictors\. #emph[Comput\. Human Behav\.] 39, 296–305\. doi: 10\.1016\/j\.chb\.2014\. 07\.034

Lenhart, A\. M\., Duggan, A\., Perrin, R\., Stepler, L\., and Rainie, P\. K\. \(2015\)\. #emph[Teens,] #emph[Social Media and Technology Overview 2015]\. Washington, DC: Pew Internet and American Life Project\.

Lin, L\., Yi Sidani, J\. E\., Shensa, A\., Radovic, A\., Miller, E\., Colditz, J\. B\., et al\. \(2016\)\. Association between social media use and depression among U\.S\. young adults\. #emph[Depress Anxiety] 33, 323–331\. doi: 10\.1002\/da\.22466

Lin, Y\. H\., Lin, Y\. C\., Lee, Y\. H\., Lin, P\. H\., Lin, S\. H\., Chang, L\. R\., et al\. \(2015\)\. Time distortion associated with smartphone addiction: Identifying smartphone addiction via a mobile application \(App\)\. #emph[J\. Psychiatr\. Res\.] 65, 139–145\. doi: 10\.1016\/j\.jpsychires\.2015\.04\.003

Marengo, D\., Sindermann, C\., Elhai, J\. D\., and Montag, C\. \(2020\)\. One social media company to rule them all: associations between use of Facebook\-owned social media platforms, sociodemographic characteristics, and the big five personality traits\. #emph[Front\. Psychol\.] 11:936\. doi: 10\.3389\/fpsyg\.2020\.00936

Mei, S\., Yau, Y\. H\. C\., Chai, J\., Guo, J\., and Potenza, M\. N\. \(2016\)\. Problematic internet use, well\-being, self\-esteem and self\-control: data from a high\-school survey in China\. #emph[Addict\. Behav\.] 61, 74–79\. doi: 10\.1016\/j\.addbeh\.2016\.05\.009

Moghavvemi, S\., Binti Sulaiman, A\., Jaafar, N\. I\. B\., and Kasem, N\. \(2017\)\. Facebook and YouTube addiction: the usage pattern of Malaysian students\. in #emph[2017 International Conference on Research and Innovation in Information] #emph[Systems \(ICRIIS\)] \(IEEE\), 1–6\. doi: 10\.1109\/ICRIIS\.2017\.8002516

Montag, C\., Błaszkiewicz, K\., Lachmann, B\., Sariyska, R\., Andone, I\., Trendafilov, B\., et al\. \(2015\)\. Recorded behavior as a valuable resource for diagnostics in mobile phone addiction: evidence from psychoinformatics\. #emph[Behav\. Sci\.] 5, 434–442\. doi: 10\.3390\/bs5040434

Montag, C\., Lachmann, B\., Herrlich, M\., and Zweig, K\. \(2019\)\. Addictive features of social media\/messenger platforms and freemium games against the background of psychological and economic theories\. #emph[Int\. J\. Environ\. Res\. Public] #emph[Health] 16:2612\. doi: 10\.3390\/ijerph16142612

Müller, K\. W\., Dreier, M\., Beutel, M\. E\., Duven, E\., Giralt, S\., and Wölfling, K\. \(2016\)\. A hidden type of internet addiction? Intense and addictive use of social networking sites in adolescents\. #emph[Comput\. Human Behav\.] 55, 172–177\. doi: 10\.1016\/j\.chb\.2015\.09\.007

Oh, H\. J\., Ozkaya, E\., and LaRose, R\. \(2014\)\. How does online social networking enhance life satisfaction? the relationships among online supportive interaction, affect, perceived social support, sense of community, and life satisfaction\. #emph[Comput\. Human Behav]\. 30, 69–78\. doi: 10\.1016\/j\.chb\.2013\.07\.053

Pontes, H\. M\. \(2017\)\. Investigating the differential effects of social networking site addiction and Internet gaming disorder on psychological health\. #emph[J\. Behav\.] #emph[Addict\.] 6, 601–610\. doi: 10\.1556\/2006\.6\.2017\.075

Pontes, H\. M\., Andreassen, C\. S\., and Griffiths, M\. D\. \(2016\)\. Portuguese validation of the Bergen facebook addiction scale: an empirical study\. #emph[Int\. J\. Ment\. Health] #emph[Addict\.] 14, 1062–1073\. doi: 10\.1007\/s11469\-016\-9694\-y

Pontes, H\. M\., Taylor, M\., and Stavropoulos, V\. \(2018\)\. Beyond “Facebook Addiction”: the role of cognitive\-related factors and psychiatric distress in social networking site addiction\. #emph[Cyberpsychol\. Behav\. Soc\. Netw]\. 21, 240–247\. doi: 10\.1089\/cyber\.2017\.0609

Radovic, A\., Gmelin, T\., Stein, B\. D\., and Miller, E\. \(2017\)\. Depressed adolescents’ positive and negative use of social media\. #emph[J\. Adolesc\.] 55, 5–15\. doi: 10\.1016\/j\.adolescence\.2016\.12\.002

Rae, J\. R\., and Lonborg, S\. D\. \(2015\)\. Do motivations for using Facebook moderate the association between Facebook use and psychological well\-being? #emph[Front\.] #emph[Psychol\.] 6:771\. doi: 10\.3389\/fpsyg\.2015\.00771

Reer, F\., Festl, R\., and Quandt, T\. \(2020\)\. Investigating problematic social media and game use in a nationally representative sample of adolescents and younger adults\. #emph[Behav\. Inf\. Technol]\. 1–14\. doi: 10\.1080\/0144929X\.2020\.1724333

Rosenberg, M\. \(1965\)\. #emph[Society and the Adolescent Self Image]\. Princeton, NJ: Princeton University Press\.

Rozgonjuk, D\., Pruunsild, P\., Jürimäe, K\., Schwarz, R\. J\., and Aru, J\. \(2020d\)\. Instagram use frequency is associated with problematic smartphone use, but not with depression and anxiety symptom severity\. #emph[Mob\. Media Commun\.] 8, 400–418\. doi: 10\.1177\/2050157920910190

Rozgonjuk, D\., Sindermann, C\., Elhai, J\. D\., Christensen, A\. P\., and Montag, C\. \(2020c\)\. Associations between symptoms of problematic smartphone, Facebook, WhatsApp, and Instagram use: an item\-level exploratory graph analysis perspective\. #emph[J\. Behav\. Addict\.] 9, 686–697\. doi: 10\.1556\/2006\.2020\.00036

Rozgonjuk, D\., Sindermann, C\., Elhai, J\. D\., and Montag, C\. \(2020a\)\. Fear of missing out \(FoMO\) and social media’s impact on daily\-life and productivity at work: do WhatsApp, Facebook, Instagram, and Snapchat use disorders mediate that association? #emph[Addict\. Behav\.] 110:106487\. doi: 10\.1016\/j\.addbeh\.2020\.106487

Rozgonjuk, D\., Sindermann, C\., Elhai, J\. D\., and Montag, C\. \(2020b\)\. Comparing smartphone, WhatsApp, Facebook, Instagram, and Snapchat: which Platform elicits the greatest use disorder symptoms? #emph[Cyberpsychol\. Behav\. Soc\. Netw\.] 2020:0156\. doi: 10\.1089\/cyber\. 2020\.0156

Ryan, T\., Chester, A\., Reece, J\., and Xenos, S\. \(2014\)\. The uses and abuses of Facebook: a review of Facebook addiction\. #emph[J\. Behav\. Addict\.] 3, 133–148\. doi: 10\.1556\/JBA\.3\.2014\.016

Ryff, C\. D\., and Keyes, C\. L\. M\. \(1995\)\. The structure of psychological well\-being revisited\. #emph[J\. Pers\. Soc\. Psychol\.] 69, 719–727\. doi: 10\.1037\/0022\-3514\.69\.4\.719

Sampasa\-Kanyinga, H\., and Lewis, R\. F\. \(2015\)\. Frequent use of social networking sites is associated with poor psychological functioning among children and adolescents\. #emph[Cyberpsychol\. Behav\. Soc\. Netw\.] 18, 380–385\. doi: 10\.1089\/cyber\.2015\.0055

Sariyska, R\., Lachmann, B\., Cheng, C\., Gnisci, A\., Sergi, I\., Pace, A\., et al\. \(2019\)\. The motivation for facebook use – is it a matter of bonding or control over others? #emph[J\. Individ\. Differ\.] 40, 26–35\. doi: 10\.1027\/1614\-0001\/a000273

Satici, S\. A\., and Uysal, R\. \(2015\)\. Well\-being and problematic Facebook use\. #emph[Comput\. Hum\. Behav\.] 49, 185–190\. doi: 10\.1016\/j\.chb\.2015\.03\.005

Schivinski, B\. \(2019\)\. Eliciting brand\-related social media engagement: a conditional inference tree framework\. #emph[J\. Bus\. Res\.], 1–9\. doi: 10\.1016\/j\.jbusres\.2019\.08\.045

Schivinski, B\., Muntinga, D\. G\., Pontes, H\. M\., and Lukasik, P\. \(2019\)\. Influencing COBRAs: the effects of brand equity on the consumer’s propensity to engage with brand\-related content on social media\. #emph[J\. Strateg\. Mark\.] 24, 1–23\. doi: 10\.1080\/0965254X\.2019\.1572641

Sha, P\., Sariyska, R\., Riedl, R\., Lachmann, B\., and Montag, C\. \(2019\)\. Linking internet communication and smartphone use disorder by taking a closer look at the Facebook and WhatsApp applications\. #emph[Addict\. Behav\. Rep\.] 9:100148\. doi: 10\.1016\/j\.abrep\.2018\.100148

Sindermann, C\., Elhai, J\. D\., and Montag, C\. \(2020\)\. Predicting tendencies towards the disordered use of Facebook’s social media platforms: on the role of personality, impulsivity, and social anxiety\. #emph[Psychiatry Res\.] 285:112793\. doi: 10\.1016\/j\.psychres\.2020\.112793

Spilkov,á, J\., Chomynov,á, P\., and Csémy, L\. \(2017\)\. Predictors of excessive use of social media and excessive online gaming in Czech teenagers\. #emph[J\. Behav\. Addict\.] 6, 611–619\. doi: 10\.1556\/2006\.6\.2017\.064

Süral, I\., Griffiths, M\. D\., Kircaburun, K\., and Emirtekin, E\. \(2019\)\. Trait emotional intelligence and problematic social media use among adults: the mediating role of social media use motives\. #emph[Int\. J\. Ment\. Health Addict\.] 17, 336–345\. doi: 10\.1007\/s11469\-018\-0022\-6

Tifferet, S\. \(2020\)\. Gender differences in social support on social network sites: a meta\-analysis\. #emph[Cyberpsychol\. Behav\. Soc\. Netw\.] 23, 199–209\. doi: 10\.1089\/cyber\.2019\.0516

Twigg, L\., Duncan, C\., and Weich, S\. \(2020\)\. Is social media use associated with children’s well\-being? Results from the UK household longitudinal study\. #emph[J\.] #emph[Adolesc\.] 80, 73–83\. doi: 10\.1016\/j\.adolescence\.2020\.02\.002

Vogel, E\. A\., Rose, J\. P\., Roberts, L\. R\., and Eckles, K\. \(2014\)\. Social comparison, social media, and self\-esteem\. #emph[Psychol\. Pop\. Media Cult\.] 3, 206–222\. doi: 10\.1037\/ppm0000047

Wang, J\. L\., Gaskin, J\., Wang, H\. Z\., and Liu, D\. \(2016\)\. Life satisfaction moderates the associations between motives and excessive social networking site usage\. #emph[Addict\. Res\. Theory] 24, 450–457\. doi: 10\.3109\/16066359\.2016\. 1160283

Wang, P\., Wang, X\., Zhao, M\., Wu, Y\., Wang, Y\., and Lei, L\. \(2019a\)\. Can social networking sites alleviate depression? The Relation between authentic online self\-presentation and adolescent depression: a mediation model of perceived social support and rumination\. #emph[Curr\. Psychol]\. 38, 1512–1521\. doi: 10\.1007\/s12144\-017\-9711\-8

Wang, W\., Qian, G\., Wang, X\., Lei, L\., Hu, Q\., Chen, J\., et al\. \(2019b\)\. Mobile social media use and self\-identity among Chinese adolescents: the mediating effect of friendship quality and the moderating role of gender\. #emph[Curr\. Psychol\.] doi: 10\.1007\/s12144\-019\-00397\-5\. \[Epub ahead of print\]\.

Ward, D\. M\., Dill\-Shackleford, K\. E\., and Mazurek, M\. O\. \(2018\)\. Social media use and happiness in adults with autism spectrum disorder\. #emph[Cyberpsychol\. Behav\. Soc\. Netw\.] 21, 205–209\. doi: 10\.1089\/cyber\. 2017\.0331

Wartberg, L\., Kriston, L\., and Thomasius, R\. \(2020\)\. Internet gaming disorder and problematic social media use in a representative sample of German adolescents: Prevalence estimates, comorbid depressive symptoms and related psychosocial aspects\. #emph[Comp\. Human\. Behav]\. 103, 31–36\. doi: 10\.1016\/j\.chb\.2019\. 09\.014

Watson, D\., Clark, L\. A\., and Tellegen, A\. \(1988\)\. Development and validation of brief measures of positive and negative affect: the PANAS scales\. #emph[J\. Pers\. Soc\.] #emph[Psychol]\. 54, 1063–1070\. doi: 10\.1037\/0022\-3514\.54\.6\.1063

Weiner, B\. \(2001\)\. Intrapersonal and interpersonal theories of motivation from an attribution perspective, in #emph[Student Motivation], eds F\. Radjai, S\. Nezamabadi, S\. Luding, and J\. Y\. Delenne \(Boston, MA: Springer US\), 17–30\. doi: 10\.1007\/978\-1\-4615\-1273\-8\_2

Zhao, N\., and Zhou, G\. \(2020\)\. Social media use and mental health during the COVID\-19 pandemic: moderator role of disaster stressor and mediator role of negative affect\. #emph[Appl\. Psychol\. Heal\. Well\-Being] 2020:12226\. doi: 10\.1111\/aphw\.12226


#set document(title: "Problematic Online Behaviors Among Gamers: the Links Between Problematic Gaming, Gambling, Shopping, Pornography Use, and Social Networking", author: ("Dmitri Rozgonjuk", "Bruno Schivinski", "Halley M. Pontes", "Christian Montag"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Rozgonjuk et al\. \(2023\), accepted manuscript #h(1fr) International Journal of Mental Health and Addiction] },
  footer: context { set text(size: 8.5pt, fill: rgb("#5b6476")); h(1fr); counter(page).display(); h(1fr) })
#set text(font: ("Libertinus Serif", "New Computer Modern", "DejaVu Sans"), size: 11pt, lang: "en")
#set par(justify: true, leading: 0.78em, spacing: 0.9em, first-line-indent: 1.2em)
#show heading.where(level: 1): it => block(above: 1.5em, below: 0.8em, text(size: 12.5pt, weight: "bold", it.body))
#show heading.where(level: 2): it => block(above: 1.2em, below: 0.6em, text(size: 11pt, weight: "bold", style: "italic", it.body))
#show link: set text(fill: rgb("#15203b"))

// ---------------- title page
#set par(first-line-indent: 0em)
#v(1.2cm)
#text(size: 10pt, weight: "bold", fill: rgb("#8a5a00"), tracking: 0.04em)[Accepted manuscript]
#v(0.5em)
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Problematic Online Behaviors Among Gamers: the Links Between Problematic Gaming, Gambling, Shopping, Pornography Use, and Social Networking]]
#v(0.8em)
#text(size: 12pt)[Dmitri Rozgonjuk, Bruno Schivinski, Halley M\. Pontes, Christian Montag]
#v(0.2em)
#text(size: 10pt, style: "italic")[Ulm University\; University of Tartu\; RMIT University\; University of London]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Rozgonjuk, D\., Schivinski, B\., Pontes, H\. M\., & Montag, C\. (2023). Problematic Online Behaviors Among Gamers: the Links Between Problematic Gaming, Gambling, Shopping, Pornography Use, and Social Networking. #emph[International Journal of Mental Health and Addiction, 21]\(1\), 240–257. #link("https://doi.org/10.1007/s11469-021-00590-3")[https:\/\/doi.org\/10\.1007\/s11469\-021\-00590\-3]
  #v(0.9em)
  This version of the article has been accepted for publication, after peer review, and is subject to Springer Nature’s AM terms of use, but is not the Version of Record and does not reflect post\-acceptance improvements, or any corrections\. The Version of Record is available online at: #link("https://doi.org/10.1007/s11469-021-00590-3")[https:\/\/doi.org\/10\.1007\/s11469\-021\-00590\-3]
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors\; the publisher\'s typesetting and layout have been removed and Fig\. 2 redrawn\.
Downloaded from #link("https://schivinski.com/papers/problematic-online-behaviours-gamers-network.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Problematic Online Behaviors Among Gamers: the Links Between Problematic Gaming, Gambling, Shopping, Pornography Use, and Social Networking]]
#v(0.6em)
#par(first-line-indent: 0em)[Dmitri Rozgonjuk#super[1,2]\*, Bruno Schivinski#super[3,4], Halley M\. Pontes#super[4] and Christian Montag#super[1]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]Department of Molecular Psychology, Institute of Psychology and Education, Ulm University, Ulm, Germany\; #super[2]Institute of Mathematics and Statistics, University of Tartu, Tartu, Estonia\; #super[3]School of Media and Communication, RMIT University, Melbourne, Australia\; #super[4]Department of Organizational Psychology, University of London, London, UK]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Dmitri Rozgonjuk]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() The aim of the current study was to investigate how problematic online gaming, problematic online gambling, problematic online shopping, problematic online pornography use, and problematic online social networking are associated with each other in bivariate and multivariate, network analytic analyses in an international gamer population\. The effective sample comprised 4,416 gamers \(age M \= 23\.31, SD \= 6\.72\; 94% male\)\. Participants filled out the specific problematic Internet use scales on gaming, gambling, shopping, pornography, and social networking\. The results showed that problematic online gaming yielded small\-to\-medium positive bivariate correlations with other problematic behaviors\. However, the exploratory graph analysis showed that all Internet\-based problematic behaviors were separate entities\. Finally, problematic online gaming yielded the highest scores, followed by problematic online social networking, gambling, and pornography\. While gaming was the most prevalent Internet\-based problematic behavior among gamers, the results further suggested that the other Internet\-based problematic behaviors investigated may co\-occur despite being considered separate entities\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Gaming disorder · Gaming · Gambling · Exploratory graph analysis · Network analysis · Addictive behaviors · Internet addiction]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Accepted 12 July 2021\; published online 6 October 2021\.]]
#v(0.6em)
Internet\-based problematic behaviors have been extensively investigated since the diffusion of the Internet into the wider audience\. Already back in the 1990s, researchers proposed the concept of “Internet addiction,” a potential condition associated with detrimental outcomes due to excessive Internet use \(Griffiths, 1996\; Young, 1998\)\. So far, different terminology has been in use to describe this condition since Internet addiction has been found to be a misnomer \(Starcevic, 2013\)\. Although research on Internet addiction has been conducted for over two decades \(e\.g\., Griffiths, 1996\; Young, 1996\), previous research has also proposed and focused on problematic Internet use \(PIU\) for at least two decades \(e\.g\., Shapira et al\., 2000\)\. More recently, the term “Internet use disorder” has been discussed in the literature \(see the I\-PACE model by Brand et al\., 2016\)\.

In terms of etiological processes associated with Internet addiction, researchers have attempted to determine the object of this particular condition, with early research \(e\.g\., Griffiths, 1999, 2000\) suggesting that the Internet was just a medium for other specific online addictions\. The existing literature suggests that most people who spend excessive amounts of time online are not addicted to the medium itself \(e\.g\., the Internet\) as they use the Internet to fuel other specific online addictions related to their unique online usages and services such as gaming, gambling, shopping, pornography use, and social networking\. Discussion on generalized vs specific Internet addictions has also been considered in the seminal work by Davis \(2001\) who proposed the cognitive\-behavioral model of pathological Internet use\. This model distinguishes between generalized and specific pathological Internet use\. The former describes a more global set of behaviors enabled by the Internet, while the latter refers to a condition in which the Internet is used to feed other more specific activities which could also be carried out offline \(e\.g\., pornography use and gambling\)\. This model has been further developed by Brand and colleagues \(2016\) to \- among others \- also include the role of predisposing factors in those problematic behaviors\.

Previous empirical research provided support to these theoretical frameworks and overall idea that excessive Internet users are engaged in specific activities when using the Internet \(e\.g\., Griffiths and Szabo, 2014\; Pontes et al\., 2015\) and smartphones \(Lowe\-Calverley and Pontes, 2020\; Rozgonjuk et al\., 2019a, b\)\. For instance, Pontes et al\. \(2015\) surveyed 1,057 Internet users and found that they would significantly decrease their Internet use if their specific preferred online activities were to be restricted, with almost one in five participants reporting that they would not continue to use the Internet in case they were not able to access their most commonly used online activities\. Furthermore, Montag et al\. \(2015\) found that specific Internet\-based problematic behaviors were correlated with general PIU to varying degrees across different cultures, with Müller et al\. \(2017\) providing additional support to this finding\. Additionally, a study by Baggio et al\. \(2018\), implementing network analysis, has demonstrated that specific Internet\-based problematic behaviors such as cybersex and gaming form separate clusters, connected via generalized PIU\.

More relevant to the current study, the American Psychiatric Association \(APA\) has included Internet Gaming Disorder \(IGD\) to the section III of the fifth revision of the #emph[Diagnostic and Statistical Manual of Mental Disorders] \(DSM\-5\; American Psychiatric Association, 2013\) as a tentative disorder in need of further research\. This was followed by the World Health Organization \(WHO\) formally recognizing Gaming Disorder \(GD\) as a formal psychiatric disorder in the 11th revision of the #emph[International Classification of Diseases] \(ICD\-11\; World Health Organization, 2018b\)\. According to the WHO, GD refers to a pattern of gaming behavior that detrimentally affects one’s everyday life within a 12\-month timeframe \(World Health Organization, 2018a\)\. Importantly, the symptoms of GD include \(a\) impaired control over gaming, \(b\) increasing priority assigned to gaming over other everyday activities, and \(c\) continuation or escalation of gaming despite negative outcomes \(Pontes & Griffiths, 2020\; Kircaburun et al\., 2020\)\. Although IGD and GD represent slightly different terminology reflecting the same construct, emerging research testing these two diagnostic frameworks \(i\.e\., APA and WHO\) found that they may generate different prevalence estimates \(Montag et al\., 2019a, b\; for the operationalization of GD, see Pontes et al\., 2019a, b\)\. It is also worth highlighting that most individuals playing video games will not necessarily experience problems in daily life due to gaming, making gaming a healthy activity for the majority of gamers\.

Despite the previously reported diagnostic discrepancies across the two current diagnostic frameworks, IGD and GD have been found to be associated with various daily life adversities and functional impairments\. For instance, disordered gaming has been shown to be consistently associated with greater levels of mood disorders, depression, stress, and anxiety \(Bonnaire & Baptista, 2019\; Pontes, 2017\), as well as other psychiatric disorders, such as obsessive–compulsive disorder and attention deficit hyperactivity disorder \(Pearcy et al\., 2017\; Stavropoulos et al\., 2019\)\. Moreover, a recent meta\-analytic study provided further support to the notion that disordered gaming is significantly associated with a wide range of detrimental health\-related outcomes that impair the quality of life of gamers \(Männikkö et al\., 2020\)\. In terms of individual differences related to personality traits, a meta\-analysis reviewing the relationship between disordered gaming and personality across 21 empirical studies found that disordered gaming has been examined in relation to 24 distinct personality traits, with some of these traits \(e\.g\., high neuroticism and low conscientiousness\) posing as risk factors for disordered gaming \(Şalvarlı & Griffiths, 2019\)\.

Interestingly, mostly similar findings have been reported in the literature investigating both specific and generalized Internet\-based problematic behaviors\. For example, the problematic Internet and smartphone literature has consistently linked depression and anxiety with problematic digital technology use \(Elhai et al\., 2017\; Hussain et al\., 2017\; Rozgonjuk et al\., 2018\)\. A large cross\-cultural empirical study investigating key risk factors for problematic smartphone use in relation to specific Internet\-based behaviors \(Lopez\-Fernandez et al\., 2017\) found that greater levels of social networking use, video game use, online shopping, viewing television shows online, downloading contents, chatting, and messaging online predicted higher levels of problematic smartphone use, accounting for about 24% of its total variance\.

Relatedly, neuroticism and impulsivity have been linked to problematic Internet and smartphone use \(Kim et al\., 2016\; Peterka\-Bonetta et al\., 2019\; Rozgonjuk et al\., 2019a, b\)\. In relation to more specific problematic behaviors, depression and anxiety have been found to be associated with online gambling \(Barrault and Varescon, 2013\), pornography viewing \(Borgogna et al\., 2018\), online shopping \(Claes et al\., 2016\), and social networking use \(Baker and Algorta, 2016\)\. Additionally, Marmet et al\. \(2019\) demonstrated how gambling, online sex, smartphone use, gaming, and Internet use explain a relatively high variance in social anxiety disorder, major depression, ADHD, and borderline personality disorder, likely highlighting shared commonalities between these constructs\. In terms of individual differences, higher levels of neuroticism and\/or impulsivity have been linked to online gambling \(Trivedi and Teichert, 2018\), pornography viewing \(Wéry et al\., 2018\), online shopping \(Lee, 2018\), and social networking use \(Marengo et al\., 2020\)\. For an overview on neuroscientific findings in this area, please see the review studies by Becker and Montag \(2019\), Wegmann et al\. \(2018\), and Kuss et al\. \(2018\)\.

Although the current empirical findings further suggest that these Internet\-based problematic behaviors may overlap to some extent, there is a paucity of studies investigating the associations between different problematic Internet\-based behaviors\. Thus, one potential methodological approach that may be helpful in illuminating how these specific activities — alongside their corresponding symptoms — are potentially intertwined with each other, is by implementing a network analytic approach\. This perspective is useful as different psychological disorders and their symptoms may influence one another \(Borsboom & Cramer, 2013\)\. By partialling out the variance of other variables, one may be able to have a clearer picture of how two given symptoms are conditionally related to one another\. A recent example in the field of Internet\-based problematic behaviors was provided by Rozgonjuk and et al\., \(2020a, b\) where the authors demonstrated how the symptoms of different problematic social media platforms uses are linked to each other\. Similarly, applying a network analytic approach in the current study — including different Internet\-based problematic behaviors’ symptoms — enables to explore whether clusters of separate entities could be observed or if there are pan\-behavioral symptoms that form their own links and clusters, which is key to advancing the field by helping disentangling previous scholarly debates regarding the uniqueness of key Internet\-based behavioral addictions \(see Griffiths & Pontes, 2014\)\.

Based on the aforementioned rationale, the aims of the current study are to investigate a large international sample of online gamers and ascertain \(a\) the extent to which symptoms and tendencies of Internet\-based problematic behaviors such as problematic online gaming, gambling, shopping, pornography, and social networking may be associated with each other\; \(b\) whether the symptoms of Internet\-based problematic behaviors form distinct entities\; and \(c\) which of these behaviors elicit the highest problematic behavior symptom scores\. With regard to these aims, the following hypotheses were devised:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1\. The summed scores of problematic online gaming, problematic online gambling, problematic online shopping, problematic online pornography, and problematic online social networking will positively correlate with each other\.] It has been found that these behaviors tend to be generally correlated \(but with varying degrees\) with a general problematic Internet use across different cultures \(Montag et al\., 2015\; Müller et al\., 2017\)\. Furthermore, in general, problematic Internet use has been viewed as an overarching phenomenon encompassing these conditions \(Baggio et al\., 2018\)\. Therefore, it may be assumed that these conditions are correlated due to an underlying cause: activities that may be fueled by a medium, the Internet \(Davis, 2001\; Griffiths, 1999\; Griffiths & Szabo, 2014\; Montag et al\., 2015\; Pontes et al\., 2015\)\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2\. The responses to problematic online gaming, problematic online gambling, problematic online shopping, problematic online pornography, and problematic online social networking items will form distinct clusters of Internet\-based problematic behavior symptoms]\. While these behaviors may co\-occur, the items of these scales form separate clusters of specific behaviors\. There is evidence for this assumption stemming from Baggio et al\. \(2018\) who found that gaming and cybersex \(two different activities\) formed distinct clusters and were connected by the medium \(e\.g\., the Internet\)\. Hence, the present study acknowledges that there may occur functional overlap \(e\.g\., intermittent reinforcement, but also similarities in developmental course\) between problematic online gaming and problematic online gambling, and problematic online gaming and problematic online social networking\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3\. Problematic online gaming scores will be the highest in comparison to other self\-reported Internet\-based problematic behaviors scores]\. Because this study is using a sample of gamers, it is logical to expect that the most prevalent problematic behavior will be related to problematic online gaming\. Investigating this hypothesis constitutes a quality assurance check of the data set within the present investigation\.]]
It is envisaged that the results of this study will yield important theoretical as well as practical implications\. With regard to theoretical implications, this study will provide important empirical evidence to the generalized vs specific Internet\-based problematic behaviors debate\. Although no generalized measure for problematic Internet use was administered in the present study, unique clusters for specified problematic behaviors would provide more support for the latter concept\. From a practical standpoint, the study will outline the potential problematic behaviors, which could co\-occur in people who exhibit daily life adversities due to disordered gaming symptoms\. This is an important goal since shedding light on the co\-occurrence of problematic behaviors may be helpful in prevention and intervention of problematic gaming \(but also other Internet\-based problematic behaviors\)\.

= Methods
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Sample and Procedure
#par(first-line-indent: 0em)[The data were collected within a larger project via an international online survey platform \(https:\/\/about\.eslgaming\.com\/portfolio\/smart\-gaming\/\) since 2019, which was promoted worldwide to encourage responsible gaming behavior and awareness about problematic gaming behavior\. Although the data were also collected during 2020 and 2021, we only included the participants sampled in 2019 due to potential confounding effects of the global pandemic\. The survey was conducted in English language and was not bound to a specific country\. Therefore, there were participants from different countries\. Convenience sampling was used\. The respondents had access to the platform via an online link advertised across several sources including for instance webpages, specialized forums, online news channels, aggregators, and the like\. As a characteristic of online data collection, it is not possible to estimate how many respondents had access to the link nor its source\. All study participants were rewarded for their participation with feedback on their problematic gaming tendencies in comparison to all other anonymous participants on the platform\. This should have a positive effect on data quality because the incentive of taking part in the study required truthful responding for accurate feedback\.]

All procedures followed were in accordance with the ethical standards of the responsible committee on human experimentation \(institutional and national\) and with the Helsinki Declaration of 1975, as revised in 2000\. Informed consent was obtained from all patients for being included in the study\. The study project was approved by the Institutional Review Board of Ulm University\.

The original sample of the current study comprised participants who responded to the items of scales of interest \(described in “Measures”\), amounting to #emph[n] \= 5,905 participants\. During data cleaning, respondents were excluded based on the following criteria: were not in the age range of 12–80 years\; had not played video games over the past 12 months\; reported playing a video game that did not actually exist \(this item was used as a careless response detection question\)\; spent more than 119 h per week on gaming \(indicating to less than 7 hours of sleep on an average week day\)\; reported spending more than 48 h of gaming on weekend \(Saturday and Sunday\)\; self\-declared to be professional gamers\; and reported not having sufficient proficiency in English language\.

The effective sample, therefore, comprised N \= 4,416 respondents \(age M \= 23\.31, SD \= 6\.72, where age ranged from 12 to 80 years\)\. A total of 4,142 \(94%\) respondents were male and 2,152 \(49%\) reported to be employed\. 1,700 \(38%\) gamers reported being in a relationship\. In terms of education, 366 \(8\.3%\) participants had not graduated from high school, 1,616 \(36\.6%\) had high school as their highest level of education, and 880 \(19\.9%\) had graduated from a college\. Regarding higher education levels, 1,108 \(25\.1%\) study participants had a Bachelor’s, 420 \(9\.5%\) Master’s, and 26 \(0\.6%\) people had a PhD degree\. The sample was highly heterogeneous regarding the country of origin reported by participants, but the highest proportions of respondents came from Russia \(761\; 17% of total sample\), France \(666\; 15%\), Spain \(492\; 11%\), Poland \(270\; 6%\), Argentina \(201\; 5%\), United Kingdom \(198\; 4%\), Mexico \(191\; 4%\), and Chile \(170\; 4%\)\. Despite the cultural variation, all participants in the effective sample reported being proficient in English\.

== Measures
#par(first-line-indent: 0em)[In addition to socio\-demographic variables, all participants were asked to respond to items measuring the frequency of specific Internet\-based problematic behaviors \(Müller et al\., 2017\): problematic online gaming \(A1\), problematic online gambling \(A2\), problematic online shopping \(A3\), problematic online pornography \(A4\), and problematic online social networking \(A5\)\. The four items were as follows \(note that \[doing the #emph[behavior]\] was used to indicate each specific Internet\-based behavior\): “1\. How often do you find that you spend more time \[doing the #emph[behavior]\] than you intended?”\; “2\. How often do you neglect household chores to spend more time \[doing the #emph[behavior]\]?”\; “3\. How often do you feel preoccupied with \[doing the #emph[behavior]\] when offline or fantasize about \[doing the #emph[behavior]\]?”\; “4\. How often do you choose to spend more time \[doing the #emph[behavior]\] over going out with others? The anchors for each item ranged from 1 \= #emph[never] to 5 \= #emph[very often]\. The scores were summed for each specific behavior scale\. Cronbach’s alphas\/McDonald’s omegas \(total\) with the current study’s effective sample data for each scale were α \= 0\.79\/ω \= 0\.79 \(A1\), α \= 0\.85\/ω \= 0\.86 \(A2\), α \= 0\.81\/ω \= 0\.81 \(A3\), α \= 0\.82\/ω \= 0\.82 \(A4\), and α \= 0\.83\/ω \= 0\.83 \(A5\)\.]

== Statistical Analyses
#par(first-line-indent: 0em)[The data were analyzed within the R language and environment for statistical computing and graphics, version 4\.0\.3 \(R Core Team, 2021\)\. Cronbach’s alphas and McDonald’s total omegas were computed with the #emph[psych] package v 2\.1\.3 \(Revelle, 2021\)\. Spearman correlation coefficients \(#emph[p]\-values adjusted with Holm’s method\) were computed for estimates of associations between the summed scores\. Absolute correlation coefficients could be interpreted as representing small \(#emph[r] \= |0\.10–0\.30|\), medium \(#emph[r] \= |0\.30–0\.50|\), or large \(#emph[r] \= |0\.50–1\.00|\) effect sizes \(Cohen, 1992\)\.]

In order to investigate the item\-level relationships between the specific Internet\-based problematic behaviors examined, we used Exploratory Graph Analysis \(EGA\) \(Golino and Christensen, 2020\; Golino and Epskamp, 2017\)\. EGA is a network analytic approach where, firstly, associations \(e\.g\., correlations\) between variables are estimated, followed by the implementation of a community detection algorithm that allows for empirical identification of clusters in multidimensional data \(Christensen, 2020\; Golino & Christensen, 2020\)\. The network was estimated using the Gaussian Graphical Model \(GGM\; Epskamp et al\., 2018a, b\), implementing the Graphical Least Absolute Shrinkage and Selection Operator in combination with Extended Bayesian Information Criterion \(EBIC\) model selection \(GELASSO\; Epskamp et al\., 2018a, b\)\. In addition, GGM includes edges \(graphical depiction of associations between a pair of variables\), which are partial correlations between the nodes \(graphical representations of variables\), controlled for other nodes in the network\. For dimension identification, we used the Louvain community detection algorithm, since it has been demonstrated to perform well with ordinal data \(Christensen, 2020\)\. We used the #emph[EGAnet] package version 0\.9\.8 \(Christensen & Golino, 2019\; Golino & Christensen, 2020\) to replicate EGA networks for 1,000 times with random sample permutations\.

In addition to network stability statistics \(e\.g\., the frequency of similar networks across replica networks, etc\.\), it is possible to retrieve network loadings for each item across each estimated dimension\. A network loading is the sum of connections to a node \(also known in the literature as node strength\) that is computed for each item’s associations within its empirical dimension and between every other dimension\. The average network loading is computed using bootstrap analysis\. Christensen and Golino \(2020\) have suggested that network loadings with values of |0\.15|, \>|0\.25|, and \>|0\.35| could be considered as small, medium, and large in effect sizes, respectively\. If a network loading for a given item has values greater than |0\.15|, this could suggest that the item may be multidimensional \(Christensen & Golino, 2020\)\. We used the package #emph[qgraph] v 1\.6\.9 \(Epskamp et al\., 2012\) to visualize the median EGA network\.

Finally, in order to compare different Internet\-based problematic behaviors, we used summed scores to conduct within\-subjects analysis of variance \(ANOVA\) with the #emph[nlme] package v 3\.1–149 \(Pinheiro et al\., 2019\)\. In addition, we used the #emph[multcomp] package v 1\.4–15 \(Hothorn et al\., 2008\) to compute post hoc tests \(#emph[p]\-values adjusted with Holm’s method\)\. Finally, Cohen’s #emph[d] was computed as effect size estimates for scale score differences \(Lakens, 2013\)\. Effect sizes could be considered as very small \(#emph[d] \= |0\.10|\), small \(#emph[d] \= |0\.20|\), medium \(#emph[d] \= |0\.50|\), large \(#emph[d] \= |0\.80|\), very large \(#emph[d] \= |1\.20|\), or huge \(#emph[d] \= |2\.00|\) \(Cohen, 1988\; Sawilowsky, 2009\)\. The package #emph[ggplot2] v 3\.3\.5 \(Wickham, 2009\) was used to visualize the differences between scale score sum means\.

= Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Descriptive Statistics and Correlations
#par(first-line-indent: 0em)[Descriptive statistics and bivariate Spearman correlations between the key variables used in the study are presented in Table 1\.]

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Descriptive statistics and correlations for problematic Internet\-based activities and age]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Variable]], [#strong[Mean]], [#strong[SD]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]]),
table.hline(stroke: 0.5pt),
[1\. Problematic online gaming], [10\.77], [3\.76], [], [], [], [], [],
[2\. Problematic online gambling], [7\.45], [3\.74], [0\.299\*\*\*], [], [], [], [],
[3\. Problematic online shopping], [5\.77], [2\.64], [0\.269\*\*\*], [0\.231\*\*\*], [], [], [],
[4\. Problematic online pornography], [6\.91], [3\.30], [0\.318\*\*\*], [0\.193\*\*\*], [0\.317\*\*\*], [], [],
[5\. Problematic online social networking], [8\.00], [3\.59], [0\.389\*\*\*], [0\.226\*\*\*], [0\.358\*\*\*], [0\.333\*\*\*], [],
[6\. Age], [23\.31], [6\.72], [−0\.044\*], [−0\.087\*\*\*], [0\.040\*], [−0\.008], [−0\.157\*\*\*],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[N] \= 4,416\. #emph[ ]p#emph[ \< \.05, ]#emph[ ]p#emph[ \< \.01, ]\*#emph[ ]p\* \< \.001\. Abbreviation: S\.D\., standard deviation\. Possible score range for each problematic online behavior scale was from 4 to 20\.]
]
#v(12pt)
Problematic online gaming was found to be positively associated with all other Internet\-based problematic behaviors with, generally, medium effect sizes \(#emph[r] values ranging from 0\.269 to 0\.389\)\. Problematic online gambling yielded small effects \(correlations\) despite its significant links with problematic online shopping \(#emph[r] \= 0\.231\), problematic social networking \(#emph[r] \= 0\.226\), and problematic online pornography use \(#emph[r] \= 0\.193\)\. Problematic online shopping generated small\-effect associations with problematic online gaming \(#emph[r] \= 0\.269\) and online gambling \(#emph[r] \= 0\.231\) and medium\-effect associations with problematic online social networking \(#emph[r] \= 0\.358\) and problematic online pornography use \(#emph[r] \= 0\.317\)\. Problematic online pornography use was positively associated with problematic online social networks use \(#emph[r] \= 0\.333\)\. Age had a small negative correlation with online gaming \(#emph[r] \= −0\.044\), online gambling \(#emph[r] \= −0\.087\) and online social networks use \(#emph[r] \= −0\.157\), and a small positive correlation with online shopping \(#emph[r] \= 0\.040\)\.

== Item\-Level Network of Internet\-Based Problematic Behaviors
#par(first-line-indent: 0em)[The results of bootstrapped EGA showed that a network with five dimensions\/clusters was the most prevalent \(median dimensions \= 5, SE \= 0\.159\; 5\-dimensional solution occurred in 97\.4% of replica networks\)\. Network loadings are presented in Table 2, while a median EGA network is included in Fig\. 1\. Network loadings showed that items of respective Internet\-based problematic behaviors scales form their own dimension\. Furthermore, the network loadings on the respective dimensions were medium \( \>|0\.25|\) or large \( \>|0\.35|\) in terms of effect sizes \(Christensen & Golino, 2020\)\. Finally, there were no loadings that had another value \(that is, in addition to loading to its core dimension\) higher than |0\.15|, which could suggest potential multidimensionality of an item\. The results evidence that each item was specific to their respective scale\. However, item 4 of gaming also had an additional loading that amounted to \-0\.15 which loaded on to the online gambling dimension with the value\.]

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 2.] Network loadings for bootstrapped EGA items]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Item]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]]),
table.hline(stroke: 0.5pt),
[Online Gaming 3], [#strong[0\.317]], [0\.068], [0\.012], [0\.029], [0\.007],
[Online Gaming 1], [#strong[0\.312]], [0\.056], [0\.003], [0\.004], [0\.046],
[Online Gaming 2], [#strong[0\.306]], [0\.081], [0\.003], [0\.023], [0\.085],
[Online Gaming 4], [#strong[0\.253]], [−0\.150], [0\.020], [0\.056], [0\.081],
[Online Gambling 1], [0\.086], [#strong[0\.446]], [0], [0], [0],
[Online Gambling 2], [0\.096], [#strong[0\.432]], [0\.013], [0], [0\.015],
[Online Gambling 4], [0\.116], [#strong[0\.395]], [0\.013], [0], [0],
[Online Gambling 3], [0\.071], [#strong[0\.256]], [0\.064], [0\.012], [0\.004],
[Online Shopping 2], [0\.003], [0\.035], [#strong[0\.431]], [0\.038], [0\.043],
[Online Shopping 1], [0\.003], [0], [#strong[0\.390]], [0\.021], [0\.003],
[Online Shopping 4], [0\.020], [0\.013], [#strong[0\.383]], [0\.046], [0\.062],
[Online Shopping 3], [0\.012], [0\.039], [#strong[0\.313]], [0\.031], [0\.045],
[Online Pornography 2], [0\.022], [0], [0\.032], [#strong[0\.448]], [0\.036],
[Online Pornography 4], [0\.055], [0], [0\.051], [#strong[0\.374]], [0\.060],
[Online Pornography 1], [0\.004], [0\.005], [0\.020], [#strong[0\.368]], [0],
[Online Pornography 3], [0\.029], [0\.005], [0\.031], [#strong[0\.340]], [0\.016],
[Social Networking 1], [0\.046], [0], [0], [0], [#strong[0\.423]],
[Social Networking 2], [0\.086], [0\.014], [0\.043], [0\.037], [#strong[0\.381]],
[Social Networking 3], [0\.007], [0\.003], [0\.047], [0\.016], [#strong[0\.357]],
[Social Networking 4], [0\.082], [0], [0\.062], [0\.061], [#strong[0\.270]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Each item’s highest loading is outlined with bold text]
]
#v(12pt)
#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 1 Median bootstrapped exploratory graph analysis \(EGA\) network\. #emph[Notes]: SHOP \= problematic online shopping\; PORN \= problematic online pornography viewing\; NETW \= problematic online social networking\; GAME \= problematic online gaming\; GAMB \= problematic online gambling\. Colors of nodes denote to which community a given node belongs to\. Edges denote associations between nodes \(blue edges \= positive correlations\; the thickness of the lines represents correlation sizes\)\.]]
#v(0.6em)
As suggested by network loadings in Table 2, the median bootstrapped EGA network in Fig\. 1 also showed that all items belonged to their respective scale, indicating that associations within problematic online shopping, online pornography, and problematic online social networking were somewhat similar\. Item 1 \(“#emph[How often do you find that you spend more time] \[doing the #emph[behavior]\] #emph[than you intended?]”\) was more strongly correlated with items 2 \(“#emph[How often do you neglect household chores to spend more time] \[doing the #emph[behavior]\]#emph[?]”\) and 3 \(“#emph[How often do you feel preoccupied with] \[doing the #emph[behavior]\] #emph[when offline, or fantasize about] \[doing the #emph[behavior]\]#emph[?]”\)\. In addition, item 4 \(“#emph[How often do you choose to spend more time] \[doing the #emph[behavior]\] #emph[over going out with others?]”\) showed the strongest links with item 2\.

The same exact patterns, however, could not be observed in problematic online gaming and online gambling\. For instance, problematic online gaming items did not yield strong relationships between items as observed within other clusters\. Considering the associations between different problematic behaviors, item 4 appeared to be correlated \(although weakly\) across different Internet\-based problematic behaviors\. Hence, spending more time online over going out with others was mostly strongly related to each other across different specified Internet\-based problematic behaviors within the current sample \(except for problematic online shopping\)\.

== Comparing Internet\-Based Problematic Behaviors
#par(first-line-indent: 0em)[The one\-way within\-subject ANOVA yielded a statistically significant difference between at least two Internet\-based problematic behaviors scale scores, #emph[F]\(4, 17,660\) \= 1981\.98, #emph[p] \< 0\.001\. The results of the post hoc tests \(#emph[p]\-values adjusted with Holm’s method\) as well as effect size estimates \(Cohen’s #emph[d]\) for differences between scale scores are presented in Table 3\. Scale means with 95% confidence intervals are in shown Fig\. 2\.]

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 3.] The comparison of Internet\-based problematic behaviors]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto), align: (left, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Comparison]], [#strong[Estimate]], [#strong[SE]], [#strong[#emph[t]]], [#strong[Cohen’s #emph[d]]]),
table.hline(stroke: 0.5pt),
[Online gambling – online gaming], [−3\.321], [0\.059], [−56\.102\*\*\*], [−0\.844],
[Online pornography – online gaming], [−3\.854], [0\.059], [−65\.108\*\*\*], [−0\.980],
[Online networking – online gaming], [−2\.772], [0\.059], [−46\.836\*\*\*], [−0\.705],
[Online shopping – online gaming], [−5\.001], [0\.059], [−84\.493\*\*\*], [−1\.271],
[Online pornography – online gambling], [−0\.533], [0\.059], [−9\.006\*\*\*], [−0\.136],
[Social networking – online gambling], [0\.548], [0\.059], [9\.266\*\*\*], [0\.139],
[Online shopping – online gambling], [−1\.680], [0\.059], [−28\.391\*\*\*], [−0\.427],
[Social networking – online pornography], [1\.082], [0\.059], [18\.272\*\*\*], [0\.275],
[Online shopping – online pornography], [−1\.147], [0\.059], [−19\.385\*\*\*], [−0\.292],
[Online shopping – social networking], [−2\.229], [0\.059], [−37\.657\*\*\*], [−0\.567],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#strong[]#emph[ ]p\* \< \.001\. Abbreviation: S\.E\., standard error]
]
#v(12pt)
#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 2 Means and 95% confidence intervals for scale scores \(redrawn\)\.]]
#v(0.6em)
The findings indicated that problematic online gaming scores were significantly higher than the scores of other Internet\-based problematic behaviors scores \(means and standard deviations for the scales can be found in Table 1\)\. In general, the effect sizes of differences between problematic online gaming and the remaining Internet\-based problematic behaviors scores were medium \(problematic online social networking and problematic online gaming, #emph[d] \=|0\.705|\) to large \(problematic online shopping and problematic online gaming, #emph[d] \=|1\.271|\)\.

Furthermore, problematic online gambling scores were higher than problematic online pornography use \(#emph[d] \= |0\.136|\) and problematic online shopping scores \(#emph[d] \= |0\.427|\), yielding small effect sizes, respectively\. Problematic online social networking scores were higher than online gambling scores with small effect size \(#emph[d] \= |0\.139|\)\.

Problematic online social networking scores were higher than problematic online pornography \(#emph[d] \= |0\.275|\) and problematic online shopping \(#emph[d] \= |0\.567|\), with small to medium effect sizes, respectively\. There was a small\-effect difference between problematic online shopping and problematic online pornography \(#emph[d] \= |0\.292|\), with the latter being higher\.

= Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[This study had several aims\. Firstly, we investigated the bivariate relationships between summed scores of problematic online gaming, problematic online gambling, problematic online shopping, problematic online pornography, and problematic online social networking\. Secondly, these constructs were further examined at the item level by implementing a network analytic approach in combination with a community detection algorithm\. Finally, we also investigated which of these Internet\-based problematic behaviors were the most prevalent \(reflected in summed scale scores\) in the sample recruited\. To address these research aims, three specific hypotheses were developed\.]

It was first hypothesized that the investigated Internet\-based problematic behaviors would be associated with each other \(H1\)\. The current results supported this hypothesis, as all variables were associated with each other in the bivariate correlational analysis conducted\. It should be noted, however, that the sizes of associations ranged from small \(lowest correlation was #emph[r] \= 0\.193 between problematic online pornography and online gambling\) to medium \(highest correlation was #emph[r] \= 0\.389 between problematic online gaming and problematic online social networking\)\. These results are in line with the hypothesis that Internet\-based problematic behaviors are inter\-related via some general pathways\. The finding that problematic online gaming and problematic online social networking were strongly related corroborates previous empirical research suggesting that \"social media addiction\" and disordered gaming exert similar effects on peoples’ psychological health \(Pontes, 2017\) and emerging research reporting cross\-sectional associations between these two problematic online behaviors \(Wartberg et al\., 2020\; Wong et al\., 2020\)\.

Moreover, since previous studies have found associations between more general problematic Internet use and some of these activities \(Montag et al\., 2015\; Müller et al\., 2017\), there are similarities between these behaviors and psychopathology \(Baker & Algorta, 2016\; Barrault & Varescon, 2013\; Borgogna et al\., 2018\; Claes et al\., 2016\) as well as involved associated personality traits \(Lee, 2018\; Marengo et al\., 2020\; Trivedi & Teichert, 2018\; Wéry et al\., 2018\)\. It could be that people with certain traits and predispositions may gravitate towards problematic tendencies in general\. This, to some extent, would also be in line with the more prominent theoretical frameworks developed for behavioral addictions, such as the I\-PACE model \(Brand et al\., 2016, 2019\) and the cognitive\-behavioral model of pathological Internet use \(Davis, 2001\)\. Since most of the variance between these Internet\-based problematic behaviors was not accounted for by all the bivariate relationships reported, examining their associations at the item level in a network analytic approach may be helpful\.

Regarding the second hypothesis \(H2\), we expected that each of the Internet\-based problematic behaviors investigated in the study would form distinct clusters of symptom severity at the item\-level responses\. The results of the EGA showed that, indeed, this was the case and that H2 was empirically supported\. When all possible links were partialled out, the symptoms of these different Internet\-based problematic behaviors were still present\. Despite this, the community detection algorithm provided evidence that all of the observed symptoms clustered onto their respective scale\. This means that even though the Internet\-based problematic behaviors investigated in the current study were associated with each other, they could still be considered as distinct entities pertaining to their specific online activities\. These findings are consistent with the contention regarding the specificity of some problematic Internet use behaviors \(Brand et al\., 2016\; Davis, 2001\; Montag et al\., 2015\), suggesting that the Internet serves as medium that feeds problematic behaviors \(or is used for, e\.g\., mood regulation\; Kardefelt\-Winther, 2014\)\. In addition, it could be observed that at the symptom level, items were generally correlated\; in other words, if a person tended to spend more time on gaming, they also spent more time on, e\.g\., social networking and gambling\. These results hint to a possible underlying factor which seems to introduce individual differences in engaging in excessive behaviors\.

We further hypothesized that among the participants recruited, problematic online gaming scores would be the highest in comparison to other Internet\-based problematic behaviors \(H3\) since all participants were gamers\. Accordingly, the results obtained lent support to H3, with the effect sizes in score differences between problematic online gaming and other problematic online behaviors being the largest \(in comparison to other post hoc pairwise comparisons\)\. Although this result is unsurprising, since the study investigated a sample of gamers, it still is a finding of significance\. Earlier works investigated generalized PIU among gamers, likely shedding light mostly on tendencies towards disordered gaming \(e\.g\., Montag et al\., 2011\)\. However, compared to other online behaviors, it is notable that problematic online social networking scores were significantly higher than the additional Internet\-based problematic behaviors investigated, except for problematic online gaming\. This may indicate that the co\-occurrence of this Internet\-based problematic behavior is potentially more prevalent\. Moreover, as previously suggested, this finding is coherent with results from studies suggesting a link between problematic online gaming and problematic online social networking \(Cudo et al\., 2020\; Wong et al\., 2020\)\. Nevertheless, problematic online shopping could be considered as the least prevalent problematic online behavior among gamers, since these two Internet\-based problematic behaviors were not strongly associated\.

This study contributes to the field of behavioral addictions in several ways\. Firstly, we provide a methodologically sound and multifaceted view of the associations between different specific Internet\-based problematic behaviors\. We demonstrate how despite correlating with each other, each of these Internet\-based problematic behaviors form separate entities due to their unique focus on specific activities\. Therefore, this study provides additional robust empirical support to the notion that the Internet is rather the fuel used for feeding problematic behaviors in a variety of areas\. Secondly, to the best of our knowledge, this is the first study investigating a relatively wide range of Internet\-based problematic behaviors among gamers\. Although it might have been expected that gamers would exhibit higher levels of problematic online gaming, the novelty of this finding relates to the fact that it indicates that gamers scored relatively high on problematic online social networking and low on problematic online shopping \(a recent work highlights how videogame and social media design both can foster problematic behaviors\; Montag et al\., 2019a, b\), further extending the findings by studies simply reporting an association between these two Internet\-based problematic behaviors\. Finally, the results of this study may be useful in the development of preventative and intervention initiatives in relation to disordered gaming\. Since the results obtained highlighted how disordered gaming co\-occur with other key Internet\-based problematic behaviors, there may be a need to view GD as one facet of a myriad of Internet\-based problematic behaviors \(Pontes et al\., 2019a, b\)\. With the inclusion of IGD in the DSM\-5 as well as GD in the ICD\-11, research into the psychology of gaming has been greatly facilitated\. It is envisaged that the current study will pave the way to subsequent research further investigating the dynamics of these relationships\.

The potential limitations of this study include using a self\-selected and gender\-imbalanced sample, self\-report measures, and the adoption of a cross\-sectional design\. Although the sample recruited was relatively large and included more than 4,000 individuals from several countries, it was nonetheless a convenience sample not randomly sampled\. Accordingly, this may introduce some bias in the presented results\. Secondly, self\-reports provide useful information, but it should be taken into account that objectively measured data could provide a more detailed picture of gamers’ behavior \(Schivinski et al\., 2018\)\. It may be that self\-reported problematic online behavior scales may not necessarily predict actual gaming, gambling, shopping, pornography use, and social networking behaviors\. As could be observed in the problematic smartphone use literature, objectively measured data may introduce significant discrepancies between actual and self\-reported data \(Elhai et al\., 2021\; Parry et al\., 2021\; Rozgonjuk et al\., 2020a, b\)\. Additionally, it should be noted that problematic use does not equate to objective use, since the former aims to assess daily life adversities due to excessive use\. Therefore, there is always subjectivity in the experience of adversities due to excessive engagement in each problematic behavior\. Third, because the current sample mainly included male participants, it could be interesting to investigate if the results would be similar in a female\-only sample of gamers\. Fourth, investigating relationship satisfaction in the context of gaming could further provide insights into how gaming may also be associated with other problematic Internet\-based behaviors\. Fifth, although the recruited sample covered a wide range of ages \(12–80 years\), most of the respondents were relatively young \(average age of around 23 years\)\; it may be relevant to further investigate differences in the associations between Internet\-based problematic behaviors also in older cohorts\. Finally, even though this may be of less relevance to the present study, since our study design does not allow inferring causality or temporal associations, future research should investigate how these different Internet\-based problematic behaviors develop and \(co\-\) evolve longitudinally\.

In conclusion, the findings presented in this study provide empirical evidence that even though different Internet\-based problematic behaviors are correlated, they form separate entities\. As expected, among gamers, the most prevalent Internet\-based problematic behavior was related to gaming, while the least prevalent was related to problematic online shopping behavior\. Additionally, problematic online gaming had the strongest association with problematic online social networking\. Therefore, mental health practitioners may find these observations particularly useful when treating patients with disordered gaming as it may be associated with unmet social needs\.

= Author Contribution
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Conceptualization: DR and CM\; Data collection: HMP, BS, CM\; Analysis: DR\; First manuscript draft: DR\; Review and editing: BS, HMP, CM\.]

= Declarations
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[#strong[Ethics Approval] The study project was approved by the Institutional Review Board of Ulm University\.]

#strong[Consent to Participate] The study participants provided their informed consent before starting study participation\.

#strong[Competing Interests] None\. But for reasons of transparency the authors mention that the present study was part of the ESL Smart Gaming Campaign\. While ESL supported the present study by presenting information about it on their website, this organization had no direct or indirect role in the present study\. The present study was conducted entirely independently, and ESL did not provide financial support to this research\.

#strong[Correction \(2 May 2022\)] The published correction to this article replaces the third sentence of the second paragraph of the Sample and Procedure section with: “The study has received ethical approval by the research team’s University Ethics Committee \(College Research Ethics Committee of the Nottingham Trent University \[2018\/95\]\)\.”

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
American Psychiatric Association\. \(2013\)\. #emph[Diagnostic and statistical manual of mental disorders \(DSM\- 5®\)\.] \(5th ed\.\)\. American Psychiatric Association Publishing\.

Baggio, S\., Starcevic, V\., Studer, J\., Simon, O\., Gainsbury, S\. M\., Gmel, G\., & Billieux, J\. \(2018\)\. Technology\-mediated addictive behaviors constitute a spectrum of related yet distinct conditions: A network perspective\. #emph[Psychology of Addictive Behaviors, 32]\(5\), 564–572\. https:\/\/doi\.org\/10\.1037\/adb0000379

Baker, D\. A\., & Algorta, G\. P\. \(2016\)\. The relationship between online social networking and depression: A systematic review of quantitative studies\. #emph[Cyberpsychology, Behavior, and Social Networking, 19]\(11\), 638–648\. https:\/\/doi\.org\/10\.1089\/cyber\.2016\.0206

Barrault, S\., & Varescon, I\. \(2013\)\. Cognitive distortions, anxiety, and depression among regular and pathological gambling online poker players\. #emph[Cyberpsychology, Behavior, and Social Networking, 16]\(3\), 183–188\. https:\/\/doi\.org\/10\.1089\/cyber\.2012\.0150

Montag, C\., & Becker, B\. \(2019\)\. Psychological and neuroscientific advances to understand internet use disorder\. #emph[Neuroforum, 25]\(2\), 99–107\. https:\/\/doi\.org\/10\.1515\/nf\-2018\-0026

Bonnaire, C\., & Baptista, D\. \(2019\)\. Internet Gaming Disorder in male and female young adults: The role of alexithymia, depression, anxiety and gaming type\. #emph[Psychiatry Research, 272], 521–530\. https:\/\/doi\.org\/10\.1016\/j\.psychres\.2018\.12\.158

Borgogna, N\. C\., Duncan, J\., & McDermott, R\. C\. \(2018\)\. Is scrupulosity behind the relationship between problematic pornography viewing and depression, anxiety, and stress? #emph[Sexual Addiction & Compulsiv\- ity, 25]\(4\), 293–318\. https:\/\/doi\.org\/10\.1080\/10720162\.2019\.1567410

Borsboom, D\., & Cramer, A\. O\. J\. \(2013\)\. Network analysis: An integrative approach to the structure of psychopathology\. #emph[Annual Review of Clinical Psychology, 9]\(1\), 91–121\. https:\/\/doi\.org\/10\.1146\/annurev\-clinpsy\-050212\-185608

Brand, M\., Wegmann, E\., Stark, R\., Muller, A\., Wolfling, K\., Robbins, T\. W\., & Potenza, M\. N\. \(2019\)\. The Interaction of Person\-Affect\-Cognition\-Execution \(I\-PACE\) model for addictive behaviors: Update, generalization to addictive behaviors beyond internet\-use disorders, and specification of the process character of addictive behaviors\. #emph[Neuroscience & Biobehavioral Reviews, 104], 1–10\. https:\/\/doi\.org\/10\.1016\/j\.neubiorev\.2019\.06\.032

Brand, M\., Young, K\. S\., Laier, C\., Wölfling, K\., & Potenza, M\. N\. \(2016\)\. Integrating psychological and neurobiological considerations regarding the development and maintenance of specific Internet\-use disorders: An Interaction of Person\-Affect\-Cognition\-Execution \(I\-PACE\) model\. #emph[Neuroscience & Biobehavioral Reviews, 71], 252–266\. https:\/\/doi\.org\/10\.1016\/j\.neubiorev\.2016\.08\.033

Christensen, A\. P\. \(2020\)\. #emph[Towards a network psychometrics approach to assessment: Simulations for redun\- dancy, dimensionality, and loadings] \[Unpublished doctoral dissertation, University of North Carolina at Greensboro\]\. https:\/\/doi\.org\/10\.31234\/osf\.io\/84kgd

Christensen, A\. P\., & Golino, H\. \(2019\)\. #emph[Estimating the stability of the number of factors via Bootstrap Exploratory Graph Analysis: A tutorial] \[Preprint\]\. PsyArXiv\. https:\/\/doi\.org\/10\.31234\/osf\.io\/9deay

Christensen, A\.P\., Golino, H\. \(2021\)\. On the equivalency of factor and network loadings\. #emph[Behavior Research Methods]\. https:\/\/doi\.org\/10\.3758\/s13428\-020\-01500\-6

Claes, L\., Müller, A\., & Luyckx, K\. \(2016\)\. Compulsive buying and hoarding as identity substitutes: The role of materialistic value endorsement and depression\. #emph[Comprehensive Psychiatry, 68], 65–71\. https:\/\/doi\.org\/10\.1016\/j\.comppsych\.2016\.04\.005

Cohen, J\. \(1988\)\. #emph[Statistical power analysis for the behavioral sciences]\. L\. Erlbaum Associates\. https:\/\/doi\.org\/10\.4324\/9780203771587

Cohen, J\. \(1992\)\. A power primer\. #emph[Psychological Bulletin, 112]\(1\), 155–159\. https:\/\/doi\.org\/10\.1037\/0033\-2909\.112\.1\.155

Cudo, A\., Torój, M\., Misiuro, T\., & Griffiths, M\. D\. \(2020\)\. Problematic Facebook use and problematic video gaming among female and male gamers\. #emph[Cyberpsychology, Behavior, and Social Networking, 23]\(2\), 126–133\. https:\/\/doi\.org\/10\.1089\/cyber\.2019\.0252

Davis, R\. \(2001\)\. A cognitive\-behavioral model of pathological internet use\. #emph[Computers in Human Behav\- ior, 17], 187–195\.

Elhai, J\. D\., Dvorak, R\. D\., Levine, J\. C\., & Hall, B\. J\. \(2017\)\. Problematic smartphone use: A conceptual overview and systematic review of relations with anxiety and depression psychopathology\. #emph[Journal of Affective Disorders, 207], 251–259\. https:\/\/doi\.org\/10\.1016\/j\.jad\.2016\.08\.030

Elhai, J\. D\., Sapci, O\., Yang, H\., Amialchuk, A\., Rozgonjuk, D\., & Montag, C\. \(2021\)\. Objectively\-measured and self\-reported smartphone use in relation to surface learning, procrastination, academic productivity, and psychopathology symptoms in college students\. #emph[Human Behavior and Emerging Tech\- nologies], hbe2\.254\. https:\/\/doi\.org\/10\.1002\/hbe2\.254

Epskamp, S\., Borsboom, D\., & Fried, E\. I\. \(2018a\)\. Estimating psychological networks and their accuracy: A tutorial paper\. #emph[Behavior Research Methods, 50]\(1\), 195–212\. https:\/\/doi\.org\/10\.3758\/s13428\-017\-0862\-1

Epskamp, S\., Cramer, A\. O\., Waldorp, L\. J\., Schmittmann, V\. D\., & Borsboom, D\. \(2012\)\. qgraph: Network visualizations of relationships in psychometric data\. #emph[Journal of Statistical Software, 48]\(4\), 1–18\.

Epskamp, S\., Waldorp, L\. J\., Mõttus, R\., & Borsboom, D\. \(2018b\)\. The Gaussian graphical model in cross\-sectional and time\-series data\. #emph[Multivariate Behavioral Research, 53]\(4\), 453–480\. https:\/\/doi\.org\/10\.1080\/00273171\.2018\.1454823

Golino, H\. F\., & Christensen, A\. P\. \(2020\)\. #emph[EGAnet: exploratory graph analysis—A framework for esti\- mating the number of dimensions in multivariate data using network psychometrics] \(0\.9\.5\) \[Computer software\]\.

Golino, H\. F\., & Epskamp, S\. \(2017\)\. Exploratory graph analysis: A new approach for estimating the number of dimensions in psychological research\. #emph[PLoS ONE, 12]\(6\), e0174035\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0174035

Griffiths, M\. D\. \(1996\)\. Internet ‘addiction’: An issue for clinical psychology? #emph[Clinical Psychology Forum, 97], 32–36\.

Griffiths, M\. D\. \(1999\)\. Internet addiction: Internet fuels other addictions\. #emph[Student British Medical Journal, 7], 428–429\.

Griffiths, M\. D\. \(2000\)\. Internet addiction—Time to be taken seriously? #emph[Addiction Research, 8]\(5\), 413–418\. https:\/\/doi\.org\/10\.3109\/16066350009005587

Griffiths, M\. D\., & Pontes, H\. M\. \(2014\)\. Internet addiction disorder and Internet Gaming Disorder are not the same\. #emph[Journal of Addiction Research & Therapy], #emph[05]\(04\)\. https:\/\/doi\.org\/10\.4172\/2155\-6105\.1000e124

Griffiths, M\. D\., & Szabo, A\. \(2014\)\. Is excessive online usage a function of medium or activity?: An empirical pilot study\. #emph[Journal of Behavioral Addictions, 3]\(1\), 74–77\. https:\/\/doi\.org\/10\.1556\/JBA\.2\.2013\.016

Hothorn, T\., Bretz, F\., & Westfall, P\. \(2008\)\. Simultaneous inference in general parametric models\. #emph[Bio\- metrical Journal, 50]\(3\), 346–363\.

Hussain, Z\., Griffiths, M\. D\., & Sheffield, D\. \(2017\)\. An investigation into problematic smartphone use: The role of narcissism, anxiety, and personality factors\. #emph[Journal of Behavioral Addictions, 6]\(3\), 378–386\. https:\/\/doi\.org\/10\.1556\/2006\.6\.2017\.052

Kardefelt\-Winther, D\. \(2014\)\. A conceptual and methodological critique of internet addiction research: Towards a model of compensatory internet use\. #emph[Computers in Human Behavior, 31], 351–354\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2013\.10\.059

Kim, Y\., Jeong, J\. E\., Cho, H\., Jung, D\. J\., Kwak, M\., Rho, M\. J\., Yu, H\., Kim, D\. J\., & Choi, I\. Y\. \(2016\)\. Personality factors predicting smartphone addiction predisposition: Behavioral inhibition and activation systems, impulsivity, and self\-control\. #emph[PLoS ONE, 11]\(8\), e0159788\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0159788

Kircaburun, K\., Pontes, H\. M\., Stavropoulos, V\., & Griffiths, M\. D\. \(2020\)\. A brief psychological overview of disordered gaming\. #emph[Current Opinion in Psychology, 36], 38–43\. https:\/\/doi\.org\/10\.1016\/j\.copsyc\.2020\.03\.004

Kuss, D\. J\., Pontes, H\. M\., & Griffiths, M\. D\. \(2018\)\. Neurobiological correlates in Internet Gaming Disorder: A systematic literature review\. Frontiers in Psychiatry, 9, 166\. https:\/\/doi\.org\/10\.3389\/fpsyt\.2018\.00166

Lakens, D\. \(2013\)\. Calculating and reporting effect sizes to facilitate cumulative science: A practical primer for t\-tests and ANOVAs\. #emph[Frontiers in Psychology], #emph[4]\. https:\/\/doi\.org\/10\.3389\/fpsyg\.2013\.00863

Lee, H\. S\. \(2018\)\. Two factors of overseas online shopping: Self\-efficacy and impulsivit\. #emph[Journal of Distri\- bution Science, 168]\(79\), 89\. https:\/\/doi\.org\/10\.15722\/JDS\.16\.8\.201808\.79

Lopez\-Fernandez, O\., Kuss, D\. J\., Romo, L\., Morvan, Y\., Kern, L\., Graziani, P\., Rousseau, A\., Rumpf, H\. J\., Bischof, A\., Gassler, A\. K\., Schimmenti, A\., Passanisi, A\., Mannikko, N\., Kaarianen, M\., Demetrovics, Z\., Kiraly, O\., Choliz, M\., Zacares, J\. J\., Serra, E\., & Billieux, J\. \(2017\)\. Self\-reported dependence on mobile phones in young adults: A European cross\-cultural empirical survey\. #emph[Journal of Behav\- ioral Addictions, 6]\(2\), 168–177\. https:\/\/doi\.org\/10\.1556\/2006\.6\.2017\.020

Lowe\-Calverley, E\., & Pontes, H\. M\. \(2020\)\. Challenging the concept of smartphone addiction: An empirical pilot study of smartphone usage patterns and psychological well\-being\. #emph[Cyberpsychology, Behav\- ior, and Social Networking, 23]\(8\), 550–556\. https:\/\/doi\.org\/10\.1089\/cyber\.2019\.0719

Männikkö, N\., Ruotsalainen, H\., Miettunen, J\., Pontes, H\. M\., & Kääriäinen, M\. \(2020\)\. Problematic gaming behaviour and health\-related outcomes: A systematic review and meta\-analysis\. #emph[Journal of Health Psychology, 25]\(1\), 67–81\. https:\/\/doi\.org\/10\.1177\/1359105317740414

Marengo, D\., Poletti, I\., & Settanni, M\. \(2020\)\. The interplay between neuroticism, extraversion, and social media addiction in young adult Facebook users: Testing the mediating role of online activity using objective data\. #emph[Addictive Behaviors, 102], 106150\. https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2019\.106150

Marmet, S\., Studer, J\., Wicki, M\., Bertholet, N\., Khazaal, Y\., & Gmel, G\. \(2019\)\. Unique versus shared associations between self\-reported behavioral addictions and substance use disorders and mental health problems: A commonality analysis in a large sample of young Swiss men\. #emph[Journal of Behavio\- ral Addictions, 8]\(4\), 664–677\. https:\/\/doi\.org\/10\.1556\/2006\.8\.2019\.70

Montag, C\., Bey, K\., Sha, P\., Li, M\., Chen, Y\.\-F\., Liu, W\.\-Y\., Zhu, Y\.\-K\., Li, C\.\-B\., Markett, S\., Keiper, J\., & Reuter, M\. \(2015\)\. Is it meaningful to distinguish between generalized and specific Internet addiction? Evidence from a cross\-cultural study from Germany, Sweden, Taiwan and China: Specific forms of Internet addiction\. #emph[Asia\-Pacific Psychiatry, 7]\(1\), 20–26\. https:\/\/doi\.org\/10\.1111\/appy\.12122

Montag, C\., Flierl, M\., Markett, S\., Walter, N\., Jurkiewicz, M\., & Reuter, M\. \(2011\)\. Internet addiction and personality in first\-person\-shooter video gamers\. #emph[Journal of Media Psychology, 23]\(4\), 163–173\. https:\/\/doi\.org\/10\.1027\/1864\-1105\/a000049

Montag, C\., Lachmann, B\., Herrlich, M\., & Zweig, K\. \(2019a\)\. Addictive features of social media\/messenger platforms and freemium games against the background of psychological and economic theories\. #emph[International Journal of Environmental Research and Public Health, 16]\(14\), 2612\. https:\/\/doi\.org\/10\.3390\/ijerph16142612

Montag, C\., Schivinski, B\., Sariyska, R\., Kannen, C\., Demetrovics, Z\., & Pontes, H\. M\. \(2019b\)\. Psychopathological symptoms and gaming motives in disordered gaming—A psychometric comparison between the WHO and APA diagnostic frameworks\. #emph[Journal of Clinical Medicine, 8]\(10\), 1691\. https:\/\/doi\.org\/10\.3390\/jcm8101691

Müller, M\., Brand, M\., Mies, J\., Lachmann, B\., Sariyska, R\., & Montag, C\. \(2017\)\. The 2D:4D marker and different forms of internet use disorder\. #emph[Frontiers in Psychiatry, 8], 213\. https:\/\/doi\.org\/10\.3389\/fpsyt\.2017\.00213

Parry, D\. A\., Davidson, B\. I\., Sewall, C\. J\. R\., Fisher, J\. T\., Mieczkowski, H\., & Quintana, D\. S\. \(2021\)\. A systematic review and meta\-analysis of discrepancies between logged and self\-reported digital media use\. #emph[Nature Human Behaviour]\. https:\/\/doi\.org\/10\.1038\/s41562\-021\-01117\-5

Pearcy, B\. T\. D\., McEvoy, P\. M\., & Roberts, L\. D\. \(2017\)\. Internet Gaming Disorder explains unique variance in psychological distress and disability after controlling for comorbid depression, OCD, ADHD, and anxiety\. #emph[Cyberpsychology, Behavior, and Social Networking, 20]\(2\), 126–132\. https:\/\/doi\.org\/10\.1089\/cyber\.2016\.0304

Peterka\-Bonetta, J\., Sindermann, C\., Elhai, J\. D\., & Montag, C\. \(2019\)\. Personality associations with smartphone and internet use disorder: A comparison study including links to impulsivity and social anxiety\. #emph[Frontiers in Public Health, 7], 127\. https:\/\/doi\.org\/10\.3389\/fpubh\.2019\.00127

Pinheiro, J\., Bates, D\., DebRoy, S\., Sarkar, D\., & R Core Team\. \(2019\)\. #emph[nlme: Linear and nonlinear mixed effects models] \(3\.1–143\) \[Computer software\]\. https:\/\/CRAN\.R\-project\.org\/package\=nlme

Pontes, H\. M\. \(2017\)\. Investigating the differential effects of social networking site addiction and Internet Gaming Disorder on psychological health\. #emph[Journal of Behavioral Addictions, 6]\(4\), 601–610\. https:\/\/doi\.org\/10\.1556\/2006\.6\.2017\.075

Pontes, H\. M\., & Griffiths, M\. D\. \(2020\)\. A new era for gaming disorder research: Time to shift from consensus to consistency\. Addictive Behaviors, 103, 106059\. https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2019\.106059

Pontes, H\. M\., Schivinski, B\., Brzozowska\-Woś, M\., & Stavropoulos, V\. \(2019a\)\. Laxer clinical criteria for gaming disorder may hinder future efforts to devise an efficient diagnostic approach: A tree\-based model study\. #emph[Journal of Clinical Medicine, 8]\(10\), 1730\. https:\/\/doi\.org\/10\.3390\/jcm8101730

Pontes, H\. M\., Schivinski, B\., Sindermann, C\., Li, M\., Becker, B\., Zhou, M\., & Montag, C\. \(2019b\)\. Measurement and conceptualization of gaming disorder according to the World Health Organization framework: The development of the gaming disorder test\. #emph[International Journal of Mental Health and Addiction]\. https:\/\/doi\.org\/10\.1007\/s11469\-019\-00088\-z

Pontes, H\. M\., Szabo, A\., & Griffiths, M\. D\. \(2015\)\. The impact of Internet\-based specific activities on the perceptions of Internet addiction, quality of life, and excessive usage: A cross\-sectional study\. #emph[Addic\- tive Behaviors Reports], #emph[1], 19–25\. https:\/\/doi\.org\/10\.1016\/j\.abrep\.2015\.03\.002

R Core Team\. \(2021\)\. #emph[R: A language and environment for statistical computing] \(4\.0\.3\) \[Computer software\]\. R Core Team\.

Rozgonjuk, D\., Elhai, J\. D\., Täht, K\., Vassil, K\., Levine, J\. C\., & Asmundson, G\. J\. G\. \(2019a\)\. Non\-social smartphone use mediates the relationship between intolerance of uncertainty and problematic smartphone use: Evidence from a repeated\-measures study\. #emph[Computers in Human Behavior, 96], 56–62\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2019\.02\.013

Rozgonjuk, D\., Levine, J\. C\., Hall, B\. J\., & Elhai, J\. D\. \(2018\)\. The association between problematic smartphone use, depression and anxiety symptom severity, and objectively measured smartphone use over one week\. #emph[Computers in Human Behavior, 87], 10–17\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2018\.05\.019

Rozgonjuk, D\., Pruunsild, P\., Jürimäe, K\., Schwarz, R\.\-J\., & Aru, J\. \(2020a\)\. Instagram use frequency is associated with problematic smartphone use, but not with depression and anxiety symptom severity\. #emph[Mobile Media & Communication, 8]\(3\), 400–418\. https:\/\/doi\.org\/10\.1177\/2050157920910190

Rozgonjuk, D\., Ryan, T\., Kuljus, J\. K\., Täht, K\., & Scott, G\. G\. \(2019\)\. Social comparison orientation mediates the relationship between neuroticism and passive Facebook use\. #emph[Cyberpsychology: Journal of Psychosocial Research on Cyberspace], #emph[13]\(1\)\. https:\/\/doi\.org\/10\.5817\/cp2019\-1\-2

Rozgonjuk, D\., Sindermann, C\., Elhai, J\. D\., Christensen, A\. P\., & Montag, C\. \(2020b\)\. Associations between symptoms of problematic smartphone, Facebook, WhatsApp, and Instagram use: An item\-level exploratory graph analysis perspective\. #emph[Journal of Behavioral Addictions, 9]\(3\), 686–697\. https:\/\/doi\.org\/10\.1556\/2006\.2020\.00036

Şalvarlı, S\. I\., & Griffiths, D\. \(2019\)\. Internet Gaming Disorder and its associated personality traits: A systematic review using PRISMA guidelines\. #emph[International Journal of Mental Health and Addiction]\. https:\/\/doi\.org\/10\.1007\/s11469\-019\-00081\-6

Sawilowsky, S\. S\. \(2009\)\. New effect size rules of thumb\. #emph[Journal of Modern Applied Statistical Methods], #emph[8]\(2\), 597–599\. https:\/\/doi\.org\/10\.22237\/jmasm\/1257035100

Schivinski, B\., Brzozowska\-Woś, M\., Buchanan, E\. M\., Griffiths, M\. D\., & Pontes, H\. M\. \(2018\)\. Psychometric assessment of the Internet Gaming Disorder diagnostic criteria: An Item Response Theory study\. #emph[Addictive Behaviors Reports, 8], 176–184\. https:\/\/doi\.org\/10\.1016\/j\.abrep\.2018\.06\.004

Shapira, N\. A\., Goldsmith, T\. D\., Keck, P\. E\., Jr\., Khosla, U\. M\., & McElroy, S\. L\. \(2000\)\. Psychiatric features of individuals with problematic internet use\. #emph[Journal of Affective Disorders, 57]\(1–3\), 267–272\. https:\/\/doi\.org\/10\.1016\/S0165\-0327\(99\)00107\-X

Starcevic, V\. \(2013\)\. Is Internet addiction a useful concept? #emph[Australian & New Zealand Journal of Psychia\- try, 47]\(1\), 16–19\. https:\/\/doi\.org\/10\.1177\/0004867412461693

Stavropoulos, V\., Adams, B\. L\. M\., Beard, C\. L\., Dumble, E\., Trawley, S\., Gomez, R\., & Pontes, H\. M\. \(2019\)\. Associations between attention deficit hyperactivity and Internet Gaming Disorder symptoms: Is there consistency across types of symptoms, gender and countries? #emph[Addictive Behaviors Reports, 9], 100158\. https:\/\/doi\.org\/10\.1016\/j\.abrep\.2018\.100158

Trivedi, R\. H\., & Teichert, T\. \(2018\)\. Attitudes, beliefs and impulsivity in online gambling addiction\. #emph[Inter\- national Gambling Studies, 18]\(2\), 327–342\. https:\/\/doi\.org\/10\.1080\/14459795\.2018\.1466188

Wartberg, L\., Kriston, L\., & Thomasius, R\. \(2020\)\. Internet Gaming Disorder and problematic social media use in a representative sample of German adolescents: Prevalence estimates, comorbid depressive symptoms and related psychosocial aspects\. #emph[Computers in Human Behavior, 103], 31–36\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2019\.09\.014

Wegmann, E\., Müller, S\. M\., Ostendorf, S\., & Brand, M\. \(2018\)\. Highlighting internet\-communication disorder as further internet\-use disorder when considering neuroimaging studies\. #emph[Current Behavioral Neuroscience Reports, 5]\(4\), 295–301\. https:\/\/doi\.org\/10\.1007\/s40473\-018\-0164\-7

Wéry, A\., Deleuze, J\., Canale, N\., & Billieux, J\. \(2018\)\. Emotionally laden impulsivity interacts with affect in predicting addictive use of online sexual activity in men\. #emph[Comprehensive Psychiatry, 80], 192–201\. https:\/\/doi\.org\/10\.1016\/j\.comppsych\.2017\.10\.004

Wickham, H\. \(2009\)\. #emph[ggplot2: Elegant graphics for data analysis]\. Springer\-Verlag\.

Wong, H\. Y\., Mo, H\. Y\., Potenza, M\. N\., Chan, M\. N\. M\., Lau, W\. M\., Chui, T\. K\., Pakpour, A\. H\., & Lin, C\.\-Y\. \(2020\)\. Relationships between severity of internet gaming disorder, severity of problematic social media use, sleep quality and psychological distress\. #emph[International Journal of Environmental Research and Public Health, 17]\(6\), 1879\. https:\/\/doi\.org\/10\.3390\/ijerph17061879

World Health Organization\. \(2018a\)\. #emph[Gaming disorder]\. https:\/\/www\.who\.int\/news\-room\/q\-a\-detail\/gaming\-disorder\. Accessed on 23\.07\.2021\.

World Health Organization\. \(2018b\)\. #emph[International classification of diseases and related health problems] \(11th ed\.\)\. World Health Organization\. https:\/\/icd\.who\.int\/browse11\/l\-m\/en\#\/http:\/\/id\.who\.int\/icd\/entity\/1448597234

Young, K\. S\. \(1996\)\. Psychology of computer use: XL\. Addictive use of the Internet: A case that breaks the stereotype\. #emph[Psychological Reports], #emph[79]\(3\), 899–902\. https:\/\/doi\.org\/10\.2466\/pr0\.1996\.79\.3\.899

Young, K\. S\. \(1998\)\. Internet addiction: The emergence of a new clinical disorder\. #emph[CyberPsychology & Behavior, 1]\(3\), 237–244\. https:\/\/doi\.org\/10\.1089\/cpb\.1998\.1\.237


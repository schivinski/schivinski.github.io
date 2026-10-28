#set document(title: "Investigating gaming disorder and individual differences in gaming motives among professional and non\-professional gamers: An empirical study", author: ("Christian Montag", "Bruno Schivinski", "Christopher Kannen", "Halley M. Pontes"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Montag et al\. \(2022\), accepted manuscript #h(1fr) Addictive Behaviors] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Investigating gaming disorder and individual differences in gaming motives among professional and non\-professional gamers: An empirical study]]
#v(0.8em)
#text(size: 12pt)[Christian Montag, Bruno Schivinski, Christopher Kannen, Halley M\. Pontes]
#v(0.2em)
#text(size: 10pt, style: "italic")[Ulm University\; RMIT University\; Birkbeck, University of London]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Montag, C\., Schivinski, B\., Kannen, C\., & Pontes, H\. M\. (2022). Investigating gaming disorder and individual differences in gaming motives among professional and non\-professional gamers: An empirical study. #emph[Addictive Behaviors, 134], Article 107416. #link("https://doi.org/10.1016/j.addbeh.2022.107416")[https:\/\/doi.org\/10\.1016\/j\.addbeh\.2022\.107416]
  #v(0.9em)
  © 2022\. This manuscript version is made available under the CC\-BY\-NC\-ND 4\.0 license https:\/\/creativecommons\.org\/licenses\/by\-nc\-nd\/4\.0\/\. The published version is available at #link("https://doi.org/10.1016/j.addbeh.2022.107416")[https:\/\/doi.org\/10\.1016\/j\.addbeh\.2022\.107416]
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors\; the publisher\'s typesetting and layout have been removed and Fig\. 1 redrawn\.
Downloaded from #link("https://schivinski.com/papers/gaming-motives-professional-gamers-esports.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Investigating gaming disorder and individual differences in gaming motives among professional and non\-professional gamers: An empirical study]]
#v(0.6em)
#par(first-line-indent: 0em)[Christian Montag#super[a]\*, Bruno Schivinski#super[b], Christopher Kannen#super[a] and Halley M\. Pontes#super[c]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[a]Department of Molecular Psychology, Institute for Psychology and Education, Ulm University, Ulm, Germany\; #super[b]School of Media and Communication, RMIT University, Melbourne, Australia\; #super[c]Department of Organizational Psychology, Birkbeck, University of London, London, United Kingdom]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Christian Montag]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() The present study investigates the relationship between Gaming Disorder \(GD\) and individual differences in gaming motives and how they might differ between three groups of gamers\. The first group stated to be professional gamers \(#emph[n] \= 129\; 2,49%\), the second group consisted of non\-professional gamers, who intended to become professional gamers \(#emph[n] \= 646\; 12,45%\), and the third group included the remaining non\-professional gamers \(#emph[n] \= 4,412\; 85,06%\)\. Gaming motives were assessed via the Motives for Online Gaming Questionnaire \(MOGQ\), and GD was assessed with the Gaming Disorder Test \(GDT\)\. Results revealed that professional gamers and those intending to become professional were very similar regarding their gaming motive expressions\. In contrast, non\-professional gamers without esports ambitions scored significantly lower on all gaming motives, except for the recreational motive which was comparable across all groups\. Several consistent gaming motive\-GD associations appeared across the three gamer groups, with the most robust finding being that higher escapism motive expressions relate to greater GDT scores\. The present study sheds light on an emerging field of research attempting to better understand competitive gaming in the context of esports\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Professional gamers, Esports, Gaming motives, Gaming disorder, Escapism, Motives for Online Gaming Questionnaire, Gaming Disorder Test]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 2 April 2022\; received in revised form 24 May 2022\; accepted 23 June 2022\; available online 28 June 2022\.]]
#v(0.6em)
= 1\. Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The recent years have seen a strong rise in esports, leading to a surge in people’s interest in highly competitive, professional gaming\. In 2021 the revenue of the esports market was already beyond \$1 billion US dollar \(Gough, 2021\)\. Although esports has no agreed upon single definition, the current study adopts the following definition: “#emph[Electronic sport]” presupposes playing video games in a competetive setting, with emphasis on increased “institutionalization” of gaming activity through the organization of esports teams and official international competitions” \(Marelić & Vukušić, 2019, p\. 47\)\. Not surprisingly, professional players are currently making millions of dollars each year through esports, underscoring how attractive this profession can be for gamers \(Dot Esports, 2022\)\.]

With esports rising globally, it is paramount to understand the motives of different player groups such as those already engaged in esports \(i\.e\., professional gamers\), those who intend to become active esports gamers, and those who play video games without such professional ambitions \(i\.e\., non\-professional gamers\)\. Potential motivational differences may not only be investigated to help characterize the different player groups regarding their motives, but also to understand what kind of motive\(s\) underpin\(s\) each of the aforementioned groups and their potential links to disordered gaming\. Gaming Disorder \(GD\) has been included as bona fide disorder in the ICD\-11 by the World Health Organization \(WHO\) \(Pontes & Griffiths, 2019\) and understanding which gaming motives associate with GD may help educating gamers with their different esports plans and goals to adopt healthier gaming behaviors\.

According to the WHO, GD \(6C51\) symptoms are as follows: loss of control, preoccupation \(gaming is the center of a persons’ life with other things falling back\), continuation of the gaming behavior despite negative consequences, and the experience of significant impairments due to one’s own gaming activities that can be observed \(for instance in personal and\/or business life\)\. See for more details the work by Montag, Schivinski, et al\. \(2021\)\. According to a meta\-analysis prevalence for Internet Gaming Disorder \(IGD\) is 2\.47% \(Pan et al\., 2020\) and 1\.96% for GD \(Pontes et al\., 2022\)\. Comorbidities may include negative affect such as depression and loneliness \(Pontes et al\., 2019\) and the condition can be treated with cognitive behavioral therapy \(Stevens et al\., 2020\)\.

There have been several studies investigating gaming motives \(de Hesselle et al\., 2021\; Demetrovics et al\., 2011\; King et al\., 2019\; Laconi et al\., 2017\), but these studies will not be reviewed as they mainly dealt with IGD, a tentative condition put forward by the American Psychiatric Association \(APA\) \(Kuss et al\., 2017\)\. Although IGD and GD overlap, a recent work demonstrated that different disordered gaming prevalence rates may emerge when assessing disordered gaming under either the APA or WHO framework \(Montag et al\., 2019\; Montag, Kannen, et al\., 2021\; Pontes et al\., 2022\)\. Therefore, we focus on the officially recognized WHO framework for GD in this work\.

One prominent approach to assess gaming motives is through the administration of the Motives for Online Gaming Questionnaire \(MOGQ\) developed by Demetrovics et al\., \(2011\) as described in the Methods section\. This questionnaire assesses seven dimensions describing distinct motives to play online games\. Among these are gaming for social purposes \(social motive\), gaming to escape from everyday life \(escapism motive\), gaming to compete with others \(competition motive\), gaming to cope with stress or enhance mood \(coping motive\), gaming to get better in a certain area of gaming \(skill development motive\), gaming to live out fantasies \(fantasy motive\), and gaming for recreational purposes \(recreational motive\)\. Taken together, the existing findings from the literature suggest that in particular the escapism motive has been consistently linked to disordered gaming symptoms \(Montag et al\., 2019\; see also the meta\-analysis by Wang & Cheng, 2022\)\. However, to the best of our knowledge, this association has not yet been established among different groups of active gamers such as professional gamers, those intending to become professional gamers, and non\-professional gamers \(i\.e\., those who play without the ambition of becoming professional\) in the context of the WHO framework of Gaming Disorder\.

This study builds upon and extends current research on esports gamers \(see Maldonado\-Murciano, Guilera, Montag, & Pontes, 2022\)\. Given that only a handful of studies contrasting professional gamers with other gamer groups regarding their gaming motives exist \(Bányai et al\., 2019\), we were first interested in analyzing these potential contrasts\. This research question is relevant, because if professional and non\-professional gamers would not differ in their gaming motives, then gaming motives may not be used in a meaningful way to understand how professional gamers engage with esports\. It is plausible to expect that gaming motivations may differ between recreational gamers \(i\.e\., non\-professional gamers\) and those who ultimately play video games for a living \(i\.e\., professional gamers\), hence by becoming a successful professional gamer \(please note that the aspect of success cannot be answered with the present study, as we have no performance data\)\. In light of a previous finding showing that gaming motivations in terms of competition, skill development, and social motivations are linked to gamers’ planning their careers as professional esports players \(Bányai et al\., 2020\), we expect that esports gamers will exhibit higher levels of skill development, competition, and social motives compared to non\-professional gamers and those intending to become professional gamers\. Regarding the associations between gaming motives and disordered gaming, the literature indicates positive associations between escapism and disordered gaming \(Wang & Cheng, 2022\), however, from the engagement perspective, it is paramount to assess whether all three investigated gamer groups will show the same effect sizes regarding such potential correlations\.

= 2\. Methods
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 2\.1\. Participants and procedures
#par(first-line-indent: 0em)[For the present study, a total of 6,956 participants were recruited from January 2020 to February 2022 via the platform www\.do\-i\-play\-too\-much\.com, providing gamers insights into several gaming\-related variables\. The platform was advertised via several media channels and by ESL Gaming, a large esports company \(see https:\/\/about\.eslgaming\. com\/brands\/smart\-gaming\/\), which provided the researchers with no financial support for the study nor influenced the study in any way\.]

Data cleaning steps were the same as in a recent study \(Montag et al\., 2021\) and resulted in a final sample of 5,187 participants \(mean#sub[age] \= 23\.93, SD \= 8\.43, range \= 12 to 77 years\)\. Please note that in this work the variable “weekly time spent gaming” was cleaned considering a minimum of eight hours of average sleep \(7 x 24 hours \= 168 hours minus 56 hours of sleep \= 112 hours of reasonable maximum gaming time\)\. About 89% of the sample were male \(#emph[n] \= 4,614\) and 11% \(#emph[n] \= 573\) were female\. In terms of gamer groups, 129 \(2,49%\) reported being professional gamers \(PG\), 646 \(12,45%\) reported intending to become a professional gamer in the near future \(i\.e\., non\-professional gamers with a plan: NPGwP\), while 4,412 \(85,06%\) reported being non\-professional gamers without plan to become one \(NPGwoP\)\.

Participation was allowed when participants were aged between 12 and 15 years and provided parental electronic consent or when they were aged #emph[\>] 15 years and provided electronic consent to participate in the study\. As an incentive to participation, all individuals completing the survey received insights into their own disordered gaming tendencies and gaming motives compared to other participants of the present study\. To get meaningful feedback, participants were asked to fill in all items of the survey, leading to no missing data \(see exception regarding the weekly gaming time in the results\)\. The present study received ethical approval \(College Research Ethics Committee of the Nottingham Trent University \[2018\/95\]\)\.

== 2\.2\. Measures
#par(first-line-indent: 0em)[All participant filled out several items assessing sociodemographic variables\. For the present study, variables of interest were age, gender, and participants’ intention to become a professional gamer in the near future\. Moreover, participants provided insights into their own time spent gaming \(i\.e\., weekly time spent gaming\)\.]

The English version of the MOGQ \(Demetrovics et al\., 2011\) was administered to get insights into gaming motives\. This scale includes 27 items measuring the following seven gaming motives: social, escape, competition, coping, skill development, fantasy, and recreation motives\. All gaming motives are assessed with four items except for the recreation motive being assessed only with three items\. All items are answered with a five\-point Likert scale ranging from 1 \= ‘#emph[almost never\/never]’ to 5 \= ‘#emph[almost always\/always]’, with higher scores indicating greater expressions of each gaming motive\.

The English version of the Gaming Disorder Test \(GDT\) \(Pontes et al\., 2019\) assessing disordered gaming according to the criteria set out by the WHO framework was filled in by all participants\. The GDT consists of four items answered on a five\-point Likert scale ranging from 1 \= ‘#emph[never]’ to 5 \= ‘#emph[very often]’\. Higher scores indicate higher tendencies towards GDT\. Internal consistencies for the three investigated groups are presented in Table 1\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Cronbach’s alpha for the investigated inventories in the three gamer groups]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Measure]], [#strong[NPGwoP \(#emph[n] \= 4,412\)]], [#strong[NPGwP \(#emph[n] \= 646\)]], [#strong[PG \(#emph[n] \= 129\)]]),
table.hline(stroke: 0.5pt),
[Gaming Disorder Test], [0\.82], [0\.79], [0\.75],
[Social motive], [0\.82], [0\.81], [0\.82],
[Escape motive], [0\.89], [0\.88], [0\.90],
[Competition motive], [0\.85], [0\.82], [0\.81],
[Coping motive], [0\.77], [0\.78], [0\.79],
[Skill motive], [0\.89], [0\.85], [0\.83],
[Fantasy motive], [0\.85], [0\.82], [0\.80],
[Recreational motive], [0\.70], [0\.55], [0\.69],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[NPGwoP: non\-professional gamer without a plan to become one\; NPGwP: non\-professional gamer with a plan to become a professional gamer\; PG: professional gamer\.]
]
#v(12pt)
== 2\.3\. Statistical analysis
#par(first-line-indent: 0em)[Statistical differences were investigated with multivariate analysis of variance \(MANOVA\) among others with gaming motives as dependent variables and gamer groups as independent variables\. Contrasts in gaming motives between the three groups investigated were also tested with Least\-Significant\-Difference\-\(LSD\)\-tests and depicted in Fig\. 1 \(with LSD tests to be found in the supplementary material\)\. Furthermore, it is important to note that the results did not differ, when controlling for age and for the year of the pandemic, given that earlier studies showed that GDT scores might differ across different years of the pandemic \(Rozgonjuk et al\., 2022\)\. The complete MANCOVA results are presented in the supplementary material\.]

Correlation patterns between disordered gaming and gaming motives\/weekly time spent gaming were detected with the help of Spearman’s Rho test\. Additional statistics including skewness, kurtosis, normality tests are presented in the supplementary material\. The supplementary material also includes Pearson correlations, which did not differ meaningfully from the results reported in the current study \(we implemented Spearman’s correlations to account for some violation of normality in the data, a common issue related from survey data\; Schivinski, 2021\)\. All statistical analyses were carried out with IBM SPSS version 26\.

Some further notes on our analysis strategy: To further explore the relationship between GD and how gaming motives might differ between three groups of gamers we also grouped the sample according to self\-reported disordered or non\-disordered gaming status\. In line with the literature, disordered gaming status was reached when all 4\-items of the GDT were either answered with a four \(often\) or five \(very often\) response \(Pontes et al\., 2019\)\. Non\-disordered gaming status was then further investigated in the context of the three gamer groups by means of the Chi#super[2] test\. This was subsequently followed by a hierarchical regression model \(stepwise method\) to predict disordered gaming tendencies in the complete sample from the available independent variables\. Finally, gender was significantly associated with professional gaming status \(only very few females #emph[n] \= 8 reported to be professional gamers\; Chi#super[2] \= 9,12, #emph[p] \=\.01\)\. Given the low number of female participants in the gamer groups investigated, we did not further examine the gender variable\. The data used in this study is available from the Open Science Framework via the following hyperlink: https:\/\/osf\.io\/ntyhr\/\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Descriptive statistics of the investigated variables in the three gamer groups including the MANOVA results]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Variable]], [#strong[NPGwoP \(#emph[n] \= 4,412\)]], [#strong[NPGwP \(#emph[n] \= 646\)]], [#strong[PG \(#emph[n] \= 129\)]], [#strong[MANOVA#super[\*] #emph[F]\(2, 5151\)]], [#strong[#emph[p]]], [#strong[η#super[2]]]),
table.hline(stroke: 0.5pt),
[Gaming Disorder Test scores], [10\.04 \(3\.76\)], [11\.42 \(3\.84\)], [10\.60 \(3\.89\)], [37\.17], [\< \.001], [0\.014],
[Weekly time spent gaming], [25\.40 \(18\.14\)], [31\.39 \(20\.72\)], [33\.85 \(24\.88\)], [39\.59], [\< \.001], [0\.015],
[Age], [24\.58 \(8\.49\)], [20\.17 \(7\.16\)], [20\.67 \(6\.32\)], [90\.43], [\< \.001], [0\.034],
[Social motive], [9\.31 \(4\.30\)], [12\.20 \(4\.60\)], [12\.41 \(4\.74\)], [147\.70], [\< \.001], [0\.054],
[Escape motive], [10\.19 \(4\.80\)], [11\.98 \(5\.19\)], [11\.49 \(5\.26\)], [40\.38], [\< \.001], [0\.015],
[Competition motive], [10\.28 \(4\.47\)], [12\.76 \(4\.46\)], [12\.85 \(4\.59\)], [101\.98], [\< \.001], [0\.038],
[Coping motive], [10\.95 \(3\.94\)], [12\.72 \(4\.21\)], [12\.17 \(4\.48\)], [58\.99], [\< \.001], [0\.022],
[Skill motive], [10\.43 \(4\.71\)], [13\.61 \(4\.47\)], [13\.80 \(4\.52\)], [153\.47], [\< \.001], [0\.056],
[Fantasy motive], [9\.55 \(4\.69\)], [11\.11 \(4\.88\)], [11\.38 \(4\.68\)], [37\.84], [\< \.001], [0\.014],
[Recreational motive], [12\.59 \(2\.54\)], [12\.89 \(2\.18\)], [12\.53 \(2\.57\)], [3\.88], [\.02], [0\.002],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Values are #emph[M] \(#emph[SD]\)\. M: mean\; SD: Standard Deviation\; NPGwoP: non\-professional gamer without a plan to become one\; NPGwP: non\-professional gamer with a plan to become a professional gamer\; PG: professional gamer\. #super[\*]Please note that the MANOVA was run with a slightly smaller sample than the desciptive statistics show\. N \= 33 did not provide information on weekly time spent gaming \(#emph[n] \= 1 from the NPGwP group and #emph[n] \= 32 from the NPGwoP group\)\. Decimal commas in the published table are shown as points\.]
]
#v(12pt)
= 3\. Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Descriptive statistics for the different groups of gamers are shown in Table 2, including means and standard deviations and the significance tests from the MANOVA with η#super[2] effect sizes\. For a visualization of the findings, we also present the contrasts in Fig\. 1\. As can be seen, professional gamers and those intending to become one were rather similar in their gaming motive expressions, whereas non\-professional gamers differed substantially in terms of social, escapism, competition, coping, skill development, and fantasy motives\. The only contrast where comparable values were reached was in terms of the recreational motive\. Differences between the three gamer groups were further tested with LSD tests and are presented in the supplementary material\.]

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 1\. Gaming motives in the three gaming groups under investigation\; NPGwoP: non\-professional gamer without a plan to become one\; NPGwP: non\-professional gamer with a plan to become a professional gamer\; PG: professional gamer\. Redrawn from the published figure \(means from Table 2\), with the axis starting at zero\.]]
#v(0.6em)
Further analyses of the \(non\)\-disordered gaming status revealed statistically significant differences in the ratio of disordered vs\. non\-disordered gamers when contrasting the groups NPGwoP, PG, and NPGwP \(Chi#super[2] : 8\.13, df \= 2, #emph[p \<] \.05\)\. Cases of disordered gamers differed in terms of percentages in each group\. More specifically, about 8,82% \(#emph[n] \= 57 from 646\) of gamers in the NPGwP presented with disordered gaming status, with this figure being 5,94% \(#emph[n] \= 262 from 4412\) and 5\.43% \(#emph[n] \= 7 from 129\) in the NPGwoP and professional gamers groups respectively\. Hence, NPGwP participants showed the highest prevalence of disordered gaming, with the other two groups being rather similar with respect to the prevalence of disordered gaming\.

== 3\.1\. Associations between disordered gaming, individual differences in gaming motives, and weekly time spent gaming
#par(first-line-indent: 0em)[The correlations between disordered gaming, gaming motives, and weekly time spent gaming are presented in Table 3\. Although sample sizes differed in each group, the effect sizes were very similar with the exception for the social motive, where NPGwoP showed a small positive association between disordered gaming and the social motive, and the remaining two groups near zero associations\. Another contrasting finding was observed as the recreation motive was negatively associated with the disordered gaming in PG and correlations near zero for the remaining groups\.]

Finally, we ran a hierarchical regression model with stepwise method\. The dependent variable to be predicted was GDT score\. The first block of independent variables included age, gender, and gamer group \(i\.e\., NPGwoP, PG, and NPGwP\)\. The second block comprised only participants’ weekly time spent gaming\. Finally, we added a third block with all gaming motives \(i\.e\., social, escapism, competition, coping, skill development, fantasy, and recreation\)\. The model explaining most of the variance \(30,4%\) in GDT scores is depicted in Table 4 \(#emph[F]\(8, 5145\) \= 280,97, #emph[p \<] \.001\)\. Of note, another model including only sociodemographic and weekly time spent gaming explained 10,7% of the total variance in the outcome \(R#super[2]\), hence including the gaming motives as depicted in Table 4 leads to better variance explained in disordered gaming scores \(i\.e\., about 20%\)\.

#page(flipped: true)[
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 3.] Correlations between gaming motives, disordered gaming, and weekly time spent gaming \(two sided test level provided\)]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8pt)[#table(columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), align: (left, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[Social]], [#strong[Escapism]], [#strong[Competition]], [#strong[Coping]], [#strong[Skill Development]], [#strong[Fantasy]], [#strong[Recreation]], [#strong[Weekly time spent gaming#super[\*]]]),
table.hline(stroke: 0.5pt),
[PG], [\.047 \(#emph[p] \= \.595\)], [\.396 \(#emph[p] \< \.001\)], [\.233 \(#emph[p] \= \.008\)], [\.192 \(#emph[p] \= \.029\)], [−\.032 \(#emph[p] \= \.715\)], [\.191 \(#emph[p] \= \.030\)], [−\.174 \(#emph[p] \= \.048\)], [\.187 \(#emph[p] \= \.034\)],
[NPGwP], [\.034 \(#emph[p] \= \.386\)], [\.427 \(#emph[p] \< \.001\)], [\.277 \(#emph[p] \< \.001\)], [\.260 \(#emph[p] \< \.001\)], [−\.035 \(#emph[p] \= \.375\)], [\.258 \(#emph[p] \< \.001\)], [\.034 \(#emph[p] \= \.387\)], [\.172 \(#emph[p] \< \.001\)],
[NPGwoP], [\.148 \(#emph[p] \< \.001\)], [\.437 \(#emph[p] \< \.001\)], [\.253 \(#emph[p] \< \.001\)], [\.254 \(#emph[p] \< \.001\)], [\.082 \(#emph[p] \< \.001\)], [\.270 \(#emph[p] \= \.001\)], [\.055 \(#emph[p] \< \.001\)], [\.333 \(#emph[p] \< \.001\)],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Cells show Spearman’s rho \(#emph[p]\) for the correlation with the Gaming Disorder Test \(GDT\) in each group\. NPGwoP: non\-professional gamer without plan to become a professional gamer \(#emph[n] \= 4,412\)\; NPGwP: non\-professional gamer with plan to become a professional gamer \(#emph[n] \= 646\)\; PG: professional gamer \(#emph[n] \= 129\)\; GDT \= Gaming Disorder Test\. #super[\*]Please note that the sample size for the NPGwP \(#emph[n] \= 645\) and the NGwoP \(#emph[n] \= 4380\) sample is slightly smaller for this variable due to missing data\.]
]
#v(12pt)
]
#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 4.] The results of the hierarchical regression model including stepwise method to predict the Gaming Disorder Test scores \(please note that the regression model was run with n \= 5154 participants due to a few participants not providing gaming hours per week\)]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[Unstandardized #emph[B]]], [#strong[Std\. Error]], [#strong[Standardized Beta]], [#strong[#emph[t]\-value]], [#strong[#emph[p]\-value]]),
table.hline(stroke: 0.5pt),
[\(Constant\)], [7\.232], [0\.399], [], [18\.138], [\< \.001],
[Gamer groups], [−0\.450], [0\.120], [−\.044], [−3\.738], [\< \.001],
[Gender], [−0\.395], [0\.144], [−\.033], [−2\.735], [\.006],
[Age], [0\.006], [0\.005], [\.013], [1\.083], [\.279],
[Weekly time spent gaming], [0\.046], [0\.002], [\.226], [18\.764], [\< \.001],
[Escapism], [0\.320], [0\.010], [\.412], [32\.821], [\< \.001],
[Competition], [0\.161], [0\.011], [\.193], [14\.418], [\< \.001],
[Skill development], [−0\.103], [0\.011], [−\.131], [−9\.639], [\< \.001],
[Recreation], [−0\.077], [0\.019], [−\.050], [−4\.043], [\< \.001],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Decimal commas in the published table are shown as points\.]
]
#v(12pt)
= 4\. Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The present study aimed to shed light on how gaming motives might differ between professional gamers, those intending to become one, and non\-professional gamers\. The findings obtained suggested that professional gamers \(PG\) and those intending to become one \(NPGwP\) were very similar in their gaming motive expression but differed substantially from non\-professional gamers without such a plan \(NPGwoP\)\. Aside from the recreational motive, marked differences in all gaming motives were observed, with non\-professional gamers reporting the lowest scores\. Of note, among the largest differences could be observed for the competition and skill development motive, something likely to be of relevance to professional gaming and esports practices \(see also our hypothesis\)\. Of interest, and pointing against our hypothesis \(we expected highest scores in gaming motives for the professional gamers compared to the other groups\), the motive levels of the MOGQ, when comparing professional gamers and those intending to become a professional gamer were quite similar\. Those findings might be interpreted as a stable motive\-characteristic\-pattern being of relevance to ultimately become a professional gamer \(perhaps without the need to even show higher levels on the motives such as skill development or social game play\)\. As no performance data was analyzed in the current study, we cannot judge on the relevance of each single motive for ultimately being successful as a professional gamer and this makes an interesting and highly relevant future study question\.]

The present study added to the investigation of the contrasts between the three gamer groups another layer linking gaming motives to tendencies towards disordered gaming\. Before taking a closer look at the correlation patterns between gaming motives and disordered gaming, we mention that not the group of professional gamers, but the group of non\-professional gamers intending to become one reported the highest gaming disorder tendencies\. This might support the idea, that if gamers want to make it professionally, it is important to understand that long periods of gaming may lead to disordered gaming \(Pontes et al\., 2022\)\. Yet, it is possible to be a highly engaged gamer and maintain a healthy lifestyle \(Micallef, Brennan, Parker, Schivinski, & Jackson, 2021\; Micallef, Parker, Brennan, Schivinski, & Jackson, 2022\)\.

Beyond that we observed highly converging correlation patterns across all investigated gamer groups, except for the disordered gaming\-social motive and disordered gaming\-recreational motive associations\. Whereas higher social motives were positively linked to disordered gaming scores among non\-professional gamers, no associations were observed in the remaining groups\. It is possible that the different levels of social motives between the investigated gamer groups can explain this\. Notwithstanding this, the present findings might support the interpersonal impairment hypothesis \(Cheng et al\., 2018\), which suggests that disordered gamers are more prone to experiencing interpersonal stress such as interpersonal conflicts and\/or social isolation\.

In the present study, non\-professional gamers reported the lowest social motives for gaming, hence those who engage in disordered gaming behavior might be doing so due to the social aspects of gaming, potentially displacing in\-person socialization with other individuals \(see the interpersonal impairment hypothesis and our initial hypothesis that high social skills might be necessary to career planning in esports\; Bányai et al\., 2020\)\. Furthermore, high recreational motives might only be a buffer for professional gamers against developing disordered gaming, but this also requires further investigation as only a rather small negative correlation was found in this study\. Finally, in line with the existing literature \(Wang & Cheng, 2022\), we suggest that the escapism motive might be used \(alongside personality traits\; see Montag, Kannen, et al\., 2021\) to inform some of the players about potential vulnerabilities for developing disordered gaming tendencies\. Beyond this, our findings might also support the interpersonal impairment hypothesis \(Cheng et al\., 2018\), as not only escapism, but also the coping motive was associated with disordered gaming tendencies\. The coping motive refers to mood enhancement or reduction of stress via gaming\. If stress would be a result of interpersonal problems, the interpersonal impairment hypothesis would then be supported\. However, there would be a need to reformulate the items of the MOGQ to better tap into this research question\. This said, we also observed in the present work that both professional gamers and those intending to become one scored on average higher on the social gaming motive than non\-professional gamers\. One explanation could be that these two groups try to fulfill their need for social interactions via online games \(perhaps as having problems to do this aside from their gaming activities\)\. Without further data assessing their social behavior aside from gaming, this interpretation is highly speculative\. We, therefore, suggest researchers to further explore this relevant aspect\.

The present study comes with several limitations which need to be acknowledged\. First, the cross\-sectional nature of the study prevents inferring causality\. Further, the data relies on self\-report data, which is prone to well\-known biases \(e\.g\., memory recall bias, social desirability\)\. It will be interesting to link individual differences in gaming motives\/disordered gaming tendencies to objective gaming performance data in esports\. The present study is further limited by the fact that non\-professional gamers were significantly older than professional gamers and non\-professional gamers intending to become one \(about four years\), hence maybe at a certain age one has already achievements in other areas and refrains from becoming a professional gamer or reaction times might not be as good as with a younger age\. Nevertheless, these age differences might bias our findings\. And we also could not investigate the potential influence of gender in our study, given the rather small number of females in the sample \(e\.g\. #emph[n] \= 8 female professional gamers\)\. The present sample stems from diverse countries, but a more detailed analysis considering countries makes from our view no sense here, as the professional gamers group is too small\. Finally, in the current study, the group of professional gamers is small in contrast to the other investigated group\. Therefore, future studies are needed in order to test the robustness of the findings reported\.

In sum, the present study shows that professional gamers and those intending to become one do not differ much in their levels of gaming motives, but they differ from the group of non\-professional gamers regarding all gaming motives except for the recreational motive\. Furthermore, higher disordered gaming tendencies are robustly associated with several gaming motives, but strongest with the escape motive \(Wang & Cheng, 2022\)\.

= Declaration of Competing Interest
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The authors declare the following financial interests\/personal relationships which may be considered as potential competing interests: Dr\. Montag reports no conflict of interest\. However, for reasons of transparency Dr\. Montag mentions that he has received \(to Ulm University and earlier University of Bonn\) grants from agencies such as the German Research Foundation \(DFG\)\. Dr\. Montag has performed grant reviews for several agencies\; has edited journal sections and articles\; has given academic lectures in clinical or scientific venues or companies\; and has generated books or book chapters for publishers of mental health texts\. For some of these activities he received royalties, but never from gaming or social media companies\. Dr\. Montag mentions that he is part of a discussion circle \(Digitalität und Verantwortung: https:\/\/about\. fb\.com\/de\/news\/h\/gespraechskreis\-digitalitaet\-und\-verantwortung\/\) debating ethical questions linked to social media, digitalization and society\/democracy at Meta\. In this context, he receives no salary for his activities\. Finally, he mentions that he currently functions as independent scientist on the scientific advisory board of the Nymphenburg group \(Munich, Germany\)\. This activity is financially compensated\. Moreover, he is on the scientific advisory board of Applied Cognition \(Redwood City, CA, USA\), an activity which is also compensated\. The present work is part of the ESL \(electronic sports league\) smart gaming campaign\. The authors independently designed, analyzed and wrote the present study without influence of the ESL\. This said, the ESL promoted the presented study via their online\-channels\. The authors of the present work received no monetary compensation from the ESL\.]

= Appendix A\. Supplementary data
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Supplementary data to this article can be found online at https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2022\.107416\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Bányai, F\., Griffiths, M\. D\., Király, O\., & Demetrovics, Z\. \(2019\)\. The psychology of esports: A systematic literature review\. #emph[Journal of Gambling Studies, 35]\(2\), 351–365\. https:\/\/doi\.org\/10\.1007\/s10899\-018\-9763\-1

Bányai, F\., Zsila, Á\., Griffiths, M\. D\., Demetrovics, Z\., & Király, O\. \(2020\)\. Career as a professional gamer: Gaming motives as predictors of career plans to become a professional esport player\. #emph[Frontiers in Psychology], 11\. https:\/\/www\.frontiersin\.org\/article\/10\.3389\/fpsyg\.2020\.01866\.

Cheng, C\., Cheung, M\.\-W\.\-L\., & Wang, H\. \(2018\)\. Multinational comparison of internet gaming disorder and psychosocial problems versus well\-being: Meta\-analysis of 20 countries\. #emph[Computers in Human Behavior, 88], 153–167\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2018\.06\.033

de Hesselle, L\. C\., Rozgonjuk, D\., Sindermann, C\., Pontes, H\. M\., & Montag, C\. \(2021\)\. The associations between Big Five personality traits, gaming motives, and self\-reported time spent gaming\. #emph[Personality and Individual Differences, 171], Article 110483\. https:\/\/doi\.org\/10\.1016\/j\.paid\.2020\.110483

Demetrovics, Z\., Urbán, R\., Nagygyörgy, K\., Farkas, J\., Zilahy, D\., Mervó, B\., … Harmath, E\. \(2011\)\. Why do you play? The development of the motives for online gaming questionnaire \(MOGQ\)\. #emph[Behavior Research Methods, 43]\(3\), 814–825\. https:\/\/doi\.org\/10\.3758\/s13428\-011\-0091\-y

Dot Esports\. \(2022\)\. #emph[https:\/\/dotesports\.com\/general\/news\/top\-earning\-esports\-players\-]#emph[21870]\.

Gough, C\. \(2021\)\. Topic: ESports market\. #emph[Statista]\. https:\/\/www\.statista\.com\/topics\/3121\/esports\-market\/\.

King, D\. L\., Delfabbro, P\. H\., Perales, J\. C\., Deleuze, J\., Király, O\., Krossbakken, E\., & Billieux, J\. \(2019\)\. Maladaptive player\-game relationships in problematic gaming and gaming disorder: A systematic review\. #emph[Clinical Psychology Review, 73], Article 101777\. https:\/\/doi\.org\/10\.1016\/j\.cpr\.2019\.101777

Kuss, D\. J\., Griffiths, M\. D\., & Pontes, H\. M\. \(2017\)\. Chaos and confusion in DSM\-5 diagnosis of Internet Gaming Disorder: Issues, concerns, and recommendations for clarity in the field\. #emph[Journal of Behavioral Addictions, 6]\(2\), 103–109\. https:\/\/doi\.org\/10\.1556\/2006\.5\.2016\.062

Laconi, S\., Pirès, S\., & Chabrol, H\. \(2017\)\. Internet gaming disorder, motives, game genres and psychopathology\. #emph[Computers in Human Behavior, 75], 652–659\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2017\.06\.012

Maldonado\-Murciano, Laura, Guilera, Georgina, Montag, Christian, & Pontes, Halley Miguel \(2022\)\. Disordered gaming in esports: Comparing professional and non\-professional gamers\. #emph[Addictive Behaviors, 132], Article 107342\. https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2022\.107342

Marelić, M\., & Vukušić, D\. \(2019\)\. E\-sports: Definition and social implications\. #emph[Exercise] #emph[and Quality of Life, 11], 47–54\. https:\/\/doi\.org\/10\.31382\/eqol\.191206

Micallef, D\., Brennan, L\., Parker, L\., Schivinski, B\., & Jackson, M\. \(2021\)\. Where do online games fit into the health behaviour ecology of emerging adults: A scoping review\. #emph[Nutrients, 13]\(8\), 2895\. https:\/\/doi\.org\/10\.3390\/nu13082895

Micallef, D\., Parker, L\., Brennan, L\., Schivinski, B\., & Jackson, M\. \(2022\)\. Improving the health of emerging adult gamers—A scoping review of influences\. #emph[Nutrients, 14]\(11\), 2226\.

Montag, C\., Kannen, C\., Schivinski, B\., & Pontes, H\. M\. \(2021\)\. Empirical evidence for robust personality\-gaming disorder associations from a large\-scale international investigation applying the APA and WHO frameworks\. #emph[Plos One, 16]\(12\), e0261380\.

Montag, C\., Schivinski, B\., & Pontes, H\. \(2021\)\. Is the proposed distinction of Gaming Disorder into a predominantly online vs\. offline form meaningful? Empirical evidence from a large German speaking gamer sample\. #emph[Addictive Behaviors Reports,] #emph[14], Article 100391\. https:\/\/doi\.org\/10\.1016\/j\.abrep\.2021\.100391

Montag, C\., Schivinski, B\., Sariyska, R\., Kannen, C\., Demetrovics, Z\., & Pontes, H\. M\. \(2019\)\. Psychopathological symptoms and gaming motives in disordered gaming—A psychometric comparison between the WHO and APA diagnostic frameworks\. #emph[Journal of Clinical Medicine, 8]\(10\), 1691\. https:\/\/doi\.org\/10\.3390\/jcm8101691

Pan, Y\.\-C\., Chiu, Y\.\-C\., & Lin, Y\.\-H\. \(2020\)\. Systematic review and meta\-analysis of epidemiology of internet addiction\. #emph[Neuroscience & Biobehavioral Reviews, 118], 612–622\. https:\/\/doi\.org\/10\.1016\/j\.neubiorev\.2020\.08\.013

Pontes, H\., & Griffiths, M\. \(2019\)\. A new era for gaming disorder research: Time to shift from consensus to consistency\. #emph[Addictive Behaviors, 103], Article 106059\. https:\/\/doi\.org\/10\.1016\/j\.addbeh\.2019\.1060596

Pontes, H\. M\., Schivinski, B\., Kannen, C\., & Montag, C\. \(2022\)\. The interplay between time spent gaming and disordered gaming: A large\-scale world\-wide study\. #emph[Social] #emph[Science & Medicine, 296], Article 114721\. https:\/\/doi\.org\/10\.1016\/j\.socscimed\.2022\.114721

Pontes, H\. M\., Schivinski, B\., Sindermann, C\., Li, M\., Becker, B\., Zhou, M\., & Montag, C\. \(2019\)\. Measurement and conceptualization of gaming disorder according to the world health organization framework: The development of the gaming disorder test\. #emph[International Journal of Mental Health and Addiction]\. https:\/\/doi\.org\/10\.1007\/s11469\-019\-00088\-z

Rozgonjuk, D\., Pontes, H\. M\., Schivinski, B\., & Montag, C\. \(2022\)\. Disordered gaming, loneliness, and family harmony in gamers before and during the COVID\-19 pandemic\. #emph[Addictive Behaviors Reports, 15], 100426\. https:\/\/doi\.org\/10\.1016\/j\.abrep\.2022\.100426

Schivinski, B\. \(2021\)\. Eliciting brand\-related social media engagement: A conditional inference tree framework\. #emph[Journal of Business Research, 130], 594–602\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.08\.045

Stevens, M\. W\., Dorstyn, D\., Delfabbro, P\. H\., & King, D\. L\. \(2020\)\. Global prevalence of gaming disorder: A systematic review and meta\-analysis, 0004867420962851 #emph[Australian & New Zealand Journal of Psychiatry]\. https:\/\/doi\.org\/10\.1177\/0004867420962851\.

Wang, H\.\-Y\., & Cheng, C\. \(2022\)\. The associations between gaming motivation and internet gaming disorder: Systematic review and meta\-analysis\. #emph[JMIR Mental Health,] #emph[9]\(2\), e23700\.


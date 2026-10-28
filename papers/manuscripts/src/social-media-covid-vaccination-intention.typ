#set document(title: "The effect of social media communication on intention to vaccinate against COVID\-19: A relationship mediated by perceptions of vaccine efficacy and safety", author: ("Dooyeon Park", "Bruno Schivinski", "Hilary Duns-McKay", "Bartholomew Heeren", "Elizabeth McLachlan"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Park et al\. \(2025\), open access \(CC BY\-NC\-ND 4\.0\) #h(1fr) Journal of Marketing Communications] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[The effect of social media communication on intention to vaccinate against COVID\-19: A relationship mediated by perceptions of vaccine efficacy and safety]]
#v(0.8em)
#text(size: 12pt)[Dooyeon Park, Bruno Schivinski, Hilary Duns\-McKay, Bartholomew Heeren, Elizabeth McLachlan]
#v(0.2em)
#text(size: 10pt, style: "italic")[RMIT University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Park, D\., Schivinski, B\., Duns\-McKay, H\., Heeren, B\., & McLachlan, E\. (2025). The effect of social media communication on intention to vaccinate against COVID\-19: A relationship mediated by perceptions of vaccine efficacy and safety. #emph[Journal of Marketing Communications, 31]\(1\), 1–20. #link("https://doi.org/10.1080/13527266.2023.2191618")[https:\/\/doi.org\/10\.1080\/13527266\.2023\.2191618]
  #v(0.9em)
  Open access article distributed under the terms of the Creative Commons Attribution\-NonCommercial\-NoDerivatives 4\.0 International License \(https:\/\/creativecommons\.org\/licenses\/by\-nc\-nd\/4\.0\/\)\. Originally published in Journal of Marketing Communications, 31\(1\), 1–20 \(online 27 March 2023\), #link("https://doi.org/10.1080/13527266.2023.2191618")[https:\/\/doi.org\/10\.1080\/13527266\.2023\.2191618]\. Only the format has changed: the text has been re\-typeset\; the content is unchanged\.
  #v(0.9em)
  This version reproduces the content of the published open access article unchanged\; only the format differs\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published open access article \(CC BY\-NC\-ND 4\.0\)\; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/social-media-covid-vaccination-intention.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[The effect of social media communication on intention to vaccinate against COVID\-19: A relationship mediated by perceptions of vaccine efficacy and safety]]
#v(0.6em)
#par(first-line-indent: 0em)[Dooyeon Park, Bruno Schivinski, Hilary Duns\-McKay#super[\*], Bartholomew Heeren#super[\*] and Elizabeth McLachlan#super[\*]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[School of Media and Communication, RMIT University, Melbourne, Australia]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Dooyeon Park, School of Media and Communication, RMIT University, Melbourne, Australia\. #super[\*]These authors contributed equally\.]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() Although previous literature has found significant effects of social media communication \(SMC\) on intention to vaccinate, the effect of the sources of SMC has not been explored\. To fill this gap, this study investigates a\) the effects of official sources and user\-generated SMC on intention to vaccinate against COVID\-19, and b\) the mediating effects of perceived vaccine efficacy, safety, and risk perception on the relationship between SMC and intention to vaccinate against COVID\-19\. Online survey data \(n \= 428\) was analysed using structural equation modelling \(SEM\)\. Results revealed that official sources SMC is positively associated with vaccine intention while user\-generated SMC had no significant association\. Mediation analysis revealed a partial mediation effect of perceived vaccine efficacy and safety in the relationship between official source SMC and intention to vaccinate against COVID\-19, while a full mediation effect of perceived vaccine efficacy and safety was found between user\-generated SMC and intention to vaccinate against COVID\-19\. The mediating effect of perceived risk was not found\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] COVID\-19 vaccination\; social media\; perceived vaccine efficacy\; perceived vaccine safety\; risk perception\; intention to vaccinate]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 16 January 2022\; accepted 12 March 2023\.]]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Since their inception, vaccinations have been one of the most powerful tools against communicable diseases\. For the SARS\-CoV\-2 \(COVID\-19\) virus, a group of rapidly developed COVID\-19 vaccines are considered to be the best solution to stop transmission of the virus\. Due to its high transmission rate, achieving population\-level immunity, also called herd immunity, against the virus has been the critical goal for most countries \(Randolph and Barreiro 2020\)\. For instance, to achieve herd immunity against the Delta variant of COVID\-19, scientists have suggested that at least 80% of the population needs to be vaccinated \(McNamara 2021\)\. However, due to i\) the emergence of mutant COVID\-19 variants \(She et al\. 2022\), ii\) short\-duration protective immunity after vaccination or infection \(Morens, Gregory, and Anthony 2022\), and iii\) challenges of COVID\-19 vaccine policy such as supply, equitable access, and promotion \(Forman et al\. 2021\), whether herd immunity can be achieved via vaccination has become questionable \(Aschwanden 2021\; Goldblatt 2022\; Morens, Folkers, and Fauci 2022\)\. For these reasons, scientists argue that not only COVID\-19 vaccines but other prevention methods, such as wearing masks or social distancing, should be applied together to control COVID\-19 effectively \(Kwon et al\. 2021\; Bartsch et al\. 2022\; Galanti et al\. 2021\)\. Even with the elusive accomplishment of herd immunity, COVID\-19 vaccines are still considered to be the best effective tools for prevention and control of COVID\-19 \(Kadkhoda 2021\; Morens, Folkers, and Fauci 2022\)\.]

A growing body of research has suggested that vaccine hesitancy is a major challenge in reaching population protection against COVID\-19\. Vaccine hesitancy, which is defined as a delay in acceptance or refusal of vaccination despite the availability of vaccination services \(Wiyeh et al\. 2019\), has appeared as a major threat to public health in recent years, and has contributed to the outbreaks of vaccine\-preventable diseases such as measles \(Lo and Hotez 2017\; Coombes 2017\)\. In the long\-standing vaccine hesitancy debate, social media \(hereafter SM\) has played a critical role, providing an effective avenue to communicate both benefits and concerns about the vaccine \(Wilson, Atkinson, and Deeks 2014\; Chadwick et al\. 2021\)\. Literature regarding the impact of SM on intention to vaccinate is inconsistent\. In some studies, SM has been found to be positively associated with intention to vaccinate \(Ahmed et al\. 2018\; Benis, Seidmann, and Ashkenazi 2021\)\. On the other hand, some studies have identified SM as a significant source of misleading information about vaccines, which eventually contributes to vaccine hesitancy \(e\.g\., Allington et al\. 2021, Chadwick et al\. 2021\)\.

Despite the numerous studies exploring the impact of SM on intention to vaccinate, there remains a gap in the literature\. Most of the research has regarded all SM communication \(hereafter SMC\) as homogeneous, without distinguishing the source of communication\. However, literature suggests that source of health information plays a critical role in shaping intention to vaccinate and beliefs such as vaccine efficacy and safety \(Chen and Stoecker 2020\; Hwang 2020\)\. Due to its participatory nature, SM has unique characteristics, including the fact that there are a variety of sources of communication \(Schivinski et al\. 2020\)\. While official sources SMC such as news channels or government accounts provides scientific evidence about the vaccine, user\-generated content that people receive from their friends and family is widely open to scientifically unchecked opinions \(Schivinski et al\. 2020\), which can include inaccurate information\.

The purpose of this study is twofold\. First, the current study aims to fill the gap in the existing literature by investigating the effects that the sources of SMC have on intention to vaccinate against COVID\-19, focusing on two types of SMC, i\.e\., #emph[official] sources SMC and #emph[user\-generated] SMC\. Second, the current study explains the process of how the two types of SMC shape individuals’ beliefs about vaccination, including #emph[vaccine efficacy], #emph[vaccine] #emph[safety], and #emph[risk perception] of COVID\-19, which, in turn, impact individuals’ COVID\-19 vaccine intention\. The findings of this study are expected to make theoretical contributions to the existing literature on the impact of SM on vaccine intention, while providing insights for public health professionals who want to utilise SM to encourage vaccine uptake\.

= Hypotheses development
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[SM sits at the centre of the ‘anti\-vaccine movement’ by speeding up the spread of misleading information about vaccine, which brings up the recent outbreaks of vaccine\-preventable diseases such as measles \(Benecke and Elizabeth DeYoung 2019\)\. Based on a systematic review of empirical research on individual differences in susceptibility to health misinformation \(Nan, Wang, and Thier 2022\), SM use was the most examined behavioural predictor of health misinformation susceptibility\. The result shows that SM use is positively associated with susceptibility to health misinformation, although about 30% of the studies found no relationships\. In the realm of COVID\-19, scholars have identified the rapid spread of misleading information such as misinformation \(unintentionally misleading information\) or disinformation \(intentionally misleading information\) about COVID\-19 \(Dib et al\. 2022\) through SM as a major impediment to controlling COVID\-19 \(Cinelli et al\. 2020\; Patel, Kute, and Agarwal 2020\)\. A growing body of research has investigated the relationship between SM and COVID\-19 vaccine hesitancy \(e\.g\., Puri et al\. 2020\; Wilson and Wiysonge 2020\), but results have been inconclusive\. One stream of research suggests that the use of SM may promote vaccine uptake\. For instance, Ahmed et al\. \(2018\) found that Twitter and Facebook users who use those platforms as a source of health information were more likely to receive the influenza vaccine than those who did not source health information on the platforms\. Benis, Seidmann, and Ashkenazi \(2021\) also found that most young people using SM have positive attitudes towards the COVID\-19 vaccination\. On the other hand, another stream of research indicates the negative influence of SM use on vaccine intention\. Nan and Madden \(2012\) found that people who viewed negative online blogs about the human papillomavirus \(HPV\) vaccine showed negative attitudes toward the vaccine and low vaccine intention\. Betsch et al\. \(2010\) also confirmed that exposure to anti\-vaccination websites for five to 10 min increased the perception of vaccine risk and decreased vaccine intention\.]

One reason for the inconsistency in the findings from previous research may be related to the use of SM as a source of health information\. An extensive amount of literature has confirmed that sources of health information have influences on an individual’s beliefs and intention about vaccines \(e\.g\., Gargano et al\. 2015\; Hwang 2020\)\. For instance, Hwang \(2020\) found that people who valued official sources such as medical professionals are positively associated with influenza vaccine intention, while people who valued SM showed lower vaccine intention\. This tendency has been confirmed in the context of COVID\-19\. For instance, Allington et al\. \(2021\) found that relying on SM for information negatively influenced COVID\-19 vaccine intention while SM use frequency did not\. A survey conducted by the Center for Countering Digital Hate \(2020\), which is based on 3890 U\.S\. citizens, also found that people who relied on SM for COVID\-19 information, compared to those who relied on traditional media, showed more hesitancy toward the COVID\-19 vaccine\.

As a source of health information, SM has unique characteristics that conflate the concept of information sources \(Tandoc 2019\)\. First, news organizations, journalists, and health professionals share health information on their SM accounts to connect with their audience\. Second, laypeople also contribute to the flow of information by distributing information on SM \(Tandoc 2019\)\. While a considerable amount of research has examined the role of SM on vaccine intention, most of the research has not focused on this unique characteristic of SM, leaving a gap in the literature\. To fill this gap, the current study considers both official and user\-generated SMC in the context of the COVID\-19 vaccine\.

Persuasive communication literature stressed the role of source credibility in persuasion \(Hovland and Weiss 1951\; Petty, Cacioppo, and Goldman 1981\; Kelman 1961\; Pornpitakpan 2004\), which consists of knowledge and trustworthiness of the message source \(Kelman 1961\)\. Compared to user\-generated SMC, official sources SMC \(e\.g\., news organizations, official government communication\) are more likely to disseminate information based on credible sources, such as opinions of health professionals\. Previous studies confirmed the high credibility of news websites as a source of health information \(Featherstone, Bell, and Ruiz 2019\; Hwang 2020\)\. Also, health professionals, who are generally considered reliable sources of health information \(Gargano et al\. 2015\), have been found to play a positive role in vaccine decisions \(Deml et al\. 2019\; Hwang 2020\)\. Based on this literature, the first hypothesis is proposed:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1:] Positive evaluations of official source SMC about COVID\-19 information positively influence intention to take the COVID\-19 vaccine\.]]
The participatory nature of SM allows ordinary people to co\-construct vaccine\-related information, which can be a concern for public health professionals\. Furthermore, the anonymity and interactivity of SM exacerbates the concern as individuals may share inaccurate or misleading information without scientific vetting \(Zoe et al\. 2017\; Puri et al\. 2020\)\. Considering the nature of SM, user\-generated SMC, compared to the content disseminated by news or government organizations, is more likely to contain misinformation or disinformation about the COVID\-19 vaccine, which may increase people’s hesitancy to get vaccinated\. Furthermore, scholars argue that SM encourages communication between like\-minded individuals, which may lead to an echo\-chamber effect that reproduces and expands mis\/disinformation \(Törnberg and Bauch 2018\; Van Raemdonck 2019\)\. Hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2:] Positive evaluations of user\-generated SMC about COVID\-19 information are negatively associated with the intention to take the COVID\-19 vaccine\.]]
== The mediating effects of perceived vaccine efficacy, perceived vaccine safety and risk perception
#par(first-line-indent: 0em)[An individual’s beliefs about vaccine and disease, such as vaccine efficacy, vaccine safety and risk perception of disease are closely associated with vaccine uptake \(Nan, Xie, and Madden 2012\; Davis, Golding, and McKay 2021\)\. For instance, a systematic literature review that examined 23 articles about influenza vaccination uptake shows that perceived vaccine efficacy and safety are strongly associated with influenza vaccine uptake \(Yeung, Lam, and Coker 2016\)\. Similarly, concerns about the safety and efficacy of COVID\-19 vaccines have been found to increase vaccine hesitancy \(Freeman et al\. 2020\; Nguyen et al\. 2021\)\.]

#emph[Perceived vaccine efficacy] is a belief about the effectiveness of vaccines in preventing corresponding infection or disease \(Nan, Xie, and Madden 2012\)\. Scholars have found that perceived vaccine efficacy plays a significant role in forming attitudes towards vaccines \(e\.g\., Teo et al\. 2019\; Freeman et al\. 2020\; Nguyen et al\. 2021\)\. For instance, both Teo et al\. \(2019\) and Mathew, Kothe, and Mullan \(2019\)’s studies found that vaccine efficacy was a strong motivator for influenza vaccine uptake among the older Singaporean population, and U\.S\. residents, respectively\.

Along with vaccine efficacy, #emph[safety of the vaccine] has been found to be a major concern for people who are reluctant to get vaccinated against communicable diseases \(Schmid et al\. 2017\; Karafillakis et al\. 2019\)\. In the context of COVID\-19, many studies have confirmed the negative effect of perceived vaccine safety on vaccine intention among the U\.S\. population \(Nguyen et al\. 2021\), Australia \(Rhodes et al\. 2021\), and the UK \(Freeman et al\. 2020\)\.

#emph[Risk perception] of disease is central to predicting vaccine behaviour as individuals’ high\-risk judgments lead to protective behaviours, i\.e\., vaccination \(Brewer et al\. 2007\; Bish et al\. 2011\)\. A systematic literature review shows that a high perceived risk of contracting the flu is associated with higher influenza vaccine intention while low or no perceived risk of catching the flu is associated with lower intention \(Bish et al\. 2011\)\. Similarly, studies have confirmed that perceiving COVID\-19 as high risk is associated with greater vaccine acceptance \(e\.g\., Salali and Sefa Uysal 2020\; Caserotti et al\. 2021\)\. Furthermore, a survey conducted in 12 different countries found that concern about the COVID\-19 virus is one of the most consistent predictors for vaccine intention across countries \(Kerr et al\. 2021\)\.

The prevalence of vaccine\-related information on SM shows the importance of SM in shaping beliefs about vaccines\. Indeed, a systematic literature review shows that lack of vaccine efficacy and safety concerns of vaccine are common in anti\-vaccine SM posts in the context of the HPV vaccine \(Ortiz, Smith, and Coyne\-Beasley 2019\)\. Furthermore, people who were exposed to negative blogs about the HPV vaccine showed lower perceived vaccine safety and vaccine intention compared to the control group \(Nan and Madden 2012\)\. Moreover, a positive evaluation of SM as a health information source, particularly social networking sites and blogs\/vlogs, is negatively associated with perceived vaccine efficacy and safety for the Influenza vaccine \(Hwang 2020\)\.

Interestingly, a positive evaluation of family and friends on SM as a health information source was negatively associated with perceived vaccine safety, but not with perceived vaccine efficacy \(Hwang 2020\)\. On the other hand, individuals’ risk perceptions about disease are also influenced by SM\. For instance, research by Huynh \(2020\) indicated that frequent SM use was associated with higher risk perception of COVID\-19\. Furthermore, exposure to COVID\-19 information on SM is associated with higher risk perception of COVID\-19 \(Rivas et al\. 2021\)\. Based on this literature, individuals’ beliefs about the COVID\-19 vaccine and risk perception are expected to mediate the relationship between the evaluation of SMC and vaccine intention\. This leads to the following hypotheses:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3:] Perceived vaccine efficacy mediates the relationship between the evaluation of official source SMC and intention to take COVID\-19 vaccine\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4:] Perceived vaccine #emph[safety] mediates the relationship between the evaluation of official source SMC and intention to take COVID\-19 vaccine\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H5:] Risk perception mediates the relationship between the evaluation of official source SMC and intention to take COVID\-19 vaccine\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H6:] Perceived vaccine efficacy mediates the relationship between the evaluation of user\-generated SMC and intention to take COVID\-19 vaccine\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H7:] Perceived vaccine safety mediates the relationship between the evaluation of user\-generated SMC and intention to take COVID\-19 vaccine\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H8:] Risk perception mediates the relationship between the evaluation of user\-generated SMC and intention to take COVID\-19 vaccine\.]]
= Methods
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Participants and procedure
#par(first-line-indent: 0em)[The data for this study were collected via an online survey at Qualtrics\.com\. Similar to previous studies on social media \(e\.g\., Schivinski, Langaro, and Shaw 2019\; Schivinski et al\., 2020\; Langaro et al\., 2022\), the current study used convenience and snowball sampling techniques\. The survey was administered in English and disseminated through Facebook such as location\-based Facebook groups or personal Facebook pages\. None of the Facebook groups were related to COVID\-19 or COVID\-19 Vaccines\. To avoid any bias, researchers did not share their own views about COVID\-19 or COVID\-19 vaccines, or personal vaccination status, on any of these sites\. Respondents were invited to participate in the study and upon completion of the survey, they were requested to further help with the dissemination of the survey link on their social media profiles\. The latter procedure makes it not possible to compute the response rate for the study\.]

Note that at the time of the data collection, late August 2021, Australia had started a national COVID\-19 vaccination campaign\. The national average of vaccines was under 60% for the first dose and around 35% for two doses\. Booster shots were not available to the population at the time of data collection\. The respondents’ eligibility for the study was established by their current country of residency \(i\.e\., Australia\; Yes\/No\) and age\. Only participants who declared to be living in Australia and older than 16 years old were qualified for the study because at the time of the survey in early September 2021, in Australia, people aged 16 and over were eligible for COVID\-19 vaccination\. A total of 554 surveys were collected\. Finally, the study was approved by the Ethics Committee at \(#emph[name] #emph[of Institution omitted for blind review purposes]\)\. To comply with ethical standards of research with individuals, the survey was designed to intentionally allow respondents to skip questions\. Therefore, missing data was expected\. This is addressed in the data management subsection\.

== Measures
#par(first-line-indent: 0em)[To assess the sample sociodemographic, vaccination profile, and SM use characteristics we used questions about gender, age, residency in Australia, education, employment, vaccination status and preferences \(i\.e\., producent\), and preferred SM platform\. Furthermore, in line with the literature on SM research \(Schivinski et al\. 2020\), the frequency of SM usage was inspected by following question: #emph[‘In the past week, on average,] #emph[approximately how much time have you spent using SM?’]\. The respondents were also asked to provide an estimate of the number of people during the past month with whom they talked on SM about vaccine\.]

Official source SMC was captured using a scale of 4 items measuring the levels of satisfaction, expectance, attitudes, and perceptions adapted from Schivinski and Dabrowski \(2016\)\. The items were rated on a 5\-point Likert scale ranging from strongly disagree \(1\) to strongly agree \(5\)\. In the present study, the official source SMC scale exhibited adequate levels of internal consistency with Cronbach’s alpha above the threshold of 0\.70 \(Claes and Larcker 1981\) \(α \= 0\.87\)\.

User\-generated SMC was captured by adapting Schivinski and Dabrowski \(2016\) 4\-items scale\. This scale captures the levels of satisfaction, expectance, attitudes, and perceptions towards user\-generated SMC regarding vaccines\. The items were rated on a 5\-point Likert scale ranging from strongly disagree \(1\) to strongly agree \(5\) \(α \= 0\.90\)\.

Perceived vaccine efficacy and safety was captured by the Oxford COVID\-19 vaccine confidence and complacency scale \(Freeman et al\. 2020\)\. Perceptions of vaccine efficacy were captured using an 8\-item scale covering aspects such as strengthening the individual and collective immunization, freedoms, and the overall efficacy of the vaccine for the individual and population \(α \= 0\.88\)\. Perceptions of vaccine safety were measured with a 6\-item scale encompassing aspects such as the speed of developing the COVID\-19 vaccine, the side effects of the vaccine, and the perceptions of COVID\-19 vaccine \(α \= 0\.84\)\. Both scales were rated on a 5\-point Likert scale ranging from strongly disagree \(1\) to strongly agree \(5\)\.

COVID\-19 risk perception was measured using a 6\-item scale adapted from the Middle East respiratory syndrome risk perception scale – MERS \(Yang and Cho 2017\)\. The scale covers aspects related to contraction of the virus from patients and non\-patients, and the effects of the virus on the health at the personal and community levels\. The adapted COVID\-19 risk perception scale was rated on a 5\-point Likert scale ranging from strongly disagree \(1\) to strongly agree \(5\) \(α \= 0\.82\)\.

Finally, the respondents’ intention to take the COVID\-19 vaccine was measured with a 3\-item scale adapted from Huynh and Senger \(2021\)\. Given that some people had already taken two doses of the vaccine, the survey asked respondents to reflect their intentions for future COVID\-19 vaccination, including boosters, regardless of their current vaccination status\. A list of items and their descriptive statistics is presented in the Appendix A\. Like the previous scales, the COVID\-19 vaccine intention was rated using a range from strongly disagree \(1\) to strongly agree \(5\) \(α \= 0\.85\)\.

== Data management
#par(first-line-indent: 0em)[The management of the data had three steps, i\.e\., \(i\) inspection for missing values\; \(ii\) assessment for univariate normality\; and \(iii\) screening for univariate and multivariate outliers\.]

In terms of missing values and accuracy, the data were inspected through the Little’s missing completely at random \(MCAR\) test with the package BaylorEdPsych \(R Package for Baylor University Education Psychology Quantitative Course Version 0\.5, Baylor University, Waco, TX, USA\) in R system for statistical computing Version 4\.1\.1 \(Kick Things\; https:\/\/www\.r\-project\.org\)\. Little’s MCAR test was statistically nonsignificant \(#emph[p]\-value \= 0\.16\), therefore, demonstrating that data are missing at random\. Furthermore, a total of 126 \(22\.7%\) cases were excluded from the analyses due to missing ≥6 items of the survey\. Univariate normality was assessed by the skewness and kurtosis for each item of the survey\. The calculations demonstrated that no item had absolute values of kurtosis \>8 or skewness \>3 \(Kline 2015\)\. Skewness and kurtosis are reported in the Appendix A\. The test for univariate outliers included the computation of standardized composite sum scores for all the latent variables in the survey\. Following the guidelines from the literature, the respondents were considered univariate outliers if scored ±3\.29 standard deviations from a latent variable z\-score \(Field 2013\)\. No data was eliminated due to univariate outliers\. To evaluate the data for multivariate outliers, we computed the Mahalanobis’ distances and the critical value for each case, which did not result in the exclusion of respondents\. The abovementioned procedures yielded a final sample of 428 \(77\.3%\) respondents\.

== Statistical analyses
#par(first-line-indent: 0em)[The statistical analyses encompassed the following tests, i\.e\., \(i\) descriptive statistics of the data\; \(ii\) confirmatory factor analysis across the main variables\; \(iii\) mediation analysis using structural equation modeling \(SEM\)\. All the analyses were executed using R system for statistical computing\. The descriptive analyses used the package psych \(Procedures for Psychological, Psychometric, and Personality Research, Version 2\.1\.6\)\. The package #emph[lavaan] \(Latent Variable Analysis, Version 0\.6–9\) was used to fit the structural equation models\.]

= Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Descriptive statistics
#par(first-line-indent: 0em)[The proportion of females consisted of 53\.2% of the sample \(#emph[n] \= 228\)\. The mean age of the respondents was 46\.22 \(DS \= 16\.44\) within a range from 16 to 79 years old\. All the samples declared they lived in Australia\. Most of the respondents declared that they lived in Victoria 51\.6% \(#emph[n] \= 221\), followed by New South Wales 20\.3% \(#emph[n] \= 87\)\. Regarding their education, 32\.7% \(#emph[n] \= 140\) of the respondents had received a high school degree, 51\.3% \(#emph[n] \= 221\) declared to have completed at least some college education, whereas the remainder of the sample had obtained a diploma\/certificate degree 23\.5% \(#emph[n] \= 101\)\. Most of the participants declared to be employed 88\.5% \(#emph[n] \= 379\)\.]

Regarding their vaccination status, 27\.3% \(#emph[n] \= 117\) of the respondents declared to have received a first dose of COVID\-19 vaccine, 46\.9% \(#emph[n] \= 201\) had received two doses, and 17\.9% \(#emph[n] \= 77\) had not received any dose by the day of the survey\. The vaccination rate was closely aligned with the national vaccination rates in Australia when the study was conducted\. The most popular vaccines received were Pfizer 45\.3% and AstraZeneca 42\.2%\. Most of the respondents 38\.7% \(#emph[n] \= 166\) declared to spend more than 3 hours a week on social platforms\. Facebook was the most used SM channel \(#emph[n] \= 300\; 70%\), followed by Instagram \(#emph[n] \= 79\; 18\.4%\)\. Finally, the average estimated number of people, to which respondents declared to have talked to on SM about vaccine during the past month prior to taking the survey, was #emph[M] \= 16\.74 \(SD \= 30\.78\)\.

== Confirmatory factor analysis
#par(first-line-indent: 0em)[The confirmatory factor analysis \(CFA\) with the maximum likelihood algorithm \(ML\) was used to test for convergent and discriminant validity of the investigated variables\. Regarding the unidimensionality of the CFA model, the items were stipulated to load into their factors\. The error terms were independent\; the factor loadings \(completely standardized lambda X\) were statistically significant and greater than 0\.60 except for perceived vaccine safety λ#sub[item6]\= 0\.12 ‘Taking a COVID\-19 vaccine will make me feel like a guinea pig’ and perception of COVID\-19 risk λ#sub[item5]\= 0\.05 ‘Even if I fall ill with other ailments, I will avoid going to hospital because of COVID\-19’\. Both items were removed from the analyses\. There was no evidence of cross\-loadings after computing the model without the abovementioned items\. The tests evidence convergent validity \(Kline 2015\)\.]

Regarding the discriminant validity of the CFA model, the average variance extracted \(AVE\) for each construct was computed\. The AVE scores were equal or above the suggested threshold of 0\.50 \(Bagozzi and Yi 1988\)\. Furthermore, the square roots of the AVEs were higher than the correlations across the constructs, hence evidencing discriminant validity \(Kline 2015\)\.

The goodness\-of\-fit \(GOF\) of the CFA model was evaluated using the comparative fit index \(CFI\), the Tucker–Lewis index \(TLI\), and the root mean square error of approximation \(RMSEA\; reported with 90% confidence interval\) fit indices\. Thresholds for a good model fit are values above 0\.90 for CFI and TLI and below 0\.08 for RMSEA \(Kline 2015\)\. The chi\-square test statistic and degrees of freedom are also reported, although they are not directly indicative of GOF\. The GOF values for the CFA model demonstrate a good fit to the data \(MLχ#super[2] #sub[\(362\)]\= 800\.50, CFI \= 0\.95, TLI \= 0\.94, and RMSEA \= 0\.05 \(90% CI \[0\.04–0\.05\]\)\.

To further establish the reliability of the scales and constructs, we computed the composite reliability \(CR\) coefficient \(Kline 2015\)\. The recommended threshold for CR is 0\.70 and in the current study the values ranged from 0\.83 to 0\.92, therefore further supporting the internal consistency of the scales\. Table 1 summarizes the CFA analysis\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Construct reliability and validity outputs\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Construct]], [#strong[α]], [#strong[CR]], [#strong[AVE]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]]),
table.hline(stroke: 0.5pt),
[1\. Official source SMC], [0\.87], [0\.88], [0\.66], [#emph[0\.81]], [], [], [], [], [],
[2\. User\-generated SMC], [0\.90], [0\.90], [0\.69], [0\.40], [#emph[0\.83]], [], [], [], [],
[3\. Vaccine efficacy], [0\.88], [0\.83], [0\.50], [0\.33], [0\.17], [#emph[0\.71]], [], [], [],
[4\. Vaccine safety], [0\.84], [0\.92], [0\.61], [0\.29], [0\.21], [0\.72], [#emph[0\.78]], [], [],
[5\. COVID\-19 risk perception], [0\.82], [0\.86], [0\.56], [0\.23], [0\.06], [0\.74], [0\.59], [#emph[0\.75]], [],
[6\. Intention to take COVID\-19 vaccine], [0\.85], [0\.89], [0\.73], [0\.28], [0\.14], [0\.84], [0\.60], [0\.67], [#emph[0\.85]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Note: SMC \= Social media communication, Vaccine \= COVID\-19 vaccine\; α \= Cronbach’s alpha, CR \= composite reliability, AVE \= average variance extracted\; The square root of the AVE values is reported in italic\; GOF: ML#emph[χ]#super[2]#sub[\(362\)] \= 800\.50, CFI \= 0\.95, TLI \= 0\.94, RMSEA \= 0\.05 \(90% CI \= 0\.04–0\.05\)\; #emph[n] \= 428\.]
]
#v(12pt)
== Structural analysis
#par(first-line-indent: 0em)[Structural equation modeling with mediation analysis was used to test the direct and indirect relationships\. Gender, age, and social media usage were defined as control variables and were regressed on intention to take the COVID\-19 vaccine\. Intention to take the COVID\-19 vaccine was specified as the dependent variable and it was regressed on sources of SMC \(official sources and user\-generated\; independent variables\)\. The mediators were vaccine efficacy, vaccine safety, and COVID\-19 risk perception\. The model was calculated as a single structural model, which included all dependent, independent, and mediators\. The estimations of effects, both direct and indirect, were computed using 5000 bootstrap draws\.]

The structural model yielded the following GOF indices: MLχ#super[2] #sub[\(364\)]\= 1286\.66, CFI \= 0\.91, TLI \= 0\.90, and RMSEA \= 0\.06 \(90% \[CI 0\.06–0\.07\]\)\. To improve the readability of this paper only the effects related to the hypotheses and control variables are described\. The main coefficients and additional statistics \(e\.g\., #emph[a\-] and #emph[b\-]paths, total effects\) are presented in Table 2\.

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 2.] Structural results\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Hypothesis]], [#strong[Beta]], [#strong[#emph[t]\-value \/ 95% CI]], [#strong[#emph[p]\-value]]),
table.hline(stroke: 0.5pt),
[#emph[Direct effects]], [], [], [],
[H1\. Official source SMC → intention to take COVID\-19 vaccine], [0\.05], [1\.63], [0\.10],
[H2\. User\-generated SMC → intention to take COVID\-19 vaccine], [−0\.01], [−0\.16], [0\.87],
[a\-path 1\. Official source SMC → vaccine efficacy], [0\.29], [5\.97], [0\.001],
[a\-path 2\. Official source SMC → vaccine safety], [0\.28], [5\.89], [0\.001],
[a\-path 3\. Official source SMC → COVID\-19 risk perception], [0\.20], [4\.15], [0\.001],
[a\-path 4\. User\-generated SMC → vaccine efficacy], [0\.14], [2\.60], [0\.01],
[a\-path 5\. User\-generated SMC → vaccine safety], [0\.15], [2\.94], [0\.003],
[a\-path 6\. User\-generated SMC → COVID\-19 risk perception], [0\.04], [0\.08], [0\.94],
[b\-path 1\. Vaccine efficacy → intention to take COVID\-19 vaccine], [0\.57], [10\.29], [0\.001],
[b\-path 2\. Vaccine safety → intention to take COVID\-19 vaccine], [0\.15], [3\.08], [0\.001],
[b\-path 3\. COVID\-19 risk perception → COVID\-19 vaccine intention], [0\.06], [1\.46], [0\.14],
[#emph[Indirect effects \(indirect β, 95% CI\)]], [], [], [],
[H3\. Official source SMC → vaccine efficacy → intention], [0\.16], [0\.09–0\.24], [0\.001],
[H4\. Official source SMC → vaccine safety → intention], [0\.04], [0\.01–0\.08], [0\.005],
[H5\. Official source SMC → COVID\-19 risk perception → intention], [0\.01], [−0\.01–0\.03], [0\.17],
[H6\. User\-generated SMC → vaccine efficacy → intention], [0\.08], [0\.01–0\.14], [0\.01],
[H7\. User\-generated SMC → vaccine safety → intention], [0\.02], [0\.01–0\.04], [0\.03],
[H8\. User\-generated SMC → COVID\-19 risk perception → intention], [0\.01], [−0\.01–0\.01], [0\.93],
[#emph[Total effects]], [], [], [],
[Official source SMC → intention to take COVID\-19 vaccine], [0\.28], [5\.77], [0\.001],
[User\-generated SMC → intention to take COVID\-19 vaccine], [0\.09], [1\.88], [0\.06],
[#emph[Control variables]], [], [], [],
[Age → intention to take COVID\-19 vaccine], [−0\.03], [−1\.06], [0\.28],
[Gender → intention to take COVID\-19 vaccine], [0\.01], [0\.27], [0\.78],
[Social media usage → intention to take COVID\-19 vaccine], [−0\.02], [−0\.29], [0\.80],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Notes: SMC \= Social media communication, Vaccine \= COVID\-19 vaccine\; GOF: ML#emph[χ]#super[2]#sub[\(364\)] \= 1286\.66, CFI \= 0\.91, TLI \= 0\.90, and RMSEA \= 0\.06 \(90% \[CI 0\.06–0\.07\]\)\; Ind\.Beta \= indirect Beta, 95% CI \= 95% confidence interval\; Bootstrap sampling \= 5000\; apath \= direct structural path from independent variable to mediator, bpath \= direct structural path from mediator to dependent variable\; #emph[n] \= 428\.]
]
#v(12pt)
While social media usage was found to be statistically non\-significant \(#emph[p]\-value \= 0\.80\), the findings also indicated that gender \(#emph[p]\-value \= 0\.78\) and the age of the participants \(#emph[p]\-value \= 0\.28\) were statistically non\-significant regarding their intention to vaccinate, therefore not discriminating intentions of younger and older participants\.

Regarding H1, there was a positive direct effect of official sources SMC on COVID\-19 vaccine intention \(#emph[β] \= 0\.05, #emph[p]\-value \= 0\.10\)\. On the other hand, the influence of user\-generated SMC on COVID\-19 vaccine intention \(H2\) was not statistically significant \(#emph[p]\-value \= 0\.87\)\.

The next set of hypotheses anticipated indirect \(mediational\) effects of both sources SMC on COVID\-19 vaccine intention through vaccine efficacy, vaccine safety, and risk perception\. H3, which anticipated vaccine efficacy to mediate the relationship between official sources SMC and COVID\-19 vaccine intention, was supported \(ind\.#emph[β] \= 0\.16, #emph[p]\-value \< 0\.001\)\. Following, H4 predicted vaccine safety to mediate the relationship between official sources SMC and COVID\-19 vaccine intention\. The results supported H4 \(ind\.#emph[β] \= 0\.04, #emph[p]\-value \= 0\.005\)\. The mediating effect of risk perceptions on the relationship between official sources SMC and vaccine intention \(H5\) was found to be non\-significant \(#emph[p]\-value \= 0\.17\), rejecting H5\. In summary, the effects of official SMC on COVID\-19 vaccine intention are #emph[partially mediated] by vaccine efficacy and safety\.

For H6, the mediating effect of vaccine efficacy on the relationship between user\-generated SMC and vaccine intention was significant \(ind\.#emph[β] \= 0\.08, #emph[p]\-value \= 0\.01\)\. For H7, it was expected that vaccine safety would mediate the relationship between user\-generated SMC and COVID\-19 vaccine intention\. The computations supported H7 \(ind\. #emph[β] \= 0\.02, #emph[p]\-value \= 0\.03\)\. Finally, the calculations did not support H8\; hence, the indirect effect of risk perceptions on the relationship between user\-generated SMC and COVID\-19 vaccine intention was not statistically significant \(#emph[p]\-value \= 0\.93\)\. Altogether, the effects of user\-generated media communication on COVID\-19 vaccine intention are #emph[fully mediated] by vaccine efficacy and safety\.

The structural model accounted for 73% of the variance \(#emph[R]#super[2]\) in COVID\-19 vaccine intention, 14% of the variance for the perceptions of vaccine efficacy, 12% for vaccine safety, and 8% of the variance of COVID\-19 risk perception\.

= Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The present study contributes to the literature on the effect of SM on vaccine attitudes by focusing on the sources of SMC\. Whereas previous literature has considered all SMC \(e\.g\., Ahmed et al\. 2018\; Benis, Seidmann, and Ashkenazi 2021\; Chadwick et al\. 2021\), including unofficial sources of health information that may circulate misleading information about COVID\-19 vaccines, the current study focuses on the fact that official sources such as news organizations or government also use SM to disseminate verified vaccine information\. By examining the effect of both sources SMC on vaccine intention, our findings revealed that official source SMC is positively associated with vaccine intention, while user\-generated SMC has no significant association with vaccine intention\. This result is inconsistent with previous research that has found a negative association between the use of SM as a health information source and vaccine intention \(Hwang 2020\; Allington et al\. 2021\)\. By showing the positive association between official source SMC and vaccine intention, the current findings reveal that the sources of SMC, not just the use of SM for health information, matter in predicting vaccine intention\. In addition, this finding suggests that the lack of consideration of different sources of SM could be the reason for the inconsistent literature\. Indeed, previous literature has focused either on the general use of SM \(e\.g\., Nan and Madden 2012\; Ahmed et al\. 2018\; Wilson and Wiysonge 2020\) or on the use of SMC as a source of health information \(Allington et al\. 2021\; Hwang 2020\), without considering the sources of SMC\.]

The results of the study provide empirical evidence supporting the mediating role of perceived vaccine efficacy and safety in the relationship between SMC and vaccine intention\. Specifically, a partial mediation effect of perceived vaccine efficacy and safety was found in the relationship between official source SMC and COVID\-19 vaccine intention, while a full mediation effect of perceived vaccine efficacy and safety was found for the relationship between user\-generated SMC and COVID\-19 vaccine intention\. This finding implies that it is important to consider individuals’ perceptions of the vaccine, particularly vaccine efficacy and safety, along with SMC to encourage vaccine uptake\. The importance of providing verified information to reduce misleading information about vaccine efficacy and safety has been noted by an ample body of literature \(e\.g\., Biasio et al\. 2021\; French et al\. 2020\)\. Indeed, a simple intervention providing information about the efficacy and safety of the COVID\-19 vaccine was found to increase COVID\-19 vaccine intention \(Davis, Golding, and McKay 2021\)\. However, due to its interactive nature and the lack of editorial curation or scientific vetting \(Puri et al\. 2020\), SM has long been considered a source of misleading information that may increase mistrust of vaccines\. However, our findings suggest that SM, regardless of its source, can be an effective venue to increase perceived vaccine efficacy and safety, which will increase intention to vaccinate against COVID\-19\. On the other hand, the hypothesized mediating effect of the perceived risk of COVID\-19 in the relationship between both official and user\-generated SMC on intention to vaccinate was not found\. While official source SMC predicted higher risk perception, this did not result in intention to vaccinate\. Thus, the results of the mediation analysis revealed that increasing perceived vaccine efficacy and vaccine safety, rather than the perceived risk of COVID\-19, would be more effective in increasing COVID\-19 vaccine uptake\.

Our findings show an insignificant effect of user\-generated SMC on COVID\-19 vaccine intention\. Although user\-generated SMC failed to influence COVID\-19 vaccine intention directly, the full mediating effect of perceived vaccine efficacy and safety shows that user\-generated SMC shapes individuals’ perceptions about vaccine efficacy and safety, through which SM users can increase their COVID\-19 vaccine intention\. Interestingly, the positive indirect effects of user\-generated SMC on intention to vaccinate via perceived vaccine safety and vaccine efficacy contradict Hwang \(2020\)’s study that found a negative indirect effect of SMC from friends and family regarding vaccine efficacy on influenza vaccine intention\. The inconsistency may be attributed to the fact that the two studies adopted different contexts, e\.g\., seasonal influenza and COVID\-19, respectively\. Also, Hwang \(2020\)’s study measured SM use as a general health information source, not a source of vaccine information specifically\. Thus, the inconsistent finding implies that i\) the mechanism underlying the COVID\-19 vaccine behaviour might be different from the mechanism of influenza vaccine behaviour, and ii\) using SM as a source of general health information or a source of COVID\-19 vaccine information may have different impacts on intention to vaccinate\.

== Practical implications
#par(first-line-indent: 0em)[The current study has important implications for health agencies and practitioners interested in finding effective ways to encourage vaccine uptake by using SM to deliver verified information about vaccines\. The positive association between official source SMC and intention to vaccinate implies that any organization involved in public health needs to use SM actively \(Dmitri et al\. 2021\), acting as a credible source for vaccine information\. Due to the abundance of misleading information and anti\-vaccine content, SM has long been considered an unreliable platform to discuss vaccine information\. Contrary to this perception, our findings indicate that high credibility of official sources can be transferred to SM and make SM an effective avenue to connect with individuals who seek vaccine\-related information\.]

It is recommended for public health communicators to not only use SM but focus on making user\-generated content and share accurate information about vaccine efficacy and safety\. The full mediation effect of perceived vaccine efficacy and safety on the relationship between user\-generated SMC and intention to vaccinate implies that even user\-generated content helps shape positive attitudes towards vaccines if the content can increase vaccine efficacy and safety perceptions among SM users\. Considering the positive effect of official source SMC, encouraging SM users to share content from official sources with their friends and family would be effective in shaping positive perceptions about vaccine efficacy and safety\.

= Limitations and suggestions for future research
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Although this study contributes to the literature on intention to vaccinate, the current findings are qualified by several limitations\. First, the present study investigated only two types of SMC, i\.e\., official source and user\-generated SMC\. Future studies that consider subcategories of the two types of SMC would contribute additional implications to the literature\. For instance, vaccine\-related information from news organizations’ SM accounts and vaccine\-related information from government SM accounts may have a different level of credibility, which could influence intention to vaccinate\. Furthermore, given the fact that SM users often modify, or share content from official sources, user\-generated content that is completely created by users without any references to credible sources might have a different effect \(Schivinski and Dabrowski 2016\), compared to user\-generated content that contains information from credible sources\.]

Second, all data in the present study are cross\-sectional, which means it is impossible to make causal inferences between SMC and intention to vaccinate\. Furthermore, the data of the present study were collected in August 2021\. Since then, people’s perceptions of COVID\-19 vaccines might have changed\. For instance, experts argue that #emph[vaccine fatigue], which is defined as ‘people’s inertia or inaction towards vaccine information or instruction due to perceived burden and burnout’ \(Zhaohui et al\. 2022\), may have an impact on booster uptake \(Zhaohui et al\. 2022\; Brunson 2022\)\. For these reasons, future research that adopts a longitudinal design is recommended\. Research has also indicated that the consumers’ perceptions of SMC are complex \(Schivinski et al\. 2022\)\. Researchers could extend the presented findings by exploring different mediators, moderators, and moderated mediation models\. Such research would enrich the literature by demonstrating which circumstances, mediated relationships are stronger\/weaker, a paramount factor when developing health communication interventions\.

Third, the current study did not focus on exploring differences across groups\. Future research could address this limitation by investigating the perceptions and behaviours of vaccinated and non\-vaccinated individuals\. Lastly, this study used an Australian sample, which was non\-representative of the country’s population\. Future studies with representative samples from different countries are required to provide generalizability to the current findings\. Indeed, reasons for refusing vaccines are quite complex, requiring contextual understanding such as geographical and cultural factors \(Sarah, O’callaghan, and Offit 2020\)\. For instance, the availability and prominence of official sources SMC may vary by country\. Future research should consider the impact of different levels of official SMC availability on the relationship between official SMC and intention to vaccinate\.

= Acknowledgment
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[This research was conducted as part of the course COMM2669 Critical Enquiry in Media and Communication in the MC249 Master of Advertising program at RMIT University in Australia\. We would like to acknowledge the support provided by RMIT University that enabled us to conduct this research\. Finally, we extend our thanks to the anonymous reviewers for their constructive feedback and suggestions that helped us improve the quality of this paper\.]

= Disclosure statement
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[No potential conflict of interest was reported by the authors\.]

= Notes on contributors
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[#text(size: 10pt)[Dr\. Dooyeon Park is a lecturer in Advertising ar RMIT University, Australia\. Her research focuses on how new digital environments shape individuals’ attitudes and behaviours\. Dr\. Park’s work has been published in journals including Journal of Current Issues & Research in Advertising, and Computers in Human Behaviour\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Dr\. Bruno Schivinski is a statistician, behavioral researcher, and Senior Lecturer in Advertising at RMIT University, Australia\. He consults for online service providers, websites, and scientific institutions such as the Polish Ministry of Science and Higher Education \(MNiSW\) and the National Science Centre \(NCN\)\. Schivinski specializes in problematic consumer behavior, social\-media engagement, online branding, and user\-generated content\. His research has received international coverage on Forbes Magazine and Google News\. His latest work can be found in such academic journals as the Journal of Business Research, Journal of Advertising Research, Industrial Marketing Management, Journal of Strategic Marketing, Journal of Marketing Communications, and Journal of Clinical Medicine\. His personal website: https:\/\/brunoschivinski\.wordpress\.com\/]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Hilary Duns\-McKay is a communication consultant from Melbourne, Australia\; her recent research focusses on issues of inclusion and representation relating to communication and disability\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Bartholomew Heeren is a marketing and communications professional from Melbourne, Australia\. Most recently, he has been researching the grammatical nuances of instant messaging in young adults\. His most recent work, \'The Digital Accent\', can be found here: https:\/\/tinyurl\.com\/2d426nz5]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Elizabeth McLachlan is a communication professional based in Melbourne, Australia\; her recent research explored COVID\-19 vaccine brand perceptions and their influence on vaccine behaviour\.]]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Ahmed, Naheed, S C\. Quinn, G R\. Hancock, V S\. Freimuth, and Amelia Jamison\. 2018\. “Social Media Use and Influenza Vaccine Uptake Among White and African American Adults\.” #emph[Vaccine] 36 \(49\): 7556–7561\. https:\/\/doi\.org\/10\.1016\/j\.vaccine\.2018\.10\.049

Allington, Daniel, Siobhan McAndrew, V L\. Louisa Moxham\-Hall, and Bobby Duffy\. 2021\. “Media Usage Predicts Intention to Be Vaccinated Against SARS\-CoV\-2 in the US and the UK\.” #emph[Vaccine] 39 \(18\): 2595–2603\. https:\/\/doi\.org\/10\.1016\/j\.vaccine\.2021\.02\.054

Aschwanden, Christie\. 2021\. “Five Reasons Why COVID Herd Immunity is Probably Impossible\.” #emph[Nature] 591 \(7851\): 520–522\. https:\/\/doi\.org\/10\.1038\/d41586\-021\-00728\-2

Bagozzi, R P\., and Yi\. Yi\. 1988\. “On the Evaluation of Structural Equation Models\.” #emph[Journal of the Academy of Marketing Science] 16 \(1\): 74–94\. https:\/\/doi\.org\/10\.1007\/BF02723327

Bartsch, S M\., K J\. O’shea, K L\. Chin, Ulrich Strych, M C\. Ferguson, M E\. Elena Bottazzi, P T\. Wedlock, et al\. 2022\. “Maintaining Face Mask Use Before and After Achieving Different COVID\-19 Vaccination Coverage Levels: A Modelling Study\.” #emph[The Lancet Public Health] 7 \(4\): e356–365\. https:\/\/doi\.org\/10\.1016\/S2468\-2667\(22\)00040\-8

Benecke, Olivia, and S E\. Elizabeth DeYoung\. 2019\. “Anti\-Vaccine Decision\-Making and Measles Resurgence in the United States\.” #emph[Global Pediatric Health] 6: 2333794X19862949\. https:\/\/doi\.org\/10\.1177\/2333794X19862949

Benis, Arriel, Abraham Seidmann, and Shai Ashkenazi\. 2021\. “Reasons for Taking the COVID\-19 Vaccine by US Social Media Users\.” #emph[Vaccines] 9 \(4\): 315\. https:\/\/doi\.org\/10\.3390\/vaccines9040315

Betsch, Cornelia, Frank Renkewitz, Tilmann Betsch, and Corina Ulshöfer\. 2010\. “The Influence of Vaccine\-Critical Websites on Perceiving Vaccination Risks\.” #emph[Journal of Health Psychology] 15 \(3\): 446–455\. https:\/\/doi\.org\/10\.1177\/1359105309353647

Biasio, L R\., Guglielmo Bonaccorsi, Chiara Lorini, and Sergio Pecorelli\. 2021\. “Assessing COVID\-19 Vaccine Literacy: A Preliminary Online Survey\.” #emph[Human Vaccines & Immunotherapeutics] 17 \(5\): 1304–1312\. https:\/\/doi\.org\/10\.1080\/21645515\.2020\.1829315

Bish, Alison, Lucy Yardley, Angus Nicoll, and Susan Michie\. 2011\. “Factors Associated with Uptake of Vaccination Against Pandemic Influenza: A Systematic Review\.” #emph[Vaccine] 29 \(38\): 6472–6484\. https:\/\/doi\.org\/10\.1016\/j\.vaccine\.2011\.06\.107

Brewer, N T\., G B\. Chapman, F X\. Gibbons, Meg Gerrard, K D\. McCaul, and N D\. Weinstein\. 2007\. “Meta\-Analysis of the Relationship Between Risk Perception and Health Behavior: The Example of Vaccination\.” #emph[Health Psychology] 26 \(2\): 136\. https:\/\/doi\.org\/10\.1037\/0278\-6133\.26\.2\.136

Brunson, Emily\. 2022\. “We Really Need to Cure Booster Fatigue to Move on from Covid\.” The Wall Street Journal, December 8\.

Caserotti, Marta, Paolo Girardi, Enrico Rubaltelli, Alessandra Tasso, Lorella Lotto, and Teresa Gavaruzzi\. 2021\. “Associations of COVID\-19 Risk Perception with Vaccine Hesitancy Over Time for Italian Residents\.” #emph[Social Science & Medicine] 272: 113688\. https:\/\/doi\.org\/10\.1016\/j\.socscimed\.2021 113688\.

Center for Countering Digital Hate\. 2020\. “The Disinformation Dozen” https:\/\/www\.counterhate\.com\/disinformationdozen

Chadwick, Andrew, Johannes Kaiser, Cristian Vaccari, Daniel Freeman, Sinéad Lambe, B S\. Loe, Samantha Vanderslott, et al\. 2021\. “Online Social Endorsement and COVID\-19 Vaccine Hesitancy in the United Kingdom\.” #emph[Social Media \+ Society] 7 \(2\): 20563051211008817\. https:\/\/doi\.org\/10\.1177\/20563051211008817

Chen, Weiwei, and Charles Stoecker\. 2020\. “Mass Media Coverage and Influenza Vaccine Uptake\.” #emph[Vaccine] 38 \(2\): 271–277\. https:\/\/doi\.org\/10\.1016\/j\.vaccine\.2019\.10\.019

Cinelli, Matteo, Walter Quattrociocchi, Alessandro Galeazzi, C M\. Michele Valensise, Emanuele Brugnoli, A L\. Lucia Schmidt, Paola Zola, Fabiana Zollo, and Antonio Scala\. 2020\. “The COVID\-19 Social Media Infodemic\.” #emph[Scientific Reports] 10 \(1\): 1–10\. https:\/\/doi\.org\/10\.1038\/s41598\-020\-73510\-5

Claes, Fornell, and David F\. Larcker\. 1981\. “Evaluating Structural Equation Models with Unobservable Variables and Measurement Error\.” #emph[Journal of Marketing Research] 18 \(1\): 39–50\. https:\/\/doi\.org\/10\.1177\/002224378101800104

Coombes, Rebecca\. 2017\. “Europe Steps Up Action Against Vaccine Hesitancy as Measles Outbreaks Continue\.” #emph[The BMJ] 359: j4803\. https:\/\/doi\.org\/10\.1136\/bmj\.j4803

Davis, C J\., Matt Golding, and Ryan McKay\. 2021\. “Efficacy Information Influences Intention to Take COVID\-19 Vaccine\.” #emph[British Journal of Health Psychology] 27 \(2\): 300–319\. https:\/\/doi\.org\/10\.1111\/bjhp\.12546

Deml, M J\., Kristen Jafflin, Sonja Merten, Benedikt Huber, Andrea Buhl, Eleonora Frau, Valérie Mettraux, et al\. 2019\. “Determinants of Vaccine Hesitancy in Switzerland: Study Protocol of a Mixed\-Methods National Research Programme\.” #emph[BMJ Open] 9 \(11\): e032218\. https:\/\/doi\.org\/10\.1136\/bmjopen\-2019\-032218

Dib, Fadia, Philippe Mayaud, Pierre Chauvin, and Odile Launay\. 2022\. “Online Mis\/Disinformation and Vaccine Hesitancy in the Era of COVID\-19: Why We Need an eHealth Literacy Revolution\.” #emph[Human Vaccines & Immunotherapeutics] 18 \(1\): 1–3\. https:\/\/doi\.org\/10\.1080\/21645515\.2021\.1874218

Dmitri, Rozgonjuk, Bruno Schivinski, Halley M\. Pontes, and Christian Montag\. 2021\. “Problematic Online Behaviors Among Gamers: The Links Between Problematic Gaming, Gambling, Shopping, Pornography Use, and Social Networking\.” #emph[International Journal of Mental Health and Addiction] 1–18\. https:\/\/doi\.org\/10\.1007\/s11469\-022\-00830\-0

Featherstone, J D\., R A\. Bell, and J B\. Ruiz\. 2019\. “Relationship of People’s Sources of Health Information and Political Ideology with Acceptance of Conspiratorial Beliefs About Vaccines\.” #emph[Vaccine] 37 \(23\): 2993–2997\. https:\/\/doi\.org\/10\.1016\/j\.vaccine\.2019\.04\.063

Field, Andy\. 2013\. #emph[Discovering Statistics Using IBM SPSS Statistics]\. Los Angeles: Sage\.

Forman, Rebecca, Soleil Shah, Patrick Jeurissen, Mark Jit, and Elias Mossialos\. 2021\. “COVID\-19 Vaccine Challenges: What Have We Learned so Far and What Remains to Be Done?” #emph[Health Policy] 125 \(5\): 553–567\. https:\/\/doi\.org\/10\.1016\/j\.healthpol\.2021\.03\.013

Freeman, Daniel, B S\. Loe, Andrew Chadwick, Cristian Vaccari, Felicity Waite, Laina Rosebrock, Lucy Jenner, et al\. 2020\. “COVID\-19 Vaccine Hesitancy in the UK: The Oxford Coronavirus Explanations, Attitudes, and Narratives Survey \(Oceans\) II\.” #emph[Psychological Medicine] 52 \(14\): 1–15\. https:\/\/doi\.org\/10\.1017\/S0033291720005188

French, Jeff, Sameer Deshpande, William Evans, and Rafael Obregon\. 2020\. “Key Guidelines in Developing a Pre\-Emptive COVID\-19 Vaccination Uptake Promotion Strategy\.” #emph[International Journal of Environmental Research and Public Health] 17 \(16\): 5893\. https:\/\/doi\.org\/10\.3390\/ijerph17165893

Galanti, Marta, Sen Pei, T K\. Yamana, F J\. Angulo, Apostolos Charos, D L\. Swerdlow, Jeffrey Shaman, and J\. Sills\. 2021\. “Social Distancing Remains Key During Vaccinations\.” #emph[Science] 371 \(6528\): 473–474\. https:\/\/doi\.org\/10\.1126\/science\.abg2326

Gargano, L M\., N L\. Underwood, J M\. Sales, Katherine Seib, Christopher Morfaw, Dennis Murray, R J\. DiClemente, and J M\. Hughes\. 2015\. “Influence of Sources of Information About Influenza Vaccine on Parental Attitudes and Adolescent Vaccine Receipt\.” #emph[Human Vaccines & Immunotherapeutics] 11 \(7\): 1641–1647\. https:\/\/doi\.org\/10\.1080\/21645515\.2015\.1038445

Goldblatt, David\. 2022\. “SARS\-CoV\-2: From Herd Immunity to Hybrid Immunity\.” #emph[Nature Reviews Immunology] 22 \(6\): 333–334\. https:\/\/doi\.org\/10\.1038\/s41577\-022\-00725\-0

Hovland, C I\., and Walter Weiss\. 1951\. “The Influence of Source Credibility on Communication Effectiveness\.” #emph[Public Opinion Quarterly] 15 \(4\): 635–650\. https:\/\/doi\.org\/10\.1086\/266350

Huynh, Toan Luu\. 2020\. “The COVID\-19 Risk Perception: A Survey on Socioeconomics and Media Attention\.” #emph[Economics Bulletin] 40 \(1\): 758–764\.

Huynh, H P\., and A R\. Senger\. 2021\. “A Little Shot of Humility: Intellectual Humility Predicts Vaccination Attitudes and Intention to Vaccinate Against COVID\-19\.” #emph[Journal of Applied Social Psychology] 51 \(4\): 449–460\. https:\/\/doi\.org\/10\.1111\/jasp\.12747

Hwang, Juwon\. 2020\. “Health Information Sources and the Influenza Vaccination: The Mediating Roles of Perceived Vaccine Efficacy and Safety\.” #emph[Journal of Health Communication] 25 \(9\): 727–735\. https:\/\/doi\.org\/10\.1080\/10810730\.2020\.1840675

Kadkhoda, Kamran\. 2021\. “Herd Immunity to COVID\-19: Alluring and Elusive\.” #emph[American Journal of Clinical Pathology] 155 \(4\): 471–472\. https:\/\/doi\.org\/10\.1093\/ajcp\/aqaa272

Karafillakis, Emilie, Clarissa Simas, Caitlin Jarrett, Pierre Verger, Patrick Peretti\-Watel, Fadia Dib, Stefania De Angelis, et al\. 2019\. “HPV Vaccination in a Context of Public Mistrust and Uncertainty: A Systematic Literature Review of Determinants of HPV Vaccine Hesitancy in Europe\.” #emph[Human Vaccines & Immunotherapeutics] 15 \(7–8\): 1615–1627\. https:\/\/doi\.org\/10\.1080\/21645515 2018\.1564436\.

Kelman, H C\. 1961\. “Processes of Opinion Change\.” #emph[Public Opinion Quarterly] 25 \(1\): 57–78\. https:\/\/doi\.org\/10\.1086\/266996

Kerr, John R\., Claudia R\. Schneider, Gabriel Recchia, Sarah Dryhurst, Ullrika Sahlin, Carole Dufouil, Pierre Arwidson, Alexandra LJ Freeman, and Sander van der Linden\. 2021\. “Correlates of intended COVID\-19 vaccine acceptance across time and countries: results from a series of cross\-sectional surveys\.” #emph[BMJ open] 11 \(8\)\.

Kline, Rex B\. 2015\. #emph[Principles and Practice of Structural Equation Modeling]\. New York: Guilford publications\.

Kwon, Sohee, A D\. Joshi, C\-H\. Lo, D A\. Drew, L H\. Nguyen, C\-G\. Guo, W\. Ma, et al\. 2021\. “Association of Social Distancing and Face Mask Use with Risk of COVID\-19\.” #emph[Nature Communications] 12 \(1\): 3737\. https:\/\/doi\.org\/10\.1038\/s41467\-021\-24115\-7

Lo, N C\., and P J\. Hotez\. 2017\. “Public Health and Economic Consequences of Vaccine Hesitancy for Measles in the United States\.” #emph[JAMA Pediatrics] 171 \(9\): 887–892\. https:\/\/doi\.org\/10\.1001\/jamapediatrics\.2017 1695\.

Mathew, Ling, Emily J\. Kothe, and Barbara A\. Mullan\. 2019\. “Predicting Intention to Receive a Seasonal Influenza Vaccination Using Protection Motivation Theory\.” #emph[Social Science & Medicine] 233: 87–92\. https:\/\/doi\.org\/10\.1016\/j\.socscimed\.2019\.06\.002

McNamara, Damian\. 2021, August 3\. “Delta Variant Could Drive ‘Herd Immunity’ Threshold Over 80%\.” Webmd\.

Morens, D M\., G K\. Folkers, and A S\. Fauci\. 2022\. “The Concept of Classical Herd Immunity May Not Apply to COVID\-19\.” #emph[The Journal of Infectious Diseases] 226 \(2\): 195–198\. https:\/\/doi\.org\/10\.1093\/infdis\/jiac109

Nan, Xiaoli, and Kelly Madden\. 2012\. “HPV Vaccine Information in the Blogosphere: How Positive and Negative Blogs Influence Vaccine\-Related Risk Perceptions, Attitudes, and Behavioral Intentions\.” #emph[Health Communication] 27 \(8\): 829–836\. https:\/\/doi\.org\/10\.1080\/10410236\.2012\.661348

Nan, Xiaoli, Yuan Wang, and Kathryn Thier\. 2022\. “Why People Believe Health Misinformation and Who are at Risk? A Systematic Review of Individual Differences in Susceptibility to Health Misinformation\.” #emph[Social Science & Medicine] 314: 115398\. https:\/\/doi\.org\/10\.1016\/j\.socscimed\.2022\.115398

Nan, Xiaoli, Bo Xie, and Kelly Madden\. 2012\. “Acceptability of the H1N1 Vaccine Among Older Adults: The Interplay of Message Framing and Perceived Vaccine Safety and Efficacy\.” #emph[Health Communication] 27 \(6\): 559–568\. https:\/\/doi\.org\/10\.1080\/10410236\.2011\.617243

Nguyen, Long H\., Amit D\. Joshi, David A\. Drew, Jordi Merino, Ma Wenjie, Lo Chun\-Han, Sohee Kwon, et al\. 2021\. “Racial and Ethnic Differences in COVID\-19 Vaccine Hesitancy and Uptake\.” #emph[medRxiv]\. https:\/\/www\.ncbi\.nlm\.nih\.gov\/pmc\/articles\/PMC7924296\/

Ortiz, R R\., Andrea Smith, and Tamera Coyne\-Beasley\. 2019\. “A Systematic Literature Review to Examine the Potential for Social Media to Impact HPV Vaccine Uptake and Awareness, Knowledge, and Attitudes About HPV and HPV Vaccination\.” #emph[Human Vaccines & Immunotherapeutics] 15 \(7–8\): 1465–1475\. https:\/\/doi\.org\/10\.1080\/21645515\.2019\.1581543

Patel, Mohan P\., Vivek B\. Kute, and Sanjay K\. Agarwal\. 2020\. ““Infodemic” COVID 19: More Pandemic Than the Virus\.” #emph[Indian Journal of Nephrology] 30 \(3\): 188\. https:\/\/doi\.org\/10\.4103\/ijn\.IJN\_216\_20

Petty, R E\., J T\. Cacioppo, and Rachel Goldman\. 1981\. “Personal Involvement as a Determinant of Argument\-Based Persuasion\.” #emph[Journal of Personality and Social Psychology] 41 \(5\): 847\. https:\/\/doi\.org\/10\.1037\/0022\-3514\.41\.5\.847

Pornpitakpan, C\. 2004\. “The Persuasiveness of Source Credibility: A Critical Review of Five decades’ Evidence\.” #emph[Journal of Applied Social Psychology] 34 \(2\): 243–281\. https:\/\/doi\.org\/10\.1111\/j\.1559\-1816\.2004 tb02547\.x\.

Puri, Neha, E A\. Coomes, Hourmazd Haghbayan, and Keith Gunaratne\. 2020\. “Social Media and Vaccine Hesitancy: New Updates for the Era of COVID\-19 and Globalized Infectious Diseases\.” #emph[Human Vaccines & Immunotherapeutics] 16 \(11\): 2586–2593\. https:\/\/doi\.org\/10\.1080\/21645515\.2020\.1780846

Randolph, H E\., and L B\. Barreiro\. 2020\. “Herd Immunity: Understanding COVID\-19\.” #emph[Immunity] 52 \(5\): 737–741\. https:\/\/doi\.org\/10\.1016\/j\.immuni\.2020\.04\.012

Rhodes, Anthea, Monsurul Hoq, M\-A\. Measey, and Margie Danchin\. 2021\. “Intention to Vaccinate Against COVID\-19 in Australia\.” #emph[The Lancet Infectious Diseases] 21 \(5\): e110\. https:\/\/doi\.org\/10\.1016\/S1473\-3099\(20\)30724\-6

Rivas, Zeballos, Diana Reyna, Marinalda Lidia Lopez Jaldin, Blanca Nina Canaviri, Luisa Fabiola Portugal Escalante, Angela MC Alanes Fernández, Juan Pablo Aguilar Ticona, and A H\. Pakpour\. 2021\. “Social Media Exposure, Risk Perception, Preventive Behaviors and Attitudes During the COVID\-19 Epidemic in La Paz, Bolivia: A Cross Sectional Study\.” #emph[PLoS One] 16 \(1\): e0245859\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0245859

Salali, Gul Deniz, and Mete Sefa Uysal\. 2020\. “COVID\-19 Vaccine Hesitancy is Associated with Beliefs on the Origin of the Novel Coronavirus in the UK and Turkey\.” #emph[Psychological Medicine] 52 \(15\): 1–3\. #emph[Psychological medicine]\. https:\/\/doi\.org\/10\.1017\/S0033291720004067

Sarah, Geoghegan, Kevin P\. O’callaghan, and Paul A\. Offit\. 2020\. “Vaccine Safety: Myths and Misinformation\.” #emph[Frontiers in Microbiology] 11: 372\. https:\/\/doi\.org\/10\.3389\/fmicb\.2020\.00372

Schivinski, Bruno, and Dariusz Dabrowski\. 2016\. “The Effect of Social Media Communication on Consumer Perceptions of Brands\.” #emph[Journal of Marketing Communications] 22 \(2\): 189–214\. https:\/\/doi\.org\/10\.1080\/13527266\.2013\.871323

Schivinski, Bruno, Daniela Langaro, Teresa Fernandes, and Francisco Guzmán\. 2020\. “Social Media Brand Engagement in the Context of Collaborative Consumption: The Case of AIRBNB\.” #emph[Journal of Brand Management] 27 \(6\): 645–661\. https:\/\/doi\.org\/10\.1057\/s41262\-020\-00207\-5

Schivinski, Bruno, Daniela Langaro, and Christina Shaw\. 2019\. “The Influence of Social Media Communication on Consumer’s Attitudes and Behavioral Intentions Concerning Brand\-Sponsored Events\.” #emph[Event Management] 23 \(6\): 835–853\. https:\/\/doi\.org\/10\.3727\/152599518X15403853721268

Schivinski, Bruno, Magdalena Magdalena, Stansbury Ellena, Satel Jason, Montag Christian, and Halley M\. Pontes Halley M\. 2020\. “Exploring the Role of Social Media Use Motives, Psychological Well\-Being, Self\-Esteem, and Affect in Problematic Social Media Use\.” #emph[Frontiers in Psychology] 11: 3576\. https:\/\/doi\.org\/10\.3389\/fpsyg\.2020\.617140

Schivinski, Bruno, Nicolas Pontes, Barbara Czarnecka, Wen Mao, Jennifer De Vita, and Vasileios Stavropoulos\. 2022\. “Effects of Social Media Brand\-Related Content on Fashion Products Buying Behaviour – a Moderated Mediation Model\.” #emph[Journal of Product & Brand Management] 31 \(7\): 1047–1062\. https:\/\/doi\.org\/10\.1108\/JPBM\-05\-2021\-3468

Schmid, Philipp, Dorothee Rauber, Cornelia Betsch, Gianni Lidolt, M\-L\. Denker, and B J\. Cowling\. 2017\. “Barriers of Influenza Vaccination Intention and Behavior–A Systematic Review of Influenza Vaccine Hesitancy, 2005–2016\.” #emph[PLoS One] 12 \(1\): e0170550\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0170550

She, Jun, Dongni Hou, Cuicui Chen, Bi Jing, and Yuanlin Song\. 2022\. “Challenges of Vaccination and Herd Immunity in COVID\-19 and Management Strategies\.” #emph[The clinical respiratory journal]\.

Tandoc, E C\., Jr\. 2019\. “Tell Me Who Your Sources Are: Perceptions of News Credibility on Social Media\.” #emph[Journalism Practice] 13 \(2\): 178–190\. https:\/\/doi\.org\/10\.1080\/17512786\.2017\.1423237

Teo, L\. M\., H\. E\. Smith, M\. O\. Lwin, and W\. E\. Tang\. 2019\. “Attitudes and Perception of Influenza Vaccines Among Older People in Singapore: A Qualitative Study\.” #emph[Vaccine] 37 \(44\): 6665–6672\. https:\/\/doi\.org\/10\.1016\/j\.vaccine\.2019\.09\.037

Törnberg, Petter\., and C T\. Bauch\. 2018\. “Echo Chambers and Viral Misinformation: Modeling Fake News as Complex Contagion\.” #emph[PLoS One] 13 \(9\): e0203958\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0203958

Van Raemdonck, Nathalie\. 2019\. “The Echo Chamber of Anti\-Vaccination Conspiracies: Mechanisms of Radicalization on Facebook and Reddit\.” #emph[Institute for Policy Advocacy and Governance \(IPAG\) Knowledge Series]\. https:\/\/papers\.ssrn\.com\/sol3\/papers\.cfm?abstract\_id\=3510196

Wilson, Kumanan, Katherine Atkinson, and Shelley Deeks\. 2014\. “Opportunities for Utilizing New Technologies to Increase Vaccine Confidence\.” #emph[Expert Review of Vaccines] 13 \(8\): 969–977\. https:\/\/doi\.org\/10\.1586\/14760584\.2014\.928208

Wilson, S L\., and Charles Wiysonge\. 2020\. “Social Media and Vaccine Hesitancy\.” #emph[BMJ Global Health] 5 \(10\): e004206\. https:\/\/doi\.org\/10\.1136\/bmjgh\-2020\-004206

Wiyeh, A B\., Sara Cooper, Anelisa Jaca, Edison Mavundza, Duduzile Ndwandwe, and C S\. Wiysonge\. 2019\. “Social Media and HPV Vaccination: Unsolicited Public Comments on a Facebook Post by the Western Cape Department of Health Provide Insights into Determinants of Vaccine Hesitancy in South Africa\.” #emph[Vaccine] 37 \(43\): 6317–6323\. https:\/\/doi\.org\/10\.1016\/j\.vaccine\.2019\.09\.019

Yang, Seongwoo, and S\-I\. Cho\. 2017\. “Middle East Respiratory Syndrome Risk Perception Among Students at a University in South Korea, 2015\.” #emph[American Journal of Infection Control] 45 \(6\): e53– 60\. https:\/\/doi\.org\/10\.1016\/j\.ajic\.2017\.02\.013

Yeung, May PS, Frank LY Lam, and Richard Coker\. 2016\. “Factors Associated with the Uptake of Seasonal Influenza Vaccination in Adults: A Systematic Review\.” #emph[Journal of Public Health] 38 \(4\): 746–753\. https:\/\/doi\.org\/10\.1093\/pubmed\/fdv194

Zhaohui, Su, Ali Cheshmehzangi, Dean McDonnell, Claudimar Pereira da Veiga, and Yu\-Tao Xiang\. 2022\. “Mind the “Vaccine fatigue\.” #emph[Frontiers in Immunology] 13\. https:\/\/doi\.org\/10\.3389\/fimmu\.2022\.839433

Zoe, Meleo\-Erwin, Corey Basch, Sarah A\. MacLean, Courtney Scheibner, and Valerie Cadorett\. 2017\. ““To Each His own”: Discussions of Vaccine Decision\-Making in Top Parenting Blogs\.” #emph[Human Vaccines & Immunotherapeutics] 13 \(8\): 1895–1901\. https:\/\/doi\.org\/10\.1080\/21645515\.2017\.1321182

#pagebreak()
#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Appendix A] #linebreak() Descriptive statistics for the constructs and measurements]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Constructs and measurements]], [#strong[Stand\. factor loading \(λ#sub[x]\)]], [#strong[Mean]], [#strong[SD]], [#strong[Skewness]], [#strong[Kurtosis]]),
table.hline(stroke: 0.5pt),
[#emph[Official sources of social media communication]], [], [], [], [], [],
[I am satisfied with their social media communications about the vaccines], [0\.90], [2\.80], [1\.21], [0\.04], [−0\.96],
[The level of their social media communication about the vaccines meets my expectations], [0\.83], [2\.86], [1\.18], [−0\.10], [−0\.82],
[The level of information they provide about the vaccines on social media is very good], [0\.83], [2\.79], [1\.18], [0\.05], [−0\.92],
[Official social media communications about the vaccines perform well when compared with other types of communications, e\.g\., TV, radio, newspapers], [0\.70], [2\.99], [1\.19], [−0\.07], [−0\.78],
[#emph[User\-generated social media communication]], [], [], [], [], [],
[I am satisfied with their social media communications about the vaccines], [0\.90], [2\.79], [1\.11], [−0\.03], [−0\.60],
[The level of their social media communication about the vaccines meets my expectations], [0\.85], [2\.86], [1\.05], [−0\.15], [−0\.41],
[The level of information they provide about the vaccines on social media is very good], [0\.87], [2\.72], [1\.13], [0\.04], [−0\.66],
[Social media communications about the vaccines from family and friends perform well when compared with official social media communications], [0\.71], [2\.76], [1\.13], [−0\.01], [−0\.66],
[#emph[Vaccine hesitancy: vaccine efficacy]], [], [], [], [], [],
[It will be helpful for my community if I get a COVID\-19 vaccine], [0\.92], [4\.57], [1\.06], [−2\.65], [5\.93],
[It will save lives if I get a COVID\-19 vaccine], [0\.93], [4\.39], [1\.13], [−2\.04], [3\.21],
[It will be dangerous if people over 16 don’t get a COVID\-19 vaccine], [0\.81], [4\.21], [1\.24], [−1\.61], [1\.45],
[A COVID\-19 vaccine will strengthen my immune system], [0\.70], [3\.98], [1\.32], [−1\.13], [0\.08],
[Taking a COVID\-19 vaccine will give me greater freedom], [0\.72], [4\.32], [1\.08], [−1\.89], [3\.01],
[I think I will be infected with COVID\-19 over the next 12 months], [0\.62], [2\.85], [1\.08], [−0\.01], [−0\.60],
[A COVID\-19 vaccine will work for everyone], [0\.68], [3\.33], [1\.32], [−0\.36], [−1\.08],
[A COVID\-19 vaccine will work for me], [0\.84], [4\.38], [1\.06], [−1\.92], [3\.08],
[#emph[Vaccine hesitancy: vaccine safety]], [], [], [], [], [],
[The speed of developing and testing COVID\-19 vaccines means they will be good], [0\.62], [3\.19], [1\.17], [−0\.21], [−0\.44],
[The speed of developing and testing COVID\-19 vaccines means they will be safe], [0\.66], [3\.33], [1\.24], [−0\.27], [−0\.71],
[Getting a COVID\-19 vaccine is a sign of personal strength], [0\.72], [3\.20], [1\.28], [−0\.31], [−0\.74],
[I expect that receiving a COVID\-19 vaccine will be hardly noticeable], [0\.75], [3\.59], [1\.23], [−0\.49], [−0\.80],
[The side effects of a COVID\-19 vaccine are mild], [0\.78], [3\.80], [1\.22], [−0\.90], [−0\.15],
[Taking a COVID\-19 vaccine will make me feel like a guinea pig\*], [–], [4\.24], [1\.22], [−1\.43], [0\.73],
[#emph[COVID\-19 risk perception]], [], [], [], [], [],
[I think I will contract COVID\-19 if I come into contact with a COVID\-19 patient], [0\.92], [3\.93], [1\.04], [−1\.08], [0\.87],
[I think that I might contract COVID\-19 even if I do not come into contact with a COVID\-19 patient], [0\.89], [2\.33], [1\.28], [0\.57], [−0\.89],
[My health will be severely damaged if I contract COVID\-19], [0\.60], [3\.77], [1\.14], [−0\.92], [0\.22],
[I think COVID\-19 is more severe than any other respiratory disease], [0\.62], [3\.86], [1\.28], [−0\.97], [−0\.19],
[Even if I fall ill with other ailments, I will avoid going to hospital because of COVID\-19\*], [–], [2\.09], [1\.28], [0\.83], [−0\.68],
[COVID\-19 will inflict serious damage on my community], [0\.67], [4\.18], [1\.15], [−1\.49], [1\.38],
[#emph[Intention to take the COVID\-19 vaccine]], [], [], [], [], [],
[I intend to take a COVID\-19 vaccine], [0\.88], [4\.66], [0\.96], [−2\.95], [7\.74],
[If I had the opportunity to take a COVID\-19 vaccine today, I would take it], [0\.81], [4\.55], [1\.13], [−2\.45], [4\.60],
[I plan to take a COVID\-19 vaccine], [0\.88], [4\.63], [0\.99], [−2\.80], [6\.75],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[\* Item removed from the analyses \(see Confirmatory factor analysis\)\.]
]
#v(12pt)

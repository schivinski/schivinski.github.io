#set document(title: "The influence of interpersonal motivation on Polish consumers’ online brand\-related activity", author: ("Magdalena Brzozowska-Woś", "Bruno Schivinski"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Brzozowska\-Woś and Schivinski \(2019\), open access \(CC BY\-SA 4\.0\) #h(1fr) Argumenta Oeconomica] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[The influence of interpersonal motivation on Polish consumers’ online brand\-related activity]]
#v(0.8em)
#text(size: 12pt)[Magdalena Brzozowska\-Woś, Bruno Schivinski]
#v(0.2em)
#text(size: 10pt, style: "italic")[Gdańsk University of Technology\; Birkbeck, University of London]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Brzozowska\-Woś, M\., & Schivinski, B\. (2019). The influence of interpersonal motivation on Polish consumers’ online brand\-related activity. #emph[Argumenta Oeconomica, 2]\(43\), 213–231. #link("https://doi.org/10.15611/aoe.2019.2.09")[https:\/\/doi.org\/10\.15611\/aoe\.2019\.2\.09]
  #v(0.9em)
  Open access article\. Argumenta Oeconomica publishes its articles under the Creative Commons Attribution\-ShareAlike 4\.0 International licence \(https:\/\/creativecommons\.org\/licenses\/by\-sa\/4\.0\/\)\; the 2019 article PDF itself carries no licence statement\. Originally published in Argumenta Oeconomica, No 2 \(43\), 213–231 \(2019\), #link("https://doi.org/10.15611/aoe.2019.2.09")[https:\/\/doi.org\/10\.15611\/aoe\.2019\.2\.09]\. Changes made: the text has been re\-typeset without changes to its content and the figures redrawn\. This re\-typeset version is shared under the same licence\.
  #v(0.9em)
  This version reproduces the content of the published open access article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published open access article \(CC BY\-SA 4\.0\)\; the publisher\'s typesetting and layout have been removed and Figures 1 and 2 redrawn\.
Downloaded from #link("https://schivinski.com/papers/interpersonal-influence-online-brand-related-activity.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[The Influence of Interpersonal Motivation on Polish Consumers’ Online Brand\-Related Activity]]
#v(0.6em)
#par(first-line-indent: 0em)[Magdalena Brzozowska\-Woś#super[1] and Bruno Schivinski#super[2]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]Gdańsk University of Technology, Gdańsk, Poland\; #super[2]Birkbeck, University of London, London, United Kingdom]]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() The development of social media has a substantial impact on the surge of social engagement of Internet users\. It is particularly prominent in the domain of content creation and content sharing\. Such communication may contain various references to different products brands and companies\. Internet users may refer to them explicitly or brands may be present in the background only\. Therefore, it is pivotal for managers and researchers to isolate the factors that may trigger consumers’ brand\-related engagement in the Internet\. The objective of the research was to determine whether the susceptibility to interpersonal influence \(both informational and normative\) stimulates the three types of group behavior associated with consumer brand\-related activity in the social media\. The dedicated online survey was completed by 1,025 Polish consumers and analyzed using structural equation modeling \(SEM\)\. The results demonstrate that the factors of informational social influence – irrespective of its type – directly influence the consumers’ online engagement with brands controlled for age, gender, social media and brand usage\. Regardless of whether the brand communication is initiated by some organization or by the consumers themselves, an eagerness to share the content perceived as valuable on social media plays a prominent role\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] consumer’s online brand\-related activities, COBRAs, susceptibility to interpersonal influence, Polish Internet users]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received: January 2017, revised: June 2017\.]]
#v(0.6em)
= 1\. Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[In January 2016, active users of social media accounted for as many as 2\.31 billion people around the world\. In Poland alone, social networking sites were being used by 14 million people \(Digital, 2016\)\. Over the past decade, the Internet has evolved from a medium used exclusively for transferring information from an organization to consumers into a fully interactive medium in which – by means of social media – the consumers have started to play an important role in the existence, development and communication of brands\. For many, social media have become an attractive alternative to traditional means of communication \(McQuail, 2010, p\. 10\)\. This is the reason for the growing interest of practitioners and scientists in the relationships between brands and consumer behavior\. The aspects analyzed so far include the associations between brands and positive or negative word\-of\-mouth \(Bambauer\-Sachse, Mangold, 2011\), advertising on social media \(Bruhn et al\., 2012\), online reviews and comments \(Karakaya, Barnes, 2010\), the communities formed around brands and their fan pages \(Algesheimer et al\., 2005\), the content generated by consumers \(Christodoulides et al\., 2012\), the types of consumers’ online activity towards brands \(Schivinski, Łukasik, 2015\; Schivinski et al\., 2016\), cultural influences on the level of engagement and activity of consumers in venues dedicated to specific firms on social networking sites \(Tsai, Men, 2014\)\. Consumers are using social media more and more to express their opinions about products, and they engage in a number of brand\-related activities \(Burmann, 2010\)\. Websites of this kind enable interactions in the community formed around a particular brand by a\) posting comments on the actions taken by other consumers committed to the brand \(Habibi et al\., 2014\)\; b\) developing an emotional relationship between a consumer and a brand \(Hollebeek et al\., 2014\)\; c\) engaging in activities related with the brand through the consumption, contribution, and creation of the online content about the brand\; and d\) sustaining the products and the activities of the organization \(Schivinski, Brzozowska\-Woś, 2015\)\.]

Social media, by their nature, are intended to help initiate, deepen, and maintain interpersonal relationships \(Stepanikova et al\., 2010\)\. To date, however, the scholarly literature scrutinizing the links between brands and their susceptibility to interpersonal influence is scarce\. The aspects analyzed so far include the connotations attached to the online transmission of content \(Ho, Dempsey, 2010\), joining online communities \(Daugherty et al\., 2005\), attitudes towards advertisements \(Krisanic, 2008\), brand loyalty, and the effectiveness of corrective actions undertaken by organizations to mitigate the consequences of a crisis situation \(Tsarenko, Tojib, 2015\; Dommer et al\., 2015\)\. The interest of practitioners and scholars alike has been directed towards the possibilities for stimulating consumers’ brand\-related online engagement \(Muntinga et al\., 2011\; Cvijikj, Michahelles, 2013\; Yılmaz, Enginkaya, 2015\; Azar et al\., 2016\; Masłowska et al\., 2016\)\. Regrettably, so far in such studies, the sole method used has been the uses and gratifications theory \(Ruggiero, 2000\), in which interpersonal motivation is only part of the area it covers\. Irrespective of the number of empirical studies on interpersonal motivation and brand communication on the Internet, there still remains much that needs to be discovered\.

To obtain a complete picture of the interaction between interpersonal influence and customer online brand\-related engagement, the impact of interpersonal motivators on the consumption, contribution, and creation levels of customers’ activity on social media was investigated separately, whereas controlled for relevant variables to this environment, i\.e\. age, gender, social media usage, and brand usage \(Schivinski, Brzozowska\-Woś, 2015\)\.

This article consists of four sections\. The first presents an overview of selected subject literature supporting the conceptual framework and hypotheses of the study\. The second part presents the methodology applied as well as the data sources, sample characteristics, and the applied procedures\. The next section presents the quantitative analysis used to verify the hypotheses, while the last part contains the summary and discussion of the empirical results and their implications for managers and researchers\. The article also includes recommendations for further research\.

= 2\. Conceptual framework
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Brand engagement is a specific type of relationship with a given brand, expressed by consumers in the form of an emotional and behavioral response \(Hollebeek, 2014, p\. 149\)\. It can influence the perception of a brand as valuable, the time devoted to the contact with a brand, the knowledge of the brand and its products, and the use of information about a given brand and its products more frequently compared with other brands \(e\.g\. brand\-related information, product comparisons, product purchasing\)\.]

It was G\. Shao \(2009, p\. 15\) who made the first attempt to systematize consumers’ online brand\-related activity and to distinguish its three levels \(consumption, participation, and content creation\)\. His idea was further developed by D\.G\. Muntinga, M\. Moormann, and E\.G\. Smit \(2011\) who established the framework for a behavioral concept allowing the differentiation and classification of motivations of consumers’ online brand\-related activities – COBRAs\. B\. Schivinski, G\. Christodoulides, and D\. Dabrowski later operationalized these behaviors, and defined COBRAs as “a set of brand\-related online activities on the part of the consumer that vary in the degree to which the consumer interacts with social media and engages in the consumption, contribution, and creation of media content” \(Schivinski et al\., 2016, p\. 66\)\.

The consumption type of COBRAs represents the minimum level of consumer’s online brand\-related activity\. It is characterized by Internet users’ passive participation in media consumption\. This type of COBRAs involves the consumption of content created by brand owners as well as by other Internet users \(Schivinski, Brzozowska\-Woś, 2015\)\; for instance by viewing brand\-related posts on Twitter or Facebook intended to encourage the reader to watch a YouTube channel or to read a more detailed description on a blog or a website\.

The contribution type of COBRAs involves a medium level of consumer’s online brand\-related activity\. It encompasses both user\-content and user\-to\-user relationship patterns\. In this category, brand\-related content generation is limited to the addition of the user’s own comments and sharing the content created by others, e\.g\. Internet users or brand owners \(Schivinski, Brzozowska\-Woś, 2015\)\. Such activities include adding likes or comments to Facebook and Twitter posts or to YouTube videos, marking videos or photos as ‘favorite’ and sharing brand\-related videos, photos, and posts\.

The third, creation type of COBRAs, displays the highest level of consumer involvement in the process of generating brand\-related content\. The Internet users representing this category of COBRAs create and share the content, which is consumed and distributed by other Internet users \(Schivinski, Brzozowska\-Woś, 2015\)\. The creation and sharing of brand\-related posts on blogs and social networking sites, and uploading brand\-related videos and photos demonstrate this type of consumer activity\.

All human activity, including consumers’ online brand\-related engagement, arises out of motivation\. Motivation is the mental process of “regulation, which determines the directions of human activities and the amount of energy a man is ready to devote to their implementation \[…\]\; motivation is an internal process, conditioning the pursuit toward specific targets” \(Reykowski, 1982, p\. 18\)\. According to some research, these are narcissistic sentiments \(Buffardi, Campbell, 2008\), the effort to define one’s own identity \(Papacharissi, Rubin, 2000\), the desire to attain a particular social status \(Valenzuela et al\., 2009\), intrinsic motivation related with self\-esteem \(Yang et al\., 2012\), participation in groups, respect, notoriety and fame \(Grace\-Farfaglia, 2006\) – which all constitute important motivators for consumers to engage in creating brand\-related content online\.

Most consumer behavior models consider interpersonal motivation as an important factor in the decision\-making process\. Therefore in this study, the authors scrutinized people’s susceptibility to interpersonal influence \(Bearden, 1989\) regarding consumers’ online brand\-related activities \(COBRAs\)\.

= 3\. Research hypotheses
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Interpersonal influence is a social factor of particular relevance for consumer behavior and the decision\-making process \(Park, Lessig, 1977\; D’Rozario, Choudhury, 2000\)\. This approach has already been applied to studies on consumer activity on social media for instance to determine how consumers exchange information on products and brands \(Scaraboto, 2012\), or to assess the credibility and the acceptance of word\-of\-mouth communication \(Pereira, 2015\) and its impact on purchase decisions \(Voyer, Ranaweera, 2015\)\. Therefore, research on the interpersonal influence on the types of consumer online brand\-related engagement is highly justified\. W\. J\. McGuire noted that individuals demonstrate different levels of susceptibility to interpersonal determinants, hence this aspect may be adopted as a differentiating factor\.]

The literature on this subject refers to two dimensions of interpersonal influence: the first – informational – is defined “as the tendency to accept information from others as evidence about reality” \(Bearden et al\., 1990\)\. The second group entails normative influences \(value expressive or utilitarian\)\. Under this theorem, the value expressiveness reflects an individual’s desire to enhance their own image by accepting other people’s standards, preferences, ideas, values, and behavior as the model for their own attitudes and conduct\. On the contrary, the utilitarian influence is manifested by an individual’s acting in accordance with the expectations of other people in order to obtain a reward or to avoid a punishment \(Burnkrant, Cousineau, 1975, p\. 207\; Bearden et al\., 1990\; Mourali et al\., 2005, p\. 165\)\.

Additionally, research has shown that the engagement with brand\-related content on social media depends on demographic and behavioral factors such as the consumer’s age, gender, and intensity of social media and brand usage \(Schivinski, Brzozowska\-Woś, 2015\)\. Based on the arguments above it is thus assumed that consumers may engage with brand\-related content with a view to make it valuable both for themselves and for other social media users controlled for controlled for age, gender, social media usage, and brand usage\. The above discussion is depicted in the theoretical model \(Figure 1\), and based on it the following hypotheses were formulated:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1]\. The informational influence has a positive effect on consumer brand\-related engagement manifested by consumption \(H1a\) contribution \(H1b\), and creation \(H1c\) controlled for age, gender, social media usage, and brand usage\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2]\. The normative influence has a positive effect on consumer brand\-related engagement manifested by consumption \(H1a\) contribution \(H1b\), and creation \(H1c\) controlled for age, gender, social media usage, and brand usage\.]]
#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 1\. The proposed conceptual framework\. #emph[Source]: own elaboration \(redrawn\; the four control variables are grouped in one box\)\.]]
#v(0.6em)
= 4\. Method
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[In order to test the hypotheses, the authors conducted an online survey dedicated to Internet users in Poland\. To measure informational and normative interpersonal influences, the authors used the Consumer Susceptibility to Interpersonal Influence \(SUSCEP\) scale adopted from Bearden et al\. \(1989\)\. Each interpersonal influence’s dimension was measured with three indicators anchored from 1 \= “strongly disagree,” to 7 \= “strongly agree”\. To capture the three COBRAs dimensions, the Consumer’s Engagement with Brand\-Related Social Media Content \(CEBSC\) scale was adopted from Schivinski et al\. \(2016\)\. The scales were administrated with anchors ranging from “not very often” \(1\) to “very often” \(7\)\. The option of “not at all” was also available and coded as 0\. Appendix A presents the scales used in the study\.]

For both scales, individual measurement blocks were presented to the respondents, resulting in a total of five blocks – two accounting for informational and normative influences \(SUSCEP\) and three for consuming, contributing, and creating brand\-related content \(CEBSC\)\. To avoid systematic order effects, the order of the SUSCEP and CEBSC items in each measurement block was randomized\; the blocks in the survey were also randomized\. The online survey was administered in Polish\. A back\-translation process was employed to ensure translation equivalence of the items \(Craig, Douglas, 2005, pp\. 192\-193\)\. The authors carried out a pretest before running the field research\. The online survey was tested with 20 business students, who had no problems completing the task\. They were later asked about the overall objective of the study, which they all failed to identify\.

For the main research, respondents were invited to take part in the study on several social media channels, online forums, and discussion groups\. They were informed briefly about the overall topic of the study \(i\.e\. consumer behavior on social media\) and then accessed the survey through a link\. After clicking on the link, screening questions were used to ensure that the respondents had actually perceived a specific brand online and were, therefore, eligible to participate in the study\. The screening questions were in line with previous studies on social media brand\-related behavior \(Schivinski, Dabrowski, 2016\) and encompassed queries on how often the respondent received newsfeeds from the followed brands\; and whether he or she reads the brand\-related content\. Additionally, respondents were asked to provide an approximation of the number of brands they follow on social media\. The respondents who did not survive the screening process were not qualified to take the full survey\. Demographic questions included age, education, and daily Internet usage\.

Before endorsing the SUSCEP and CEBSC questionnaire items, the respondents were asked to provide a brand they were actively following on social media, which was used throughout the survey\. Each respondent could take the survey only once and rate a single brand\. As a characteristic of collecting online data, an estimation of how many people had access to the link is not accessible\; therefore, calculations of the response rate for the study were omitted\. Similarly, the random sampling technique could not be used regarding a limitation of collecting online data\. Accuracy of the data was ensured through the distribution of the survey on relevant online channels, screening questions, and statistical procedures \(reported further\)\.

A sample of 1025 Polish consumers took part in the study\. Invalid and incomplete questionnaires were rejected and no data was statistically imputed\. The final sample resulted in 911 valid questionnaires \(88\.9%\)\. The structure of the sample is as follows: 56\.5 percent of the sample was female, 71\.5 percent fell within the age range of 18–25 years, and the median education level was secondary education \(62\.9%\)\. The respondents also indicated spending two to four hours online every day \(35%\)\. The average number of brands a respondent followed was 14 \(SD \= 6\)\. The profile of the sample partly matches that of members of the Polish population who use social media frequently \(Ciemieniewska, 2016, pp\. 10\-13\)\. In total, 223 brands such as Adidas, Pepsi, Apple, and Converse were analyzed\.

= 5\. Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Measurement and structural model
#par(first-line-indent: 0em)[To validate the scales used, all independent and dependent latent variables were included in one multi\-factorial confirmatory model \(CFA\) in M#emph[plus] 7\.2 software with the robust maximum\-likelihood estimation method \(MLR\)\. Composite reliability \(CR\) and factor determinacy \(FD\) coefficient helped establish reliability\. The CR values of the two dimensions of SUSCEP were 0\.75 for informational influence, and 0\.75 for normative influence\; the CR values for the three dimensions of COBRAs were 0\.90 for consumption, 0\.91 for contribution, and 0\.94 for creation\. These values exceed the recommended 0\.70 threshold value \(Bagozzi, Yi, 1998\)\. The FD coefficients for the five\-factor CFA model were 0\.96 for informational influence, 0\.95 for normative influence, 0\.96 for consumption, 0\.97 for contribution, and 0\.97 for creation\. All the coefficients were above the desired threshold of 0\.80 \(Muthén, Muthén, 2012\)\. The CR and FD coefficients support the internal consistency of the subscales\.]

All the loadings estimates were statistically significant and greater than 0\.55\. The #emph[t]\-values ranged from 26\.84 to 114\.49 \(#emph[p] \< 0\.001\) \(Bagozzi, Yi, 1998\)\. The average variance extracted \(AVE\) was calculated for each construct\. The AVE of the constructs showed values higher than the acceptable value of 0\.50 \(Bagozzi, Yi, 1998\)\. The AVEs for SUSCEP were 0\.50 \(informational influence\) and 0\.50 \(normative influence\)\; the AVEs for COBRAs were 0\.66 \(consumption\), 0\.63 \(contribution\), and 0\.64 \(creation\), thus confirming discriminant validity, and evidencing convergent validity\.

The following measures were used to assess the CFA model’s goodness\-of\-fit \(GOF\): the chi\-square test statistic, the comparative fit index \(CFI\), the Tucker–Lewis index \(TLI\), and the root mean square error of approximation \(RMSEA\)\. Values above the threshold of 0\.90 for CFI and TLI and below 0\.08 for RMSEA indicate a good fit of the model to the data \(Hair et al\., 2014, p\. 785\)\. The results of the CFA indicate that the five\-factor model had a good fit with the data\. The GOF values were as follows: MLRχ#super[2]#sub[\(198\)] \= 1011\.48, CFI \= 0\.93, TLI \= 0\.92, and RMSEA \= 0\.06, with 90% confidence interval \(CI\) \[0\.06, 0\.07\]\.

The next step of the analysis therefore was to test the conceptual model and the postulated hypotheses\. Table 1 presents the reliability and validity outcomes resulting from the CFA analysis\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Reliability and validity of the conceptual model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[CR]], [#strong[AVE]], [#strong[FD]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]]),
table.hline(stroke: 0.5pt),
[1\. Consumption COBRAs type], [0\.90], [0\.66], [0\.96], [#emph[0\.81]], [], [], [], [],
[2\. Contribution COBRAs type], [0\.91], [0\.63], [0\.97], [0\.64 \(31\.84\)], [#emph[0\.79]], [], [], [],
[3\. Creation COBRAs type], [0\.94], [0\.74], [0\.97], [0\.53 \(21\.40\)], [0\.76 \(57\.35\)], [#emph[0\.86]], [], [],
[4\. Informational influence], [0\.75], [0\.50], [0\.96], [0\.53 \(16\.35\)], [0\.38 \(10\.69\)], [0\.33 \(9\.02\)], [#emph[0\.70]], [],
[5\. Normative influence], [0\.75], [0\.50], [0\.95], [0\.56 \(18\.36\)], [0\.42 \(11\.86\)], [0\.39 \(10\.94\)], [0\.69 \(37\.71\)], [#emph[0\.70]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]: CR \= composite reliability\; AVE \= average variance extracted\; FD \= factor determinacy\; n \= 911\; MLR#emph[χ]#super[2]#sub[\(198\)] \= 1011\.48, CFI \= 0\.93, TLI \= 0\.92, and RMSEA \= 0\.06\; 90% CI \[0\.06, 0\.07\]\. T\-values for correlations are reported in parentheses\. The square root value of the AVE are in italics\. #emph[Source]: own elaboration\.]
]
#v(12pt)
= 6\. Main findings
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[To test the conceptual model, path analysis was employed with structural equation modeling \(SEM\) in M#emph[plus] 7\.2 software package\. During the SEM procedures, all five latent variables and the controlling variables \(i\.e\. age, gender, social media usage, and brand usage\) were included in a single structural model\. The MLR estimator was used\. The GOF values of the structural model were evaluated using the chi\-square test statistic, the CFI, the TLI, and the RMSEA fit indexes\. The study main effects are summarized in Table 2 and Figure 2\.]

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 2.] Standardized structural coefficients of the conceptual model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto), align: (left, right, right, right, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[HYPOTHESIS]], [#strong[β]], [#strong[#emph[t]\-value]], [#strong[#emph[p]\-value]], [#strong[Acceptance\/Rejection]]),
table.hline(stroke: 0.5pt),
[H1a\. Informational influence → Consumption COBRAs type], [0\.39], [3\.43], [0\.001], [Accepted],
[H1b\. Informational influence → Contribution COBRAs type], [0\.32], [2\.72], [0\.001], [Accepted],
[H1c\. Informational influence → Creation COBRAs type], [0\.40], [3\.14], [0\.001], [Accepted],
[H2a\. Normative influence → Consumption COBRAs type], [0\.08], [0\.70], [0\.48], [Rejected],
[H2b\. Normative influence → Contribution COBRAs type], [0\.05], [0\.41], [0\.67], [Rejected],
[H2c\. Normative influence → Creation COBRAs type], [−0\.06], [−0\.50], [0\.61], [Rejected],
table.cell(colspan: 5)[#emph[Controlling variables]],
[Age → Consumption COBRAs type], [−0\.02], [−0\.76], [0\.44], [],
[Age → Contribution COBRAs type], [0\.12], [3\.95], [0\.001], [],
[Age → Creation COBRAs type], [0\.10], [3\.18], [0\.001], [],
[Gender → Consumption COBRAs type], [−0\.03], [−1\.07], [0\.28], [],
[Gender → Contribution COBRAs type], [0\.08], [2\.73], [0\.06], [],
[Gender → Creation COBRAs type], [0\.07], [2\.32], [0\.02], [],
[Social media usage → Consumption COBRAs type], [0\.20], [6\.42], [0\.001], [],
[Social media usage → Contribution COBRAs type], [0\.18], [5\.72], [0\.001], [],
[Social media usage → Creation COBRAs type], [0\.14], [4\.25], [0\.001], [],
[Brand usage → Consumption COBRAs type], [0\.05], [1\.94], [0\.05], [],
[Brand usage → Contribution COBRAs type], [0\.10], [3\.33], [0\.001], [],
[Brand usage → Creation COBRAs type], [0\.06], [2\.18], [0\.02], [],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]: n \= 911\; MLR#emph[χ]#super[2]#sub[\(274\)] \= 1520\.20, CFI \= 0\.93, TLI \= 0\.91, and RMSEA \= 0\.07 \(90% CI \[0\.06–0\.07\]\)\. #emph[Source]: own elaboration\.]
]
#v(12pt)
#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 2\. Conceptual framework estimates\. #emph[Note]: #emph[n] \= 911\; MLR#emph[χ]#super[2]#sub[\(274\)] \= 1520\.20, CFI \= 0\.93, TLI \= 0\.91, and RMSEA \= 0\.07 \(90% CI \[0\.06–0\.07\]\)\; n\.s\. \= non\-significant path\; estimates are reported as standardized beta values\; correlations between SUSCEP and between COBRAs were omitted for clarity\. #emph[Source]: own elaboration \(redrawn\; the control estimates are shown as a table\)\.]]
#v(0.6em)
The results of the SEM indicate that the five\-factor model had a good fit to the data\. The GOF values were as follows: MLRχ#super[2]#sub[\(274\)] \= 1520\.20, CFI \= 0\.93, TLI \= 0\.91, and RMSEA \= 0\.07 \(90% CI \[0\.06–0\.07\]\)\.

H1 posit that informational influence positively influences consumption \(H1a\), contribution \(H1b\), and creation \(H1c\) of brand\-related social media content controlled for age, gender, and social media and brand usage respectively\. The estimation of the model yielded positive effects for consumption \(β \= 0\.39\; #emph[t] \= 3\.43\; #emph[p] \< 0\.001\), contribution \(β \= 0\.32\; #emph[t] \= 2\.72\; #emph[p] \< 0\.001\), and creation \(β \= 0\.40\; #emph[t] \= 3\.14\; #emph[p] \< 0\.001\) COBRAs types, hence supporting H1\.

H2 posit that normative influence positively influences consumption \(H2a\), contribution \(H2b\), and creation \(H2c\) of brand\-related social media content controlled for age, gender, and social media and brand usage\. The calculations of the model yielded non\-significant effects for consumption \(#emph[p] \< 0\.48\), contribution \(#emph[p] \< 0\.67\), and creation \(#emph[p] \< 0\.61\) COBRAs types, thus leading to the rejection of H2\.

= 7\. Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[In the era of growing distrust of the content generated by organizations and – in parallel – the increasing use of social media in everyday life, the value of consumers assuming the role of content promoters by providing access to, or creating brand\-related posts is gradually increasing\. What is important for researchers and practitioners alike is to determine the motives underpinning consumers’ online brand\-related activity\. The study was designed to verify whether the alleged susceptibility to interpersonal influence would have any impact on the types of consumer brand\-related engagement on social media \(in terms of consumption, contribution, creation of content\) controlled for age, gender, and social media and brand usage\.]

The results of the study clearly demonstrate that the consumer online brand\-related engagement – irrespective of its manifestation \(consumption, contribution, creation\) – are directly influenced by informational factors when accounting for the consumer’s age, gender, and social media and brand usage levels\. Consequently those respondents demonstrating the tendency to accept information from other people as irrefutable, reliable facts also display a propensity to consume, contribute, and create brand\-related content using social media\. It should be emphasized that this tendency is unrelated to the categories of brand analysed\.

Therefore the study did not confirm any direct impact of normative influence factors on consumer online brand\-related activity\. There are reasonable grounds to conclude that the desire to strengthen one’s own image by pursuing other people’s attitudes and activity on social media, and following the expectations of others in order to obtain a reward or avoid some kind of punishment, does not translate directly into any of the types of consumer online brand\-related engagement \(Muntinga et al\., 2011\)\.

Consumers may engage with brand\-related content with a view to creating valuable sources of information for themselves and for other social media users alike\. This may be considered as a kind of pro\-social behaviour, which may prove important in the development of modern forms of marketing communication and brand value creation \(Colicev et al\., 2016\)\.

For the purposes of formulating practical recommendations regarding the impact of the informational aspect of interpersonal influence on consumer brand\-related engagement online, it seems that the aspects which require particular consideration include: consumers’ age, gender, the type of content, the subjective perception of its value and the kind of social medium used for communication\. The age and gender of respondents are deemed to have particular importance as they are associated with generational change, which translates into different attitudes to Internet communication and a different propensity to brand loyalty \(Parment, 2013\)\. Similarly, social media usage and the consumer’s continuous contact with brands act as catalysts for behavioral engagement online \(Schivinski et al\., 2016\)\.

Communication with consumers by means of social media – regardless of whether initiated by an organization or a consumer – can also vary according to the type of media concerned\. However, in cases when the brand\-related content represents a certain value, has the potential for further sharing, boosts consumer commitment and encourages the creation of further content – it will find fertile ground in this communication channel\.

= 8\. Limitations and further research
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[To the authors’ knowledge, this study is the first in which both the informational and normative interpersonal influence on brand\-related consumer engagement has been analyzed\. The findings, despite their limitations, may provide valuable guidelines for further research\. First of all, the list of factors addressed in the SUSCEP scale should be extended in the course of subsequent studies\. A similar approach is recommended with respect to the CEBSC scale\. The engagement of social media users may change rapidly in response to the extension of, or change in, the functioning of the social media alone \(Schivinski et al\., 2016\)\. Second, this study uses cross\-sectional data, hence the results only represent a snapshot of the sample at a given time\. Although cross\-sectional data is widely used in business research, especially in marketing research, the outcomes presented in this paper should be interpreted carefully\. Researchers should further evaluate the conceptual framework and control for behavioral changes in time and for causal inference \(Freedman, 2010\)\. Similarly, data was collected in a single country, replications in different cultures may show that consumers of other nationalities and cultures may be more susceptible to the normative influence\.]

Furthermore, the use of additional dimensions should also be considered, which – beside the interpersonal influence – could also act as mediators, moderators, and\/or motivators, including the content type, former experience with products of a given brand, or brand perception\. Additionally, competing specifications of the model could be investigated for reaching a better optimization of the conceptual framework\. Last but not least, the study was carried out simultaneously in different age groups\. It is possible that the results would differ if the survey had been performed with particular age cohorts in a sequence, and considering the differences between the generations\.

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Algesheimer, R\., Dholakia, U\. M\., Herrmann, A\., #emph[The social influence of brand community: evidence from European car clubs], “Journal of Marketing” 2005, Vol\. 69, No\. July, pp\. 19–34, http:\/\/journals\.ama\.org\/doi\/abs\/10\.1509\/jmkg\.69\.3\.19\.66363\.

Azar, S\. L\., Machado, J\. C\., Vacas\-de\-Carvalho, L\., Mendes, A\., #emph[Motivations to interact with brands on Facebook] – #emph[towards a typology of consumer\-brand interactions], “Journal of Brand Management” 2016, Vol\. 243, No\. 2, pp\. 153–178, http:\/\/link\.springer\.com\/article\/10\.1057\/bm\.2016\.3\.

Bagozzi, R\. P\., Yi, Y\., #emph[On the Evaluation of Structural Equation Models,] “Academy of Marketing Science Journal” 1998, Vol\. 16, No\. 1, pp\. 74–94, http:\/\/doi\.org\/10\.1007\/BF02723327\.

Bambauer\-Sachse, S\., Mangold, S\., #emph[Brand equity dilution through negative online word\-ofmouth communication,] “Journal of Retailing and Consumer Services” 2011, Vol\. 18, No\. 1, pp\. 38–45, http:\/\/dx\.doi\.org\/10\.1016\/j\.jretconser\.2010\.09\.003\.

Bearden, W\. O\., Netemeyer, R\. G\., Teel J\. E\., #emph[Further validation of the consumer susceptibility to interpersonal influence scale], “Advances in Consumer Research“, Vol\. 17, No\. 1, pp\. 770–776, 1990\.

Bearden, W\. O\., Netemeyer, R\. G\., Teel, J\. E\., #emph[Measurement of consumer susceptibility to interpersonal influence], “Journal of Consumer Research“, Vol\. 15, No\. 4, pp\. 473–481, http:\/\/dx\.doi\.org\/10\.1086\/209186, 1989\.

Bruhn, M\., Schoenmueller, V\., Schäfer, D\. B\., #emph[Are social media replacing traditional media in terms of brand equity creation?] “Management Research Review”, Vol\. 35, No\. 9, pp\. 770–790, http:\/\/dx\.doi\.org\/10\.1108\/01409171211255948, 2012\.

Buffardi, L\. E\., Campbell, W\. K\., #emph[Narcissism and social networking web sites], “Personality and Social Psychology Bulletin”, Vol\. 34, No\. 10, pp\. 1303–1314, 2008\.

Burmann, C\., #emph[A call for ‘User\-Generated Branding’], “Journal of Brand Management” 2010, Vol\. 18, Issue 1, pp\. 1–4, http:\/\/link\.springer\.com\/article\/10\.1057%2Fbm\.2010\.30\.

Burnkrant, R\. E\., Cousineau, A\., #emph[Informational and normative social influence in buyer behavior], “Journal of Consumer Research” 1975, Vol\. 2, No\. 3, pp\. 206–215, doi:10\.1086\/208633\.

Christodoulides, G\., Jevons, C\., Bonhomme ,J\., #emph[Memo to marketers: quantitative evidence for change\. How user\-generated content really affects brands], “Journal of Advertising Research” 2012, Vol\. 52, No\. 1, pp\. 53–64, http:\/\/dx\.doi\.org\/10\.2501\/JAR\-52\-1\-053\-064\.

Ciemieniewska, J\., #emph[Użytkownicy Internetu w Polsce] \[#emph[Users of Interent in Poland]\] \[in:\] #emph[Raport strategiczny: Internet 2015\/2016] \[#emph[Strategic report: Internet 2015\/2016]\] IAB Polska, pp\. 10–13, http:\/\/iab\.org\.pl\/wp\-content\/uploads\/2016\/06\/Raport\-strategiczny\-Internet\-2015\_2016\.pdf \[10\.12\.2016\]\.

Colicev, A\., O’Connor, P\., Vinzi, V\. E\., #emph[Is investing in social media really worth it? How brand actions and user actions influence brand value], “Service Science” 2016, Vol\. 8, No\. 2, pp\. 152–168, http:\/\/dx\.doi\.org\/10\.1287\/serv\.2016\.0143\.

Craig, C\. S\., Douglas, S\. P\., #emph[International Marketing Research\. Third edition]\. John Wiley & Sons Ltd\., West Sussex, UK 2005\.

Cvijikj, I\. P\., Michahelles, F\., #emph[Online engagement factors on Facebook brand pages], “Social Network Analysis and Mining” 2013, Vol\. 3, No\. 4, pp\. 843–861, http:\/\/link\.springer\.com\/article\/10\.1007\/s13278\-013\-0098\-8\.

Daugherty ,T\., Lee, W\. N\., Gangadharbatla, H\., Kim, K\., Outhavong, S\., #emph[Organizational virtual communities: exploring motivations behind online panel participation], “Journal of Computer\-Mediated Communication” 2005, Vol\. 10, No\. 4, pp\. 1–18, http:\/\/jcmc\.indiana\.edu\/vol10\/issue4\/daugherty\.html\.

#emph[Digital in 2016], http:\/\/www\.slideshare\.net\/wearesocialsg\/digital\-in\-2016\/521\.

Dommer, S\., Swaminathan, V\., Gürhan\-Canli Z\., #emph[Who blames but forgives when brands err? Applying attachment theory to explain consumer responses to brand failures and recovery efforts]\. “NA – Advances in Consumer Research” 2015, Vol\. 43, pp\. 12–17, 2015\.

D’Rozario, D\., Choudhury, P\. K\., #emph[Effect of assimilation on consumer susceptibility to interpersonal influence], “Journal of Consumer Marketing” 2000, Vol\. 17, No\. 4, pp\. 290–307, http:\/\/dx\.doi\.org\/10\.1108\/07363760010335321\.

Freedman, D\. A\., #emph[Statistical Models and Causal Inference\. A Dialogue with the Social Sciences], Vol\. 1\. Cambridge University Press, New York, USA 2010\.

Grace\-Farfaglia, P\., Dekkers, A\., Sundararajan, B\., Peters, L\., Park, S\. H\., #emph[Multinational web uses and gratifications: Measuring the social impact of online community participation across national boundaries], “Electronic Commerce Research” 2006, Vol\. 6, Issue 1, pp\. 75–101, http:\/\/dx\.doi\.org\/10\.1007\/s10660\-006\-5989\-6\.

Guadagno, R\. E\., Muscanell, N\. L\., Okdie, B\. M\., Burk, N\. M\., Ward, T\. B\., #emph[Even in virtual environments women shop and men build: a social role perspective on second life], “Computers in Human Behavior” 2011, Vol\. 27, No\. 1, pp\. 304–308, http:\/\/dx\.doi\.org\/10\.1016\/j\.chb\.2010\.08\.008\.

GUS Central Statistical Office, #emph[Demographic yearbook of Poland], Warsaw 2012\.

Habibi, M\. R\., Laroche, M\., Richard, M\. O\., #emph[Brand communities based in social media: How unique are they? Evidence from two exemplary brand communities], “International Journal of Information Management” 2014, Vol\. 34, Issue 2, pp\. 123–132, http:\/\/dx\.doi\.org\/10\.1016\/j\.ijinfomgt\.2013\.11\.010\.

Hair, Jr\. J\. F\., Black, W\. C\., Babin, B\. J\., Anderson R\. E\. \(2014\)\. #emph[Multivariate data analysis] \(Seventh Edition\)\. Pearson Education Limited, Harlow UK 2014\.

Ho, J\. Y\., Dempsey, M\., #emph[Viral marketing: motivations to forward online content], “Journal of Business Research” 2010, Vol\. 63, Issues 9\-10, pp\. 1000–1006, http:\/\/dx\.doi\.org\/10\.1016\/j\.jbusres\.2008\.08\.010\.

Hollebeek, L\. D\., Glynn, M\. S\., Brodie, R\. J\., #emph[Consumer brand engagement in social media: conceptualization, scale development and validation], “Journal of Interactive Marketing” 2014, Vol\. 28, No\. 2, pp\. 149–165, http:\/\/dx\.doi\.org\/10\.1016\/j\.intmar\.2013\.12\.002\.

Karakaya, F\., Barnes, N\. G\., #emph[Impact of online reviews of customer care experience on brand or company selection], “Journal of Consumer Marketing” 2010, Vol\. 27, No\. 5, pp\. 447–457, http:\/\/dx\.doi\.org\/10\.1108\/07363761011063349\.

Krisanic, K\., #emph[Motivations and impression management: Predictors of social networking site use and user behavior], M\. A\. thesis, University of Missouri\-Columbia, 2008, http:\/\/hdl\.handle\.net\/10355\/5772\.

Maslowska, E\., Malthouse, E\. C\., Collinger T\., #emph[The customer engagement ecosystem], ”Journal of Marketing Management” 2016, Vol\. 32\. Issue 5–6, pp\. 469–501, http:\/\/www\.tandfonline\.com\/doi\/abs\/10\.1080\/0267257X\.2015\.1134628\.

McQuail, D\., #emph[Mass communication theory]\. Sage Publications, London 2010\.

Mourali, M\., Laroche, M\., Pons, F\., #emph[Individualistic orientation and consumer susceptibility to interpersonal influence], “Journal of Services Marketing” 2005, Vol\. 19, No\. 3, pp\. 164–173, http:\/\/dx\.doi\.org\/10\.1108\/08876040510596849\.

Muniz, A\. M\., Schau, H\. J\., #emph[Religiosity in the abandoned Apple Newton brand community], ”Journal of Consumer Research” 2005, Vol\. 31, No\. 4, pp\. 737–747, http:\/\/dx\.doi\.org\/10\.1086\/426607\.

Muntinga, D\. G\., Moorman, M\., Smit, E\. G\., #emph[Introducing COBRASs: Exploring motivations for brand\-related social media use], ”International Journal of Advertising” 2011, Vol\. 30, No\. 1, pp\. 13–46, http:\/\/dx\.doi\.org\/10\.2501\/IJA\-30\-1\-013\-046\.

Muthén, L\. K\., Muthén, B\. O\., #emph[Mplus user’s guide] \(7th edition\)\. Muthén & Muthén, Los Angeles 2012\.

Papacharissi, Z\., Rubin, A\. M\., #emph[Predictors of Internet use], “Journal of Broadcasting & Electronic Media” 2000, Vol\. 44, No\. 2, pp\. 175–196, http:\/\/dx\.doi\.org\/10\.1207\/s15506878jobem4402\_2\.

Park, C\. W\., Lessig, V\. P\., #emph[Students and housewives: Differences in susceptibility to reference group influence], “Journal of Consumer Research” 1977, Vol\. 4, No\. 2, pp\. 102–110, http:\/\/dx\.doi\.org\/10\.1086\/208685\.

Parment, A\., #emph[Generation Y vs\. Baby Boomers: shopping behavior, buyer involvement and implications for retailing], “Journal of Retailing and Consumer Services” 2013, Vol\. 20, No\. 2, pp\. 189–199, http:\/\/dx\.doi\.org\/10\.1016\/j\.jretconser\.2012\.12\.001\.

Gurau, C\., #emph[A life\-stage analysis of consumer loyalty profile: Comparing Generation X and Millennial consumers], “Journal of Consumer Marketing” 2012, Vol\. 29, No\. 2, pp\. 103–113, http:\/\/dx\.doi\.org\/10\.1108\/07363761211206357\.

Pereira, M\. S\., Garrido, I\. L\., de Matos C\. A\., #emph[Firm\-created word\-of\-mouth recommendation: Is it also worthwhile?], “Brazilian Business Review“ 2015, Vol\. 2, No\. 3, pp\. 91–118, http:\/\/search\.proquest\.com\/docview\/1721551325?accountid\=48555\.

Reykowski, J\., #emph[Z zagadnień psychologii motywacji] \[#emph[Issues in the psychology of motivation]\]\. Wydawnictwa Szkolne i Pedagogiczne, Warsaw 1982\.

Rohm, A\., Kaltcheva, V\., Milne, G\., #emph[A mixed approach to examining brand\-consumer interactions driven by social media], “Journal of Research in Interactive Marketing” 2013, Vol\. 7, No\. 4, pp\. 295–311, http:\/\/dx\.doi\.org\/10\. 1108\/JRIM\-01\-2013\-0009\.

Ruggiero, T\. E\., #emph[Uses and gratifications theory in the 21st century], “Mass Communication & Society” 2000, Vol\. 3, No\. 1, pp\. 3–37, http:\/\/www\.tandfonline\.com\/doi\/abs\/10\.1207\/S15327825MCS0301\_02\.

Scaraboto, D\., Rossi, C\. A\. V\., Costa, D\., #emph[How consumers persuade each other: Rhetorical strategies of interpersonal influence in online communities], “BAR\-Brazilian Administration Review“ 2012, Vol\. 9, No\. 3, pp\. 246–267, http:\/\/dx\.doi\.org\/10\.1590\/S1807\-76922012000300002\.

Schivinski, B\., Brzozowska\-Woś, M\., #emph[Badanie aktywności online polskich konsumentów dotyczącej marek] \[#emph[A study of Polish consumer’s brand\-related online activities]\], “E\-mentor”, 2015, No\. 2\(59\), pp\. 77–85, http:\/\/dx\.doi\.org\/10\.15219\/em59\.1174\.

Schivinski, B\., Christodoulides, G\., Dabrowski, D\., #emph[Measuring Consumers’ Engagement With Brand\-Related Social\-Media Content: Development and Validation of a Scale That Identifies Levels of Social\-Media Engagement With Brands], “Journal of Advertising Research” 2016, Vol\. 56, No\. 1, pp\. 64–80, http:\/\/dx\.doi\.org\/10\.2501\/JAR\-2016\-004\.

Schivinski, B\., Dabrowski, D\., #emph[The effect of social media communication on consumer perceptions of brands]\. “Journal of Marketing Communications”, 2016, Vol\. 22, Issue 2, pp\. 189–214, doi:10\.1080\/13527266\.2013\.871323\.

Schivinski, B\., Łukasik, P\., #emph[Typologia aktywności online konsumenta w zakresie marki] \[#emph[A typology of consumer’s brand\-related online activities]\], “Marketing i Rynek”, Vol\. 3, pp\. 20–27, 2015\.

Shao, G\., #emph[Understanding the appeal of user\-generated media: A user and gratification perspective], “Internet Research” 2009, Vol\. 19, No\. 1, pp\. 7–25, http:\/\/dx\.doi\.org\/10\.1108\/10662240910927795\.

Stepanikova, I\., Nie, N\. H\., He, X\., #emph[Time on the Internet at home, loneliness, and life satisfaction: evidence from panel time\-diary data], “Computers in Human Behavior” 2010, Vol\. 26, No\. 3, pp\. 329–338, http:\/\/dx\.doi\.org\/10\.1016\/j\.chb\.2009\.11\.002\.

Tsai, W\. H\. S\., Men, L\. R\., #emph[Consumer engagement with brands on social network sites: A cross\-cultural comparison of China and the USA], “Journal of Marketing Communications” 2014, pp\. 120, http:\/\/www\.tandfonline\.com\/doi\/abs\/10\.1080\/13527266\.2014\.942678\.

Tsarenko, Y\., Tojib, D\., #emph[Consumers’ forgiveness after brand transgression: The effect of the firm’s corporate social responsibility and response], “Journal of Marketing Management” 2015, Vol\. 31, No\.17\-18, pp\. 1851\-1877, http:\/\/www\.tandfonline\.com\/doi\/abs\/10\.1080\/0267257X\.2015\.1069373\.

Valenzuela, S\., Park, N\., Kee, K\. F\., #emph[Is there social capital in a social network site? Facebook use and college students’ life satisfaction, trust, and participation], “Journal of Computer\-Mediated Communication”, Vol\. 14, No\. 4, pp\. 875–901, 2009\.

Voyer, P\. A\., Ranaweera, C\., #emph[The impact of word of mouth on service purchase decisions: examining risk and the interaction of tie strength and involvement], “Journal of Service Theory and Practice“ 2015, Vol\. 25, No\. 5, pp\. 636–656, http:\/\/dx\.doi\.org\/10\.1108\/JSTP\-04\-2014\-0070\.

Yang, J\., Mai, E\., Ben\-Ur, J\., #emph[Did you tell me the truth? The influence of online community on eWOM], “International Journal of Market Research”, Vol\. 54, No\. 3, pp\. 369–389, 2012\.

Yılmaz, H\., Enginkaya, E\., #emph[Brand followers: motivations and attitudes of consumers to follow brands in social media], “International Journal of Internet Marketing and Advertising” 2015, Vol\. 9, No\. 1, pp\. 3–20, http:\/\/dx\.doi\.org\/10\.1504\/IJIMA\.2015\.068356\.

#pagebreak()
= Appendix A
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A.] Descriptive statistics for the constructs and measurements]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Constructs and measurements]], [#strong[Loading]], [#strong[#emph[t]\-value]], [#strong[Mean]], [#strong[SD]], [#strong[Skewness]], [#strong[Kurtosis]]),
table.hline(stroke: 0.5pt),
table.cell(colspan: 7)[#emph[Informational influence \(Bearden et al\., 1989\)]],
[The popularity of the content is manifested by the number of “Likes” and uploaded photos, and shared videos and posts related to Brand X\.], [0\.67], [30\.82], [3\.37], [1\.82], [0\.31], [−0\.92],
[The popularity of Brand X is manifested by the number of shared photos, videos, and posts created by Internet users\.], [0\.73], [37\.17], [4\.08], [1\.87], [−0\.05], [−1\.03],
[If I have little experience with Brand X products, I take the opinions of other users into consideration\.], [0\.72], [32\.19], [4\.00], [1\.82], [−0\.04], [−1\.01],
table.cell(colspan: 7)[#emph[Normative influence \(Bearden et al\., 1989\)]],
[I hardly ever post any content \(photos, videos, posts\) on social media, if I know that my friends will not accept it\.], [0\.65], [30\.74], [3\.47], [1\.86], [0\.29], [−0\.96],
[Basically, I upload some content \(photos, videos, posts\) on social media hoping that my friends will share or like it\.], [0\.75], [41\.27], [3\.94], [1\.82], [0\.03], [−0\.99],
[I am satisfied when other people can see me together with the Brand X product that I like\.], [0\.73], [35\.48], [3\.62], [1\.95], [0\.25], [−1\.09],
table.cell(colspan: 7)[#emph[Consumption COBRAs type \(Schivinski et al\., 2016\)]],
[I read posts related to Brand X on social media\.], [0\.88], [92\.87], [3\.53], [2\.10], [0\.29], [−1\.25],
[I read fan page\(s\) related to Brand X on social networking sites\.], [0\.88], [73\.59], [3\.26], [2\.03], [0\.46], [−1\.06],
[I watch pictures\/graphics related to Brand X\.], [0\.74], [41\.91], [2\.98], [1\.97], [0\.68], [−0\.76],
[I follow blogs related to Brand X\.], [0\.68], [34\.35], [4\.19], [2\.07], [−0\.14], [−1\.28],
[I follow Brand X on social networking sites\.], [0\.88], [81\.62], [3\.43], [2\.01], [0\.34], [−1\.11],
table.cell(colspan: 7)[#emph[Contribution COBRAs type \(Schivinski et al\., 2016\)]],
[I comment on videos related to Brand X\.], [0\.90], [84\.43], [2\.29], [1\.71], [1\.28], [0\.63],
[I comment on posts related to Brand X\.], [0\.57], [28\.56], [3\.50], [2\.05], [0\.26], [−1\.20],
[I comment on pictures\/graphics related to Brand X\.], [0\.88], [72\.24], [2\.11], [1\.63], [1\.52], [1\.42],
[I share Brand X related posts\.], [0\.55], [26\.84], [3\.57], [2\.10], [0\.22], [−1\.29],
[I “Like” pictures\/graphics related to Brand X\.], [0\.91], [95\.96], [2\.26], [1\.69], [1\.31], [0\.74],
[I “Like” posts related to Brand X\.], [0\.89], [77\.34], [2\.33], [1\.72], [1\.21], [0\.47],
table.cell(colspan: 7)[#emph[Creation COBRAs type \(Schivinski et al\., 2016\)]],
[I initiate posts related to Brand X on blogs\.], [0\.74], [39\.90], [2\.56], [1\.82], [0\.96], [−0\.18],
[I initiate posts related to Brand X on social networking sites\.], [0\.90], [73\.35], [2\.05], [1\.62], [1\.61], [1\.70],
[I post pictures\/graphics related to Brand X\.], [0\.92], [114\.49], [2\.06], [1\.64], [1\.61], [1\.65],
[I post videos that show Brand X\.], [0\.86], [58\.78], [2\.00], [1\.63], [1\.72], [2\.08],
[I write posts related to Brand X on forums\.], [0\.86], [64\.72], [2\.19], [1\.68], [1\.36], [0\.83],
[I write reviews related to Brand X\.], [0\.88], [71\.87], [2\.09], [1\.61], [1\.51], [1\.39],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Loading \= standardized factor loading\. Items adapted from Bearden et al\. \(1989\) and Schivinski et al\. \(2016\)\. #emph[Source]: own elaboration\.]
]
#v(12pt)

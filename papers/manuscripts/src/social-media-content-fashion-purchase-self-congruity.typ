#set document(title: "Effects of social media brand\-related content on fashion products buying behaviour – a moderated mediation model", author: ("Bruno Schivinski", "Nicolas Pontes", "Barbara Czarnecka", "Wen Mao", "Jennifer De Vita", "Vasileios Stavropoulos"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Schivinski et al\. \(2022\), accepted manuscript #h(1fr) Journal of Product & Brand Management] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Effects of social media brand\-related content on fashion products buying behaviour – a moderated mediation model]]
#v(0.8em)
#text(size: 12pt)[Bruno Schivinski, Nicolas Pontes, Barbara Czarnecka, Wen Mao, Jennifer De Vita, Vasileios Stavropoulos]
#v(0.2em)
#text(size: 10pt, style: "italic")[RMIT University\; The University of Queensland\; London South Bank University\; Regent’s University London\; Victoria University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Schivinski, B\., Pontes, N\., Czarnecka, B\., Mao, W\., De Vita, J\., & Stavropoulos, V\. (2022). Effects of social media brand\-related content on fashion products buying behaviour – a moderated mediation model. #emph[Journal of Product & Brand Management, 31]\(7\), 1047–1062. #link("https://doi.org/10.1108/JPBM-05-2021-3468")[https:\/\/doi.org\/10\.1108\/JPBM\-05\-2021\-3468]
  #v(0.9em)
  This author accepted manuscript is deposited under a Creative Commons Attribution Non\-commercial 4\.0 International \(CC BY\-NC\) licence\. This means that anyone may distribute, adapt, and build upon the work for non\-commercial purposes, subject to full attribution\. If you wish to use this manuscript for commercial purposes, please contact permissions\@emerald\.com\. Published version: Journal of Product & Brand Management, 31\(7\), 1047–1062, Emerald Publishing, #link("https://doi.org/10.1108/JPBM-05-2021-3468")[https:\/\/doi.org\/10\.1108\/JPBM\-05\-2021\-3468]
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors\; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/social-media-content-fashion-purchase-self-congruity.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Effects of social media brand\-related content on fashion products buying behaviour – a moderated mediation model]]
#v(0.6em)
#par(first-line-indent: 0em)[Bruno Schivinski#super[1]\*, Nicolas Pontes#super[2], Barbara Czarnecka#super[3], Wen Mao#super[2], Jennifer De Vita#super[4] and Vasileios Stavropoulos#super[5]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]School of Media and Communication, RMIT University, Melbourne, Australia\; #super[2]Business School, The University of Queensland, Saint Lucia, Australia\; #super[3]London South Bank Business School, London South Bank University, London, UK\; #super[4]Department of Marketing, Regent’s University London, London, UK\; #super[5]The Institute for Health and Sport, Victoria University, Melbourne, Australia]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Bruno Schivinski]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() #strong[Purpose] – This study aims to examine in which circumstances consumer’s self\-congruity moderates the indirect influence of consumer\-based brand equity \(mediating role\) in the relationship between firm\-created and user\-generated social media content and intention to purchase fashion products\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Design\/methodology\/approach] – In this study, the authors carried out an online survey with social media users of fashion brands and collected data from 622 participants across two samples to investigate whether consumers’ perceptions of equity of fashion brands mediate the relationship between social media brand\-related communication created by both firms and users and the intention to buy the fashion brands\. The indirect relationship is further moderated by self\-congruity\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Findings] – The results indicate that brand equity mediates the relationship between social media communication and purchase intentions of fashion products, and self\-congruity moderates the relationship between social media communication types and purchase intentions, such that higher\/lower levels of self\-congruity strengthen\/weaken the impact of social media communication on purchase intentions\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Originality\/value] – This study contributes to the business and marketing literature by exploring how social media communication, branding and fashion align with the individual’s self\-concept and buying behaviour\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Social media, Brand\-related content, Brand equity, Self\-congruity, Purchase intentions, Product endorsement]
#v(0.6em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Paper type] Research paper]
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[This study is part of a research project undertaken by Jennifer De Vita at Regent’s University London within the MSc Digital Marketing & Analytics program\. The authors also would like to thank the Editors Professor Cleopatra Veloutsou and Dr Francisco Guzmán and the anonymous reviewers for their constructive insights and feedback\. Received 10 May 2021\; revised 19 June 2021, 19 November 2021 and 11 February 2022\; accepted 11 February 2022\.]]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Market research demonstrates that both women and men regularly visit fashion brand pages on social media for inspiration prior to purchase \(Mintel, 2019\)\. Not surprisingly, social media content created by both firms and customers offers an optimal platform for brand value co\-creation because of its reach and interactiveness \(Schivinski and Dabrowski, 2016\)\. Over a one\-month period, fashion brands such as H&M \(as of October 2021\) have recorded an average engagement of 3 million likes and 12,000 comments through their social media pages, demonstrating the reach social media can achieve \(Unmetric, 2021\)\. Similarly, luxury brands such as Burberry, Louis Vuitton and Victoria’s Secret were ranked among the most influential brands on social media worldwide in 2021 with, respectively, 18\.5, 46\.3 and 70\.3 million followers on Instagram \(Sprinklr, 2021\)\.]

Fashion is one of the most value\-expressive artefacts consumers use to create self\-image \(Murray, 2015\; Weismueller #emph[et al\.], 2020\)\. As fashion brands rely on social media to promote their products, marketing and business scholars continue to study this evolving and dynamic context \(Colicev #emph[et al\.], 2018\; Onofrei #emph[et al\.], 2022\)\. The current study contributes to this fast\-accumulating body of research from a self\-image perspective\. As individuals prefer brands or products that match their values and their self\-image, this study draws on self\-congruence theory \(Sirgy, 1982\) and social media content types, to examine in which circumstances consumer’s self\-congruity moderates the indirect influence of consumer\-based brand equity in the relationship between social media brand\-related content types and consumer’s intention to purchase fashion products\.

Firm\-created social media content \(hereafter FCC\) has been described as part of a firm’s content marketing toolkit and has become a well\-established and distinct element of integrated marketing communications and brand strategy \(Ashley and Tuten, 2015\; Liu #emph[et al\.], 2018\; Wang #emph[et al\.], 2019\), which has been proven to influence attitudes, perceptions and behaviours \(Kumar #emph[et al\.], 2016\)\. A challenge for fashion brands communicating on social media is the unpredictable aspect of user\-generated content \(UGC\), whether created content is published on the consumers’ own social media page \(Davcik #emph[et al\.], 2021\; Koivisto and Mattila, 2020\) or whether this content is shared by others on social media pages and through hashtags \(Morra #emph[et al\.], 2018\)\. Although UGC is independent of the firm’s control, management of fashion brands demands a holistic approach both in messaging content and channel strategy \(Šerić #emph[et al\.], 2020\; Taylor and Costello, 2017\)\. This, in turn, requires social media strategies that align both firm\-created and user\-generated brand\-related communication types \(Gómez #emph[et al\.], 2019\)\.

Recently, to address the evolving trends of social media brand\-related communication, fashion brands have begun to support UGC\. Fashion brands provide users with product samples through paid partnerships that motivate users to create content that is aligned with the brand’s message via a channel preferred by the consumer \(Eagle #emph[et al\.], 2020\)\. Beyond traditional celebrities, brand endorsement on social media involves regular users as well as different types of influencers \(Campbell and Rapp Farrell, 2020\), professionals or other stakeholders that approve and recommend products and brands to consumers \(Eagle #emph[et al\.], 2021\)\. By motivating content creators, fashion brands, to some extent, regain control of social media brand\-related communication \(Breves #emph[et al\.], 2019\; Peng #emph[et al\.], 2018\)\.

Whilst past studies reported the effects of social media brand\-related content on consumers’ perceptions and behaviours towards brands \(Gómez #emph[et al\.], 2019\; Morra #emph[et al\.], 2018\; Schivinski and Dabrowski, 2016\), brand\-related content on social media is rapidly evolving, and this requires ongoing research to monitor how consumers respond to those dynamic changes \(Pansari and Kumar, 2017\; Schivinski, 2021\)\. The effects of brand communication on social media platforms include a positive impact on various cognitive and emotional brand\-related dimensions such as brand awareness \(Langaro #emph[et al\.], 2015\; Zollo #emph[et al\.], 2020\), brand attitude \(Lee and Eastin, 2020\; Schivinski and Dabrowski, 2016\), brand commitment and emotional bonding \(Barreda #emph[et al\.], 2020\; Filo #emph[et al\.], 2015\), brand equity \(Schivinski and Dabrowski, 2016\) and brand trust \(Shareef #emph[et al\.], 2020\; Singh #emph[et al\.], 2020\)\.

Moreover, researchers have investigated the influence of social media brand\-related communication on key behavioural variables such as brand loyalty \(Ebrahim, 2020\), word of mouth \(Ryu and Park, 2020\; Wallace #emph[et al\.], 2014\), intentions to partake in brand\-sponsored events \(Schivinski #emph[et al\.], 2019\), engagement in non\-sponsored brand\-related content \(Davcik #emph[et al\.], 2021\) and purchase intentions \(Hutter #emph[et al\.], 2013\; Mayrhofer #emph[et al\.], 2020\; Schivinski and Dabrowski, 2015\)\. In spite of the evolving nature of social media brand\-related communication, fashion brand executives have received relatively little systematic academic guidance on how to implement new communication techniques in their social media strategies \(Kong #emph[et al\.], 2020\), which in turn leads to trial and error when it comes to tailoring branding campaigns and evidence\-based strategies \(Colicev #emph[et al\.], 2018\)\.

= Theoretical background and hypothesis development
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Social media brand\-related communication
#par(first-line-indent: 0em)[Consumers interact with many actors in the social media environment, including brands and other individuals\. Firms use social media to communicate with consumers about their brands and products to create brand awareness and positive brand associations, stimulating conversations about a brand and ultimately encouraging purchase \(Carvalho and Fernandes, 2018\)\. Social media brand\-related communication differs in type and broadly assumes the forms of FCC and UGC \(Schivinski and Dabrowski, 2016\)\. The former is integrated into the overall brand positioning and creative idea, such that messages are designed, created and initiated by brands on their official social media pages \(Eagle #emph[et al\.], 2021\; Colicev #emph[et al\.], 2018\)\. Consumers are exposed to FCC either through posts organically shown on their feeds when they follow a brand’s social media page or through sponsored advertising and\/or retargeting after consumers had any previous online interaction with the brand and\/or with a competitor product in the same category \(Schivinski, 2019\)\.]

Social media FCC is used by fashion brands as one of the methods of conveying brand identity, therefore promoting self\-expression\. Firm\-created content invites users to interact with the brand, and individuals who follow brands on social media create an environment for advocacy of the fashion brand both online and offline \(VanMeter #emph[et al\.], 2018\)\. Consumers are motivated to use social media to seek out relevant information about fashion brands trends via FCC on brand\-owned social media pages\. Content created by firms on social media is, therefore, an effective branding tool because of its demographic targeting capability when compared to other traditional communication channels \(Colicev #emph[et al\.], 2019\)\. In this study, the concept of social media FCC is defined as content fashion brands post on their official social media accounts \(owned channel\) and excludes paid advertising\. We hypothesised #emph[a] #emph[priori] that consumers exposed to this FCC are positively influenced in their perceptions of fashion brands and behaviour \(Colicev #emph[et al\.], 2019\; Schivinski and Dabrowski, 2016\)\.

Although the creation and dissemination of content on social media is not a new phenomenon, developments in technology have allowed customers to better interact with brands #emph[vis\-à\-vis] UGC \(Davcik #emph[et al\.], 2021\; Saboo #emph[et al\.], 2016\)\. This type of communication refers to brand\-related content that is created by individuals rather than brands \(Schivinski and Dabrowski, 2016\)\. To be classified as UGC, it should be public and widely available on social media\/online\; be created outside professional routines and practices\; and be independent in the sense of not being owned by a firm and\/or brand \(Wunsch\-Vincent and Vickery, 2007\)\. UGC encompasses all possible independent creation and\/or co\-creation of brand\-related content, which may include comments on the brand’s social media profiles, brand endorsements on the consumer’s social media profiles, comments on other users’ social media profiles, to name a few \(Schivinski, 2021\; Onofrei #emph[et al\.], 2022\)\. For the purpose of this research, we limit our investigation of UGC to content users of fashion brands post on their own social media accounts\.

Individual consumers usually approach UGC from two different perspectives: either consumers create brand\-centred content \(about brands and products\), or they create user\-centred content \(about themselves using brands\) \(Kim and Johnson, 2016\; Pasternak #emph[et al\.], 2017\)\. In the former, consumers create content to share their opinions on the object of interest\. From this utilitarian perspective, the products and\/or brands are the primary object of UGC, whereas in the latter, brands assume a hedonic role and are used for their symbolic meanings to express self\-representation \(Colicev #emph[et al\.], 2019\)\. The valence of UGC may be positive, with consumers promoting in favour of brands \(Schivinski, 2019\), or negative, most often reflecting grumbling and complaints \(Dessart #emph[et al\.], 2020\; Gunarathne #emph[et al\.], 2017\)\. The literature indicates that the valence of UGC is predominantly positive \(Colicev #emph[et al\.], 2019\; Schivinski, 2021\) and significant in building perceptions and driving behaviour \(Schivinski, 2019\)\. As for fashion brands, it is expected the valence of UGC to be mostly positive, considering that consumers have a hedonic approach to fashion brands \(Schivinski and Dabrowski, 2015\)\. Therefore, UGC is used as a platform to communicate brand symbolic meanings on social media, which are congruent with the self \(Kim and Johnson, 2016\; Pasternak #emph[et al\.], 2017\)\.

The literature sees UGC as a trustworthy communication source, as it is not controlled by the brand and, therefore, not perceived as traditional advertising \(Kennedy and Guzmán, 2017\; Schivinski, 2021\)\. In relation to fashion brands, the perceptions of trustworthiness of UGC should still be salient when products are present in the message as consumers use symbolic aspects of fashion brands to convey meaning and express themselves on social media \(Colicev #emph[et al\.], 2019\; Onofrei #emph[et al\.], 2022\)\. In line with the above, the current study focuses on the positive aspects of UGC and hypothesises that this type of social media communication positively influences consumers’ perceptions and behaviour of fashion brands\.

== Mediating role of consumer\-based brand equity
#par(first-line-indent: 0em)[Research on consumer’s perceptions originated in the field of behavioural psychology, with scholars investigating how individual mindsets influence the effects between stimuli, attitudes and behaviour \(Smith and Swinyard, 1983\)\. The notion of individual mindsets was later implemented in consumer behaviour studies, with research being undertaken to understand the role of perceptions and attitudes on the decision\-making process \(Eagle #emph[et al\.], 2021\)\. The main reasoning is that the consumer’s attitudes play an important role in persuasion, with positive perceptions influencing changes in buying behaviour \(Eagle #emph[et al\.], 2021\)\.]

Consumer\-based brand equity \(CBBE\) is considered in the business literature as one of the main cognitive brand perceptions at the individual level \(Chatzipanagiotou #emph[et al\.], 2019\)\. Whilst definitions of CBBE differ \(Christodoulides #emph[et al\.], 2015\), one important idea agreed upon among scholars is that brand equity is the incremental perceived value of a product because of the brand name \(Yoo and Donthu, 2001\)\. Therefore, we define CBBE as:

CBBE evolves from the interactions consumers have with a brand, generating stronger associations regarding brand attributes, benefits and values \(Chatzipanagiotou #emph[et al\.], 2019\)\. With the developments of technology, businesses focus on the development of brand equity online with the aim to benefit from a more personalised contact with consumers \(Nunan #emph[et al\.], 2018\)\. Brands, therefore, use social media communication to foster CBBE through brand elements, uniqueness, experiences and positive perceptions \(Moreira #emph[et al\.], 2017\; Schivinski, 2021\)\. Tailored brand\-related communication consequently enhances CBBE and its power to elicit behaviour on social media \(Schivinski, 2019\)\.

Research has evidenced that when consumers identify with a brand, FCC nurtures positive associations and perceptions, improving the value of the brand \(Moreira #emph[et al\.], 2017\; Schivinski and Dabrowski, 2016\)\. UGC positively influences brand equity, given that the message produces a stronger consumer reaction when compared to traditional advertising \(Davcik #emph[et al\.], 2021\; Kennedy and Guzmán, 2017\)\. Not surprisingly, the scholarly literature informs that the impact of social media brand\-related communication on consumers’ perceptions of brands varies across firm\-created and user\-generated, depending on factors such as industry, type of product and the nature of brand \(Colicev #emph[et al\.], 2018\; Schivinski #emph[et al\.], 2019\)\. In spite of the fact that there is a variation of findings discriminating which source of social media brand\-related communication is more effective in creating, shaping and nurturing consumers’ perceptions, there is evidence that both types of content aim to impact consumers’ perceived attributes and benefits towards brands \(Morra #emph[et al\.], 2018\; Onofrei #emph[et al\.], 2022\)\. Based on the above, it is anticipated that fashion brand\-related content on social media, independently of its source, should positively influence consumers’ perceptions of brands \(Schivinski #emph[et al\.], 2019\; Schivinski and Dabrowski, 2016\)\.

In addition, the literature demonstrates that CBBE is a key predictor of consumer behaviour \(Chatzipanagiotou #emph[et al\.], 2019\; Christodoulides #emph[et al\.], 2015\)\. There is evidence that CBBE influences consumer loyalty \(Godey #emph[et al\.], 2016\) and brand re\-purchase \(Cobb\-Walgren #emph[et al\.], 1995\; Yoo and Donthu, 2001\)\. Consumers who express higher levels of CBBE tend to purchase more in comparison to new or moderately loyal customers \(Yoo and Donthu, 2001\)\. Strong consumer loyalty is also reflected in how individuals actively follow and engage with both FCC and UGC on social media channels \(Fernandes and Inverneiro, 2021\), suggesting that consumers’ positive brand perceptions may play a significant role in explaining how FCC and UGC influence product purchase likelihood \(Weismueller #emph[et al\.], 2020\)\. Therefore, it is anticipated that consumers who convey higher levels of CBBE should be more receptive to the social media content of fashion brands, directly and indirectly impacting their buying behaviour\. Thus:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1\.] CBBE mediates the positive relationship between \(#emph[H1a]\) firm\-created content and \(#emph[H1b]\) user\-generated content on social media and purchase intentions of fashion products\.]]
== Moderating role of self\-congruity
#par(first-line-indent: 0em)[Self\-congruity is commonly understood in the literature as “congruity between the actual self\-image and the product image” \(Sirgy, 1982, p\. 195\)\. The role of self\-congruity has been a subject of extensive research because of its significance in predicting and understanding consumer behaviour \(Kang #emph[et al\.], 2009\; Kressmann #emph[et al\.], 2006\)\.]

Self\-congruity theory posits that individuals prefer brands or products that match their values and self\-perceptions \(Sirgy, 1982\)\. The theory builds on the argument that individuals always seek a cognitive balance between personal values, opinions and behaviours and hence are drawn to products and brands that are consistent with their pre\-existing perceptions and beliefs about the self \(Czarnecka #emph[et al\.], 2020\; Pasternak #emph[et al\.], 2017\)\. Self\-congruity theory argues that aspects of self\-image are supported \(or not\) when evaluating brand or product attributes\. In other words, individuals tend to prefer brands whose meanings and images are consistent with their self\-image and ultimately are in harmony with their sense of social identity \(Quester #emph[et al\.], 2000\)\.

Fashion is one of the most value\-expressive artefacts consumers use to create self\-image \(Murray, 2015\; Weismueller #emph[et al\.], 2020\), whereas social media is currently the most accessible channel for individuals to publicly express their own identity and materialise self\-expression \(Orehek and Human, 2017\; Pasternak #emph[et al\.], 2017\)\. Social media is an important socialisation tool\; because it is interactive and personal, it allows individuals to choose what they consume, respond to or interact with \(Harrigan #emph[et al\.], 2018\; Schivinski, 2021\)\.

Clothing and accessories are examples of products that have a significant impact on self\-identity congruence \(Weismueller #emph[et al\.], 2020\), and those effects are expected to be amplified on social media\. The social media content of fashion brands, including the content generated by users, is a powerful platform for establishing public identity \(Burnasheva #emph[et al\.], 2019\)\. By overtly associating with brands on social media, the likelihood of consumer advocacy for that brand increases, enabling users to be involved in the creation of brand value \(VanMeter #emph[et al\.], 2018\)\.

Drawing on self\-congruity theory \(Sirgy, 1982\), the current study anticipates that the connection between the individual’s self\-image and a matching brand perception should directly and indirectly \(through CBBE\) influence the impact of social media content on the purchase intention of fashion products\. Hence, if self\-identity and evaluation of fashion brand attributes match, positive self\-congruity is achieved, and the effect of social media communication should be more potent \(Pasternak #emph[et al\.], 2017\; Weismueller #emph[et al\.], 2020\)\. Figure 1 depicts the conceptual model, and the following hypotheses summarise the arguments above:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2\.] Self\-congruity moderates the influence of brand\-related communication in terms of FCC \(#emph[H2a]\) and UGC \(#emph[H2b]\) on purchase intentions of fashion products, both directly and indirectly \(through CBBE\), with the effects being stronger\/weaker for consumers with higher\/lower self\-congruity\.]]
#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Conceptual model of the moderated mediation relationship\. #emph[Notes]: The model predicts that firm\-created and user\-generated social media brand\-related content will be positively related to consumer\-based brand equity, which will subsequently increase the consumer’s intention to purchase fashion products\. However, self\-congruity should moderate the relationship between social media content types and purchase intention, such that higher\/lower levels of self\-congruity increase\/decrease \(i\) the direct impact of social media content on purchase intention\; and \(ii\) the indirect impact of social media content through consumer\-based brand equity on purchase intention of products on social media\. Hypotheses are not included in the figure for ease of reading]]
#v(0.6em)
= Method
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Participants and procedure
#par(first-line-indent: 0em)[To compute the minimum sample size required for the analysis #emph[a priori], power analysis was conducted using G∗Power \(version 3\.1\.9\.6\) \(Faul #emph[et al\.], 2009\)\. The analysis was based on a medium effect size \(#emph[f]#super[2] \= 0\.15\), α \= 0\.05 and pre\-set power \(1 − β \= 0\.95\), with four predictors \(i\.e\. firm\-created content, UGC, CBBE and self\-congruity\) and four sociodemographic and usage variables \(age, gender, social media platform and fashion brand usage\)\. The calculations yielded a minimum sample size of 129 participants for an expected power of 0\.95\.]

Data were collected online through a survey hosted on Qualtrics \(www\.qualtrics\.com\)\. The survey link was made available to Amazon Mechanical Turk \(MTurk\) users in the USA, who declared to actively follow a fashion brand on social media, regardless of the social media platform, following previous studies on consumers perceptions of brand\-related social media content \(Schivinski #emph[et al\.], 2019\; Schivinski and Dabrowski, 2016\)\. The survey was administered in English, and all instructions used simple and plain language\. To control for data quality, the survey included additional measures related to the variables under investigation, which are described in the Measures section\. Participants in the study were awarded a small monetary incentive \(US\$0\.85\)\. To ensure the quality of the panel data, the recruitment techniques were in line with best practices \(Kees #emph[et al\.], 2017\) and with past research on MTurk \(Pontes #emph[et al\.], 2021\; Pontes and Pontes, 2021\; Pontes and Hoegg, 2020\)\.

Participants were asked to indicate a fashion brand that they actively followed on any social media platform\. To avoid potential response bias and confounding effects, we used a between\-group design such that participants were randomly presented with only one of the two types \(i\.e\. FCC OR UGC\) of social media brand\-related communication based on their declared brands\. Participants could take the survey only once\. The initial sample comprised 948 social media users\. Participants’ mean age was 36\.51 years \(#emph[SD] \= 10\.34 years\) and 45% \(#emph[n] \= 427\) were female\.

== Measures
#par(first-line-indent: 0em)[The sociodemographic questions comprised participants’ gender \(male, female\), age, education level, employment status and household income \(in US dollars\)\. In line with recent research \(Schivinski, 2021\; Schivinski #emph[et al\.], 2021\), social media usage was captured by overall daily usage \(less than an hour, 1–2 h, 3–4 h and above 5 h\), average minutes spent per session and usage of social media on a smartphone \(no, yes\)\.]

In terms of fashion brands, participants were requested to disclose a brand they actively followed on social media\. In line with the literature on the perceptions of firm\-created and UGC, it is assumed that participants declared brand represents a top\-of\-mind brand when recalling from memory \(Schivinski and Dabrowski, 2016\) and, therefore, they should be well\-familiar with the brand\. To verify this assumption, the survey controlled for brand familiarity using a three\-item scale \(familiar with, experienced with and knowledgeable about the brand\) adopted from Kent and Allen \(1994\)\. The scale was anchored from 1 “strongly disagree” to 5 “strongly agree” \(α \= 0\.72\)\. Additional control checks included a four single\-item scale developed for this study on participants’ confidence about recalling the brand \(for FCC: “I am confident that I can remember social media posts created by \[Fashion Brand\]” and “I am certain that I can remember seen social media posts by \[Fashion Brand\] on their official account on \[Social Media Platform\] ”\; for UGC: “I am confident that I can remember social media posts about \[Fashion Brand\] posted by other users on \[Social Media Platform\]” and “I am certain that I can remember seen social media posts about \[Fashion Brand\] posted by other users on \[Social Media Platform\]”\)\. The above\-mentioned scales were rated from 1 “strongly disagree” to 5 “strongly agree\.” Finally, brand usage was assessed by a single frequency measurement regarding how often the participant uses\/consumes the chosen brand \(1 “never” to 5 “very often”\)\.

Regarding the levels of engagement with fashion brands on social media, participants were requested to declare the most predominant social media platform used to interact with fashion brands \(e\.g\. Facebook, Instagram, TikTok\)\; the frequency of receiving social media posts about the chosen fashion brand both in terms of FCC or UGC \(1 “never” to 5 “very often”\)\; the frequency of receiving social media posts about fashion brands in general \(1 “never” to 5 “very often”\)\; and perceived levels of engagement with the fashion brand on social media \(1 “never” to 5 “very often”\)\.

Perceptions of FCC and UGC were captured using the scales adopted from Schivinski and Dabrowski \(2016\)\. Each scale uses four items to capture participants’ perceptions towards brand\-related content of fashion products on social media\. The Cronbach’s alpha for the scales were α#sub[\(FCC\)] \= 0\.71 and α#sub[\(UGC\)] \= 0\.73, respectively\. A single\-dimensional four\-item CBBE scale was adopted from Yoo and Donthu \(2001\) to capture the overall preference of a fashion brand\. The scale yielded a reliability score of α\= 0\.75\. To measure the level of consumer’s self\-congruity, a five\-item scale was adopted from Sirgy #emph[et al\.] \(1997\)\. The reliability of the scale was α \= 0\.90\. Purchase intention of fashion products was captured by a three\-item scale adapted from Yoo #emph[et al\.] \(2000\) \(α\= 0\.75\)\. All the scales were anchored from 1 “strongly disagree” to 5 “strongly agree”\. The Cronbach’s alpha for all the scales was well above the recommended threshold of 0\.70 \(Kline, 2011\)\.

== Data management and analytic strategy
#par(first-line-indent: 0em)[The management of the data included inspecting the data set for missing and unusual values, univariate normality and univariate and multivariate outliers\. As a characteristic of panel data, a small number of responses \(#emph[n] \= 21\; 2\.2%\) had multiple missing values \(Goodman #emph[et al\.], 2013\) and were removed from the analysis\. An additional 305 responses were also removed from the analysis, either because of failing the control checks \(#emph[n] \= 157\; 20\.1%\) or failing to nominate a valid fashion brand \(#emph[n] \= 148\; 15\.9%\)\.]

To inspect the data for univariate normality, the skewness and kurtosis were calculated for all items of the survey\. The computations yielded no absolute values of kurtosis \> 8 or skewness \> 3 for any of the items \(Kline, 2011\)\. In terms of univariate outliers, the standardised composite sum scores were computed for all the latent variables in the study\. The benchmark to consider a case as a univariate outlier was a score of ± 3\.29 standard deviations from a latent variable’s #emph[z]\-score\. The adopted benchmark includes around 99\.9% of the normally distributed #emph[z]\-scores for unidimensional latent variables \(Field, 2017\)\. No cases were deleted\.

Finally, we inspected the data for multivariate outliers using Mahalanobis distances and the critical value for each case \(values were based on the Chi\-square distribution\) \(Field, 2017\), which resulted in no further exclusion of participants\. The overall final sample size comprised 622 participants\. They were evenly presented in the two social media content condition: #emph[n]#sub[FCC] \= 311 \(50%\) and #emph[n]#sub[UGC] \= 311 \(50%\)\.

== Statistical analyses
#par(first-line-indent: 0em)[The statistical analyses encompassed the following stages:]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[•  descriptive analysis of the structure of the sample\;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[•  correlational analysis across the variables included in the study\;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[•  mediation analysis\; and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[•  a moderated mediation analysis using the IBM SPSS macro – PROCESS \(models 4 and 8\; Hayes, 2018\)\.]]
PROCESS is widely used in social sciences for computing complex models that include both mediating and moderating variables\. To date, PROCESS is still the recommended instrument to calculate advanced models that specify moderated mediation processes \(Field, 2017\; Hayes, 2018\)\. The macro is based on linear regression analysis\; therefore, the variation inflation factors \(VIF\) were inspected to determine potential multicollinearity issues with the data\. All VIF coefficients were less than or equal to 1\.87 \(CBBE\), which are well below the threshold of 10, evidencing no multicollinearity issues \(Field, 2017\)\. Finally, the inferences about the conditional and indirect effects for the statistical analysis were based on percentile bootstrap confidence intervals \(#emph[n] \= 10,000 samples\; 95% lower and upper percentiles\) significantly different from zero \(Hayes, 2018\; Hayes and Scharkow, 2013\)\. All analyses were conducted using IBM SPSS 26\.0\.

= Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Descriptive statistics
#par(first-line-indent: 0em)[Participants had a mean age of 36\.45 years \(SD \= 10\.26 years, min\. \= 19 years, max\. \= 74 years\) and 44\.1% were female \(#emph[n] \= 274\)\. Furthermore, 54\.7% of the participants \(#emph[n] \= 340\) completed at least some college education, 85% \(#emph[n] \= 529\) were employed full\-time and 20\.4% \(#emph[n] \= 127\) had an annual household income of US\$50,000–US\$60,000\.]

In terms of social media usage, 46\.6% \(#emph[n] \= 290\) of the participants spent about 1–2 h a day on social media, with an average of 28\.61 min spent per session\. About 92\.6% \(#emph[n] \= 576\) of the sample used social media on a smartphone\. The most used social media channels to follow fashion brands was Instagram \(59\.5%\; #emph[n] \= 370\) and Facebook \(23%\; #emph[n] \= 143\)\. Most participants regularly received firm\-created \(91\.5%\; #emph[n] \= 569\) or user\-generated \(78\.9%\; #emph[n] \= 491\) social media brand\-related content for the recalled brand and other fashion brands \(92\.6%\; #emph[n] \= 576\)\.

Participants shared their opinions on 168 brands covering various types, such as sports brands \(e\.g\. Nike, Adidas\) and premium fashion brands \(e\.g\. Dolce & Gabbana, Burberry\)\. Finally, 22\.8% \(#emph[n] \= 142\) of the sample declared very engaged with the recalled fashion brand\.

== Purchase intentions
#par(first-line-indent: 0em)[Correlates of purchase intentions with all the main variables of the study were analysed by using Pearson correlations \(#emph[r]\)\. To facilitate statistical calculations, the mean aggregated score for each latent variable was computed\. Overall, purchase intention was positively associated with FCC \(#emph[r] \= 0\.70\; #emph[p] \< 0\.001\), CBBE \(#emph[r] \= 0\.58\; #emph[p] \< 0\.001\), UGC \(#emph[r] \= 0\.57\; #emph[p] \< 0\.001\) and self\-congruity \(#emph[r] \= 0\.47\; #emph[p] \< 0\.001\)\.]

Age significantly correlated with FCC \(#emph[r] \= −0\.09, #emph[p] \< 0\.01\) and self\-congruity \(#emph[r] \= −0\.06, #emph[p] \= 0\.10\)\. Gender significantly correlated with purchase intentions \(#emph[r]#sub[FEMALE:1] \= −0\.06, #emph[p] \< 0\.01\) and CBBE \(#emph[r]#sub[FEMALE:1] \= −0\.06, #emph[p] \= 0\.10\)\. The use of social media platforms did not correlate with any key variables, whereas the usage\/consumption of fashion brands significantly correlated with all key variables, ranging from #emph[r] \= 0\.22 \(self\-congruency\; #emph[p] \< 0\.00\) to #emph[r] \= 0\.51 \(for purchase intentions\; #emph[p] \< 0\.001\)\. The direction and significance of the correlations are in line with previous findings \(Schivinski #emph[et al\.], 2021\; Schivinski and Dabrowski, 2016\)\. The correlation matrix, reliability scores, means and standard deviations for all variables are reported in Table 1\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Descriptive statistics and intercorrelations across variables]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1.6fr, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Variables]], [#strong[α]], [#strong[#emph[M]]], [#strong[SD]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]]),
table.hline(stroke: 0.5pt),
[1\. Firm\-created social media brand\-related content], [0\.71], [4\.07], [0\.52], [–], [], [], [], [],
[2\. User\-generated social media brand\-related content], [0\.73], [3\.97], [0\.53], [–], [–], [], [], [],
[3\. Consumer\-based brand equity], [0\.75], [4\.02], [0\.58], [0\.61#super[\*\*\*]], [0\.53#super[\*\*\*]], [–], [], [],
[4\. Self\-congruity], [0\.90], [3\.90], [0\.65], [0\.54#super[\*\*\*]], [0\.59#super[\*\*\*]], [0\.54#super[\*\*\*]], [–], [],
[5\. Purchase intention of fashion products], [0\.75], [4\.22], [0\.55], [0\.70#super[\*\*\*]], [0\.57#super[\*\*\*]], [0\.58#super[\*\*\*]], [0\.47#super[\*\*\*]], [–],
[Gender \(ref: female \= 1\)], [–], [–], [–], [0\.03], [−0\.02], [−0\.06#super[\*]], [0\.02], [−0\.06#super[\*]],
[Age], [–], [–], [–], [−0\.09#super[\*]], [0\.01], [−0\.02], [−0\.06#super[\*]], [−0\.02],
[Social media platform], [–], [–], [–], [−0\.06], [−0\.08], [0\.01], [−0\.06], [−0\.05],
[Brand usage \(FCC\; UGC\)], [–], [3\.86\; 3\.77], [0\.76\; 0\.79], [0\.30#super[\*\*\*]], [0\.38#super[\*\*\*]], [0\.29#super[\*\*\*]\; 0\.39#super[\*\*\*]], [0\.22#super[\*\*\*]\; 0\.38#super[\*\*\*]], [0\.40#super[\*\*\*]\; 0\.51#super[\*\*\*]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Notes]: Sample FCC comprises effects of Column 1: #emph[n] \= 311\; sample UGC comprises effects of Column 2: #emph[n] \= 311\; overall sample comprises effects of Columns 3, 4 and 5: #emph[n] \= 622\. #super[\*\*\*]#emph[p] \< 0\.001, #super[\*]#emph[p] \< 0\.10]
]
#v(12pt)
== Hypothesis testing
#par(first-line-indent: 0em)[To test the conceptual model and postulated hypotheses, four models were estimated\. The first two models tested #emph[H1]\; hence, a mediating model was specified to include the effects of FCC \(Model 1a\) and UGC \(Model 1b\) on purchase intentions of fashion products through CBBE\. The results comprise direct, indirect and total effects across the variables\.]

Two follow\-up models were specified to explore #emph[H2] and therefore account for the moderating role of self\-congruity on the mediating influence of CBBE on the relationship between FCC \(Model 2a\) and UGC \(Model 2b\) and purchase intention of fashion products\. In line with previous research on social media behaviour \(Schivinski, 2021\; Schivinski #emph[et al\.], 2020\), all models controlled for age, gender, social media platform and brand usage\.

The main results for the moderated mediation model consist of three parts:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[1  mediator and dependent variable model\;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[2  conditional direct effect analysis\; and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[3  conditional indirect effect analysis\.]]
The mediator variable model was specified to calculate the effects of both social media content types and self\-congruity on CBBE\. The dependent variable model was specified to test the effects of both social media content types, self\-congruity and CBBE on purchase intentions of fashion products\. The conditional direct effect analysis was specified to test the influence of both FCC and UGC on purchase intentions of fashion products at the mean of self\-congruity, as well as plus and minus one standard deviation from the mean\. Similarly, the conditional indirect effect analysis was specified to test the effects of both FCC and UGC on purchase intentions of fashion products through the mediation of CBBE at the mean of self\-congruity and plus and minus one standard deviation from the mean\. To facilitate interpretation, only the main results are reported\. Table 2 summarises the full results\.

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 2.] Mediation and moderated mediation analysis effects]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Hypothesis and effects]], [#strong[FCC β]], [#strong[SE]], [#strong[#emph[t]\-Value]], [#strong[#emph[p]\-Value]], [#strong[UGC β]], [#strong[SE]], [#strong[#emph[t]\-Value]], [#strong[#emph[p]\-Value]]),
table.hline(stroke: 0.5pt),
[#emph[H1\. Mediation \(Models 1a and 1b\)\. Outcome: consumer\-based brand equity]], [], [], [], [], [], [], [], [],
[Age], [0\.02], [0\.01], [0\.63], [0\.52], [−0\.03], [0\.01], [−0\.81], [0\.41],
[Gender \(ref: female \= 1\)], [−0\.07], [0\.05], [−1\.64], [0\.10], [−0\.03], [0\.05], [−0\.021], [0\.83],
[Social media platform], [0\.01], [0\.02], [0\.04], [0\.96], [0\.09], [0\.02], [1\.91], [0\.05],
[Brand usage], [0\.10], [0\.03], [2\.32], [0\.02], [0\.22], [0\.03], [4\.31], [0\.001],
[Social media brand\-related content type], [0\.59], [0\.05], [12\.61], [0\.001], [0\.45], [0\.05], [8\.95], [0\.001],
[#emph[Outcome: purchase intention]], [], [], [], [], [], [], [], [],
[Age], [0\.02], [0\.01], [0\.55], [0\.57], [−0\.01], [0\.01], [−0\.31], [0\.75],
[Gender \(ref: female \= 1\)], [0\.01], [0\.04], [0\.09], [0\.92], [−0\.05], [0\.04], [−1\.41], [0\.15],
[Social media platform], [0\.03], [0\.01], [1\.01], [0\.30], [−0\.05], [0\.01], [−1\.27], [0\.20],
[Brand usage], [0\.18], [0\.02], [4\.58], [0\.001], [0\.27], [0\.03], [5\.89], [0\.001],
[Social media brand\-related content type], [0\.51], [0\.05], [10\.40], [0\.001], [0\.31], [0\.05], [6\.34], [0\.001],
[Consumer\-based brand equity], [0\.22], [0\.04], [4\.68], [0\.001], [0\.28], [0\.04], [5\.79], [0\.001],
[#emph[Total effect]], [β], [SE], [#emph[t]], [#emph[p]], [β], [SE], [#emph[t]], [#emph[p]],
[Content type on purchase intention], [0\.64], [0\.04], [15\.68], [0\.001], [0\.44], [0\.04], [9\.59], [0\.001],
[#emph[Indirect effect]], [ind\. β], [Boot SE], [LLCI], [ULCI], [ind\. β], [Boot SE], [LLCI], [ULCI],
[Content type → CBBE → purchase intention], [0\.13], [0\.03], [0\.06], [0\.20], [0\.13], [0\.03], [0\.06], [0\.21],
[#emph[H2\. Conditional process \(Models 2a and 2b\)\. Mediator model: consumer\-based brand equity]], [β], [SE], [#emph[t]], [#emph[p]], [β], [SE], [#emph[t]], [#emph[p]],
[Age], [0\.01], [0\.01], [0\.43], [0\.66], [−0\.01], [0\.01], [−0\.32], [0\.74],
[Gender \(ref: female \= 1\)], [−0\.08], [0\.04], [−1\.76], [0\.07], [−0\.01], [0\.05], [−0\.24], [0\.80],
[Social media platform], [0\.01], [0\.02], [0\.71], [0\.47], [0\.03], [0\.02], [1\.48], [0\.13],
[Brand usage], [0\.07], [0\.03], [2\.28], [0\.02], [0\.12], [0\.03], [3\.43], [0\.001],
[Social media brand\-related content type], [0\.46], [0\.05], [8\.26], [0\.001], [0\.29], [0\.06], [4\.67], [0\.001],
[Self\-congruity], [0\.24], [0\.04], [5\.89], [0\.001], [0\.31], [0\.05], [5\.74], [0\.001],
[Content type × self\-congruity], [−0\.13], [0\.06], [−2\.11], [0\.03], [0\.32], [0\.07], [4\.39], [0\.001],
[#emph[Conditional direct effect on CBBE at values of self\-congruity]], [β], [Boot SE], [LLCI], [ULCI], [β], [Boot SE], [LLCI], [ULCI],
[#emph[M] − 1 SD], [0\.56], [0\.07], [0\.42], [0\.70], [0\.09], [0\.08], [−0\.06], [0\.25],
[#emph[M]\(0\)], [0\.46], [0\.05], [0\.35], [0\.57], [0\.29], [0\.06], [0\.17], [0\.41],
[#emph[M] \+ 1 SD], [0\.36], [0\.07], [0\.22], [0\.51], [0\.49], [0\.07], [0\.35], [0\.63],
[#emph[Dependent variable model: purchase intention]], [β], [SE], [#emph[t]], [#emph[p]], [β], [SE], [#emph[t]], [#emph[p]],
[Age], [0\.01], [0\.01], [0\.57], [0\.56], [0\.01], [0\.01], [0\.01], [0\.99],
[Gender \(ref: female \= 1\)], [0\.01], [0\.04], [0\.11], [0\.91], [−0\.08], [0\.04], [−1\.80], [0\.07],
[Social media platform], [0\.01], [0\.01], [0\.97], [0\.33], [−0\.02], [0\.01], [−1\.41], [0\.15],
[Brand usage], [0\.13], [0\.02], [4\.52], [0\.001], [0\.17], [0\.03], [5\.37], [0\.001],
[Social media brand\-related content type], [0\.54], [0\.05], [9\.96], [0\.001], [0\.26], [0\.05], [4\.73], [0\.001],
[Consumer\-based brand equity], [0\.22], [0\.04], [4\.47], [0\.001], [0\.23], [0\.04], [4\.87], [0\.001],
[Self\-congruity], [−0\.01], [0\.03], [−0\.22], [0\.82], [0\.12], [0\.05], [2\.57], [0\.01],
[Content type × self\-congruity], [0\.01], [0\.05], [0\.18], [0\.85], [−0\.03], [0\.06], [−0\.60], [0\.54],
[#emph[Conditional direct effect on purchase intention at values of self\-congruity]], [β], [Boot SE], [LLCI], [ULCI], [β], [Boot SE], [LLCI], [ULCI],
[#emph[M] − 1 SD], [0\.53], [0\.06], [0\.40], [0\.66], [0\.28], [0\.07], [0\.14], [0\.42],
[#emph[M]\(0\)], [0\.54], [0\.05], [0\.43], [0\.64], [0\.26], [0\.05], [0\.15], [0\.37],
[#emph[M] \+ 1 SD], [0\.54], [0\.06], [0\.41], [0\.68], [0\.24], [0\.06], [0\.11], [0\.36],
[#emph[Conditional indirect effect on purchase intention \(mediator \= CBBE\)]], [ind\. β], [Boot SE], [LLCI], [ULCI], [ind\. β], [Boot SE], [LLCI], [ULCI],
[#emph[M] − 1 SD], [0\.12], [0\.03], [0\.05], [0\.20], [0\.02], [0\.03], [−0\.04], [0\.10],
[#emph[M]\(0\)], [0\.10], [0\.03], [0\.04], [0\.16], [0\.07], [0\.03], [0\.01], [0\.14],
[#emph[M] \+ 1 SD], [0\.08], [0\.02], [0\.03], [0\.14], [0\.11], [0\.03], [0\.04], [0\.20],
[#emph[Index of moderated mediation]], [Coeff\.], [], [LLCI], [ULCI], [Coeff\.], [], [LLCI], [ULCI],
[Index], [−0\.03], [], [−0\.07], [0\.01], [0\.07], [], [0\.01], [0\.14],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Notes]: FCC: firm\-created social media brand\-related content\; UGC: user\-generated social media brand\-related content\; CBBE: consumer\-based brand equity\; PI: purchase intention of fashion products\; #emph[M]: mean\; SD: standard deviation\; #emph[ind\.] β: indirect beta\; CI: confidence interval\; LL: lower limit\; UL: upper limit\; Boot \= bootstrap\; SE: standard error\; Bootstrap sample size \= 10,000]
]
#v(12pt)
== Mediation analysis
#par(first-line-indent: 0em)[The results for Model 1a \[#emph[F]#sub[\(6, 304\)] \= 66\.88, #emph[R]#super[2] \= 0\.56, #emph[p] \< 0\.001\], after controlling for age, gender, social media platform and fashion brand usage revealed that FCC positively influenced CBBE \(β \= 0\.59, #emph[p] \< 0\.001\)\; in turn, CBBE positively predicted purchase intention of fashion products \(β \= 0\.22, #emph[p] \< 0\.001\)\. Regarding the indirect effects, FCC positively influenced purchase intention of fashion products, when consumers hold favourable CBBE perceptions of fashion brands \(#emph[ind\.]β \= 0\.13\; 95% CI \[0\.06, 0\.20\]\)\.]

The results for Model 1b \[#emph[F]#sub[\(6, 304\)] \= 49\.75, #emph[R]#super[2] \= 0\.49, #emph[p] \< 0\.001\], after controlling for age, gender, social media platform and fashion brand usage, were consistent with Model 1a\. Thus, UGC positively influenced CBBE \(β \= 0\.45, #emph[p] \< 0\.001\), which in turn positively predicted purchase intentions of fashion products \(β \= 0\.28, #emph[p] \< 0\.001\)\. The indirect effect was statistically significant and different from zero \(#emph[ind\.]β \= 0\.13\; 95% CI \[0\.06, 0\.21\]\)\. Taken together, it can be concluded that CBBE mediates the effect of both FCC and UGC on consumer’s intentions to purchase fashion products\. This provides support to #emph[H1]\.

== Moderated mediation analysis
#par(first-line-indent: 0em)[Model 2a examines the effects of FCC on purchase intentions after the inclusion of self\-congruity as moderator and controlling for age, gender, social media platform and fashion brand usage\. The results for the mediator variable model \[#emph[F]#sub[\(7, 303\)] \= 39\.00, #emph[R]#super[2] \= 0\.47, #emph[p] \< 0\.001\] and the dependent variable model \[#emph[F]#sub[\(8, 302\)] \= 49\.85, #emph[R]#super[2] \= 0\.56, #emph[p] \< 0\.001\] yielded results that were consistent with those from the mediation analysis \(i\.e\. the models excluding self\-congruity\; see Table 2 for the breakdown of effects\)\.]

Regarding the conditional direct effect on the mediating variable, the effects of FCC on brand equity were positive and significantly different from zero, based on the self\-congruity values at the mean \(#emph[M]\) and at ±1 standard deviation\. The effects were stronger for low self\-congruity \(#emph[M – 1 SD], β \= 0\.56\; 95% CI \[0\.42, 0\.70\]\) compared to average \(#emph[M] \(0\), β \= 0\.46\; 95% CI \[0\.35, 0\.57\]\; Δ \= −0\.10\) and high self\-congruity \(#emph[M] \+ 1 SD, β \= 0\.36\; 95% CI \[0\.22, 0\.51\]\; Δ \= −0\.20\)\. These results indicate that an increase in self\-congruity results in a stronger direct impact of FCC on brand equity \(see Figure 2\)\. In turn, the conditional direct effect analysis accounting for the effects of FCC on purchase intentions was not statistically significantly different, as the confidence interval covered zero \(95% CI \[−0\.10, 0\.12\]\)\.

#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 2\. Self\-congruity moderates the relation between social media brand\-related content types and consumer\-based brand equity]]
#v(0.6em)
In terms of the conditional indirect effects \(moderated\-mediation\), the influence of FCC on purchase intentions through CBBE was statistically significant different from zero at low \(#emph[M] – 1 SD, #emph[ind\.]β \= 0\.12\; 95% CI \[0\.05, 0\.20\]\), average \(#emph[M]\(0\), #emph[ind\.]β \= 0\.10\; 95% CI \[0\.04, 0\.16\]\; Δ \= −0\.02\) and high self\-congruity \(#emph[M] \+ #emph[1 SD], #emph[ind\.]β \= 0\.08\; 95% CI \[0\.03, 0\.14\]\; Δ \= −0\.04\)\. While the individual indirect effects were significant for all levels, the index of moderated mediation \(#emph[coeff\.] \= −0\.03\) evidenced no moderated mediation, as the confidence interval covered zero \(95% CI \[−0\.074, 0\.006\]\)\. These results reveal that while the effect of FCC on purchase intentions was mediated by CBBE, this mediation effect was not moderated by self\-congruency\.

Model 2b accounted for the effects of UGC on purchase intentions of fashion products specifying self\-congruity as moderator, and controlling for age, gender, social media platform and fashion brand usage\. The results for the mediator variable model \[#emph[F]#sub[\(7, 303\)] \= 31\.34, #emph[R]#super[2] \= 0\.42, #emph[p] \< 0\.001\] and the dependent variable model \[#emph[F]#sub[\(8, 302\)] \= 39\.08, #emph[R]#super[2] \= 0\.50, #emph[p] \< 0\.001\] closely align with those from the mediation analysis \(see Table 2 for details\)\.

As per the conditional direct effect analysis on the mediating variable, the results supported the effects of UGC on brand equity\. Apart from the effect of low self\-congruity, which was not statistically significant \(#emph[p] \= 0\.24\), the effects were smaller for average self\-congruity \(#emph[M]\(0\), β \= 0\.29\; 95% CI \[0\.17, 0\.41\]\) than for high self\-congruity \(#emph[M] \+ #emph[1 SD], β \= 0\.49\; 95% CI \[0\.35, 0\.63\]\; Δ \= 0\.20\)\. The results suggest that an increase in self\-congruity amplifies the direct impact of UGC on purchase intentions \(see Figure 2\)\. The conditional direct effect accounting for the effects of UGC on purchase intentions was not significant, as the confidence interval covered zero \(95% CI \[−0\.16, 0\.08\]\)\.

Finally, in terms of the conditional indirect effects \(moderated\-mediation\), the influence of UGC on purchase intentions through CBBE accounting for different levels of self\-congruity was statistically significant and different from zero\. The indirect effects were smaller for low self\-congruity \(#emph[M]\(0\), #emph[ind\.]β \= 0\.07\; 95% CI \[0\.01, 0\.14\]\) than for self\-congruity \(#emph[M] \+ 1 SD, #emph[ind\.]β \= 0\.11\; 95% CI \[0\.04, 0\.20\]\; Δ \= 0\.04\)\. No indirect effects were found for low self\-congruity \(95% CI \[−0\.04, 0\.10\]\)\. The moderated mediation index \(#emph[coeff\.] \= 0\.07\) supported a moderated mediation process, as the confidence interval did not cover zero \(95% CI \[0\.01, 0\.14\]\)\.

= Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Theoretical contribution
#par(first-line-indent: 0em)[Social media has strongly impacted the ways in which brands communicate with consumers \(Schivinski and Dabrowski, 2016\)\. It plays a significant role by allowing individuals to socially shape attitudes and perceptions \(France #emph[et al\.], 2020\), co\-create brand value \(Fan #emph[et al\.], 2020\; Varma #emph[et al\.], 2016\) and, most importantly, use the brand to express themselves \(Zhu #emph[et al\.], 2019\)\. This flow of communication is particularly helpful in the context of fashion brands, as consumers frequently use fashion to express their identities \(Zhu #emph[et al\.], 2019\)\.]

In spite of the relevance of social media brand\-related communication, the literature so far has mainly focused on understanding the aspects of FCC and UGC that influence consumers’ perceptions, attitudes and behaviours \(Colicev #emph[et al\.], 2019\)\. There is little knowledge on how individual differences influence consumer’s response to social media brand\-related communication \(Gómez #emph[et al\.], 2019\)\. Considering this view, the current study contributes to the literature by drawing on self\-congruence theory \(Sirgy, 1982\), which understands consumer’s use of brands as a tool for self\-expression to explore the interplay between brand\-related content, brand equity and social media\. More specifically, this study reveals the circumstances under which consumer’s self\-congruity moderates the influence of FCC and UGC on their perceptions of fashion brands \(in terms of brand equity\), and consequently, their intention to purchase fashion products\.

The findings indicate that both FCC and UGC directly and positively influence CBBE, which in turn influences the purchase of fashion products\. These findings are in line with previous studies, which find that the consumer’s decision\-making process is driven by intuitive thinking and positive brand perceptions \(Alvarado\-Karste and Guzmán, 2020\; Schivinski #emph[et al\.], 2020\)\.

The current study also contributes to the literature by exploring the role of self\-congruity in shaping consumer perceptions and behaviour, as self\-image has important implications for theory and practice in the field of fashion branding\. The findings reveal that higher\/lower levels of self\-congruity moderate the direct relationships between both types of social media brand\-related content and CBBE, where higher\/lower levels of self\-congruity weaken\/enhance the effects of social media content on CBBE\. More specifically, the moderating effect is particularly pronounced at higher levels of self\-congruity for UGC\. These findings are in line with existing evidence that demonstrates that UGC is overall more effective than FCC \(Schivinski and Dabrowski, 2016\; Colicev #emph[et al\.], 2019\)\. Therefore, consumers, who have higher levels of self\-projections and identification with the brand, will be more susceptible to UGC pertinent to the brand\. However, the effect of self\-congruity is only limited to UGC, as consumers are equally susceptible to firm\-generated content regardless of their levels of identification with the brand\.

Our findings should not be interpreted without the consideration of contextual factors\. The moderated mediation results revealed that for fashion brands, CBBE operates in an ecosystem with the consumer’s self\-congruity\. Consumers’ perception of brand equity plays an important role in mediating the positive impact of social media content on their behavioural responses, with the mediating role of CBBE being stronger for UGC, and more pronounced when consumers hold higher levels of self\-congruity\. This is revealed in the interaction between user\-generated social media, brand\-related content and self\-congruity, which demonstrated that the indirect effects of this social media communication type on purchase intention through CBBE were exponentially stronger when the consumers levels of self\-congruity with the brand increase\.

In summary, this study contributes to the literature by showing that, for fashion brands, tailored, individual\-relevant content relevant to the brand on social media is a strong predictor of positive attitudes, which could result in a greater purchase propensity\.

== Managerial contribution
#par(first-line-indent: 0em)[The current study supports the idea that consumers tend to follow fashion brands on social media whose meanings are consistent with their self\-image and that consumers will consequently express their own identity and materialise self\-expression through buying behaviours \(Orehek and Human, 2017\)\. This concept is of great importance when accounting for the new trends of social media brand\-related communication \(Peng #emph[et al\.], 2018\)\. By trying to align social media brand\-related content with their marketing objectives, firms are in direct contact with content creators \(e\.g\. celebrities, influencers\) and through product\/brand endorsements \(Alvarado\-Karste and Guzmán, 2020\; Schivinski #emph[et al\.], 2020\)\.]

Based on the findings presented in this paper, therefore, we recommend that FCC should still be considered as an important choice for communication for fashion brands when reaching out for their target audiences and, preferably, using cross\-media channels \(Fernandes and Inverneiro, 2021\)\. Our recommendation is based on the finding that FCC influences consumers’ purchases intentions regardless of the level of self\-congruency, which suggests that fashion brands are able to communicate brand value and meaning without being concerned about how individual differences may alter the processing of the message meaning\.

Our findings also show that the influence of UGC is a function of one’s level of self\-congruency with fashion brands\. This finding suggests that brands should look into partnering with users from an influencer marketing perspective\. This approach was proven to be effective for fashion brands to build presence and trustworthiness on social media \(Jin #emph[et al\.], 2021\)\. Firms should aim to understand the level of influencer–follower affinity as followers with lower self\-congruity levels are less likely to be influenced by UGC\. In support of this notion, previous research shows that self\-influencer congruence leads consumers to mimic influencers whom they admire \(Dwivedi #emph[et al\.], 2015\; Xiao #emph[et al\.], 2021\)\. For this reason, consumers pay particular attention to the recommendations of influencers that they consider as their role models, especially for the industries for which brands are used as an extension of the self \(e\.g\. the automotive industry\) \(Belk, 2013\)\.

When integrating UGC as a part of their branding communication strategy, fashion brands should benefit from the recent guidelines on how social media influencers are obliged to reveal that their posts are endorsed \(ASA, 2018\) and closely align endorsed UGC with FCC\. This notion is supported by Nash’s \(2019\) study of social media’s effects on consumer decision\-making processes, which shows that both types of communications have an amplifying effect on decision\-making\. Ultimately, this practice may be enhanced by combining UGC and FCC along with customer\-based brand equity, consumer behavioural engagement on social media \(in terms of clicking, commenting, sharing, liking\; Schivinski, 2019\) into a series of events strategised by using owned and paid social media \(Colicev #emph[et al\.], 2019\)\. However, brand managers and executives should acknowledge that consumer’s decision\-making process is complex and that the affective, cognitive, and behavioural responses to fashion brands jointly reflect the self\. Therefore, brands should guide and support content creators when implementing endorsement strategies\. Altogether, findings from this paper should help fashion marketers to manage their brands more effectively on social media\.

== Limitations and future research
#par(first-line-indent: 0em)[Although carefully planned and executed, this research is not without limitations\. The findings need to be considered cautiously, given the single industry being investigated, sample characteristics \(e\.g\. respondents were constrained to one country\) and the constructs \(e\.g\. CBBE\) being accessed without a nuanced consideration of potential sub\-dimensions \(Christodoulides and de Chernatony, 2010\)\.]

Future studies could extend the findings by manipulating both social media content types and exploring the effects in a controlled, laboratory setting\. Future studies could also include potential mediating constructs suggested in the literature but not yet empirically validated on behavioural outcomes, such as consumer online activities \(i\.e\. COBRAs\) \(Schivinski #emph[et al\.], 2016\), and further explore specific brand\-related variables relevant to the fashion industry \(e\.g\. brand image and brand attitude\) and other industries and sectors\. Moreover, validating this model in various cultural contexts is crucial, as there is evidence that consumer engagement and usage of social media platforms differ across countries \(Dessart and Pitardi, 2019\) and cultures \(Kitirattarkarn #emph[et al\.], 2019\)\. Additionally, examining the effect of social media brand\-related content in other contexts, such as not\-for\-profit industries, universities and federal institutions, could also be an important research avenue given the importance of social media communication for various organisational types \(Pizzuti #emph[et al\.], 2020\; Quiroz Flores #emph[et al\.], 2021\)\.

Future research could use structural equation modelling to replicate and extend findings from this research\. To ensure statistical power, a larger sample size would be preferred and preferably estimated using a Monte–Carlo simulation \(Muthén and Curran, 1997\)\. Furthermore, the examination of generational cohort effects on the interactive effects between social media content, brand communication and self\-congruity is also important, given the important differences in values, attitudes and behaviours across generations \(Krishen #emph[et al\.], 2016\)\. Finally, future research may benefit from using time\-series data and longitudinal designs, which can shed additional light on the effects of self\-congruity and social media content \(Kaur and Anand, 2021\)\.

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Alvarado\-Karste, D\. and Guzmán, F\. \(2020\), “The effect of brand identity\-cognitive style fit and social influence on consumer\-based brand equity”, #emph[Journal of Product & Brand Management], Vol\. 29 No\. 7, pp\. 971\-984, doi: 10\.1108\/JPBM\-06\-2019\-2419\.

ASA\. \(2018\), “New guidance launched for social influencers”, available at: www\.asa\.org\.uk\/news\/new\-guidance\-launched\-for\-social\-influencers\.html \(accessed 17 March 2021\)\.

Ashley, C\. and Tuten, T\. \(2015\), “Creative strategies in social media marketing: an exploratory study of branded social content and consumer engagement”, #emph[Psychology & Marketing], Vol\. 32 No\. 1, pp\. 15\-27, doi: 10\.1002\/mar\.20761\.

Baack, D\.W\., Czarnecka, B\. and Baack, D\. \(2018\), #emph[International Marketing], Sage\.

Barreda, A\.A\., Nusair, K\., Wang, Y\., Okumus, F\. and Bilgihan, A\. \(2020\), “The impact of social media activities on brand image and emotional attachment”, #emph[Journal of Hospitality and Tourism Technology], Vol\. 11 No\. 1, pp\. 109\-135, doi: 10\.1108\/JHTT\-02\-2018\-0016\.

Belk, R\.W\. \(2013\), “Extended self in a digital world”, #emph[Journal of Consumer Research], Vol\. 40 No\. 3, pp\. 477\-500, doi: 10\.1086\/671052\.

Breves, P\.L\., Liebers, N\., Abt, M\. and Kunze, A\. \(2019\), “The perceived fit between Instagram influencers and the endorsed brand”, #emph[Journal of Advertising Research], Vol\. 59 No\. 4, pp\. 440\-454, doi: 10\.2501\/JAR\-2019\-030\.

Burnasheva, R\., Suh, Y\.G\. and Villalobos\-Moron, K\. \(2019\), “Sense of community and social identity effect on brand love: based on the online communities of a luxury fashion brands”, #emph[Journal of Global Fashion Marketing], Vol\. 10 No\. 1, pp\. 50\-65, doi: 10\.1080\/20932685\.2018\.1558087\.

Campbell, C\. and Rapp Farrell, J\. \(2020\), “More than meets the eye: the functional components underlying influencer marketing”, #emph[Business Horizons], Vol\. 63 No\. 4, pp\. 469\-479, doi: 10\.1016\/j\.bushor\.2020\.03\.003\.

Carvalho, A\. and Fernandes, T\. \(2018\), “Understanding customer brand engagement with virtual social communities: a comprehensive model of drivers, outcomes and moderators”, #emph[Journal of Marketing Theory and Practice], Vol\. 26 Nos 1\/2, pp\. 23\-37, doi: 10\.1080\/10696679\.2017\.1389241\.

Chatzipanagiotou, K\., Christodoulides, G\. and Veloutsou, C\. \(2019\), “Managing the consumer\-based brand equity process: a cross\-cultural perspective”, #emph[International Business Review], Vol\. 28 No\. 2, pp\. 328\-343, doi: 10\.1016\/j\.ibusrev\.2018\.10\.005\.

Christodoulides, G\. and de Chernatony, L\. \(2010\), “Consumer\-based brand equity conceptualisation and measurement”, #emph[International Journal of Market Research], Vol\. 52 No\. 1, pp\. 43\-66, doi: 10\.2501\/S1470785310201053\.

Christodoulides, G\., Cadogan, J\.W\. and Veloutsou, C\. \(2015\), “Consumer\-based brand equity measurement: lessons learned from an international study”, #emph[International Marketing Review], Vol\. 32 Nos 3\/4, pp\. 307\-328, doi: 10\.1108\/IMR\-10\-2013\-0242\.

Cobb\-Walgren, C\.J\., Ruble, C\.A\. and Donthu, N\. \(1995\), “Brand equity, brand preference, and purchase intent”, #emph[Journal of Advertising], Vol\. 24 No\. 3, pp\. 25\-40, doi: 10\.1080\/00913367\.1995\.10673481\.

Colicev, A\., Malshe, A\., Pauwels, K\. and O’Connor, P\. \(2018\), “Improving consumer mindset metrics and shareholder value through social media: the different roles of owned and earned media”, #emph[Journal of Marketing], Vol\. 82 No\. 1, pp\. 37\-56, doi: 10\.1509\/jm\.16\.0055\.

Colicev, A\., Kumar, A\. and O’Connor, P\. \(2019\), “Modeling the relationship between firm and user generated content and the stages of the marketing funnel”, #emph[International Journal of Research in Marketing], Vol\. 36 No\. 1, pp\. 100\-116, doi: 10\.1016\/j\.ijresmar\.2018\.09\.005\.

Czarnecka, B\., Schivinski, B\. and Keles, S\. \(2020\), “How values of individualism and collectivism influence impulsive buying and money budgeting: the mediating role of acculturation to global consumer culture”, #emph[Journal of Consumer Behaviour], Vol\. 19 No\. 5, pp\. 1\-18, doi: 10\.1002\/cb\.1833\.

Davcik, N\.S\., Langaro, D\., Jevons, C\. and Nascimento, R\. \(2021\), “Non\-sponsored brand\-related user\-generated content: effects and mechanisms of consumer engagement”, #emph[Journal of Product & Brand Management], Vol\. 31 No\. 1, pp\. 163\-174, doi: 10\.1108\/jpbm\-06\-2020\-2971\.

Dessart, L\. and Pitardi, V\. \(2019\), “How stories generate consumer engagement: an exploratory study”, #emph[Journal of Business Research], Vol\. 104, pp\. 183\-195, doi: 10\.1016\/j\.jbusres\.2019\.06\.045, No\. November\.

Dessart, L\., Veloutsou, C\. and Morgan\-Thomas, A\. \(2020\), “Brand negativity: a relational perspective on anti\-brand community participation”, #emph[European Journal of Marketing], Vol\. 54 No\. 7, pp\. 1761\-1785, doi: 10\.1108\/EJM\-06\-2018\-0423\.

Dwivedi, A\., Johnson, L\.W\. and McDonald, R\.E\. \(2015\), “Celebrity endorsement, self\-brand connection, and consumer\-based Brand equity”, #emph[Journal of Product & Brand Management], Vol\. 24 No\. 5, pp\. 449\-461, doi: 10\.1108\/JPBM\-10\-2014\-0722\.

Eagle, L\., Czarnecka, B\., Dahl, S\. and Lloyd, J\. \(2020\), #emph[Marketing Communications], 2nd ed\., Routledge, London\.

Ebrahim, R\.S\. \(2020\), “The role of trust in understanding the impact of social media marketing on brand equity and brand loyalty”, #emph[Journal of Relationship Marketing], Vol\. 19 No\. 4, pp\. 287\-308, doi: 10\.1080\/15332667\.2019\.1705742\.

Fan, D\.X\.F\., Hsu, C\.H\.C\. and Lin, B\. \(2020\), “Tourists’ experiential value co\-creation through online social contacts: customer\-dominant logic perspective”, #emph[Journal of Business Research], Vol\. 108, pp\. 163\-173, doi: 10\.1016\/j\.jbusres\.2019\.11\.008, No January\.

Faul, F\., Erdfelder, E\., Buchner, A\. and Lang, A\.G\. \(2009\), “Statistical power analyses using G#super[∗]power 3\.1: tests for correlation and regression analyses”, #emph[Behavior Research Methods], Vol\. 41 No\. 4, pp\. 1149\-1160, doi: 10\.3758\/BRM\.41\.4\.1149\.

Fernandes, T\. and Inverneiro, I\. \(2021\), “From fandom to fad: are millennials really engaged with and loyal to their loved brands on social media?”, #emph[Journal of Product & Brand Management], Vol\. 30 No\. 2, pp\. 320\-334, doi: 10\.1108\/JPBM\-02\-2019\-2262\.

Field, A\. \(2017\), #emph[Discovering Statistics Using IBM SPSS Statistics], 5th ed\., Sage Publications, doi: 10\.1111\/j\.1365\-2648\.2007\.04270\_1\.x\.

Filo, K\., Lock, D\. and Karg, A\.J\. \(2015\), “Sport and social media research: a review”, #emph[Sport Management Review], Vol\. 18 No\. 2, pp\. 166\-181, doi: 10\.1016\/j\.smr\.2014\.11\.001\.

France, C\., Grace, D\., Lo Iacono, J\. and Carlini, J\. \(2020\), “Exploring the interplay between customer perceived Brand value and customer brand co\-creation behaviour dimensions”, #emph[Journal of Brand Management], Vol\. 27 No\. 4, pp\. 466\-480, doi: 10\.1057\/s41262\-020\-00194\-7\.

Godey, B\., Manthiou, A\., Pederzoli, D\., Rokka, J\., Aiello, G\., Donvito, R\. and Singh, R\. \(2016\), “Social media marketing efforts of luxury brands: influence on brand equity and consumer behavior”, #emph[Journal of Business Research], Vol\. 69 No\. 12, pp\. 5833\-5841, doi: 10\.1016\/j\.jbusres\.2016\.04\.181\.

Gómez, M\., Lopez, C\. and Molina, A\. \(2019\), “An integrated model of social media brand engagement”, #emph[Computers in Human Behavior], Vol\. 96, pp\. 196\-206, doi: 10\.1016\/j\.chb\.2019\.01\.026, No\. July\.

Goodman, J\.K\., Cryder, C\.E\. and Cheema, A\. \(2013\), “Data collection in a flat world: the strengths and weaknesses of mechanical Turk samples”, #emph[Journal of Behavioral Decision Making], Vol\. 26 No\. 3, pp\. 213\-224, doi: 10\.1002\/bdm\.1753\.

Gunarathne, P\., Rui, H\. and Seidmann, A\. \(2017\), “Whose and what social media complaints have happier resolutions? Evidence from twitter”, #emph[Journal of Management Information Systems], Vol\. 34 No\. 2, pp\. 314\-340, doi: 10\.1080\/07421222\.2017\.1334465\.

Harrigan, P\., Evers, U\., Miles, M\.P\. and Daly, T\. \(2018\), “Customer engagement and the relationship between involvement, engagement, self\-brand connection and brand usage intent”, #emph[Journal of Business Research], Vol\. 88, pp\. 388\-396, doi: 10\.1016\/j\.jbusres\.2017\.11\.046\.

Hayes, A\.F\. \(2018\), #emph[Introduction to Mediation, Moderation, and Conditional Process Analysis: A Regression\-Based Approach], Guilford Press, New York, NY\.

Hayes, A\.F\. and Scharkow, M\. \(2013\), “The relative trustworthiness of inferential tests of the indirect effect in statistical mediation analysis”, #emph[Psychological Science], Vol\. 24 No\. 10, pp\. 1918\-1927, doi: 10\.1177\/0956797613480187\.

Hutter, K\., Hautz, J\., Dennhardt, S\. and Füller, J\. \(2013\), “The impact of user interactions in social media on brand awareness and purchase intention: the case of MINI on Facebook”, #emph[Journal of Product & Brand Management], Vol\. 22 Nos 5\/6, pp\. 342\-351, doi: 10\.1108\/JPBM\-05\-2013\-0299\.

Jin, S\.V\., Ryu, E\. and Muqaddam, A\. \(2021\), “I trust what she’s \#endorsing on Instagram: moderating effects of parasocial interaction and social presence in fashion influencer marketing”, #emph[Journal of Fashion Marketing and Management: An International Journal], Vol\. 25 No\. 4, pp\. 665\-681, doi: 10\.1108\/JFMM\-04\-2020\-0059\.

Kang, Y\.S\., Hong, S\. and Lee, H\. \(2009\), “Exploring continued online service usage behavior: the roles of self\-image congruity and regret”, #emph[Computers in Human Behavior], Vol\. 25 No\. 1, pp\. 111\-122, doi: 10\.1016\/j\.chb\.2008\.07\.009\.

Kaur, H\. and Anand, S\. \(2021\), “Actual versus ideal self: an examination of the impact of fashion self congruence on consumer’s fashion consciousness and status consumption tendencies”, #emph[Journal of Global Fashion Marketing], Vol\. 12 No\. 2, pp\. 146\-160, doi: 10\.1080\/20932685\.2020\.1856705\.

Kees, J\., Berry, C\., Burton, S\. and Sheehan, K\. \(2017\), “An analysis of data quality: professional panels, student subject pools, and amazon’s mechanical Turk”, #emph[Journal of Advertising], Vol\. 46 No\. 1, pp\. 1\-15, doi: 10\.1080\/00913367\.2016\.1269304\.

Kennedy, E\. and Guzmán, F\. \(2017\), “When perceived ability to influence plays a role: brand co\-creation in web 2\.0”, #emph[Journal of Product & Brand Management], Vol\. 26 No\. 4, pp\. 342\-350, doi: 10\.1108\/JPBM\-04\-2016\-1137\.

Kent, R\.J\. and Allen, C\.T\. \(1994\), “Competitive interference effects in consumer memory for advertising: the role of brand familiarity”, #emph[Journal of Marketing], Vol\. 58 No\. 3, p\. 97, doi: 10\.1177\/002224299405800307\.

Kim, A\.J\. and Johnson, K\.K\. \(2016\), “Power of consumers using social media: examining the influences of brand\-related user\-generated content on Facebook”, #emph[Computers in Human Behavior], Vol\. 58, pp\. 98\-108, doi: 10\.1016\/j\.chb\.2015\.12\.047\.

Kitirattarkarn, G\.P\., Araujo, T\. and Neijens, P\. \(2019\), “Challenging traditional culture? How personal and national collectivism\-individualism moderates the effects of content characteristics and social relationships on consumer engagement with brand\-related user\-generated content”, #emph[Journal of Advertising], Vol\. 48 No\. 2, pp\. 197\-214, doi: 10\.1080\/00913367\.2019\.1590884\.

Kline, R\.B\. \(2011\), #emph[Principles and Practice of Structural Equation Modeling], 3rd ed\., The Guilford Press, New York, NY\.

Koivisto, E\. and Mattila, P\. \(2020\), “Extending the luxury experience to social media – user\-generated content co\-creation in a branded event”, #emph[Journal of Business Research], Vol\. 117, pp\. 570\-578, doi: 10\.1016\/j\.jbusres\.2018\.10\.030\.

Kong, H\.M\., Witmaier, A\. and Ko, E\. \(2020\), “Sustainability and social media communication: how consumers respond to marketing efforts of luxury and non\-luxury fashion brands”, #emph[Journal of Business Research], Vol\. 131, pp\. 640\-651, doi: 10\.1016\/j\.jbusres\.2020\.08\.021, No\. July\.

Kressmann, F\., Sirgy, M\.J\., Herrmann, A\., Huber, F\., Huber, S\. and Lee, D\.\-J\. \(2006\), “Direct and indirect effects of self\-image congruence on Brand loyalty”, #emph[Journal of Business Research], Vol\. 59 No\. 9, pp\. 955\-964\.

Krishen, A\.S\., Berezan, O\., Agarwal, S\. and Kachroo, P\. \(2016\), “The generation of virtual needs: recipes for satisfaction in social media networking”, #emph[Journal of Business Research], Vol\. 69 No\. 11, pp\. 5248\-5254, doi: 10\.1016\/j\.jbusres\.2006\.06\.001\.

Kumar, A\., Bezawada, R\., Rishika, R\., Janakiraman, R\. and Kannan, P\.K\. \(2016\), “From social to sale: the effects of firm\-generated content in social media on customer behavior”, #emph[Journal of Marketing], Vol\. 80 No\. 1, pp\. 7\-25, doi: 10\.1509\/jm\.14\.0249\.

Langaro, D\., Rita, P\. and de Fátima Salgueiro, M\. \(2015\), “Do social networking sites contribute for building brands? Evaluating the impact of users’ participation on brand awareness and Brand attitude”, #emph[Journal of Marketing Communications], Vol\. 24 No\. 2, pp\. 1\-23, doi: 10\.1080\/13527266\.2015\.1036100, No\. July 2015\.

Lee, J\.A\. and Eastin, M\.S\. \(2020\), “I like what she’s \#endorsing: the impact of female social media influencers’ perceived sincerity, consumer envy, and product type”, #emph[Journal of Interactive Advertising], Vol\. 20 No\. 1, pp\. 76\-91, doi: 10\.1080\/15252019\.2020\.1737849\.

Liu, X\., Shi, S\.W\., Teixeira, T\. and Wedel, M\. \(2018\), “Video content marketing: the making of clips”, #emph[Journal of Marketing], Vol\. 82 No\. 4, pp\. 86\-101, doi: 10\.1509\/jm\.16\.0048\.

Mayrhofer, M\., Matthes, J\., Einwiller, S\. and Naderer, B\. \(2020\), “User generated content presenting brands on social media increases young adults’ purchase intention”, #emph[International Journal of Advertising], Vol\. 39 No\. 1, pp\. 166\-186, doi: 10\.1080\/02650487\.2019\.1596447\.

Mintel\. \(2019\), “Social and media networks: consumer market research report”, available at: https:\/\/store\.mintel\.com\/report\/social\-and\-media\-networks\-uk\-may\-2019 \(accessed 15 March 2021\)\.

Moreira, A\.C\., Fortes, N\. and Santiago, R\. \(2017\), “Influence of sensory stimuli on brand experience, brand equity and purchase intention”, #emph[Journal of Business Economics and Management], Vol\. 18 No\. 1, pp\. 68\-83, doi: 10\.3846\/16111699\.2016\.1252793\.

Morra, M\.C\., Gelosa, V\., Ceruti, F\. and Mazzucchelli, A\. \(2018\), “Original or counterfeit luxury fashion brands? The effect of social media on purchase intention”, #emph[Journal of Global Fashion Marketing], Vol\. 9 No\. 1, pp\. 24\-39, doi: 10\.1080\/20932685\.2017\.1399079, Routledge\.

Murray, D\.C\. \(2015\), “Notes to self: the visual culture of selfies in the age of social media”, #emph[Consumption Markets & Culture], Vol\. 18 No\. 6, pp\. 490\-516, doi: 10\.1080\/10253866\.2015\.1052967\.

Muthén, B\.O\. and Curran, P\.J\. \(1997\), “General longitudinal modeling of individual differences in experimental designs: a latent variable framework for analysis and power estimation”, #emph[Psychological Methods], Vol\. 2 No\. 4, pp\. 371\-402, doi: 10\.1037\/1082\-989X\.2\.4\.371\.

Nash, J\. \(2019\), “Exploring how social media platforms influence fashion consumer decisions in the U\.K\. retail sector”, #emph[Journal of Fashion Marketing and Management: An International Journal], Vol\. 23 No\. 1, pp\. 82\-103, doi: 10\.1108\/JFMM\-01\-2018\-0012\.

Nunan, D\., Sibai, O\., Schivinski, B\. and Christodoulides, G\. \(2018\), “Reflections on ‘social media: influencing customer satisfaction in B2B sales’ and a research agenda”, #emph[Industrial Marketing Management], Vol\. 75, pp\. 31\-36, doi: 10\.1016\/j\.indmarman\.2018\.03\.009, No\. November\.

Onofrei, G\., Filieri, R\. and Kennedy, L\. \(2022\), “Social media interactions, purchase intention, and behavioural engagement: the mediating role of source and content factors”, #emph[Journal of Business Research], Vol\. 142, pp\. 100\-112, doi: 10\.1016\/j\.jbusres\.2021\.12\.031, No\. May\.

Orehek, E\. and Human, L\.J\. \(2017\), “Self\-expression on social media”, #emph[Personality and Social Psychology Bulletin], Vol\. 43 No\. 1, pp\. 60\-70, doi: 10\.1177\/0146167216675332\.

Pansari, A\. and Kumar, V\. \(2017\), “Customer engagement: the construct, antecedents, and consequences”, #emph[Journal of the Academy of Marketing Science], Vol\. 45 No\. 3, pp\. 294\-311, doi: 10\.1007\/s11747\-016\-0485\-6\.

Pasternak, O\., Veloutsou, C\. and Morgan\-Thomas, A\. \(2017\), “Self\-presentation, privacy and electronic word\-of\-mouth in social media”, #emph[Journal of Product & Brand Management], Vol\. 26 No\. 4, pp\. 415\-428, doi: 10\.1108\/JPBM\-04\-2016\-1150\.

Peng, J\., Agarwal, A\., Hosanagar, K\. and Iyengar, R\. \(2018\), “Network overlap and content sharing on social media platforms”, #emph[Journal of Marketing Research], Vol\. 55 No\. 4, pp\. 571\-585, doi: 10\.1509\/jmr\.14\.0643\.

Pizzuti, A\.G\., Patel, K\.H\., McCreary, E\.K\., Heil, E\., Bland, C\. M\., Chinaeke, E\., Love, B\.L\. and Bookstaver, P\.B\. \(2020\), “Healthcare practitioners’ views of social media as an educational resource”, #emph[PLoS One], Vol\. 15 No\. 2, p\. e0228372, doi: 10\.1371\/journal\.pone\.0228372\.

Pontes, N\. and Hoegg, J\. \(2020\), “The red\-derogation effect: how the color red affects married women’s ratings of male attractiveness”, #emph[Journal of Experimental Psychology: Applied], Vol\. 26 No\. 3, pp\. 551\-565, doi: 10\.1037\/xap0000256\.

Pontes, N\. and Pontes, V\. \(2021\), “Spillover effects of competitive rivalry on brand extensions”, #emph[Journal of Brand Management], Vol\. 28 No\. 4, pp\. 402\-412, doi: 10\.1057\/s41262\-021\-00234\-w\.

Pontes, V\., Pontes, N\., Greer, D\.A\. and Beatson, A\. \(2021\), “Thank you but no thank you: the impact of negative moral emotions on customer responses to preferential treatment”, #emph[European Journal of Marketing], Vol\. 55 No\. 12, pp\. 3033\-3058, doi: 10\.1108\/EJM\-06\-2019\-0448\.

Quester, P\.G\., Karunaratna, A\. and Kee Goh, L\. \(2000\), “Self\-congruity and product evaluation: a cross\-cultural study”, #emph[Journal of Consumer Marketing], Vol\. 17 No\. 6, pp\. 525\-535, doi: 10\.1108\/07363760010349939\.

Quiroz Flores, A\., Liza, F\., Quteineh, H\. and Czarnecka, B\. \(2021\), “Variation in the timing of covid\-19 communication across universities in the U\.K”, #emph[PLoS One], Vol\. 16 No\. 2, p\. e0246391, doi: 10\.1371\/journal\.pone\.0246391\.

Ryu, S\. and Park, J\. \(2020\), “The effects of benefit\-driven commitment on usage of social media for shopping and positive word\-of\-mouth”, #emph[Journal of Retailing and Consumer Services], Vol\. 55, p\. 102094, doi: 10\.1016\/j\.jretconser\.2020\.102094\.

Saboo, A\.R\., Kumar, V\. and Ramani, G\. \(2016\), “Evaluating the impact of social media activities on human brand sales”, #emph[International Journal of Research in Marketing], Vol\. 33 No\. 3, pp\. 524\-541, doi: 10\.1016\/j\.ijresmar\.2015\.02\.007\.

Schivinski, B\. \(2021\), “Eliciting brand\-related social media engagement: a conditional inference tree framework”, #emph[Journal of Business Research], Vol\. 130, pp\. 594\-602, doi: 10\.1016\/j\.jbusres\.2019\.08\.045, No\. June\.

Schivinski, B\. and Dabrowski, D\. \(2015\), “The impact of brand communication on brand equity through Facebook”, #emph[Journal of Research in Interactive Marketing], Vol\. 9 No\. 1, pp\. 31\-53, doi: 10\.1108\/JRIM\-02\-2014\-0007\.

Schivinski, B\. and Dabrowski, D\. \(2016\), “The effect of social media communication on consumer perceptions of brands”, #emph[Journal of Marketing Communications], Vol\. 22 No\. 2, pp\. 189\-214, doi: 10\.1080\/13527266\.2013\.871323\.

Schivinski, B\., Christodoulides, G\. and Dabrowski, D\. \(2016\), “Measuring consumers’ engagement with brand\-related social\-media content: development and validation of a scale that identifies levels of social\-media engagement with brands”, #emph[Journal of Advertising Research], Vol\. 56 No\. 1, pp\. 64\-80, doi: 10\.2501\/JAR\-2016\-004\.

Schivinski, B\., Langaro, D\. and Shaw, C\. \(2019\), “The influence of social media communication on consumer’s attitudes and behavioral intentions concerning brand\-sponsored events”, #emph[Event Management], Vol\. 23 No\. 6, pp\. 835\-853, doi: 10\.3727\/152599518X15403853721268\.

Schivinski, B\., Langaro, D\., Fernandes, T\. and Guzmán, F\. \(2020\), “Social media brand engagement in the context of collaborative consumption: the case of AIRBNB”, #emph[Journal of Brand Management], Vol\. 27 No\. 6, pp\. 645\-661, doi: 10\.1057\/s41262\-020\-00207\-5\.

Schivinski, B\., Muntinga, D\.G\., Pontes, H\.M\. and Lukasik, P\. \(2021\), “Influencing COBRAs: the effects of brand equity on the consumer’s propensity to engage with brand\-related content on social media”, #emph[Journal of Strategic Marketing], Vol\. 29 No\. 1, pp\. 1\-23, doi: 10\.1080\/0965254X\.2019\.1572641, Routledge\.

Šerić, M\., Ozretić\-Došen, \-D\. and Škare, V\. \(2020\), “How can perceived consistency in marketing communications influence customer–brand relationship outcomes?”, #emph[European Management Journal], Vol\. 38 No\. 2, pp\. 335\-343, doi: 10\.1016\/j\.emj\.2019\.08\.011\.

Shareef, M\.A\., Kapoor, K\.K\., Mukerji, B\., Dwivedi, R\. and Dwivedi, Y\.K\. \(2020\), “Group behavior in social media: antecedents of initial trust formation”, #emph[Computers in Human Behavior], Vol\. 105, p\. 106225, doi: 10\.1016\/j\.chb\.2019\.106225, No\. April\.

Singh, J\., Crisafulli, B\., Quamina, L\.T\. and Xue, M\.T\. \(2020\), “To trust or not to trust’: the impact of social media influencers on the reputation of corporate brands in crisis”, #emph[Journal of Business Research], Vol\. 119, pp\. 464\-480, doi: 10\.1016\/j\.jbusres\.2020\.03\.039, No, October\.

Sirgy, M\.J\. \(1982\), “Self\-concept in consumer behavior: a critical review”, #emph[Journal of Consumer Research], Vol\. 9 No\. 3, pp\. 287\-300, doi: 10\.1086\/208924\.

Sirgy, M\.J\., Grewal, D\., Mangleburg, T\.F\., Park, J\.O\., Chon, K\.S\., Claiborne, C\.B\., Johar, J\.S\. and Berkman, H\. \(1997\), “Assessing the predictive validity of two methods of measuring self\-image congruence”, #emph[Journal of the Academy of Marketing Science], Vol\. 25 No\. 3, pp\. 229\-241, doi: 10\.1177\/0092070397253004\.

Smith, R\.E\. and Swinyard, W\.R\. \(1983\), “Attitude\-behavior consistency: the impact of product trial versus advertising”, #emph[Journal of Marketing Research], Vol\. 20 No\. 3, pp\. 257\-267, doi: 10\.1177\/002224378302000304\.

Sprinklr\. \(2021\), “Best fashion brands in social media”, available at: www\.sprinklr\.com\/blog\/fashion\-brands\-social\-media\-marketing\/ \(accessed 17 November 2021\)\.

Taylor, C\.R\. and Costello, J\.P\. \(2017\), “What do we know about fashion advertising? A review of the literature and suggested research directions”, #emph[Journal of Global Fashion Marketing], Vol\. 8 No\. 1, pp\. 1\-20, doi: 10\.1080\/20932685\.2016\.1255855\.

Unmetric\. \(2021\), “A deep dive into the social media havits and performance of H&M”, available at: https:\/\/unmetric\. com\/brands\/h&m\#pricing \(accessed 17 November 2021\)\.

VanMeter, R\., Syrdal, H\.A\., Powell\-Mantel, S\., Grisaffe, D\.B\. and Nesson, E\.T\. \(2018\), “Don’t just ‘like’ me, promote me: how attachment and attitude influence brand related behaviors on social media”, #emph[Journal of Interactive Marketing], Vol\. 43, pp\. 83\-97, doi: 10\.1016\/j\.intmar\.2018\.03\.003\.

Varma, A\., Jukic, N\., Pestek, A\., Shultz, C\.J\. and Nestorov, S\. \(2016\), “Airbnb: exciting innovation or passing fad?”, #emph[Tourism Management Perspectives], Vol\. 20, pp\. 228\-237, doi: 10\.1016\/j\.tmp\.2016\.09\.002, No\. October\.

Wallace, E\., Buil, I\., de Chernatony, L\., Hogan, M\. \(2014\), “Who ‘likes’ you \[\. \. \.\] and why? A typology of Facebook fans: from ‘fan’\-atics and self\-expressives to utilitarians and authentics”, #emph[Journal of Advertising Research], Vol\. 54 No\. 1, pp\. 92\-109, doi: 10\.2501\/JAR\-54\-1\-092\-109\.

Wang, Q\., Miao, F\., Tayi, G\.K\. and Xie, E\. \(2019\), “What makes online content viral? The contingent effects of hubusers versus non–hub users on social media platforms”, #emph[Journal of the Academy of Marketing Science], Vol\. 47 No\. 6, pp\. 1005\-1026, doi: 10\.1007\/s11747\-019\-00678\-2\.

Weismueller, J\., Harrigan, P\., Wang, S\. and Soutar, G\.N\. \(2020\), “Influencer endorsements: how advertising disclosure and source credibility affect consumer purchase intention on social media”, #emph[Australasian Marketing Journal], Vol\. 28 No\. 4, pp\. 160\-170, doi: 10\.1016\/j\.ausmj\.2020\.03\.002\.

Wunsch\-Vincent, S\. and Vickery, G\. \(2007\), #emph[Participative Web and User\-Generated Content], OECD Directorate fo Science, Technology and Industry, Paris\.

Xiao, L\., Saleem, A\., Tariq, S\.M\., Ul Haq, J\. and Guo, M\. \(2021\), “I wish I could be like her\/him! How self\-congruence stimulates a desire to mimic”, #emph[Journal of Theoretical and Applied Electronic Commerce Research], Vol\. 16 No\. 7, pp\. 3025\-3042, doi: 10\.3390\/jtaer16070165\.

Yoo, B\. and Donthu, N\. \(2001\), “Developing and validating a multidimensional consumer\-based brand equity scale”, #emph[Journal of Business Research], Vol\. 52 No\. 1, pp\. 1\-14, doi: 10\.1016\/S0148\-2963\(99\)00098\-3\.

Yoo, B\., Donthu, N\. and Lee, S\. \(2000\), “An examination of selected marketing mix elements and Brand equity”, #emph[Journal of the Academy of Marketing Science], Vol\. 28 No\. 2, pp\. 195\-211, doi: 10\.1177\/0092070300282002\.

Zhu, X\., Teng, L\., Foti, L\. and Yuan, Y\. \(2019\), “Using self\-congruence theory to explain the interaction effects of brand type and celebrity type on consumer attitude formation”, #emph[Journal of Business Research], Vol\. 103, pp\. 301\-309, doi: 10\.1016\/j\.jbusres\.2019\.01\.055, No\. October\.

Zollo, L\., Filieri, R\., Rialti, R\. and Yoon, S\. \(2020\), “Unpacking the relationship between social media marketing and brand equity: the mediating role of consumers’ benefits and experience”, #emph[Journal of Business Research], Vol\. 117, pp\. 256\-267, doi: 10\.1016\/j\.jbusres\.2020\.05\.001, No\. September\.

Bright, L\.F\. and Logan, K\. \(2018\), “Is my fear of missing out \(FOMO\) causing fatigue? Advertising, social media fatigue, and the implications for consumers and brands”, #emph[Internet Research], Vol\. 28 No\. 5, pp\. 1213\-1227, doi: 10\.1108\/IntR\-03\-2017\-0112\.

de Vries, L\., Peluso, A\.M\., Romani, S\., Leeflang, P\.S\.H\. and Marcati, A\. \(2017\), “Explaining consumer brand\-related activities on social media: an investigation of the different roles of self\-expression and socializing motivations”, #emph[Computers in Human Behavior], Vol\. 75, pp\. 272\-282, doi: 10\.1016\/j\.chb\.2017\.05\.016, No\. October\.

Naeem, M\. and Ozuem, W\. \(2020\), “Developing UGC social brand engagement model: insights from diverse consumers”, #emph[Journal of Consumer Behaviour], Vol\. 20 No\. 2, pp\. 426\-439, doi: 10\.1002\/cb\.1873\.

Rust, R\.T\., Rand, W\., Huang, M\.\-H\., Stephen, A\.T\., Brooks, G\. and Chabuk, T\. \(2021\), “EXPRESS: real\-time brand reputation tracking using social media”, #emph[Journal of Marketing], Vol\. 85 No\. 4, pp\. 21\-43, doi: 10\.1177\/0022242921995173\.

Thomas, L\.J\., Brooks, S\. and McGouran, C\. \(2020\), “Antecedents of value co\-creation activities for online fashion brands”, #emph[Journal of Strategic Marketing], Vol\. 28 No\. 5, pp\. 384\-398, doi: 10\.1080\/0965254X\.2018\.1477823\.

WARC\. \(2020\), “Brits bored by low\-quality social media content, says study”, available at: www\.warc\.com\/newsandopinion\/news\/brits\-bored\-by\-low\-quality\-social\-media\-content\-says\-study\/43515 \(accessed 15 March 2021\)\.

= About the authors
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[#text(size: 10pt)[Bruno Schivinski is a Sociologist, Behavioural Researcher and Senior Lecturer in Advertising at RMIT University in Australia\. He consults for online service providers, websites and scientific institutions such as the Polish Ministry of Science and Higher Education \(MNiSW\) and the National Science Centre \(NCN\)\. Schivinski specialises in online consumer behaviour, social\-media engagement, online branding and user\-generated content\. His research has received international coverage on Forbes Magazine and Google News\. His latest work can be found in such academic journals as the Journal of Business Research, Journal of Advertising Research, Industrial Marketing Management, Journal of Strategic Marketing, Journal of Marketing Communications and Journal of Clinical Medicine\. Bruno Schivinski is the corresponding author\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Nicolas Pontes is a Senior Lecturer in Marketing at the University of Queensland, Business School in Australia\. His research interests are in the area of consumer decision\-making and information processing, with a particular interest in online consumer behaviour, social media engagement, price and promotion advertising and branding\. His research has been published in the European Journal of Marketing, Psychology & Marketing, Journal of Experimental Psychology: Applied and Journal of Retailing and Consumer Services\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Barbara Czarnecka is Associate Professor of Marketing at London South Bank University, UK\. Her research interests focus on consumer behaviour, culture and communication\. Czarnecka published in journals such as Journal of Advertising Research, Journal of Promotion Management, Journal of Global Marketing and Cross\-Cultural Research\. She has also co\-authored two textbooks: Marketing Communications \(2020\) published by Routledge, and International Marketing \(2018\) published by SAGE\. She blogs about her research and teaching interests on www\.barbaraczarnecka\.com\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Wen Mao is a Lecturer in Marketing at the University of Queensland, Business School Business School\. Mao’s research interests centre on consumer psychology and behavioural decision\-making, such as information processing, choice context effects, preference reversals and individual differences\. He has published in journals such as the Journal of Consumer Psychology, the Journal of Retailing and Marketing Letters\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Jennifer de Vita graduated with a Master’s degree in Digital Marketing and Analytics from Regent’s University London with Distinction, in 2019\. Her professional background is in advertising and digital marketing with The Seattle Times Company, Hearst Seattle Media and, most recently, at IKEA in the UK\. She has vast experience in creating customised IMC plans that compel consumer experience while also working with SMEs to establish foundational digital marketing plans\. Her interests focus on using data analysis to create and optimise IMC plans and digital marketing strategies\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Vasileios Stavropoulos is a Senior Lecturer of Clinical Psychology at Victoria University in Australia\. He is a professional Psychologist activated in the areas of addictions and digital media usage, whilst being concurrently a Research Fellow of the Institute of Health and Sports in Australia\. His scholarly work in the field of digital media usage focuses on the exploration of risk and protective factors, measurement issues and factors that make digital applications engaging\. His theoretical conceptualisation is based on the Developmental Psychopathology approach, and specifically the risk and resilience framework to individual differences in adaptation and development\.]]


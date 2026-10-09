#set document(title: "The effect of social media communication on consumer perceptions of brands", author: ("Bruno Schivinski", "Dariusz Dabrowski"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Schivinski and Dabrowski \(2016\), accepted manuscript #h(1fr) Journal of Marketing Communications] },
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
#text(size: 19pt, weight: "bold", hyphenate: false)[The effect of social media communication on consumer perceptions of brands]
#v(0.8em)
#text(size: 12pt)[Bruno Schivinski, Dariusz Dabrowski]
#v(0.2em)
#text(size: 10pt, style: "italic")[Department of Marketing, Gdańsk University of Technology, Gdańsk, Poland]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Schivinski, B\., & Dabrowski, D\. (2016). The effect of social media communication on consumer perceptions of brands. #emph[Journal of Marketing Communications, 22]\(2\), 189–214. #link("https://doi.org/10.1080/13527266.2013.871323")[https:\/\/doi.org\/10\.1080\/13527266\.2013\.871323]
  #v(0.9em)
  This is an Accepted Manuscript of an article published by Taylor & Francis in Journal of Marketing Communications on 20 January 2014, available online: #link("https://doi.org/10.1080/13527266.2013.871323")[https:\/\/doi.org\/10\.1080\/13527266\.2013\.871323]
  #v(0.9em)
  This is the authors' accepted manuscript. Its content is that of the published article; it differs only in
  formatting and pagination. Please cite the published version.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.github.io/papers/social-media-communication-brand-perceptions.html")[schivinski.github.io]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[The effect of social media communication on consumer perceptions of brands]]
#v(0.6em)
#par(first-line-indent: 0em)[Bruno Schivinski\* and Dariusz Dabrowski]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[Department of Marketing, Gdańsk University of Technology, ul\. Narutowicza 11\/12, Gdańsk 80\-233, Poland]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author\. Email: bschivinsk\@zie\.pg\.gda\.pl]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() Researchers and brand managers have limited understanding of the effects social media communication has on how consumers perceive brands\. We investigated 504 Facebook users in order to observe the impact of firm\-created and user\-generated \(UG\) social media communication on brand equity \(BE\), brand attitude \(BA\) and purchase intention \(PI\) by using a standardized online survey throughout Poland\. To test the conceptual model, we analyzed 60 brands across three different industries: non\-alcoholic beverages, clothing and mobile network operators\. When analyzing the data, we applied the structural equation modeling technique to both investigate the interplay of firm\-created and user\-generated social media communication and examine industry\-specific differences\. The results of the empirical studies showed that user\-generated social media communication had a positive influence on both brand equity and brand attitude, whereas firm\-created social media communication affected only brand attitude\. Both brand equity and brand attitude were shown to have a positive influence on purchase intention\. In addition, we assessed measurement invariance using a multi\-group structural modeling equation\. The findings revealed that the proposed measurement model was invariant across the researched industries\. However, structural path differences were detected across the models\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] social media; brand equity; brand attitude; purchase intention; Facebook; user\-generated content]
#v(0.6em)
= Introduction
#par(first-line-indent: 0em)[The media have experienced a huge transformation over the past decade \(Mangold and Faulds 2009\)\. Recent statistics indicate that the number of people accessing the Internet exceeds two billion four hundred thousand, i\.e\. 34% the world’s population \(Internet World Stats 2013\)\. Moreover, one out of every seven people in the world has a Facebook profile and nearly four in five Internet users visit social media sites \(Nielsen 2012\)\. With the number of Internet and social media users growing worldwide, it is essential for communication managers to understand online consumer behavior\.]

Consumers are increasingly using social media sites to search for information and turning away from traditional media, such as television, radio, and magazines \(Mangold and Faulds 2009\)\. The advent of social media has transformed traditional one\-way communication into multi\-dimensional, two\-way, peer\-to\-peer communication \(Berthon, Pitt, and Campbell 2008\)\. Social media platforms offer an opportunity for customers to interact with other consumers; thus, companies are no longer the sole source of brand communication \(Li and Bernoff 2011\)\. The social Web is changing traditional marketing communications\. Traditional brand communications that were previously controlled and administered by brand and marketing managers are gradually being shaped by consumers\.

This article is part of a large study that aims to fill a gap in the literature with respect to understanding the effects of firm\-created and user\-generated \(UG\) communication on social media, a topic of relevance as evidenced by Villanueva, Yoo, and Hanssens \(2008\), Taylor \(2013\) and many other recent papers \(Christodoulides, Jevons, and Bonhomme 2012; Smith, Fischer, and Yongjian 2012\)\.

For several years, scholars have been focusing on the field of social media communication in an attempt to understand its effects on brands and brand management by studying relevant topics such as electronic word\-of\-mouth \(eWOM\) \(e\.g\. Jalilvand and Samiei 2012; Rezvani, Hoseini, and Samadzadeth 2012; Bambauer\-Sachse and Mangold 2011\), online reviews \(e\.g\. Karakaya and Barnes 2010\), virtual brand communities \(e\.g\. Algesheimer, Dholakia, and Herrmann 2005; Cova and Pace 2006; Carlson, Suter, and Brown 2008; Schau, Muñiz, and Arnould 2009; Brodie et al\. 2013\), brand fan pages \(e\.g\. De Vries, Gensler, and Leeflang 2012\), advertising \(Bruhn, Schoenmueller, and Schäfer 2012\), and user\-generated content \(UGC\) \(e\.g\. Muñiz and Schau 2007; Muntinga, Moorman, and Smit 2011; Christodoulides and Jevons 2011; Smith, Fischer, and Yongjian 2012; Hautz et al\. 2013\)\. Yet, despite the increase in empirical research into the topic of social media, there is still little understanding of how firm\-created and user\-generated social media communication influence consumer perceptions of brands and consumer behavior\. This is of fundamental importance as one form of communication is controlled by the company, whereas the other is independent of the firm’s control\. To address this gap, we aim to investigate the effects of firm\-created social media communication and user\-generated social media communication on brand equity \(BE\), brand attitude \(BA\), and purchase intention \(PI\)\.

A second gap in the empirical research carried out so far concerns the examination of the effects of firm\-created and user\-generated social media communication with regard to industry\-specific differences, as these two kinds of communication vary in terms of social media strategy\. While social media communication is well documented in the literature \(Castronovo and Huang 2012; Wang, Yu, and Wei 2012; Winer 2009; Mangold and Faulds 2009\), to date, no research has differentiated between the effects of social media communication on brand equity and brand attitude taking industry\-specific differences into account\. This study addresses the need to do so\.

In order to address the two gaps in the research outlined above, we formulated the following research question: How do firm\-created and user\-generated social media communication influence consumers’ perceptions and behavior, both overall and with regard to industry\-specific differences?

This study uses structural equation modeling \(SEM\) to observe the effects of firm\-created and user\-generated social media communication on brand equity, brand attitude and purchase intention\. Specifically, it focuses on the social networking site Facebook and the following industries: non\-alcoholic beverages, clothing and mobile network operators\. These were chosen as they differ in their management of social media communication\.

Therefore, we form two distinct research objectives that are relevant for companies, brand managers and scholars \(Godes and Mayzlin 2009; Kozinets et al\. 2010; Dellarocas, Zhang, and Awad 2007\):

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[\(1\) To identify the effects of firm\-created and user\-generated social media communication on brand equity, brand attitude and brand purchase intention\.]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[\(2\) To observe the differences in the size of the effect that social media communication has on brand equity, brand attitude and brand purchase intention across three different industries\.]]
To summarize, this study contributes toward developing literature in the field of social media communication related to brand management, a phenomena that cannot be fully appreciated until we understand not only how social media influence consumers’ perception of brands, but also how they affect consumers’ attitudes and behavior with regard to industry type\.

Managers clearly need to be convinced of the impact that social media communication has on the bottom line\. This study contributes toward advancing knowledge in this area by showing the effect that social media communication has on how consumers perceive brands and, consequently, on brand purchase intention\.

This paper is organized as follows\. The first section presents a literature review supporting the conceptual framework and the hypotheses of this study\. The second section presents the research methodology used in this study, our data sources, and our estimations\. In the third section, we introduce the outline for the quantitative empirical analysis that is used to verify the hypotheses, in addition to the cross\-validation of the suggested model across the industries under investigation\. The final section provides a summary and discussion of the empirical findings with implications for managers and executives\. This article also includes recommendations for further research\.

= Conceptual framework and hypothesis development
== Firm\-created social media communication
#par(first-line-indent: 0em)[The domination of Web 2\.0 technologies and social media has led Internet users to encounter a vast amount of online exposure, and one of the most important is social networking\. Social networking through online media can be understood as a variety of digital sources of information that are created, initiated, circulated, and consumed by Internet users as a way to educate one another about products, brands, services, personalities and issues \(Chauhan and Pillai 2013\)\. Companies are now aware of the imminent need to focus on developing personal two\-way relationships with consumers to foster interactions \(Li and Bernoff 2011\)\. Social media offer both companies and customers new ways of engaging with one another\. As a result, firm\-created social media communication is also considered to be an essential element of the company’s promotion mix \(Mangold and Faulds 2009\)\. Marketing managers expect their social media communication to engage with loyal consumers and influence consumer perceptions of products, disseminate information and learn from and about their audience \(Brodie et al\. 2013\)\.]

In contrast to traditional sources of firm\-created communication, social media communications have been recognized as mass phenomena with extensive demographic appeal \(Kaplan and Haenlein 2010\)\. Although firm\-created social media communication is increasing, it is still a relatively new practice among advertisers \(Nielsen 2013\)\. This popularity of the implementation of social media communication among companies can be explained by the viral dissemination of information via the Internet \(Li and Bernoff 2011\) and the greater capacity for reaching the general public compared with traditional media \(Keller 2009\)\. Additionally, Internet users are turning away from traditional media and are increasingly using social media channels to search for information and opinions regarding brands and products \(Mangold and Faulds 2009; Bambauer\-Sachse and Mangold 2011\)\. Consumers require instant access, on demand, to information at their own convenience \(Mangold and Faulds 2009\)\.

In this study, firm\-created social media communication is understood as a form of advertising fully controlled by the company and guided by a marketing strategy agenda\. In this context, firm\-created social media communication is articulated as an independent variable and we expect it to positively influence consumer perception of brands, i\.e\. brand equity and brand attitude\.

== User\-generated social media communication
#par(first-line-indent: 0em)[Of all the new media, social networking sites such as Facebook, Twitter and YouTube have generated, perhaps, the most publicity among both academics and communication managers\. The development and growing popularity of these sites has led to the notion that we are in the Web 2\.0 era, where UGC can create powerful communities that facilitate the interactions of people with common interests \(Winer 2009\)\. Furthermore, social media channels facilitate consumer\-to\-consumer communication and accelerate communication among consumers \(Duan, Gu, and Whinston 2008\)\.]

The Internet and Web 2\.0 have empowered proactive consumer behavior in the information and purchase process \(Burmann and Arnhold 2008\)\. In the information era, customers make use of social media to access the desired product and brand information \(Li and Bernoff 2011; Christodoulides, Michaelidou, and Siamagka 2013\)\. The growth of online brand communities, including social networking sites, has supported the increase of user\-generated social media communication \(Gangadharbatla 2008\)\. UGC is a rapidly growing vehicle for brand conversations and consumer insights \(Christodoulides, Jevons, and Bonhomme 2012\)\.

Because of its early stage of research, there is still no widely accepted definition for UGC \(OECD 2007\)\. According to the content classifications introduced by Daugherty, Eastin, and Bright \(2008\), UGC is focused on the consumer dimension, is created by the general public rather than by marketing professionals and is primarily distributed on the Internet\. A more comprehensive definition is given by the Organization for Economic Co\-Operation and Development \(OECD 2007\): ‘\(i\) content that is made publicly available over the Internet, \(ii\) content that reflects a certain amount of creative effort, and \(iii\) content created outside professional routines and practices’\.

Studies on UGC adopt the convention of content creation as opposed to content dissemination, conceptualizing it in a similar way to eWOM \(Kozinets et al\. 2010; Muñiz and Schau 2007\)\. Despite their similarities, the two concepts of UGC and eWOM differ in terms of whether the content is #emph[generated] by consumers or only #emph[conveyed] by them \(Smith, Fischer, and Yongjian 2012; Cheong and Morrison 2008\)\. However, in the literature there is a consensus that both types of social media communication, UGC and eWOM, are related to consumers and brands, with no commercially oriented intentions and not controlled by companies \(Berthon, Pitt, and Campbell 2008; Brown, Broderick, and Lee 2007\)\. Past studies of UGC also suggested that consumers contribute to the process of content creation for reasons such as self\-promotion, intrinsic enjoyment, and desires to change public perceptions \(Berthon, Pitt, and Campbell 2008\)\. Moreover, consumers are adept at appropriating and impersonating the styles, tropes, logic and grammar of marketing communications \(Muñiz and Schau 2007\)\.

UGC has important practical implications for marketers\. Communication managers can use UGC to pool the ideas of engaged consumers, while keeping communication costs low compared to traditional channels \(Krishnamurthy and Dou 2008\)\. Furthermore, research shows that consumers involved with UGC are likely to be brand advocates, sharing opinions about brands and products with other consumers \(Daugherty, Eastin, and Bright 2008\)\. UGC is also perceived by consumers as trustworthy, which makes this type of communication more influential than traditional advertising \(Christodoulides 2012\)\.

In this study, we focused on brand\-related UGC, also known as user generated branding \(Burmann and Arnhold 2008\), concentrating solely on content generated by Facebook users, in an attempt to enrich the current literature on this topic\. In the same way as firm\-created content, UGC is tested as an antecedent of brand equity and brand attitude\.

== Brand equity
#par(first-line-indent: 0em)[The conception of brand equity is a key marketing asset \(Styles and Ambler 1995\) that can produce a relationship that differentiates the bonds between a firm and its public and that nurtures long\-term buying behavior \(Keller 2013\)\. The understanding of brand equity and its growth raises competitive barriers and drives brand wealth \(Yoo, Donthu, and Lee 2000\)\. Although extensive research has been dedicated to the field of brand equity, the literature on this subject is fragmented and inconclusive \(Christodoulides and de Chernatony 2010\)\.]

Thus far, the measurement of brand equity has been approached from two major perspectives in the literature\. Some researchers have focused on the financial perception of brand equity \(Simon and Sullivan 1993\), whereas other scholars have emphasized the customer\-based perspective \(Aaker 1991; Keller 1993; Yoo and Donthu 2001\)\. Therefore, the dominant stream of research has been grounded in cognitive psychology, focusing on memory structure \(Aaker 1991; Keller 1993\)\. According to Aaker \(1991, 15\), brand equity can be defined as ‘a set of brand assets and liabilities linked to a brand, its name and symbol that add to or subtract from the value provided by a product or service to a firm and\/or to that firm’s customers’\. An alternative concept of consumer\-based brand equity \(CBBE\) was developed by Keller \(1993, 02\), who defined ‘the differential effect of brand knowledge on consumer response to the marketing of the brand’\. Keller emphasized that brand equity should be captured and understood in terms of brand awareness and in the strength, favorability and uniqueness of brand associations that consumers hold in memory\. Thus, CBBE can be understood as a concept that predicts that consumers will react more favorably to a branded product than to an unbranded product in the same category \(Aaker 1991; Keller 1993; Yoo, Donthu, and Lee 2000\)\.

For companies, influencing brand equity is a key objective that is achieved through strengthening the consumer’s associations and feelings toward brands and products \(Keller 1993\)\. Previous research recognized the positive influence of brand equity on consumer preference and purchase intention \(Cobb\-Walgren, Ruble, and Donthu 1995\), consumer perception of product quality \(Dodds, Monroe, and Grewal 1991\), consumer evaluation of brand extensions \(Aaker and Keller 1990\), consumer price insensitivity \(Erdem, Swait, and Louviere 2002\), market share \(Agarwal and Rao 1996\), shareholder value \(Kerin and Sethuraman 1998\), and resilience to product\-harm crisis \(Dawar and Pillutla 2000\)\.

For the purpose of this study, we chose to focus on the cognitive perspective of brand equity, as it is strictly based on consumer perceptions\.

== Effects on brand equity
#par(first-line-indent: 0em)[When considering the relationship between social media communication and brand equity, we followed the schema theory of Eysenck \(1984\)\. We expect the two forms of social media communication to directly affect brand equity and brand attitude\. The framework illustrates that consumers compare communication stimuli with their stored knowledge of comparable communication activities\. The level of fit influences subsequent communication stimuli processing and the attitude formation of consumers \(Goodstein 1993\)\. Moreover, a consumer’s process of information acquisition relies on both external and internal information sources that together influence his or her overall brand equity judgments and brand choices \(Beales et al\. 1981\)\.]

Brand communication positively affects brand equity as long as the message creates a satisfactory customer reaction to the product in question compared to a similar non\-branded product \(Yoo, Donthu, and Lee 2000\)\. Moreover, communication stimuli cause a positive effect in the consumer as a recipient; therefore, the perception of communication positively influences an individual’s awareness of brands \(Bruhn, Schoenmueller, and Schäfer 2012\)\. Previous studies have also indicated that branding communication leverages brand equity by increasing the probability that a brand will be incorporated into a customer’s consideration set, thus assisting in the process of brand decision\-making and in the process of the choice becoming a habit \(Yoo, Donthu, and Lee 2000\)\. Furthermore, in their study of social media campaigns, Li and Bernoff \(2011\) underscored the features that appeal to consumers to generate brand benefits\. Therefore, firm\-created social media communication should be perceived by individuals as advertising and arousing brand awareness and brand perception \(Maclnnis and Jaworski 1989\)\.

In addition, researchers have found a positive relationship between advertising and brand equity in the context of advertising expenditures \(Cobb\-Walgren, Ruble, and Donthu 1995; Yoo, Donthu, and Lee 2000; Villarejo\-Ramos and Sánchez\-Franco 2005\)\. Consumers generally perceive highly advertised brands as higher quality brands \(Yoo, Donthu, and Lee 2000; Gil, Andrés, and Salinas 2007\)\. Finally, advertising also creates favorable, strong and unique brand associations \(Cobb\-Walgren, Ruble, and Donthu 1995\)\. Similarly to brand awareness, brand associations derive from the consumer’s contact with brands\. Building upon the principles of brand communication and advertising, we assume that a positive evaluation of firm\-created social media brand communication will positively influence brand equity\. Thus, we have formulated the following hypothesis:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#strong[H1a:] Firm\-created social media communication positively influences brand equity\.]]
The degree of personal relevance and importance of a user\-generated social media stimulus is reflected by the level of involvement with a brand \(Christodoulides, Jevons, and Bonhomme 2012\)\. UGC involvement can be considered a form of involvement with products and brands because brand\-related UGC is a consumption\-related activity \(Muntinga, Smit, and Moorman 2012\)\.

Regarding the effect of user\-generated social media communication on brand equity, it must be recognized that UGC is not generally guided by marketing intervention or company control \(Christodoulides and Jevons 2011\)\. UGC carry information about a product\/brand that can be particularly useful for customers in terms of CBBE\. Moreover, empirical evidence has demonstrated that the creation of UGC influences the consumer’s involvement with UGC, which has a positive impact on brand equity \(Christodoulides, Jevons, and Bonhomme 2012\), and that the consumer’s perception of UGC influences hedonic brand image\. Therefore, we hypothesize as follows:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#strong[H1b:] User\-generated social media communication positively influences brand equity\.]]
== Brand attitude
#par(first-line-indent: 0em)[According to Olson and Mitchell \(1981\), brand attitude is defined as a ‘consumer’s overall evaluation of a brand’\. Brand attitude is frequently conceptualized as a global evaluation that is based on favorable or unfavorable reactions to brand\-related stimuli or beliefs \(Murphy and Zajonc 1993\) and is cited as a central component to be considered in CBBE and relational exchanges \(Lane and Jacobson 1995; Morgan and Hunt 1994\)\.]

Multiattribute attitude models \(Ajzen and Fishbein 1980\) postulate that the overall evaluation of a brand is a function of the beliefs about specific attributes of the brand\/product\. The addition of brand attitude to the conceptual framework proposed in this study aims to enhance our understanding of the effects of social media communication on consumer perceptions of brands\.

There is a recognized consensus that communication between customers is an influential source of information transmission \(Dellarocas, Zhang, and Awad 2007\)\. Because of the development and expansion of social media, communication between individuals who are not acquainted has accelerated \(Duan, Gu, and Whinston 2008\)\. In this context, Li and Bernoff \(2011\) showed that social media channels are a cost\-effective alternative to incite peer\-to\-peer communication\. Furthermore, consumer\-to\-consumer conversations were found to be an important driver of outcomes for companies \(Burmann and Arnhold 2008\)\.

Brand attitude is based on product attributes such as durability, defects, serviceability, features, performance, or ‘fit and finish’ \(Garvin 1984\)\. However, brand attitude may also contain affect that is not captured in measurable attributes, even when a large set of characteristics is included\. Brand researchers building multiattribute models of customer preference have included a general component of brand attitude that is not explained by the brand attribute values \(Srinivasan 1979\)\.

Brand attitude strength predicts behaviors of interest to firms, including brand consideration, purchase intention, purchase behavior and brand choice \(Priester and Nayakankuppam 2004\)\. Substantial empirical research indicates that brand attitude influences customer evaluations of brands \(Aaker and Keller 1990; Low and Lamb 2000\)\. Therefore, extensions of brand awareness and positive associations should generate greater revenues and savings in marketing costs and should thus create higher profits than those of less\-liked brands \(Keller 2013\)\. In addition to specific brand attributes, strong brand association can lead to an overall brand attitude \(Aaker and Keller 1990\)\. Moreover, Baldinger and Rubinson \(1996\) found that market share increased when brand attitude became more positive\. Finally, prior studies also confirmed brand attitude as an antecedent of brand equity, i\.e\. consumers’ favor\/disfavor of a brand \(Faircloth, Capella, and Alford 2001; Broyles et al\. 2010\)\. Assuming that positive brand evaluations of consumers can reflect perceptions of exclusivity, which contribute to brand equity, we present the following hypothesis:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#strong[H2:] Brand attitude positively influences brand equity\.]]
== Effects on brand attitude
#par(first-line-indent: 0em)[We expect firm\-created and user\-generated social media communication to positively influence brand attitude\. According to Ajzen and Fishbein \(1975\), attitude constitutes a multiplicative combination of the brand\-based associations of attributes and benefits based on the assumption that brand attitude is influenced by brand awareness and brand image\. Concerning the influence of brand awareness on brand attitude, the ambiguity of the effect of social media communication on brand awareness must be considered\.]

When considering the findings of previous research into the impact of WOM, UGC and firm\-created communication on brand awareness \(Godes and Mayzlin 2009; Bruhn, Schoenmueller, and Schäfer 2012; Yoo, Donthu, and Lee 2000\), we assume that social media communication has a positive effect on brand attitude\. Because firm\-created social media communication is intended to be positive and to increase brand awareness \(Li and Bernoff 2011\) and because positive user\-generated social media communication, thus, also increases brand awareness and brand associations \(Burmann and Arnhold 2008\), we present the following hypotheses:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#strong[H3a:] Firm\-created social media communication positively influences the brand attitudes of consumers\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#strong[H3b:] User\-generated social media communication positively influences the brand attitudes of consumers\.]]
== Purchase intention
#par(first-line-indent: 0em)[To assess the behavioral influences of social media communication on brand equity and on brand attitude among Facebook users, we added brand purchase intention to the conceptual model\. As consumers are turning more frequently to social media to conduct their information searches and to make their purchasing decisions \(Kim and Ko 2012\), we expect brand equity to positively influence the brand purchase intentions of consumers\.]

Previous studies have suggested that high levels of brand equity drive permanent purchase of the same brand \(Cobb\-Walgren, Ruble, and Donthu 1995; Yoo and Donthu 2001\)\. Loyal customers tend to purchase more than moderately loyal or new costumers \(Yoo, Donthu, and Lee 2000\)\. In this context, we make the following hypothesis:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#strong[H4:] Brand equity positively influences purchase intention\.]]
We further expect brand attitude to have a strong impact on purchase intention\. Brand attitude is considered to be an indicator of behavioral intention \(Wang 2009\)\. According to Miniard, Obermiller, Page \(1983\), purchase intention is identified as an intervening psychological variable between attitude and actual behavior\. Moreover, studies confirmed that a positive attitude toward a brand influences a customer’s purchase intention and his willingness to pay a premium price \(Keller and Lehmann 2003; Folse, Netemeyer, and Burton 2012\)\. In addition, more positive custumer perceptions of the superiority of a brand are associated with stronger purchase intentions \(Aaker 1991\)\. Thus, we hypothesize as follows:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#strong[H5:] Brand attitude positively influences purchase intention\.]]
A proposition of the conceptual framework is summarized in Figure 1\.

= Research methodology
#par(first-line-indent: 0em)[Three product categories were chosen to examine the influence of brand communication on consumer responses\. The product categories were non\-alcoholic beverages, clothing and mobile network operators\. This selection was based on the differences in the extent to which they manage social media proactively \(SoTrender 2012\)\. The product categories are familiar and well known to Polish social media users \(SoTrender 2012\)\. For each category, the respondent indicated a brand that he or she has ‘Liked’ on Facebook\. After using the option ‘Like’, the Internet users automatically start to receive content created by both the administrator of the brand page and other users who have ‘Liked’ the same page\. As a result, we assume that consumers have been exposed to social media communication from both companies and users from brands that they have ‘Liked’ on Facebook\. A link to the questionnaire was available on Facebook for four weeks from 5 March 2013 to 4 April 2013\. Every seven days, the link was posted on several brand fan pages inviting respondents to take part in the survey\. This procedure was repeated five times\.]

The choice of brand pages was based on the following criteria: \(a\) the brand should belong to one of the three product categories listed in the study; \(b\) the frequency of firm\-created content on the page should exceed two posts a week; \(c\) the firm\-created content should be perceived by respondents as advertising and generate brand benefits; \(d\) Facebook users should actively participate in the brand page contributing with UGC; and \(e\) the brand page should have a minimum reach of 500 subscriptions\.

The invitation to the survey consisted of a small text informing about the topic of the study and suggesting that respondents send the link on to their Facebook friends who shared an interest in the same brand fan page\. A total of 60 brands were analyzed across the three product categories\. This represents an extensive set of consumer products and provides research generalizability\.

After clicking on the survey’s link, the respondent was redirected to the questionnaire and had access to an introductory text and three screening questions\. The explanatory text described the general objectives of the study and distinguished between both firm\-created and user\-generated social media communication\. Examples of both forms of social media communication were also given\. The screening questions were used to ensure that the respondents had actually perceived a specific brand on Facebook and were, therefore, eligible to participate in the study\. The screening questions were:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[\(1\) ‘How often do you receive newsfeeds from the brands you have “Liked”?’]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[\(2\) ‘Do you read the newsfeed from Brand X?’]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[\(3\) ‘Do you check what other people post about Brand X?’\.]]
The respondents who did not survive the screening process were not eligible to take the survey\. In the metric questions, we also asked the respondent to provide an approximation of the number of brands he or she was following on Facebook\. This piece of information was necessary in order to know if the person was able to answer items FC4 and UG4 \(see Appendix\)\.

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Proposed conceptual framework\.]]
#v(0.6em)
The empirical study used the same questionnaire items for all product categories\. The only differences between the questionnaires were the product categories and brand names\. The questionnaire was administered in Polish\. As recommended by Craig and Douglas \(2000\), a back\-translation process was employed to ensure that the items were translated correctly\. As a requisite for the study, the respondents needed to receive news feeds both from the company and from other users with respect to the brand that they had previously ‘Liked’ on the social networking site\. Each respondent completed one version of the questionnaire evaluating only one brand\.

A total of 523 questionnaires were completed\. Invalid and incomplete questionnaires were rejected resulting in 504 valid questionnaires: 141 relating to the non\-alcoholic beverages industry, 184 relating to the clothing industry and 179 relating to mobile network operators\. The profile of the sample represented the members of the Polish population who use social media frequently \(SoTrender 2012\)\. Females represented 59\.9% respondents\. The majority of the respondents were young people, 78% were 15–25 years old, 20% were 26–35 years old, and the remainder were 36–55 years old\. Considering the level of education of the researched sample, 33% the respondents had completed at least some college education, 27% had received a high school diploma and the remainder had obtained a secondary school certificate\. Their total monthly household income ranged from \~300 USD to \~810 USD for 25\.9% the sample, an income from \~810 USD to \~1460 USD for 29\.8% and an income above \~1460 USD for the remainder of the sample\. The mean average of brand pages the respondents ‘Liked’ on Facebook was 6\.4 \(standard deviation 4\.2\)\.

The items used in this research were adapted from relevant literature and measured using a seven\-point Likert scale ranging from 1 for ‘strongly disagree’ to 7 for ‘strongly agree’\. Brand equity was measured using the four\-item overall brand equity scale adopted from Yoo and Donthu \(2001\)\. This scale measures the added value of a branded product in comparison with an unbranded good with the same characteristics\. Brand attitude was measured using three items adapted from the works of Low and Lamb \(2000\) and Villarejo\-Ramos and Sánchez\-Franco \(2005\)\. Purchase intention was measured using three items adapted from the research of Yoo, Donthu, and Lee \(2000\) and Shukla \(2011\)\. Finally, firm\-created and user\-generated social media communication were measured using four items adopted from Mägi \(2003\), Tsiros, Mittal, and Ross \(2004\), and Schivinski and Dabrowski \(2013\)\. The complete list of items can be found in Table A1\.

= Results
== Measurement and structural model
#par(first-line-indent: 0em)[To ensure the reliability, dimensionality and validity of the measures, multi\-item scales were evaluated using exploratory and confirmatory techniques\. We utilized reflective measurements to evaluate the conceptual model \(Edwards and Bagozzi 2000\)\.]

To assess the initial reliability of the measures, we employed Cronbach’s α and exploratory factor analysis \(EFA\)\. The Cronbach’s α values for each scale were above 0\.70\. The α coefficients ranged from 0\.92 to 0\.97, which shows the internal consistency of each scale\. Subsequently, an EFA with varimax rotation was performed to explore the dimensionality of the constructs\. All of the items loaded on a single factor, suggesting that user\-generated social media communication, firm\-created social media communication, brand equity, brand attitude, and brand purchase intentions are unidimensional\. All factor loadings exceed the 0\.70 threshold, and there was no evidence of cross\-loadings \(Byrne 2010\)\. One item that was used to measure brand equity was excluded from the analysis because of a low loading value \(0\.62\)\.

To establish convergent and discriminant validity, we used composite reliability \(CR\), average variance extracted \(AVE\), maximum shared squared variance \(MSV\), and average shared squared variance \(ASV\) \(Hair et al\. 2010\)\. The CR values ranged from 0\.92 to 0\.97, which exceeded the recommended 0\.70 threshold value \(Bagozzi and Yi 1988\)\. The AVE values were higher than the acceptable value of 0\.50 \(Fornell and Larcker 1981\), ranging from 0\.87 to 0\.95\. All of the CR values were greater than the AVE values \(Byrne 2010\)\. The values for MSV and ASV were lower than the AVE values, thus confirming the discriminant validity of the model \(Hair et al\. 2010\)\. The convergent and discriminant validity values are presented in Table A2\.

All independent and dependent latent variables were included in one single multifactorial confirmatory factor analysis \(CFA\) model in AMOS 21\.0\. The CFA was performed using the maximum likelihood estimation\. During CFA, the model demonstrated a good fit\. The Chi\-square\/df \(cmin\/df\) value was 2\.24, the comparative fit index \(CFI\) value was 0\.98, the adjusted goodness\-of\-fit index \(AGFI\) value was 0\.92, the standardized root mean square residual \(SRMR\) value was 0\.02, and the Tucker–Lewis index \(TLI\) was 0\.98\. The root mean square error of approximation \(RMSEA\) value was 0\.05; 90% CI 0\.04, 0\.05\. These RMSEA values show that there is a low discrepancy between the hypothesized model and the population covariance matrix, which indicates a good model fit\. In fact, all values were above the acceptable threshold \(Hair et al\. 2010\)\.

To test the hypothesis, we used SEM in AMOS 21\.0\. During the SEM procedure, we determined that the model yielded a good fit as recommended in the literature \(Hair et al\. 2010\)\. The cmin\/df value was 2\.21, the CFI value was 0\.98, the AGFI value was 0\.92, the SRMR value was 0\.02, and the TLI value was 0\.98\. The RMSEA value was 0\.04; 90% CI 0\.04, 0\.05\.

== Main effects
#par(first-line-indent: 0em)[Firm\-created social media communication did not show a positive influence on brand equity; thus, the results do not confirm H1a \(#emph[p] \= 0\.45; #emph[t]\-value −0\.75; β −0\.04\)\. However, firm\-created social media communication had a positive effect on consumers’ brand attitude, thus supporting H3a \(#emph[p] \< 0\.001; #emph[t]\-value 6\.87; β 0\.38\)\. UGC on Facebook had a positive effect on both brand equity and brand attitude, which supported H1b \(#emph[p] \< 0\.001; #emph[t]\-value 4\.64; β 0\.24\) and H3b \(#emph[p] \< 0\.001; #emph[t]\-value 5\.27; β 0\.29\)\.]

Brand attitude had a significant influence on brand equity, thus supporting H2 \(#emph[p] \< 0\.001; #emph[t]\-value 13\.88; β 0\.62\)\. Finally, both brand equity and brand attitude had a positive effect on brand purchase intention, leading to the confirmation of H4 \(#emph[p] \< 0\.001; #emph[t]\-value 7\.45; β 0\.32\) and H5 \(#emph[p] \< 0\.001; #emph[t]\-value 14\.29; β 0\.60\)\. Figure 2 presents the standardized estimates for the model\. The tests of our hypotheses and estimates are displayed in Table A3\.

The final path model of the study is presented in Figure 2\.

== Tests for the invariance of a causal structure
#par(first-line-indent: 0em)[The cross\-validation of our conceptual model was achieved by testing for invariance across separate validation samples for the three industries under investigation in this study: non\-alcoholic beverages, clothing and mobile network operators\.]

Following the partial invariance test procedures employed by Byrne, Baron, and Balev \(1998\), the first step to test for invariance involved the specification of a full\-constrained model set to be equal across the sample of the three industries\. This model was then compared to less restrictive models in which the parameters were freely estimated\. A classical approach for determining evidence of noninvariance across models is based on the χ² difference\. Noninvariance is claimed if the χ² difference is statistically significant \(Byrne 2010\)\. However, the χ² difference test represents an extremely stringent test of invariance, given that SEM models are at best only approximations of reality \(Cudeck and Browne 1983; MacCallum, Roznowski, and Necowitz 1992\); thus, we decided that it would be more reasonable to base invariance decisions on a difference in CFI values exhibiting a probability \< 0\.01 rather than to base such decisions on Δχ² \(Cheung and Rensvold 2002\)\. Because there is still no consensus on which tests of invariance better represent the phenomena \(Byrne 2010\), we report both the χ² difference and CFI difference results when reviewing the results pertinent to cross\-validation in this article\.

The model used for this analysis is the same as that shown in Figure 2\. For purposes of clarity, double\-headed arrows representing correlations among the independent factors in the model, indicator variables, and measurement error terms are not included in this figure\. Moreover, the path from firm\-created communication to brand equity was removed from the analysis, leaving only the statistically significant structural paths under investigation\.

Of primary interest in testing for multigroup invariance are the χ² and CFI values, followed by the goodness\-of\-fit statistics\. For the cross\-validation analyses, we used AMOS 21\.0 software\. A summary of the findings are presented in Table A4\.

The results related to the multigroup model testing for configural equivalence shows the χ² value to be 550\.792 with 336 degrees of freedom, with a CFI value of 0\.978 and an RMSEA value of 0\.03; 90% CI 0\.03, 0\.04\. From this information, we determined that that the hypothesized multigroup causal structure model fits well across industries\. The next step was to determine whether the invariance in the measurement would hold during the SEM procedures\. For this step, we determined that all factor loadings were constrained to be equal across industries, with the exception of OBE2, which was freely estimated \(Model 2A\)\. A review of the results for Model 2A reveals the fit to be consistent with that of the configural model \(CFI 0\.978; RMSEA 0\.03; 90% CI 0\.03, 0\.04\)\. The Δχ² reported for the configural model and Model 2A yielded Δχ²\(22\) 27\.258 \(#emph[p] \= 0\.202\), whereas the ΔCFI was 0\.000\. Both the χ² and CFI difference tests suggested evidence of invariance\.

#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 2\. Standardized estimates for the model\.]]
#v(0.6em)
Assuming that the models are equivalent at the measurement level, the next stage is to test for invariance at the structural level\. For Model 3A, all structural path weights were constrained to be equal across industries\. This SEM model rendered a χ² value of 606\.971 with 370 degrees of freedom\. Comparison with the configural model presented a Δχ²\(34\) value of 56\.179, which is statistically significant \(#emph[p] \= 0\.010\)\. Moreover, Model 3A yielded a CFI value of 0\.976, thus proving the model to be invariant across the studied industries \(ΔCFI 0\.002\)\. These findings demonstrated that the χ² difference test argues for noninvariance, whereas the CFI difference test argues for invariance\.

For the purposes of juxtaposition concerning the effects of firm\-created and UGC on the variables of brand equity, brand attitude, and purchase intention in different industries, we consider it worthwhile to proceed to χ² difference test analyses\. The Δχ² values identify which structural paths in the model are contributing to the noninvariant findings\.

To test for the invariance of structural weights, we first removed all structural path weight labels, except the label connecting firm\-created social media communication to brand attitude \(Model 3B\)\. The testing of this model generated a χ² value of 580\.992 with 360 degrees of freedom\. Comparison with the configural model provided a Δχ²\(24\) value of 30\.2, which is not statistically significant \(#emph[p] \= 0\.178\)\. These findings indicate that the structural path between firm\-created content and brand attitude is operating equivalently across the three industries\.

The next two models \(Models 3C and 3D\) tested for the invariance of the structural paths between user\-generated communication and brand attitude and between user\-generated communication and brand equity\. The test of the UG–BA path \(Model 3C\) yielded a χ² value of 585\.563 with 362 degrees of freedom\. These results yielded a Δχ²\(26\) value of 34\.771, which is not statistically significant \(#emph[p] \= 0\.117\)\. Furthermore, the test of the UG–BE path \(Model 3D\) generated a χ² value of 588\.22 with 364 degrees of freedom\. The Δχ²\(28\) value was 37\.428, which is also statistically insignificant \(#emph[p] \= 0\.110\)\. These findings advise us that the structural paths weights designed to measure the influence of UGC on brand attitude and brand equity are operating equivalently across the three industries\.

The next step was to constrain the path from brand attitude to brand equity to be equal\. Models 3E, 3F, and 3G tested for the equivalence of this path across the groups\. As reported in Table A4, the test of Model 3E yielded a χ² value of 600\.704 with 366 degrees of freedom\. The Δχ²\(30\) value was 49\.912, which is statistically significant \(#emph[p] \= 0\.013\)\. To detect the source of the noninvariance, we proceeded by labeling and testing one industry at a time within the BA–BE structural path\. Primarily, we freely estimated the BA–BE path for the non\-alcoholic beverage industry \(Model 3F\)\. The test of Model 3F presented a χ² value of 595\.048 with 365 degrees of freedom\. These results consequently generated a Δχ²\(29\) value of 44\.256, which is also statistically significant \(#emph[p] \= 0\.035\)\. According to these findings, we continued the analysis by estimating both the non\-alcoholic beverage and clothing industries freely \(Model 3G\)\. The model yielded a χ² value of 588\.22 with 364 degrees of freedom\. The Δχ²\(29\) value was 37\.428, which is not statistically significant \(#emph[p] \= 0\.110\)\. This information informs that there are differences concerning the structural path from brand attitude to brand equity for the non\-alcoholic beverage and clothing industries\.

Model 3H tested for the invariance in the structural path between brand equity and purchase intention\. This model rendered a χ² value of 593\.224 with 366 degrees of freedom\. Comparison with the configural model yields a Δχ²\(30\) value of 42\.432, which is statistically significant \(#emph[p] \= 0\.066\)\. Similar to the approached used with Model 3E to detect the source of the noninvariance, we labeled and tested one industry at a time\. First, we freely estimated the BE–PI path to the non\-alcoholic beverage industry, ensuring that the other two industries were constrained to be equal \(Model 3I\)\. The test of Model 3I generated a χ² value of 589\.656 with 365 degrees of freedom\. These results consequently presented a Δχ²\(29\) value of 38\.864, which is not statistically significant \(#emph[p] \= 0\.104\)\. These findings show that the structural path between brand equity and purchase intention for the non\-alcoholic beverage industry does not operate equivalently to those of the clothing and mobile operator industries\.

Finally, the last structural path analyzed was the link between brand attitude and brand purchase intention\. The test of Model 3J yielded a χ² value of 594\.076 with 367 degrees of freedom\. These results yielded a Δχ²\(31\) value of 43\.284, which is statistically significant \(#emph[p] \= 0\.07\)\. Proceeding with the analyses, we then removed the structural path label from BA to PI for the non\-alcoholic beverage industry \(Model K\)\. This model generated a χ² value of 590\.38 with 366 degrees of freedom\. The Δχ²\(30\) value was 39\.588, which is not statistically significant \(#emph[p] \= 0\.113\)\. These findings show that the structural path between brand attitude and brand purchase intention for the non\-alcoholic beverage industry does not operate equivalently to those of the clothing and mobile operator industries\.

As expected, a review of the results of Model 3K revealed the fit to be consistent with that of the configural model \(CFI \= 0\.977; RMSEA \= 0\.03; 90% CI 0\.03, 0\.04\)\.

= Discussion and conclusions
#par(first-line-indent: 0em)[Possibly one of the most popular trends in the area of online marketing and branding in recent years is the growth of social media and their popularity among consumers\. Social media have introduced new channels of brand communication, as evidenced by the application of online brand engagement on social networking sites\. Companies such as Starbucks, Coca\-Cola and Guinness are highly attuned to consumers’ preferences and tastes, since experience is at the core of their products\. It is not a coincidence that social media were rapidly integrated into their marketing agenda\.]

Just like advertisers in the social media environment, academics are beginning to explore and understand the key mechanisms and processes that guide the operations of social media advertising \(Krishnamurthy and Dou 2008\)\. The central aim of our research is to generate new knowledge about how social media communication affects brand equity, brand attitude and, consequently, influences consumer purchase intentions, while also examining industry\-specific differences\. Our findings have huge implications for marketers investing in social media\.

Social networking sites such as Facebook, YouTube and Twitter offer opportunities for marketers and brand managers to cooperate with consumers to increase the visibility of brands \(Smith, Fischer, and Yongjian 2012\)\. Because consumers typically judge the information provided by other individuals to be trustworthy and credible \(Pornpitakpan 2004\), user\-generated social media communications have a greater effect on consumers’ overall perception of brands than firm\-created social media communication\. This effect is noticeable in that UGC was found to positively affect both brand equity and brand attitude\. Moreover, this finding is also highlighted by the confirmation that firm\-created communication positively influenced only brand attitude\. Marketers should induce consumers to participate in social media campaigns by providing relevant content and information, and listening and participating in the UGC process by responding \(Muñiz and Schau 2011\)\. Some of the many benefits of this interaction include nurturing brand loyalty and reducing service costs through peer\-to\-peer solutions for product problems \(Noble, Noble, and Adjei 2012\)\.

It is necessary to underline the fact that brand pages on Facebook are unregulated communities\. Inevitably, consumers will engage in conversations and they are at their most sincere and open when they are talking to other people about their product opinions and brand experiences\. Even brands that have high CBBE are targets for negative WOM and undesirable content from Internet users\. Negative content, which may be based on fact or on malicious intent \(Ward and Ostrom 2006\), is a potential threat that may reflect on the consumer’s overall perception of brands \(Bambauer\-Sachse and Mangold 2011\)\. Dissatisfied consumers may use social networking sites to review products and make public complaints to the company \(Sen and Lerman 2007\)\. However, negative information emerging in these environments can be strategically managed and converted into an opportunity for brand building \(Noble, Noble, and Adjei 2012\)\. Managers can use various methods to influence and shape undesired consumer discussions in a manner that is consistent with the company’s mission and performance goals \(Mangold and Faulds 2009\)\.

Given the fact that firm\-created social media communication is fully controlled and administrated by companies, it was expected that it would influence brand equity\. However, our results showed that firm\-created social media communication does not affect the consumers’ perceptions of brand value\. Even though they do not confirm the postulated hypothesis, our findings are of great practical importance for marketers\. They advise that social media campaigns should not be used as a substitute for traditional advertising, but rather be treated as an element of the company’s marketing communication strategy\. Moreover, firms should design their social media content to influence the consumer’s attitude toward brands, since the quality and credibility of their message is an important factor which affects the individual’s behavior after being exposed to it \(Chaiken 1980\)\.

Firm\-created social media communication does not directly affect brand equity, but indirectly influences consumer perceptions of value based on brand attitude\. According to these findings, marketing managers should focus on building positive brand associations and on exploring brand characteristics that influence the consumer’s attitude toward the brand\. For example, brands such as Harley\-Davidson and Converse All Stars ‘Chuck Taylor’ should strengthen brand associations such as freedom, passion, assertiveness and originality, whereas brands such as Apple and Starbucks should focus on associations such as innovation, originality, outgoingness and interactivity\. Such practices are strongly recommended because, as the behavioral outcomes in our research suggest, the effect of brand attitude is almost twice as strong as the effect of brand equity on consumer purchasing decisions\. However, to achieve better results, communication managers should support user\-generated communication by marketing action programs while maintaining an active profile of social media advertising\.

Another important contribution of this article is the juxtaposition concerning the effects of social media communication on brand equity, brand attitude and brand purchase intention in different industries\. Given that the χ² difference test represents an extremely stringent test of invariance for SEM models \(Cheung and Rensvold 2002\), the results of the CFI difference tests in this study showed that the conceptual model operates equivalently across industries\. These findings suggest that the conceptual model can be used to measure the effect of social media communication on brand equity, brand attitude and purchase intention in different industries\. In addition, we used the χ² difference test to detect the variance in the effects of social media communication across the researched groups\. This result was expected, as consumers do not evaluate products from different industries and segments in the same manner \(Li and Bernoff 2011; Burmann and Arnhold 2008; Riegner 2007\)\.

If we consider the industry comparison in more detail, we can see that the χ² difference test reveals that there are both similarities and differences in the effect sizes\. The results demonstrate that, irrespective of the industry under analysis, firm\-created content and UGC influence brand equity and the consumer’s attitude toward brands in a similar way\. However, the results show that brand attitude has a stronger effect on brand equity for the non\-alcoholic beverages industry than on either the clothing or mobile network operator industry\. This can be explained in terms of the degree of consumer involvement with the form of social media advertising used by the industries \(Chauhan and Pillai 2013\)\. The most common social media advertising strategy used by the brands of the non\-alcoholic beverages industry was to elicit UGC and build positive brand associations\. As an example, one can point out the numerous Internet users who declare their preference for brands like Coca\-Cola on its Facebook profile \(e\.g\. ‘I love Coca\-Cola’ or ‘Coca\-Cola is the best!’\)\. The clothing and mobile network operator industries, on the other hand, adopted a different approach to their social media advertising strategy\. Their focus was to inform consumers \(e\.g\. provide information about new products and trends\) and to generate sales promotions \(e\.g\. coupons and discounts\)\.

Finally, we investigated brand purchase intention in order to assess the differences in the behavioral influences of social media communication on brand equity and on brand attitude in the three industries\. As expected, both brand equity and brand attitude positively influenced the brand purchase intentions of consumers for the three industries\. However, our findings showed that the relationship between brand equity and purchase intention, and between brand attitude and purchase intention for the non\-alcoholic beverages industry differs from the other two industries\. In the non\-alcoholic beverages industry, brand attitude was the strongest determinant of purchase intention\. This is attributed to the social media communication strategy used, as evidenced by the fact that for the clothing and mobile network operator industries, brand equity and brand attitude had an equal effect on the consumers’ brand purchase intention\. This indicates that the behavioral outcomes of social media communication are not only driven by industry characteristics \(Bruhn, Schoenmueller, and Schäfer 2012\), but also by the type of social media advertising\.

In summary, our findings demonstrate that although firm\-created content does not appear to directly influence consumer perceptions of brand equity, this content does affect consumer attitudes toward brands\. Moreover, firm\-created social media content can create a viral response that can assist in spreading the original advertising to a larger public\. Thus, the optimal scenario for communication managers is to attract or encourage consumers to generate content that reflects support for the brands and products of their companies\. Hence, the object of firm\-created social media content is to increase consumers’ brand awareness and brand attitudes rather than to compete with user\-generated social media content\.

= Limitations and further research
#par(first-line-indent: 0em)[Although this study makes a significant contribution to the social media communication literature, this research is not without limitations\. Therefore, the restrictions of our study can provide guidelines for future research\. In this study, only one social networking site was considered\. As shown by Smith, Fischer, and Yongjian \(2012\), social media communication differs across social media channels\. We suggest that all leading social media sites be analyzed to gain a broader understanding of the firm\-created and user\-generated social media communication\. Moreover, a wider range of industries should be examined in future studies\. This practice would provide an indication of how costumers perceive brands from different industries in social media channels\.]

Further research should also investigate how actual and perceived advertising expenditure on social media influences brand equity and its dimensions \(Cobb\-Walgren, Ruble, and Donthu 1995; Yoo, Donthu, and Lee 2000; Gil, Andrés, and Salinas 2007\)\. These findings should be considered by communication managers when planning the financing of social media campaigns\.

Researchers could also investigate other aspects of UGC that are tapped by user\-centered research fields, such as prosumers \(Toffler 1980\), lead users \(Von Hippel 1986\) and open source \(Von Krogh and von Hippel 2006\)\. The typology of Internet users should be implemented in the conceptual model presented in this study as controlling variables providing valuable insight into consumers involved with UGC\.

Finally, because a Central European sample was used in this study, it may be difficult to generalize the results to other cultures\. When replicating this research, researchers should consider social, economic, and cultural differences\. It is also recommended that such research be conducted in different countries to produce stronger validation and generalization of the findings\.

= Acknowledgements
#par(first-line-indent: 0em)[This research was supported by the Faculty of Management and Economics and the Department of Marketing at Gdańsk University of Technology \(DS 020352\)\. We would like to thank James Gaskin from Brigham Young University and Jacek Buczny from the University of Social Sciences and Humanities for their detailed and insightful comments concerning the SEM procedures used in this article\. We would also like to thank Maria Szpakowska, Julita Wasilczuk and Krzysztof Leja for their support, which made it possible for us to achieve our research objectives\. Special thanks to Lara Kalenik for the language edition\. Finally, the authors would like to thank Philip Kitchen, Gayle Kerr and the two anonymous reviewers for their constructive feedback throughout the review process which influenced the final version of the article\.]

= Note
#par(first-line-indent: 0em)[1\. Email: ddab\@zie\.pg\.gda\.pl]

= Notes on contributors
#par(first-line-indent: 0em)[Bruno Schivinski is a sociologist and a teaching assistant of marketing research at the Gdańsk University of Technology\. He graduated from Maria Curie\-Skłodowska University with a BS in management and marketing\. He also has a master’s degree in sociology with a concentration in marketing research\. He is an Internet professional with more than 12 years of experience\. He has attracted funding from prestigious external organizations, including the Ministry of Science and Higher Education \(MNiSW\) and the National Science Centre \(NCN\) in Poland\. His research has been published in leading Polish marketing journals and various conference proceedings\. Dariusz Dabrowski is a marketing and research professor\. He is the chair of the Marketing Department at the Faculty of Management and Economics at the Gdańsk University of Technology\. His research focuses on consumer behavior, marketing relations, and the development of new products\. Professor Dabrowski is the author of published books, he regularly presents research at conferences, and he has published more than 60 articles and other publications\. He has received awards for his research and has worked on research funded by the Ministry of Science and Higher Education \(MNiSW\) and the National Science Centre \(NCN\) in Poland\. His work has appeared in leading Polish management and marketing journals and other scholarly venues\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Aaker, D\. A\. 1991\. #emph[Managing Brand Equity: Captalizing on the Value of a Brand Name]\. New York: The Free Press\.

Aaker, D\. A\., and K\. L\. Keller\. 1990\. “Consumer Evaluations of Brand Extensions\.” #emph[Journal of Marketing] 54 \(1\): 27–41\.

Agarwal, M\., and V\. Rao\. 1996\. “An Empirical Comparison of Consumer\-Based Measures of Brand Equity\.” #emph[Marketing Letters] 3: 237–247\.

Ajzen, I\., and M\. Fishbein\. 1975\. #emph[Belief, Attitude, Intention and Behavior: An Introduction to Theory and Research]\. Reading, MA: Addison\-Wesley\.

Ajzen, I\., and M\. Fishbein\. 1980\. #emph[Understanding Attitudes and Predicting Social Behaviour]\. Englewood Cliffs, NJ: Prentice Hall\.

Algesheimer, R\., U\. M\. Dholakia, and A\. Herrmann\. 2005\. “The Social Influence of Brand Community: Evidence from European Car Clubs\.” #emph[Journal of Marketing] 69 \(July\): 19–34\.

Bagozzi, R\. P\., and Y\. Yi\. 1988\. “On the Evaluation of Structural Equation Models\.” #emph[Journal of the Academy of Marketing Science] 16 \(1\): 74–94\.

Baldinger, A\., and J\. Rubinson\. 1996\. “Brand Loyalty: The Link Between Attitude and Behavior\.” #emph[Journal of Advertising Research] 36 \(6\): 22–34\.

Bambauer\-Sachse, S\., and S\. Mangold\. 2011\. “Brand Equity Dilution through Negative Online Word\-of\-Mouth Communication\.” #emph[Journal of Retailing and Consumer Services] 18 \(1\): 38–45\.

Beales, H\., M\. Mazis, S\. Salop, and R\. Staelin\. 1981\. “Consumer Search and Public Policy\.” #emph[Journal of Consumer Research] 8 \(June\): 11–22\.

Berthon, P\. R\., L\. Pitt, and C\. Campbell\. 2008\. “Ad Lib: When Customers Create the Ad\.” #emph[California Management Review] 50 \(4\): 6–31\.

Brodie, R\. J\., A\. Ilic, B\. Juric, and L\. Hollebeek\. 2013\. “Consumer Engagement in a Virtual Brand Community: An Exploratory Analysis\.” #emph[Journal of Business Research] 66 \(8\): 105–114\.

Brown, J\., A\. J\. Broderick, and N\. Lee\. 2007\. “Word of Mouth Communication Within Online Communities: Conceptualizing the Online Social Network\.” #emph[Journal of Interactive Marketing] 21 \(3\): 2–20\.

Broyles, S\. A\., T\. Leingpibul, R\. H\. Ross, and B\. M\. Foster\. 2010\. “Brand Equity’s Antecedent\/Consequence Relationships in Cross\-Cultural Settings\.” #emph[Journal of Product & Brand Management] 19 \(3\): 159–169\.

Bruhn, M\., V\. Schoenmueller, and D\. B\. Schäfer\. 2012\. “Are Social Media Replacing Traditional Media in Terms of Brand Equity Creation?” #emph[Management Research Review] 35 \(9\): 770–790\.

Burmann, C\., and U\. Arnhold\. 2008\. #emph[User Generated Branding: State of the Art of Research]\. Munster: LIT Verlag\.

Byrne, B\. M\. 2010\. #emph[Structural Equation Modeling with AMOS: Basic Concepts, Applications, and Programming]\. 2nd ed\. New York: Taylor & Francis Group\.

Byrne, B\. M\., P\. Baron, and J\. Balev\. 1998\. “The Beck Depression Inventory: A Cross\-Validated Test of Second\-Order Factorial Structure for Bulgarian Adolescents\.” #emph[Educational and Psychological Measurement] 58 \(2\): 241–251\.

Carlson, B\. D\., T\. A\. Suter, and T\. J\. Brown\. 2008\. “Social Versus Psychological Brand Community: The Role of Psychological Sense of Brand Community\.” #emph[Journal of Business Research] 61 \(4\): 284–291\.

Castronovo, C\., and L\. Huang\. 2012\. “Social Media in an Alternative Marketing Communication Model\.” #emph[Journal of Marketing Development and Competitiveness] 6 \(1\): 117–134\.

Chaiken, S\. 1980\. “Heuristic Versus Systematic Information Processing and the Use of Source Versus Message Cues in Persuasion\.” #emph[Journal of Personality and Social Psychology] 39 \(5\): 752–766\.

Chauhan, K\., and A\. Pillai\. 2013\. “Role of Content Strategy in Social Media Brand Communities: A Case of Higher Education Institutes in India\.” #emph[Journal of Product & Brand Management] 1 \(22\): 40–51\.

Cheong, H\. J\., and M\. A\. Morrison\. 2008\. “Consumers’ Reliance on Product Information and Recommendations Found in UGC\.” #emph[Journal of Interactive Advertising] 8 \(2\): 38–49\.

Cheung, G\. W\., and R\. B\. Rensvold\. 2002\. “Evaluating Goodness\-of\-Fit Indexes for Testing Measurement Invariance\.” #emph[Structural Equation Modeling: A Multidisciplinary Journal] 9 \(2\): 233–255\.

Christodoulides, G\. 2012\. “Cross\-National Differences in e\-WOM Influence\.” #emph[European Journal of Marketing] 46 \(11\): 1689–1707\.

Christodoulides, G\., and L\. de Chernatony\. 2010\. “Consumer\-Based Brand Equity Conceptualisation and Measurement: A Literature Review\.” #emph[International Journal of Market Research] 52 \(1\): 43–65\.

Christodoulides, G\., and C\. Jevons\. 2011\. “The Voice of the Consumer Speaks Forcefully in Brand Identity: User\-Generated Content Forces Smart Marketers to Listen\.” #emph[Journal of Advertising Research] 51 \(1\): 101–108\.

Christodoulides, G\., C\. Jevons, and J\. Bonhomme\. 2012\. “Memo to Marketers: Quantitative Evidence for Change\. How User\-Generated Content Really Affects Brands\.” #emph[Journal of Advertising Research] 52 \(1\): 53–64\.

Christodoulides, G\., N\. Michaelidou, and N\. T\. Siamagka\. 2013\. “A Typology of Internet Users Based on Comparative Affective States: Evidence from Eight Countries\.” #emph[European Journal of Marketing] 47 \(1\): 153–173\.

Cobb\-Walgren, C\., C\. Ruble, and N\. Donthu\. 1995\. “Brand Equity, Brand Preference, and Purchase Intent\.” #emph[Journal of Advertising] 24 \(3\): 25–40\.

Cova, B\., and S\. Pace\. 2006\. “Brand Community of Convenience Products: New Forms of Customer Empowerment – the Case ‘My Nutella The Community’\.” #emph[European Journal of Marketing] 40 \(9\/10\): 1087–1105\.

Craig, C\., and S\. Douglas\. 2000\. #emph[International Marketing Research]\. 2nd ed\. Chichester: John Wiley & Sons\.

Cudeck, R\., and M\. Browne\. 1983\. “Cross\-Validation of Covariance Structures\.” #emph[Multivariate Behavioral Research] 18 \(2\): 147–167\.

Daugherty, T\., M\. Eastin, and L\. Bright\. 2008\. “Exploring Consumer Motivations for Creating User\-Generated Content\.” #emph[Journal of Interactive Advertising] 8 \(2\): 16–25\.

Dawar, N\., and M\. Pillutla\. 2000\. “Impact of Product\-Harm Crises on Brand Equity: The Moderating Role of Consumer Expectations\.” #emph[Journal of Marketing Research] 37 \(May\): 215–226\.

De Vries, L\., S\. Gensler, and P\. S\. H\. Leeflang\. 2012\. “Popularity of Brand Posts on Brand Fan Pages: An Investigation of the Effects of Social Media Marketing\.” #emph[Journal of Interactive Marketing] 26 \(2\): 83–91\.

Dellarocas, C\., X\. Zhang, and N\. F\. Awad\. 2007\. “Exploring the Value of Online Product Reviews in Forecasting Sales: The Case of Motion Pictures\.” #emph[Journal of Interactive Marketing] 21 \(4\): 23–45\.

Dodds, W\., K\. Monroe, and D\. Grewal\. 1991\. “Effects of Price, Brand, and Store Information on Buyers’ Product Evaluations\.” #emph[Journal of Marketing Research] 26 \(August\): 307–320\.

Duan, W\., B\. Gu, and A\. B\. Whinston\. 2008\. “Do Online Reviews Matter? An Empirical Investigation of Panel Data\.” #emph[Decision Support Systems] 45 \(4\): 1007–1016\.

Edwards, J\., and R\. Bagozzi\. 2000\. “On the Nature and Direction of Relationships Between Constructs and Measures\.” #emph[Psychological Methods] 5 \(2\): 155–174\.

Erdem, T\., J\. Swait, and J\. Louviere\. 2002\. “The Impact of Brand Credibility on Consumer Price Sensitivity\.” #emph[International Journal of Research in Marketing] 19 \(2002\): 1–19\.

Eysenck, M\. W\. 1984\. #emph[A Handbook of Cognitive Psychology]\. London: Lawrence Erlbaum Assoc\.

Faircloth, J\., L\. Capella, and B\. Alford\. 2001\. “The Effect of Brand Attitude and Brand Image on Brand Equity\.” #emph[Journal of Marketing Theory & Practice] 9 \(3\): 61–74\.

Folse, J\. A\. G\., R\. G\. Netemeyer, and S\. Burton\. 2012\. “Spokescharacters\.” #emph[Journal of Advertising] 41 \(1\): 17–32\.

Fornell, C\., and D\. Larcker\. 1981\. “Evaluating Structural Equation Models with Unobservable Variables and Measurement Error\.” #emph[Journal of Marketing Research] 18 \(1\): 39–50\.

Gangadharbatla, H\. 2008\. “Facebook Me: Collective Self\-Esteem, Need to Belong, and Internet Self\-Efficacy as Predictors of the iGeneration’s Attitudes Toward Social Networking Sites\.” #emph[Journal of Interactive Advertising] 806: 3–28\.

Garvin, D\. 1984\. “Product Quality: An Important Strategic Weapon\.” #emph[Business Horizons] 27 \(3\): 40–43\.

Gil, R\. B\., E\. F\. Andrés, and E\. M\. Salinas\. 2007\. “Family as a Source of Consumer\-Based Brand Equity\.” #emph[Journal of Product & Brand Management] 16 \(3\): 188–199\.

Godes, D\., and D\. Mayzlin\. 2009\. “Firm\-Created Word\-of\-Mouth Communication: Evidence from a Field Test\.” #emph[Marketing Science] 28 \(4\): 721–739\.

Goodstein, R\. 1993\. “Category\-Based Applications and Extensions in Advertising: Motivating More Extensive Ad Processing\.” #emph[Journal of Consumer Research] 20 \(6\): 87–99\.

Hair, J\. F, Jr, Wi\. C\. Black, B\. J\. Babin, and R\. E\. Anderson\. 2010\. #emph[Multivariate Data Analysis]\. 7th ed\. Englewood Cliffs, NJ: Pearson\/Prentice Hall\.

Hautz, J\., J\. Füller, K\. Hutter, and C\. Thürridl\. 2013\. “Let Users Generate Your Video Ads? The Impact of Video Source and Quality on Consumers’ Perceptions and Intended Behaviors\.” #emph[Journal of Interactive Marketing]\. http:\/\/dx\.doi\.org\/10\.1016\/j\.intmar\.2013\.06\.003

Internet World Stats\. 2013\. “World Internet Users Statistics Usage and World Population Stats\.” http:\/\/www\.internetworldstats\.com\/stats\.htm

Jalilvand, M\. R\., and N\. Samiei\. 2012\. “The Effect of Electronic Word of Mouth on Brand Image and Purchase Intention: An Empirical Study in the Automobile Industry in Iran\.” #emph[Marketing Intelligence & Planning] 30 \(4\): 460–476\.

Kaplan, A\. M\., and M\. Haenlein\. 2010\. “Users of the World, Unite! The Challenges and Opportunities of Social Media\.” #emph[Business Horizons] 53 \(1\): 59–68\.

Karakaya, F\., and N\. G\. Barnes\. 2010\. “Impact of Online Reviews of Customer Care Experience on Brand or Company Selection\.” #emph[Journal of Consumer Marketing] 27 \(5\): 447–457\.

Keller, K\. L\. 1993\. “Conceptualizing, Measuring, and Managing Customer\-Based Brand Equity\.” #emph[Journal of Marketing] 57 \(January\): 1–22\.

Keller, K\. L\. 2009\. “Building Strong Brands in a Modern Marketing Communications Environment\.” #emph[Journal of Marketing Communications] 15 \(2–3\): 139–155\.

Keller, K\. L\. 2013\. #emph[Strategic Brand Management: Building, Measuring, and Managing Brand Equity]\. 4th ed\. Harlow: Pearson Education\.

Keller, K\. L\., and D\. Lehmann\. 2003\. “How Do Brands Create Value?” #emph[Marketing Management] 5 \(May\/June\): 27–31\.

Kerin, R\., and R\. Sethuraman\. 1998\. “Exploring the Brand Value\-Shareholder Value Nexus for Consumer Goods Companies\.” #emph[Journal of the Academy of Marketing Science] 26 \(4\): 206–273\.

Kim, A\. J\., and E\. Ko\. 2012\. “Do Social Media Marketing Activities Enhance Customer Equity? An Empirical Study of Luxury Fashion Brand\.” #emph[Journal of Business Research] 65 \(10\): 1480–1486\.

Kozinets, R\. V\., K\. De Valck, A\. C\. Wojnicki, and S\. J\. S\. Wilner\. 2010\. “Networked Narratives: Understanding Word\-of\-Mouth Marketing in Online Communities\.” #emph[Journal of Marketing] 74 \(March\): 71–89\.

Krishnamurthy, S\., and W\. Dou\. 2008\. “Advertising with User\-Generated Content: A Framework and Research Agenda\.” #emph[Journal of Interactive Advertising] 8 \(2\): 1–4\.

Lane, V\., and R\. Jacobson\. 1995\. “Stock Market Reactions to Brand Extension Announcements: The Effects of Brand Attitude and Familiarity\.” #emph[Journal of Marketing] 59 \(1\): 63–77\.

Li, C\., and J\. Bernoff\. 2011\. #emph[Groundswell: Winning in a World Transformed by Social Technologies]\. Boston, MA: Harvard Business Review Press\.

Low, G\., and C\. Lamb Jr\. 2000\. “The Measurement and Dimensionality of Brand Associations\.” #emph[Journal of Product & Brand Management] 9 \(6\): 350–370\.

MacCallum, R\. C\., M\. Roznowski, and L\. B\. Necowitz\. 1992\. “Model Modifications in Covariance Structure Analysis: The Problem of Capitalization on Chance\.” #emph[Psychological Bulletin] 111 \(3\): 490–504\.

Maclnnis, D\., and B\. Jaworski\. 1989\. “Information Processing from Advertisements: Toward an Integrative Framework\.” #emph[The Journal of Marketing] 53 \(October\): 1–23\.

Mägi, A\. W\. 2003\. “Share of Wallet in Retailing: The Effects of Customer Satisfaction, Loyalty Cards and Shopper Characteristics\.” #emph[Journal of Retailing] 79 \(2\): 97–106\.

Mangold, W\. G\., and D\. J\. Faulds\. 2009\. “Social Media: The New Hybrid Element of the Promotion Mix\.” #emph[Business Horizons] 52 \(4\): 357–365\.

Miniard, P\. W\., C\. Obermiller, and T\. J\. Page Jr\. 1983\. “A Further Assessment of Measurement Influences on the Intention\-Behavior Relationship\.” #emph[Journal of Marketing Research] 20 \(May\): 206–212\.

Morgan, R\. M\., and S\. D\. Hunt\. 1994\. “The Commitment\-Trust Theory of Relationship Marketing\.” #emph[Journal of Marketing] 58 \(7\): 20–38\.

Muñiz, A\. M\., and H\. J\. Schau\. 2007\. “Vigilante Marketing and Consumer\-Created Communications\.” #emph[Journal of Advertising] 36 \(3\): 35–50\.

Muñiz, A\. M\., and H\. J\. Schau\. 2011\. “How to Inspire Value\-Laden Collaborative Consumer\-Generated Content\.” #emph[Business Horizons] 54 \(3\): 209–217\.

Muntinga, D\. G\., M\. Moorman, and E\. G\. Smit\. 2011\. “Introducting COBRAs: Exploring Motivations for Brand\-Related Social Media Use\.” #emph[International Journal of Advertising] 30 \(1\): 13–46\.

Muntinga, D\. G\., E\. Smit, and M\. Moorman\. 2012\. “Social Media DNA: How Brand Characteristics Shape COBRAs\.” #emph[Advances in Advertising Research] 3: 121–137\.

Murphy, S\. T\., and R\. B\. Zajonc\. 1993\. “Affect, Cognition, and Awareness: Affective Priming with Optimal and Suboptimal Stimulus Exposures\.” #emph[Journal of Personality and Social Psychology] 64 \(5\): 723–739\.

Nielsen\. 2012\. “State of the Media: The Social Media Report\.” http:\/\/www\.nielsen\.com\/content\/dam\/corporate\/us\/en\/reports\-downloads\/2012\-Reports\/The\-Social\-Media\-Report\-2012\.pdf

Nielsen\. 2013\. “Paid Social Media Advertising: Industry Update and Best Practices\.” http:\/\/www\. nielsen\.com\/content\/dam\/corporate\/us\/en\/reports\-downloads\/2013, Reports\/Nielsen\-Paid\-Social\-Media\-Adv\-Report\-2013\.pdf

Noble, C\. H\., S\. M\. Noble, and M\. T\. Adjei\. 2012\. “Let Them Talk! Managing Primary and Extended Online Brand Communities for Success\.” #emph[Business Horizons] 55 \(5\): 475–483\.

OECD\. 2007\. #emph[Participative Web and User\-Created Content: Web 2\.0 Wikis and Social Networking]\. Paris: Organisation for Economic Co\-operation and Development\. http:\/\/dl\.acm\.org\/citation\. cfm?id\=1554640

Olson, J\., and A\. Mitchell\. 1981\. “Are Product Attribute Beliefs the Only Mediator of Advertising Effects on Brand Attitude?” #emph[Journal of Marketing Research] 18 \(8\): 318–332\.

Pornpitakpan, C\. 2004\. “The Persuasiveness of Source Credibility: A Critical Review of Five Decades’ Evidence\.” #emph[Journal of Applied Social Psychology] 34 \(2\): 243–281\.

Priester, J\., and D\. Nayakankuppam\. 2004\. “The A2SC2 Model: The Influence of Attitudes and Attitude Strength on Consideration and Choice\.” #emph[Journal of Consumer Research] 30 \(March\): 574–588\.

Rezvani, M\., H\. K\. Hoseini, and M\. M\. Samadzadeth\. 2012\. “Investigating the Role of Word of Mouth on Consumer Based Brand Equity Creation in Iran’s Cell\-Phone Market\.” #emph[Journal of Knowledge Management, Economics and Information Technology] February \(8\): 1–15\.

Riegner, C\. 2007\. “Word of Mouth on the Web: The Impact of Web 2\.0 on Consumer Purchase Decisions\.” #emph[Journal of Advertising Research] 47 \(4\): 436–447\.

Schau, H\. J\., A\. M\. Muñiz Jr, and E\. J\. Arnould\. 2009\. “How Brand Community Practices Create Value\.” #emph[Journal of Marketing] 73 \(September\): 30–51\.

Schivinski, B\., and D\. Dabrowski\. 2013\. #emph[The Impact of Brand Communication on Brand Equity Dimensions and Brand Purchase Intention Through Facebook], GUT FME Working Paper Series A\. Vol\. 4 \(4\), 1–24\. Gdansk: Gdansk University of Technology, Faculty of Management and Economics\.

Sen, S\., and D\. Lerman\. 2007\. “Why Are You Telling Me This? An Examination into Negative Consumer Reviews on the Web\.” #emph[Journal of Interactive Marketing] 21 \(4\): 76–95\.

Shukla, P\. 2011\. “Impact of Interpersonal Influences, Brand Origin and Brand Image on Luxury Purchase Intentions: Measuring Interfunctional Interactions and a Cross\-National Comparison\.” #emph[Journal of World Business] 46 \(2\): 242–252\.

Simon, C\. J\., and M\. W\. Sullivan\. 1993\. “The Measurement and Determinants of Brand Equity: a Financial Approach\.” #emph[Marketing Science] 12 \(1\): 28–52\.

Smith, A\. N\., E\. Fischer, and C\. Yongjian\. 2012\. “How Does Brand\-Related User\-Generated Content Differ Across YouTube, Facebook, and Twitter?” #emph[Journal of Interactive Marketing] 26 \(2\): 102–113\.

SoTrender\. 2012\. #emph[Fanpage Trends]\. Sierpień, Warszawa: SmartNet Research & Solutions\.

Srinivasan, V\. 1979\. “Network Models for Estimating Brand\-Specific Effects in Multi\-Attribute Marketing Models\.” #emph[Management Science] 25 \(1\): 11–21\.

Styles, C\., and T\. Ambler\. 1995\. #emph[Brand Management]\. Pitman, London: Financial Times Handbook of Management\.

Taylor, C\. R\. 2013\. “Editorial: Hot Topics in Advertising Research\.” #emph[International Journal of Advertising] 32 \(1\): 7–12\.

Toffler, A\. 1980\. #emph[The Third Wave]\. New York: Morrow\.

Tsiros, M\., V\. Mittal, and W\. T\. Ross Jr\. 2004\. “The Role of Attributions in Customer Satisfaction: A Reexamination\.” #emph[Journal of Consumer Research] 31 \(2\): 476–483\.

Villanueva, J\., S\. Yoo, and D\. M\. Hanssens\. 2008\. “The Impact of Marketing\-Induced Versus Word\-of\-Mouth Customer Acquisition on Customer Equity Growth\.” #emph[Journal of Marketing Research] 45 \(2\): 48–59\.

Villarejo\-Ramos, A\. F\., and M\. J\. Sánchez\-Franco\. 2005\. “The Impact of Marketing Communication and Price Promotion on Brand Equity\.” #emph[Journal of Brand Management] 12 \(6\): 431–444\.

Von Hippel, E\. 1986\. “Lead Users: A Source of Novel Product Concepts\.” #emph[Management Science] 32 \(7\): 791–805\.

Von Krogh, G\., and E\. von Hippel\. 2006\. “The Promise of Research on Open Source Software\.” #emph[Management Science] 52 \(7\): 975–983\.

Wang, A\. 2009\. “Cross\-Channel Integration of Advertising: Does Personal Involvement Matter?” #emph[Management Research News] 32 \(9\): 858–873\.

Wang, X\., C\. Yu, and Y\. Wei\. 2012\. “Social Media Peer Communication and Impacts on Purchase Intentions: A Consumer Socialization Framework\.” #emph[Journal of Interactive Marketing] 26 \(4\): 198–208\.

Ward, J\., and A\. Ostrom\. 2006\. “Complaining to the Masses: The Role of Protest Framing in Customer\-created Complaint Web Sites\.” #emph[Journal of Consumer Research] 33 \(September\) 220–230\.

Winer, R\. S\. 2009\. “New Communications Approaches in Marketing: Issues and Research Directions\.” #emph[Journal of Interactive Marketing] 23 \(2\): 108–117\.

Yoo, B\., and N\. Donthu\. 2001\. “Developing and Validating a Multidimensional Consumer\-Based Brand Equity Scale\.” #emph[Journal of Business Research] 52 \(1\): 1–14\.

Yoo, B\., N\. Donthu, and S\. Lee\. 2000\. “An Examination of Selected Marketing Mix Elements and Brand Equity\.” #emph[Journal of the Academy of Marketing Science] 28 \(2\): 195–211\.

#set par(hanging-indent: 0em)
#set text(size: 11pt)
#pagebreak()
= Appendix
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A1.] List of constructs and measurements used\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (2.6fr, auto, auto, auto, auto, 1.5fr), align: (left, right, right, right, right, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Constructs and measurements]], [#strong[Standardized loading]], [#strong[CA]], [#strong[CR]], [#strong[AVE]], [#strong[Based on]]),
table.hline(stroke: 0.5pt),
[#emph[Firm\-created social media communication]], [], [0\.951], [0\.951], [0\.911], [Tsiros, Mittal, and Ross 2004, Mägi 2003, and Schivinski and Dabrowski 2013],
[\[FC1\] I am satisfied with the company’s social media communications for \[brand\]], [0\.92], [], [], [], [],
[\[FC2\] The level of the company’s social media communications for \[brand\] meets my expectations], [0\.92], [], [], [], [],
[\[FC3\] The company’s social media communications for \[brand\] are very attractive], [0\.93], [], [], [], [],
[\[FC4\] This company’s social media communications for \[brand\] perform well, when compared with the social media communications of other companies], [0\.87], [], [], [], [],
[#emph[User\-generated social media communication]], [], [0\.930], [0\.931], [0\.878], [Tsiros, Mittal, and Ross 2004, Mägi 2003, and Schivinski and Dabrowski 2013],
[\[UG1\] I am satisfied with the content generated on social media sites by other users about \[brand\]], [0\.90], [], [], [], [],
[\[UG2\] The level of the content generated on social media sites by other users about \[brand\] meets my expectations], [0\.92], [], [], [], [],
[\[UG3\] The content generated by other users about \[brand\] is very attractive], [0\.82], [], [], [], [],
[\[UG4\] The content generated on social media sites by other users about \[brand\] performs well, when compared with other brands], [0\.86], [], [], [], [],
[#emph[Overall brand equity]], [], [0\.920], [0\.921], [0\.891], [Yoo and Donthu 2001],
[\[OBE1\] It makes sense to buy \[brand\] instead of any other brand, even if they are the same], [0\.91], [], [], [], [],
[\[OBE2\] Even if another brand has the same feature as \[brand\], I would prefer to buy \[brand\]], [0\.87], [], [], [], [],
[\[OBE3\] If there is another brand as good as \[brand\], I prefer to buy \[brand\]], [0\.89], [], [], [], [],
[\[OBE4\] If another brand is not different from \[brand\] in any way, it seems smarter to purchase \[brand\]#super[a]], [0\.62], [], [], [], [],
[#emph[Brand attitude]], [], [0\.971], [0\.971], [0\.958], [Low and Lamb 2000, Villarejo\-Ramos and Sánchez\-Franco 2005],
[\[BA1\] I have a pleasant idea of \[brand\]], [0\.92], [], [], [], [],
[\[BA2\] \[Brand\] has a good reputation], [0\.94], [], [], [], [],
[\[BA3\] I associate positive characteristics with \[brand\]], [0\.97], [], [], [], [],
[#emph[Brand purchase intention]], [], [0\.945], [0\.946], [0\.924], [Yoo, Donthu, and Lee 2000, Shukla 2011],
[\[PI1\] I would buy this product\/brand rather than any other brands available], [0\.89], [], [], [], [],
[\[PI2\] I am willing to recommend that others buy this product\/brand], [0\.94], [], [], [], [],
[\[PI3\] I intend to purchase this product\/brand in the future], [0\.89], [], [], [], [],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#super[a] Item excluded from the analysis\.]
]
#v(12pt)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A2.] Convergent and discriminant validity table chart\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[CR]], [#strong[AVE]], [#strong[MSV]], [#strong[ASV]], [#strong[BA]], [#strong[FC]], [#strong[UG]], [#strong[BE]], [#strong[PI]]),
table.hline(stroke: 0.5pt),
[BA], [0\.971], [0\.919], [0\.686], [0\.464], [#emph[0\.958]], [], [], [], [],
[FC], [0\.951], [0\.829], [0\.482], [0\.325], [0\.577], [#emph[0\.911]], [], [], [],
[UG], [0\.931], [0\.771], [0\.482], [0\.342], [0\.551], [0\.694], [#emph[0\.878]], [], [],
[BE], [0\.921], [0\.795], [0\.564], [0\.409], [0\.730], [0\.485], [0\.552], [#emph[0\.891]], [],
[PI], [0\.946], [0\.854], [0\.686], [0\.445], [0\.828], [0\.501], [0\.529], [0\.751], [#emph[0\.924]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Note: The square root of the AVE values are marked in italics\.]
]
#v(12pt)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A3.] Structural results\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (auto, 1fr, auto, auto, auto, auto), align: (left, left, right, right, right, center,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Hypothesis]], [#strong[]], [#strong[p\-Value]], [#strong[t\-Value]], [#strong[β]], [#strong[Acceptance or rejection]]),
table.hline(stroke: 0.5pt),
[H1a], [Firm\-created social media → brand equity], [0\.45], [−0\.75], [−0\.04], [×],
[H1b], [User\-generated social media → brand equity], [0\.001], [4\.64], [0\.24], [✓],
[H2], [Brand attitude → brand equity], [0\.001], [13\.88], [0\.62], [✓],
[H3a], [Firm\-created social media → brand attitude], [0\.001], [6\.87], [0\.38], [✓],
[H3b], [User\-generated social media → brand attitude], [0\.001], [5\.27], [0\.29], [✓],
[H4], [Brand equity → purchase intention], [0\.001], [7\.45], [0\.32], [✓],
[H5], [Brand attitude → purchase intention], [0\.001], [14\.29], [0\.60], [✓],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Notes: t ≥ 4\.64, p ≤ 0\.001; cmin\/df \= 2\.21; CFI \= 0\.98; AGFI \= 0\.92; SRMR \= 0\.02; TLI \= 0\.98; RMSEA \= 0\.04\.]
]
#v(12pt)
#page(flipped: true)[
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A4.] Summary of goodness\-of\-fit statistics for tests for the invariance of causal structure\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Model description]], [#strong[Comparative model]], [#strong[χ²]], [#strong[df]], [#strong[Δχ²]], [#strong[Δdf]], [#strong[p\-Value]], [#strong[CFI]], [#strong[ΔCFI]]),
table.hline(stroke: 0.5pt),
[1\. Configural model; no equality constraints imposed], [–], [550\.792], [336], [–], [–], [–], [0\.978], [–],
[#emph[2\. Measurement model]], [], [], [], [], [], [], [], [],
[\(Model 2A\) All factor loadings constrained equal with exception of OBE2], [2A versus 1], [578\.05], [358], [27\.258], [22], [0\.202], [0\.978], [0\.000],
[#emph[3\. Structural model]], [], [], [], [], [], [], [], [],
[\(Model 3A#super[a]\) Model 2A with all structural path weights constrained equal], [3A versus 1], [606\.971], [370], [56\.179], [34], [0\.010], [0\.976], [0\.002],
[\(Model 3B\) Model 2A with structural path between FC and BA constrained equal], [3B versus 1], [580\.992], [360], [30\.2], [24], [0\.178], [0\.978], [0\.000],
[\(Model 3C\) Model 3B with structural path between UG and BA constrained equal], [3C versus 1], [585\.563], [362], [34\.771], [26], [0\.117], [0\.978], [0\.000],
[\(Model 3D\) Model 3C with structural path between UG and BE constrained equal], [3D versus 1], [588\.22], [364], [37\.428], [28], [0\.110], [0\.977], [0\.001],
[\(Model 3E#super[a]\) Model 3D with structural path between BA and BE constrained equal], [3E versus 1], [600\.704], [366], [49\.912], [30], [0\.013], [0\.976], [0\.002],
[\(Model 3F#super[a]\) Model 3C with structural path between BA and BE#super[b,c] constrained equal], [3F versus 1], [595\.048], [365], [44\.256], [29], [0\.035], [0\.977], [0\.001],
[\(Model 3G\) Model 3C with structural path between BA and BE#super[c] constrained equal], [3G versus 1], [588\.22], [364], [37\.428], [28], [0\.110], [0\.977], [0\.001],
[\(Model 3H#super[a]\) Model 3G with structural path between BE and PI constrained equal], [3H versus 1], [593\.224], [366], [42\.432], [30], [0\.066], [0\.977], [0\.001],
[\(Model 3I\) Model 3G with structural path between BE and PI#super[b,c] constrained equal], [3I versus 1], [589\.656], [365], [38\.864], [29], [0\.104], [0\.977], [0\.001],
[\(Model 3J#super[a]\) Model 3I with structural path between BA and PI constrained equal], [3J versus 1], [594\.076], [367], [43\.284], [31], [0\.07], [0\.977], [0\.001],
[\(Model 3K\) Model 3I with structural path between BA and PI#super[b,c] constrained equal], [3K versus 1], [590\.38], [366], [39\.588], [30], [0\.113], [0\.977], [0\.001],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Δχ², difference in χ² values between models; Δdf, difference in number of degrees of freedom between models; ΔCFI, difference in CFI values between models; FC, firm\-created communication; UG, user\-generated communication; BE, brand equity; BA, brand attitude; PI, purchase intention\. #super[a] Model noninvariant considering the Δχ² test\. #super[b] Clothing industry\. #super[c] Mobile operators industry\.]
]
#v(12pt)
]

#set document(title: "Influencing COBRAs: the effects of brand equity on the consumer’s propensity to engage with brand\-related content on social media", author: ("Bruno Schivinski", "Daan G. Muntinga", "Halley M. Pontes", "Przemyslaw Lukasik"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Schivinski et al\. \(2021\), accepted manuscript #h(1fr) Journal of Strategic Marketing] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Influencing COBRAs: the effects of brand equity on the consumer’s propensity to engage with brand\-related content on social media]]
#v(0.8em)
#text(size: 12pt)[Bruno Schivinski, Daan G\. Muntinga, Halley M\. Pontes, Przemyslaw Lukasik]
#v(0.2em)
#text(size: 10pt, style: "italic")[Birkbeck, University of London; XXS Amsterdam; Nottingham Trent University; Maria Curie Skłodowska University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Schivinski, B\., Muntinga, D\. G\., Pontes, H\. M\., & Lukasik, P\. (2021). Influencing COBRAs: the effects of brand equity on the consumer’s propensity to engage with brand\-related content on social media. #emph[Journal of Strategic Marketing, 29]\(1\), 1–23. #link("https://doi.org/10.1080/0965254X.2019.1572641")[https:\/\/doi.org\/10\.1080\/0965254X\.2019\.1572641]
  #v(0.9em)
  This is an Accepted Manuscript of an article published by Taylor & Francis in Journal of Strategic Marketing on 10 February 2019, available online: #link("https://doi.org/10.1080/0965254X.2019.1572641")[https:\/\/doi.org\/10\.1080\/0965254X\.2019\.1572641]
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/influencing-cobras-brand-equity.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Influencing COBRAs: the effects of brand equity on the consumer’s propensity to engage with brand\-related content on social media]]
#v(0.6em)
#par(first-line-indent: 0em)[Bruno Schivinski#super[a]\*, Daan G\. Muntinga#super[b], Halley M\. Pontes#super[c] and Przemyslaw Lukasik#super[d]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[a]Group of Marketing, Department of Management, Birkbeck, University of London, London, UK; #super[b]XXS Amsterdam, Amsterdam, the Netherlands; #super[c]Psychology Department, Nottingham Trent University, Nottingham, UK; #super[d]Department of Marketing, Faculty of Economics, Maria Curie Skłodowska University, Lublin, Poland]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: B\. Schivinski, b\.schivinski\@bbk\.ac\.uk]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() This research examines whether perceptions of brand equity influence consumers’ propensity to engage with brand\-related content on social media\. By combining two frameworks: consumer\-based brand equity \(CBBE\) and consumers’ online brand\-related activities \(COBRAs\) we develop two conceptual models and empirically test their validity\. Using survey data from respondents across a range of brands, we estimate conceptual models from both a macro\- and a micro\-relationship perspective\. From the macro\-relationship perspective, findings suggest that consumer\-based brand equity positively drives consumers’ behavioral engagement with brands on social media\. From the micro\-relationship perspective, findings indicate that brand associations influence the consumption and contribution of brand\-related social media content, while brand loyalty additionally influences the creation of brand\-related social media content\. Finally, brand quality was found to negatively effect consumers’ behavioral engagement: the lower the perceived quality, the more individuals consume and contribute brand\-related content to social media\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Consumer\-based brand equity; online brand\-related activities; social media; engagement; online consumer behavior; COBRAs]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 4 November 2017; accepted 11 January 2019\.]]
#v(0.6em)
= 1\. Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Consumers trust each other, not big brands \(Edelman, 2018; Turcotte, York, Irving, Scholl, & Pingree, 2015\)\. A stream of recent research demonstrates that when consumers voluntarily engage with brands on social media, this significantly increases brand performance on a variety of metrics, including brand awareness and purchase intentions \(Colicev, Malshe, Pauwels, & O’Connor, 2018; Yoon et al\., 2018\)\. Stimulating and cultivating consumer brand engagement on social media is therefore becoming marketers’ main concern \(Kohli, Suri, & Kapoor, 2015\)\. Accordingly, the literature on brand\-related social media use is rapidly accumulating\. For example, research examines the content that consumers engage with on social media \(Ashley & Tuten, 2015; Voorveld, Guda Van Noort, Muntinga, & Bronner, 2018\), as well as the consumer\-specific drivers of engagement, e\.g\. tie strength, homophily, and motivations \(Chu & Kim, 2011; Muntinga, Moorman, & Smit, 2011\)\. However, much of the social media realm is opaque to practitioners and academics alike \(Felix, Rauschnabel, & Hinsch, 2016\)\. Knowledge of the brand\-specific drivers of engagement remains particularly limited, if not completely absent \(Azar, Machado, Vacas\-De\-Carvalho, & Mendes, 2016; Maslowska, Malthouse, & Collinger, 2016\)\.]

This article therefore addresses calls for research to investigate the link between consumers’ perceptions of brands and their social media behavior \(Maslowska et al\., 2016; Schivinski, Christodoulides, & Dabrowski, 2016\)\. More specifically, this study investigates whether brand equity influences consumers’ behavioral engagement with brands in terms of reading, watching, commenting, sharing, ‘liking’, and creating brand\-related content on social media channels – a topic of relevance for both academics and practitioners \(Kane, Alavi, Labianca, & Borgatti, 2014; Yadav & Pavlou, 2014\)\.

To this end, we integrated two frameworks: consumer\-based brand equity \(CBBE; Aaker, 1991\) and consumers’ online brand\-related activities \(COBRAs; Muntinga et al\., 2011\)\. The CBBE framework serves as a way to understand consumers’ multi\-dimensional perceptions of brands, whereas the COBRAs framework provides a universal understanding of brand\-related social media behavior\.

In a day and age where marketing’s adage is ‘if it doesn’t spread it’s dead’, understanding why and how consumers are willing to invest scarce personal resources in brands is high on the academic research agenda \(Kannan & Li, 2017; Lamberton & Stephen, 2016\)\. Research has demonstrated that for engagement behaviors specifically, ‘nothing matters to people than people’ \(Ahuvia, 2015\)\. On the social media stage, people use brands as props to build identity and fuel relationships \(Eelen, Özturan, & Verlegh, 2017\)\. From a theoretical point of view, then, it is interesting to investigate the value of brands and branding in a digital world\. Dimensions of brand equity may well help capture how brands can resonate digitally, similar to how different brand equity facets have been shown to drive both online and offline brand\-related behaviors \(e\.g\. Chatzipanagiotou, Veloutsou, & Christodoulides, 2016; Keller, 2016; Schivinski & Dabrowski, 2016\)\. For practitioners, it is easy to see how such knowledge can help build strategies to increase consumers’ willingness to engage with brands online\. Understanding which CBBE dimensions translate into more \(or less\) engagement behaviors allows brand managers to single out the relevant customer mindset metrics that require their attention \(Andrew, Kumar, Polo, & Javier Sese, 2018\)\. As for instance, advertising that pushes these metrics can subsequently drive online brand engagement \(de Vries, Gensler, & Leeflang, 2017; Voorveld, Theo Araujo, Bernritter, & Vliegenthart, 2018\)\.

To fully capture the abovementioned phenomena, we test the integration of both frameworks from a macro\- and micro\-relationship perspective controlled for consumer’s demographics and online behavior\. The choice of the control variables was based on past research, which demonstrated that consumer’s engagement with brands on social media is susceptible to variations in their age, gender, and social media usage \(Harmeling, Moffett, Arnold, & Carlson, 2017; Muntinga et al\., 2011; Schivinski et al\., 2016\)\.

From a macro\-relationship perspective, the first research objective of this paper is to investigate whether consumers’ overall perception of brand equity \(i\.e\. their overall CBBE score\) influences their behavioral engagement with brand\-related content on social media\. The conceptual model calculates the aggregated effects obtained when approaching the CBBE and COBRAs frameworks from a holistic viewpoint\. The advantage of this approach is that the overall analysis does not distinguish between the inter\-dimensions of the two holistic frameworks, resulting in a general perspective of the phenomenon\. A disadvantage of this approach is that the distinct effects of the dimensions cannot be determined\.

Therefore, from a micro\-relationship perspective, the second research objective of this paper is to identify the individual effects across each inter\-dimension of CBBE and COBRAs\. With this approach, the conceptual model investigates whether consumers’ brand associations, perceived quality, and reported brand loyalty influence the consumption, contribution, and creation of brand\-related content on social media\. Both research objectives provide valuable information for inference\. The macro\-relationship perspective enables a holistic test of the conceptual framework, while the micro\-relationship perspective allows for pinpointing the brand\-specific drivers of behavioral engagement in terms of consumption, contribution, and creation of brand\-related social media content\.

= 2\. Theoretical background and conceptual framework
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 2\.1\. Consumers’ engagement with brands on social media
#par(first-line-indent: 0em)[Engagement is central to the social media phenomenon \(Baldus, Voorhees, & Calantone, 2015; Keller, 2016\) and is a fruitful research area \(for a review of the literature see Maslowska et al\., 2016; Unal, Schivinski, & Brzozowska\-Woś\., 2017\)\. In the context of brand\-related content, however, engagement is a buzz phrase that remains a concept devoid of a clear delineation \(Hollebeek & Chen, 2014; Rodgers & Thorson, 2018\)\. Nevertheless, one generally accepted definition \(Rodgers & Thorson, 2018\) comes from Hollebeek \(2011\), who views engagement as the level of a consumer’s ‘cognitive, emotional, and behavioral investment in specific brand interactions’ \(p\. 555\)\. Notably, engagement is not limited to positive brand\-related interactions; Hollebeek and Chen \(2014\) discuss how engagement behaviors can be positively as well as negatively valenced\. This study does not discriminate between positively and negatively valenced engagement but views engagement with brands on social media as a broad, multi\-dimensional construct falling into three categories: cognitive engagement, emotional engagement, and behavioral engagement\. The current study focuses solely on the latter for three reasons\.]

First, executives generally tend to measure the effectiveness of their marketing\-communication efforts not in terms of cognitive and emotional engagement but in terms of behavioral engagement such as uploads, ‘likes,’ shares, links, connects, subscribes, and the like \(Ashley & Tuten, 2015\)\. Second, consumers’ brand\-related behaviors are at the heart of social media’s effectiveness as a marketing instrument \(de Vries, Gensler, & Leeflang, 2012\)\. What consumers do with brands on social media is visible to innumerable other consumers and thus effectively constitutes the public enactment of the brand – the touchpoints that brand managers can no longer control \(Gensler, Völckner, Liu\-Thompkins, & Wiertz, 2013\)\.

Third, the authenticity and credibility associated with these activities gives consumers influence at the expense of marketers \(Labrecque, Vor Dem Esche, Mathwick, Novak, & Hofacker, 2013\)\. As a result, consumers’ brand\-related social media communications have strong potential to shape brand perceptions \(Christodoulides & Jevons, 2011\) and behavior \(Dhar & Chang, 2009\)\. Marketers therefore aim to strategically inspire and cultivate consumers’ voluntary interactions with brand\-related content \(de Vries et al\., 2012\)\.

To do so effectively, they must understand what motivates consumers to engage with brand\-related social media content\. Specifically, they must understand not only who are actively engaging with brands on social media \(Wallace, Buil, & de Chernatony, 2014\) and why they are doing so \(Muntinga et al\., 2011; de Vries, Gensler et al\., 2017\) but also whether the perceptions of brands they create inspire consumers to be active, co\-creating participants\. However, such research remains scarce\. Other than Haarhoff and Kleyn’s \(2012\) exploration of the personality of ‘open\-source’ brands and Lovett, Peres, and Shachar’s \(2013\) attempt to find what unites brands that consumers talk about online, research knows little about the factors that induce consumers to engage with certain brands while leaving others relatively ‘unengaged’ with or untouched\.

== 2\.2\. COBRAs
#par(first-line-indent: 0em)[Social media enable consumers to seamlessly shift from passive consumers to active contributors and creators of brand\-related content \(Muntinga et al\., 2011; Schivinski et al\., 2016\)\. Given the increasing significance of brand\-related behavior for business, this study focuses on whether consumers’ perception of brand equity influences their behavioral engagement with brand\-related social media content\.]

Muntinga, Moorman, and Smit’s \(2011\) framework of COBRAs serves as an appropriate background to capture brand\-related social media behavior\. COBRAs are defined as ‘a set of brand\-related online activities on the part of the consumer that vary in the degree to which the consumer interacts with social media and engages in the consumption, contribution, and creation of media content’ \(Schivinski et al\., 2016, 66\)

Muntinga et al\. \(2011\) developed the COBRAs framework in response to the lack of a concept that adequately captured the diversity of consumer behavior on social media\. This single unifying framework to categorize all brand\-related activity on social media differs from other behavioral constructs \(e\.g\. Godes et al\.’s \(2005\) concept of social interactions; van Doorn et al\.’s \(2010\) concept of consumer engagement behavior\) by viewing behavioral engagement with brands as a passive\-to\-active concept that discriminates between three levels of behavior: consumption, contribution, and creation\.

According to Keller \(2016\), such conceptual thinking about engagement ‘provide\[s\] provision and insight’; a framework such as COBRAs recognizes ‘how different customers may want different relationships with a brand’ \(p\. 11\)\. Reflecting these different relationships, the division between consuming, contributing, and creating takes the shape of an ‘engagement pyramid’\. At the top of the pyramid, a smaller group of consumers is highly behaviorally engaged \(i\.e\. creating\); at the broad base of the pyramid, a relatively large group of consumers is not very much behaviorally engaged with the brand \(i\.e\. consuming\)\. Examples of such engagement behaviors include viewing videos on a brand’s YouTube channel \(i\.e\. consumption\), discussing commercials on Twitter \(i\.e\. contribution\), and posting user\-generated content on Facebook \(i\.e\. creation\) \(note that these behaviors can be either positively or negatively valenced\)\. As a result of this passive\-to\-active gradient, the COBRAs framework can help assess how different levels of brand\-related behavior connect with a range of other factors, thus shedding light on the brand\-related antecedents of consumers’ behavioral engagement with brands on social media\. The latter point is this article’s main goal\.

== 2\.3\. CBBE
#par(first-line-indent: 0em)[Though virtually undisputed in scholarly and practitioner literature, agreement on the conceptualization and dimensionality of CBBE is lacking \(Christodoulides, Cadogan, & Veloutsou, 2015\)\. Despite the myriad methods to determine CBBE, one of the most commonly adopted in empirical studies is Aaker’s \(1991\) conceptual framework\. To capture consumers’ perception of brand equity, the current study employs Aaker’s CBBE conceptualization because of its flexible implementation in research and business practice\. Though complex due to its holistic integration, research can easily assess Aaker’s CBBE framework using self\-report\/paper\-and\-pencil survey techniques relying solely on consumers’ perceptions, independent of business metrics and stipulated dollar values \(which are not always available\)\.]

Aaker’s \(1991\) CBBE has five dimensions; four \(brand awareness, brand associations, perceived quality, and brand loyalty\) are linked to the consumer and one \(other proprietary assets, such as patents, trademarks, and channel relationships\) is related to the firm\. Empirical research dealing with consumer perceptions usually omits the last dimension\. Aaker identifies the components of CBBE but does not operationalize the model, which has prompted numerous interpretations on how to gauge the concept \(Buil, Chernatony, and Martínez 2008; Christodoulides et al\., 2015\)\. Following the stream of empirical development and refinement of the construct in literature, the current study captures Aaker’s CBBE framework using Christodoulides, Cadogan, and Veloutsou’s \(2015\) conceptualization\. This conceptualization addresses the limitations reported in the previous literature, particularly regarding the discrimination of two CBBE dimensions – brand awareness and brand associations\.

In line with Christodoulides and de Chernatony \(2010\), this study defines CBBE as ‘a set of perceptions, attitudes, knowledge, and behavior on the part of consumers that results in increased utility and allows a brand to earn greater volume or greater margins than it could without the brand name’ \(p\. 48\)\. The study further operationalizes CBBE as a four\-dimensional construct consisting of brand awareness, brand associations, perceived quality, and brand loyalty\. Brand awareness captures ‘the ability of a potential buyer to recognize or recall that a brand is a member of a certain product category’ \(Aaker, 1991, p\. 61\); brand associations are ‘anything linked in memory to a brand’ \(Aaker, 1991, p\. 109\); perceived quality is ‘the consumer’s judgment about a product’s overall excellence or superiority’ \(Zeithaml, 1988, p\. 3\); and brand loyalty is ‘the attachment that a customer has to a brand’ \(Aaker, 1991, p\. 39\)\.

== 2\.4\. Macro\-relationship perspective: holistic relationship between CBBE and COBRAs
#par(first-line-indent: 0em)[This research builds on the traditional hierarchy\-of\-effects model to postulate hypotheses about the effects of CBBE on COBRAs\. This model, also known as the standard learning hierarchy, follows the theory of reasoned action \(TRA\) \(Ajzen & Fishbein, 1980; Fishbein & Ajzen, 1975\)\. TRA anticipates that attitudes and subjective norms influence intentions, which in turn drive behavior\. This hierarchical structure holds in the contexts of social factors driving consumers’ social media usage \(Chen, Yen, & Hwang, 2012\), response to viral marketing on social networking sites \(i\.e\. driving purchase behavior; Gunawan & Huarng, 2015\), and brand\-related social media behavior \(i\.e\. behavioral responses to ads on social media; Zhang & Mao, 2016\)\. Consequently, evaluating consumers’ beliefs about and associations with a product\/brand may result in engagement through consumption, contribution, and creation of brand\-related social media content\. In line with the TRA model, consumers initially develop preferences for a brand and positive associations, which then lead to increased brand\-related social media behavior \(i\.e\. reading, watching, commenting, sharing, ‘liking’, and creating content\)\. Thus, this study posits the following:]

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1:] Consumers’ overall perceptions of brand equity \(CBBE\) positively influence their behavioral engagement with brand\-related social media content \(COBRAs\) controlled for age, gender, and social media usage\.]]
== 2\.5\. Micro\-relationship perspective: hierarchical structure of CBBE dimensions
#par(first-line-indent: 0em)[Although Aaker \(1991\) discusses the holistic nature of CBBE, he does not fully describe the structure of the CBBE framework\. Deriving from the previously discussed divergences in the conceptualization of CBBE, empirical researchers often treat CBBE as a hierarchical structure, assuming associative \(Pappu, Quester, & Cooksey, 2005\) and directional \(Buil, Martínez, and de Chernatony 2013\) relationships across the four dimensions of the construct \(i\.e\. awareness, associations, quality, and loyalty\)\.]

A more recent approach to the directional relationship structure conveys CBBE as a dynamic and evolving process \(Buil et al\., 2013\), which initiates the positioning of the brand in the minds of consumers\. After assimilating the core brand values, consumers respond in a cognitive–affective–conative sequence \(i\.e\. to feel, to know, to do; Lavidge & Steiner, 1961\)\. Decoding this process in accordance with Aaker’s \(1991\) framework, the hierarchical structure of CBBE is a learning process in which consumers’ cognizance of the brand \(brand awareness\) influences their attitudes \(brand associations and perceived quality\), which in turn effect their overall preferences and behavior \(brand loyalty\)\. Given the hierarchical approach to CBBE proposed here, empirical validation is required\. Thus, the current study formalizes and tests the directional relationship across CBBE dimensions, as this relationship is a core part of the conceptual framework introduced in the micro\-relationship perspective\.

With regard to brand awareness, this process initiates the building of CBBE\. Consumers must first be aware of a brand to develop brand associations\. Therefore, brand awareness influences the formation and strength of brand associations\. A similar relationship occurs between brand awareness and perceived quality\. Brand awareness works as an antecedent to perceived quality; the more aware consumers are about a brand, the higher the perceived quality\. This is also similar to how a relationship exists between increased advertising spend and perceived brand quality perceptions: repetitive advertising positively influences quality perceptions \(Moorthy & Hawkins, 2005\)\. Also, when consumers develop positive perceptions of a brand, their brand loyalty increases \(Oliver, 1997\)\. Following the hierarchical structure of CBBE dimensions, brand associations and perceived quality lead to brand loyalty\. Therefore, high levels of positive brand associations and perceived quality positively influence brand loyalty\. The following hypothesis summarizes these arguments:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2:] CBBE dimensions follow a directional structure responding in a cognitive–affective–conative sequence, thus brand awareness positively influences \(H2a\) brand associations and \(H2b\) perceived quality, those in turn, positively influence \(H2c and H2d\) brand loyalty\.]]
== 2\.6\. Micro\-relationship perspective: inter\-dimensional relationship between CBBE and COBRAs
#par(first-line-indent: 0em)[Consumers’ awareness of a brand is necessary, albeit not sufficient, to create value\. Brand awareness is a pre\-condition for CBBE as consumers must be aware of the brand \(Aaker, 1991\)\. Therefore, the direct effects of CBBE dimensions on consumers’ behavioral engagement with brand\-related social media content should come from brand associations, perceived quality, and brand loyalty\.]

By creating positive brand associations, companies build favorable attitudes toward their brands\. These positive associations are essential to managers in terms of brand positioning and differentiation practices \(Ou & Verhoef, 2017\)\. Consequently, practitioners tend to focus on linking a brand with strong and positive associations to keep ahead of competitors and influence consumer behavior\. In line with TRA, as long as brand\-related social media communication leads to satisfactory customer associations, such communication should trigger positive responses in customers as recipients and stimulate behavioral engagement with brand\-related social media content\. Hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3:] Brand associations positively influence consumers’ behavioral engagement in terms of their \(H3a\) consumption, \(H3b\) contribution, and \(H3c\) creation of brand\-related social media content controlled for age, gender, and social media usage\.]]
Brand loyalty is one of the main components of brand equity\. This CBBE dimension is based on the interactions of customers with the product\/service, brand, and the company \(Palmatier, Scheer, and Stennkamp 2007\)\. The relationship between brand communication and brand loyalty can be either positive or negative, depending on the circumstances in which consumers are exposed to them\. In the context of social media communication, a negative impact of brand loyalty on consumers’ engagement with brand\-related content seems implausible, due to the characteristics of the social media communication system \(Felix et al\., 2016\)\. For example, when clicking the options ‘like’, favorite, follow, and others on social media channels \(e\.g\. Facebook, YouTube, Twitter\), by default consumers have agreed to receive the content from a brand page or peer; thus, engagement works in a voluntary and deliberate way \(Nelson\-Field, Riebe, & Sharp, 2012\)\. Consumers with a low level of loyalty are unlikely to connect and actively engage with brands on social media\. Therefore, the more loyal consumers are to a brand, the more they consume, contribute, and create brand\-related social media content:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4:] Brand loyalty positively influences consumers’ behavioral engagement in terms of their \(H4a\) consumption, \(H4b\) contribution, and \(H4c\) creation of brand\-related social media content controlled for age, gender, and social media usage\.]]
The so\-called negativity effect is a firmly established phenomenon in psychological research\. According to Ahluwalia \(2002\), consumers perceive negative product features as characteristic of a low\-quality product more than they perceive positive features as characteristic of a high\-quality product \(van Noort & Willemsen, 2011\)\. In other words, in their formation of overall evaluations of a product or brand, consumers put more value on negative than positive information\. In behavioral economics, prospect theory \(Kahneman & Tversky, 1979; Tversky & Kahneman, 1981\) offers a psychological explanation of why consumers weigh negative product information higher than positive product information\. This theory centers on consumers’ subjective risk assessment and proposes that they focus on the potential diagnostic value of losses and gains resulting from a choice, rather than on the financial outcome of a choice\. Here, ‘diagnostic’ means that consumers are not rational information processors or purely analytical utility seekers; thus, what is valuable to someone depends on a given idiosyncratic reference point\. In the context of product quality, high quality is a reference point – a product is simply expected to perform well and is unsurprising when it does so\. Low product quality, or negative information about a product, thus runs counter to consumers’ expectations; they take high quality for granted, but low quality catches their eye\. As ‘consumers are more concerned about ensuring that they do not suffer from an unwise product choice than they are about benefiting from a wise choice’ \(Hennig\-Thurau, Wiertz, & Feldhaus, 2015, p\. 377\), low quality has more impact on product evaluations and purchase behavior than high quality\.

This effect particularly manifests in the context of electronic word of mouth \(eWOM\)\. Research shows that the negative impact of negative eWOM is more pronounced than the positive impact of positive eWOM \(Hennig\-Thurau et al\., 2015; van Noort & Willemsen, 2011\)\. Thus, we expect that negative consumer experiences with products have a higher diagnostic value than positive consumer experiences and therefore that consumers are more likely to engage in brand\-related behaviors for products with low than high perceived quality\. Thus:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H5:] Perceived quality negatively influences consumers’ behavioral engagement in terms of their \(H5a\) consumption, \(H5b\) contribution, and \(H5c\) creation of brand\-related social media content controlled for age, gender, and social media usage\.]]
Figure 1 summarises the conceptual models from both a macro\- and a micro\-relationship perspective\.

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Conceptual framework\. Note: The graphical representation of Brands \(circle\) and dashed arrow represent the random part of the structural equation mixture model]]
#v(0.6em)
= 3\. Method
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 3\.1\. Sample and procedure
#par(first-line-indent: 0em)[In the present study, a heterogeneous sample of social media users was recruited in Poland using a standardized online survey with Qualtrics \(www\.qualtrics\.com\)\. The survey was divided into blocks\. The first block presented the respondents with an introductory text describing the general objectives of the study and distinguished between the different types of COBRAs\. The next block included demographic questions such as age, gender, education, and social media usage\. To measure brand equity, four measurement blocks were used for each CBBE dimension\. Each dimension was measured with three indicators adopted from Christodoulides et al\. \(2015\) \(1 \= ‘strongly disagree’, 7 \= ‘strongly agree’\)\. To capture the three COBRAs dimensions, the consumer’s engagement with brand\-related social media content \(CEBSC\) scale was adopted from Schivinski et al\. \(2016\)\. Three measurement blocks were presented to the respondents\. Each block contained one COBRAs dimension of consuming, contributing, and creating \(1 \= ‘not very often’, 7 \= ‘very often’\)\. The option of ‘not at all’ was also available and coded as 0\. To avoid systematic order effects, the order of the CBBE and CEBSC scales in each measurement block was randomized; the blocks in the survey were also randomized\. Table A1 presents the scales used in the study\.]

The questionnaire was administered in Polish\. A back\-translation process was used to ensure correct translation and understanding of the items \(Craig & Douglas, 2005\)\. We carried out a pretest before running the field research\. The online survey was tested with 52 business students\. The students had no problems completing the task\. They were later asked about the overall objective of the study, and all failed to identify such\. Minor changes to the order and wording of questions were made after the pretest\.

For the main research, rather than using probability sampling, respondents were invited to take part in the study on several social media channels, online forums, and discussion groups\. No incentive was awarded for participating in the study\. Respondents were informed briefly about the overall topic of the study \(i\.e\. brands on social media\) and then accessed the survey through a link\. To be eligible to take the survey, the respondent was asked to provide any brand he or she actively follow on social media for a minimum of 4 months\. This brand was later used throughout the survey\.

Each respondent could take the survey only once and rate a single brand\. As a characteristic of collecting online data, estimation of how many people had access to the link is not accessible; therefore, calculations of the response rate for the study were omitted\. A sample of 489 consumers took part in the study\. Invalid and incomplete questionnaires were rejected\. Invalid entries included \(1\) empty questionnaires, and \(2\) questionnaires in which respondents rated all the blocks with only one anchor \(e\.g\. only using the anchor 7 to answer the whole survey; SD#sub[items] \= 0\), or had very little variance across answering patterns \(indication of low engagement into the task SD#sub[items] ranging from 0\.1 to 0\.3\)\. Incomplete questionnaires were also rejected to avoid manual data imputation\. The final sample resulted in 414 valid questionnaires \(84\.6%\)\. The structure of the sample is as follows: 59\.7% of the sample was female, 47\.6% fell within the age range of 22–25 years, and the median education level was secondary school \(33\.3%\)\. The respondents also indicated spending 2–4 h online every day \(45\.4%\)\. The characteristics of the final sample closely match the demographics of Internet and social media users in Poland \(GUS Central Statistical Office, 2016\)\. In total, 51 brands were analyzed across different industries and product categories \(e\.g\. Pepsi, Zara, Chanel, and Apple\)\.

== 3\.2\. Measurement procedures
#par(first-line-indent: 0em)[To validate the scales used, all independent and dependent latent variables were included in one multi\-factorial confirmatory model \(CFA\) in Mplus 7\.2 software with robust maximum\-likelihood estimation method \(MLR\)\. The MLR estimator was employed because the assumption of multivariate normality was violated \(rating scales tend to generate multivariate kurtotic data; see Table A1 for skewness and kurtosis values\)\. Cronbach’s alpha \(α\), composite reliability \(CR\), and factor determinacy \(FD\) helped establish reliability\. Both alpha and CR values ranged from 0\.86 to 0\.93\. These values exceed the recommended 0\.70 threshold value \(Bagozzi and Yi 1988\)\. Factor determinacy ranged from 0\.92 to 0\.97 greatly exciding the recommended 0\.80 threshold value \(Muthén & Muthén, 2012\)\. Altogether, alpha, CR, and FD scores evidence the internal consistency of the CBBE and CEBSC subscales\.]

All the loadings estimates were statistically significant and greater than 0\.57\. The t\-values ranged from 16\.67 to 67\.01 \(#emph[p] \< 0\.001\), thus evidencing convergent validity \(Hair Jr\. et al\. 2014\)\. The average variance extracted \(AVE\) was calculated for each construct\. The AVE values ranged from 0\.58 to 0\.73 and were higher than the acceptable value of 0\.50 \(Fornell & Larcker, 1981\)\. The AVE values were compared with the square of the estimated correlation between constructs \(maximum shared squared variance \[MSV\]\) \(Hair et al\., 2014\)\. The AVE were greater than the MSV values, thus confirming discriminant validity\.

The following indexes served to assess the CFA model’s goodness\-of\-fit \(GOF\): the chi\-square test statistic, the comparative fit index \(CFI\), the Tucker–Lewis index \(TLI\), and the root mean square error of approximation \(RMSEA\)\. Values above the threshold of 0\.90 for CFI and TLI and below 0\.08 for RMSEA indicate a good fit of the model to the data \(Hair et al\., 2014\)\. The results of the CFA indicate that the seven\-factor model had a good fit with the data\. The GOF values were as follows: MLRχ#super[2]\(539\) \= 1122\.36, CFI \= 0\.93, TLI \= 0\.92, and RMSEA \= 0\.05 \(90% confidence interval \[C\.I\.\] 0\.05–0\.06\)\. Table A2 presents the reliability and validity outcomes resulting from the CFA\.

Finally, common method bias \(CMB\) was tested to challenge the data against systematic response patterns\. CMB was calculated with the specification of a CFA model using the common latent factor method \(Podsakoff, MacKenzie, Lee, & Podsakoff, 2003\)\. The indicators of both CBBE and COBRAs dimensions were specified to freely load into a single factor \(unconstrained same\-source model\)\. The unconstrained same\-source model was later compared to a constrained model \(the same\-source factor loadings were constrained to zero\)\. The overall fit of the unconstrained same\-source model was worse than the constrained model; therefore, CMB does not pose a problem in the analysis \(Podsakoff et al\., 2003\)\.

= 4\. Results and implications
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 4\.1\. Main effects of the macro\-relationship perspective
#par(first-line-indent: 0em)[To test the conceptual model from the macro\-relationship perspective, structural equation mixture modeling \(mixture SEM\) in Mplus 7\.2 software package was employed\. To estimate H1, the conceptual model was specified as a higher\-order mixture SEM\. A higher\-order specification is appropriate because both frameworks are multi\-dimensional constructs and correlational relationships exist among the constructs \(Hair et al\., 2014\)\. For the SEM procedures, brand awareness, brand associations, perceived quality, and brand loyalty were loaded onto a single higher\-order factor named CBBE\. Similarly, the COBRAs dimensions \(consumption, contribution, and creation\) were loaded onto a higher\-order factor called COBRAs\. For the specification of the mixture model, the mean of the CBBE and COBRAs factors were allowed to vary across the classes \(brands\) in the analysis\. The residuals for both constructs also varied within classes\. This implies that the distribution of the factors were allowed to be non\-normal \(Muthén & Muthén, 2012\)\.]

The calculations of the mixture CFA yielded the following GOF values: MLRχ#super[2]\(654\) \= 1185\.41, CFI \= 0\.92, TLI \= 0\.91, and RMSEA \= 0\.05 \(90% C\.I\. \[0\.04–0\.05\]\)\. The results indicated a good fit of the higher\-order CFA model\. All the higher\-order loading estimates were statistically significant and greater than 0\.65, with the exception of brand awareness \(0\.32\)\.#super[1] The t\-values ranged from 6\.93 to 43\.90 \(#emph[p] \< 0\.001\)\. No items pertinent to the CBBE and COBRAs latent variables were dropped\.

For the estimation of the higher\-order SEM model, the COBRAs factor was regressed onto the CBBE factor controlled for gender, age, and social media usage\. The results of the SEM show that the higher\-order structural model had a good fit to the data\. The GOF values were as follows: MLRχ#super[2]\(654\) \= 1355\.82, CFI \= 0\.92, TLI \= 0\.91, and RMSEA \= 0\.05 \(90% C\.I\. \[0\.05–0\.06\]\)\. The results of the analysis confirmed H1; overall CBBE is a driver of consumers’ behavioral engagement with brand\-related social media content \(β \= 0\.30; #emph[t] \= 5\.24; #emph[p] \< 0\.001\)\. In terms of control variables, the consumer’s age exerted a negative influence of COBRAs \(β \= – 0\.09; #emph[t] \= – 2\.10; #emph[p] \= 0\.03\), supporting that young consumers tend to engage with social media brand\-related behavior more often than older consumers \(Harmeling et al\., 2017\)\. Gender \(#emph[p] \= 0\.23\) and social media usage \(#emph[p] \= 0\.23\) did not influence COBRAs\.

== 4\.2\. Main effects of the micro\-relationship perspective
#par(first-line-indent: 0em)[The next step was to test the conceptual model from the micro\-relationship perspective\. All seven latent variables were included in one lower\-order structural mixture model\. The model was specified so the mean of each individual structural path could vary across classes \(brands\)\. The residuals for the independent variables were allowed to vary within classes\. The other parameters of the model were set to be fixed \(Muthén & Muthén, 2012\)\.]

The results of the mixture SEM indicate that the model had a good fit to the data\. The GOF values were as follows: MLRχ#super[2]\(640\) \= 1522\.45, CFI \= 0\.90, TLI \= 0\.90, and RMSEA \= 0\.05 \(90% C\.I\. \[0\.05–0\.06\]\)\.

H2 posit that CBBE dimensions follow a directional structure responding in a cognitive–affective–conative sequence\. Brand awareness positively influences brand associations \(H2a: β \= 0\.36; #emph[t] \= 4\.87; #emph[p] \< 0\.001\) and perceived quality \(H2b: β \= 0\.35; #emph[t] \= 5\.55; #emph[p] \< 0\.001\), respectively\. Furthermore, brand associations positively influence brand loyalty \(H2c: β \= 0\.26; #emph[t] \= 3\.45; #emph[p] \< 0\.001\) and perceived quality yielded a positive influence on brand loyalty \(H2d: β \= 0\.52; #emph[t] \= 5\.92; #emph[p] \< 0\.001\)\. In summary, the estimations for H2 confirm the hierarchical structure and directional relationship among CBBE dimensions\.

H3 postulates a positive effect of CBBE dimensions on consumers’ behavioral engagement with brands in terms of their consumption \(H3a\), contribution \(H3b\), and creation \(H3c\) of brand\-related social media content controlled for gender, age, and social media usage\. The results provide support for both H3a \(β \= 0\.21; #emph[t] \= 3\.21; #emph[p] \< 0\.001\) and H3b \(β \= 0\.13; #emph[t] \= 2\.13; #emph[p] \< 0\.03\)\. Brand associations do not significantly influence consumers’ behavioral engagement with the creation of brand\-related social media content, thus leading to the rejection of H3c \(#emph[p] \= 0\.96\)\. The estimations suggest that consumers’ positive brand associations drive low and medium levels of behavioral engagement with brand\-related social media content, such as reading, watching, commenting, and ‘liking’\.

The next hypothesis \(H4\) posits that brand loyalty positively influences consumers’ behavioral engagement with brand\-related social media content controlled for gender, age, and social media usage\. The findings confirm H4, showing that loyal consumers engage in consumption \(H4a: β \= 0\.33; #emph[t] \= 4\.63; #emph[p] \< 0\.001\), contribution \(H4b: β \= 0\.32; #emph[t] \= 5\.13; #emph[p] \< 0\.001\), and creation \(H4c: β \= 0\.32; #emph[t] \= 5\.63; #emph[p] \< 0\.001\) of brand\-related social media content\.

H5 postulates that perceived quality negatively influences consumers’ behavioral engagement with brand\-related social media content controlled for gender, age, and social media usage\. The results of the SEM model were statistically significant for the consumption \(H5a: β \= – 0\.13; #emph[t] \= – 2\.87; #emph[p] \< 0\.001\) and contribution \(H5b: β \= – 0\.11; #emph[t] \= – 1\.78; #emph[p] \< 0\.07\) COBRAs\. These results indicate that a decrease in perceived quality leads to higher levels of consumption and contribution of brand\-related content\. A non\-significant effect emerged in the structural path between perceived quality and the creation of brand\-related social media content \(#emph[p] \= 0\.32\), leading to the rejection of H5c\.

Finally, the control variables indicated that gender influenced both consumption \(β#sub[Female] \= – 0\.09; #emph[t] \= – 1\.91; #emph[p] \< 0\.05\) and contribution \(β#sub[Female] \= – 0\.10; #emph[t] \= – 1\.94; #emph[p] \< 0\.05\) COBRAs\. Age influenced consumption \(β \= – 0\.16; #emph[t] \= – 3\.72; #emph[p] \< 0\.001\) and contribution \(β \= – 0\.08; #emph[t] \= – 2\.01; #emph[p] \< 0\.04\) COBRAs\. And social media usage impacted consumption of social media brand\-related content \(β \= 0\.11; #emph[t] \= 2\.10; #emph[p] \< 0\.03\)\. The other relationships were not statistically significant\. The findings were in line with previous studies and evidence COBRAs vary according to consumers metrics and social media usage \(Harmeling et al\., 2017; Muntinga et al\., 2011; Schivinski et al\., 2016\)\.

Table 1 followed by Figure 2 provides a summary for the parameter estimates for the final structural models of the effect of CBBE on COBRAs\.

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 1.] Standardized structural coefficients of the model\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto), align: (left, right, right, right, center,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Hypothesis]], [#strong[β]], [#strong[#emph[t]]], [#strong[#emph[p]]], [#strong[Acceptance or rejection]]),
table.hline(stroke: 0.5pt),
[#emph[Macro\-relationship perspective #super[☩]]], [], [], [], [],
[H1\. Overall CBBE → Overall COBRA], [0\.30], [5\.24], [#strong[]], [\+],
[Gender → Overall COBRA], [−0\.06], [−1\.18], [0\.23], [],
[Age → Overall COBRA], [−0\.09], [−2\.10], [#strong[]], [],
[Social media usage → Overall COBRA], [0\.06], [1\.19], [0\.23], [],
[#emph[Micro\-relationship perspective #super[†]]], [], [], [], [],
[H2a\. Brand awareness → Brand associations], [0\.36], [4\.87], [#strong[]], [\+],
[H2b\. Brand awareness → Perceived quality], [0\.35], [5\.55], [#strong[]], [\+],
[H2c\. Brand associations → Brand loyalty], [0\.26], [3\.45], [#strong[]], [\+],
[H2d\. Perceived quality → Brand loyalty], [0\.52], [5\.92], [#strong[]], [\+],
[H3a\. Brand associations → Consumption], [0\.21], [3\.21], [#strong[]], [\+],
[H3b\. Brand associations → Contribution], [0\.13], [2\.14], [#strong[]], [\+],
[H3c\. Brand associations → Creation], [0\.03], [0\.04], [0\.96], [\-],
[H4a\. Brand loyalty → Consumption], [0\.33], [4\.63], [#strong[]], [\+],
[H4b\. Brand loyalty → Contribution], [0\.32], [5\.13], [#strong[]], [\+],
[H4c\. Brand loyalty → Creation], [0\.32], [5\.63], [#strong[]], [\+],
[H5a\. Perceived quality → Consumption], [−0\.13], [−2\.87], [#strong[]], [\+],
[H5b\. Perceived quality → Contribution], [−0\.11], [−1\.78], [\*], [\+],
[H5c\. Perceived quality → Creation], [−0\.09], [−0\.97], [0\.24], [\-],
[Gender → Consumption], [−0\.09], [−1\.91], [#strong[]], [],
[Gender → Contribution], [−0\.10], [−1\.94], [#strong[]], [],
[Gender → Creation], [−0\.14], [−2\.60], [#strong[]], [],
[Age → Consumption], [−0\.16], [−3\.72], [#strong[]], [],
[Age → Contribution], [−0\.08], [−2\.01], [#strong[]], [],
[Age → Creation], [−0\.06], [−1\.52], [0\.12], [],
[Social media usage → Consumption], [0\.11], [2\.10], [#strong[]], [],
[Social media usage → Contribution], [0\.06], [1\.24], [0\.21], [],
[Social media usage → Creation], [0\.01], [0\.23], [0\.82], [],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[☩Higher\-order structural equation mixture model\. MLRχ#super[2]\(654\) \= 1355\.82, CFI \= 0\.92, TLI \= 0\.91, RMSEA \= 0\.05 \[90% C\.I\. 0\.05–0\.06\]; †Lower\-order structural equation mixture model: MLRχ#super[2]\(640\) \= 1522\.45, CFI \= 0\.90, TLI \= 0\.90, RMSEA \= 0\.05 \[90% C\.I\. 0\.05–0\.06\]; #strong[\* \*p\* \< 0\.001, ] #emph[p] \< 0\.05 #emph[ ]p\* \< 0\.10; Gender \(ref:female \= 1\); n \= 414\. The random part of the model was specified that the slope in the linear regression of CBBE on COBRAs from both macro\- and micro\-relationship perspectives varies across brands]
]
#v(12pt)
#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 2\. Parameter estimates for final structural models\.]]
#v(0.6em)
= 5\. General discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 5\.1\. Theoretical contributions
#par(first-line-indent: 0em)[This study makes important contributions to the business literature on social media marketing by conceptually and empirically linking two concepts that hitherto have been discussed separately – CBBE and consumer brand engagement \(see Felix et al\., 2016\)\. Building on the traditional hierarchy\-of\-effects model \(Ajzen & Fishbein, 1980; Fishbein & Ajzen, 1975\), this study is among the first to provide detailed insights into the brand\-specific drivers of consumers’ behavioral engagement with brands in terms of their consumption, contribution, and creation of brand\-related content on social media\. To this end, the study tested a conceptual model from both macro\- and micro\-relationship perspectives controlled for age, gender, and social media usage\. This differentiation contributes to a holistic understanding of the phenomena, while also distinguishing between inter\-dimensional effects\.]

From the macro\-relationship perspective, the findings contribute to the literature by revealing that CBBE fosters behavioral engagement with brands on social media\. Thus, consumers’ perceptions, attitudes, and knowledge related to a brand drive their behavioral engagement in terms of consumption, contribution, and creation of brand\-related social media content \(but not, as mentioned, in terms of the valence of these engagement behaviors\)\. From the micro\-relationship perspective, the analysis provides valuable information on inference\. This perspective was necessary to map dependencies on a dimensional level, as the concepts of CBBE and COBRAs are nuanced and multifaceted\.

The findings of the inter\-dimensional relationships between CBBE and COBRAs advance the literature twofold\. First, by empirically testing the structure of CBBE as a dynamic and evolving process\. The findings support the stream of the literature, which considers CBBE as a cognitive–affective–conative sequence \(Buil et al\., 2013\)\. Hence, CBBE as conceptualized by Aaker’s \(1991\) framework should be modeled as a learning process in which consumers’ acquaintance with the brand positively influence attitudes, which in turn effect preferences and drive behavior\. The continuity of empirical evidence should therefore establish grounds for the theorization of the framework\. As for practice, the management of brand equity on social media should be based on a holistic strategy aiming at reaching a diverse public outside the circle of current followers \(Nelson\-Field et al\., 2012; Sánchez\-Casado, Confente, Tomaseti\-Solano, & Brunetti, 2018\)\.

Following from the micro\-relationship perspective, the findings indicate that brand associations drive the consumption and contribution of brand\-related content on social media\. In other words, brand associations drive low and intermediate levels of behavioral engagement, but not highly active behavioral engagement \(i\.e\. creating\)\. The findings also reveal that brand loyalty is a driver of consumption, contribution, and creation of brand\-related social media content, thus denoting brand loyalty as a major driver of consumers’ behavioral engagement with brands on social media\. This confirms recent studies\. As shown by de Vries, Peluso et al\. \(2017\), consumers who are intrinsically \(extrinsically\) motivated tend to engage in more \(less\) active brand\-related behaviors; and, as demonstrated by \(Eelen et al\., 2017\), consumers who are loyal to a brand tend to be strongly motivated to engage in electronic word\-of\-mouth, a specific appearance of behavioral engagement\.

The conceptual model from the micro\-relationship perspective also reveals a negative effect of perceived quality on the level of consumers’ consumption and contribution of brand\-related content on social media content\. Thus, the lower the perceived quality of a product, the more consumers tend to consume, contribute, and create brand\-related content on social media about that product\. Note that this study does not distinguish between negative and positive engagement\. Therefore, this finding should not be misinterpreted as ‘negative product quality leads to positive engagement’\. While it has been shown that negative product quality can drive negative engagement in the form of negative product reviews \(and yet increase sales; Berger, Sorensen, & Rasmussen, 2010\), and while it is highly likely that the increased engagement following negative product quality is also negatively valenced, this study does not reach that conclusion\. It does, however, corroborate theoretical assumptions that negative product attributes and information are of higher diagnostic value than positive product attributes and information \(van Noort & Willemsen, 2011\), and therefore causes consumers to engage more with a brand\. Previous research demonstrates that negative product information spreads faster and reaches more consumers than positive product information \(Hornik, Satchi, Cesareo, & Pastore, 2015\) and is more useful or ‘diagnostic’ in terms of consumers’ product evaluations \(Hennig\-Thurau et al\., 2015\)\.

This study also demonstrates that low product quality does not negatively influence the consumers’ creation of brand\-related content\. Thus, higher levels of brand\-related activeness remain unmoved by negative product information\. As a potential explanation for this finding, research has shown that consumers who actively create brand\-related content tend to be motivated predominantly by intrinsic factors \(Christodoulides, Jevons, & Bonhomme, 2012; de Vries et al\., 2017; Carvalho & Fernandes, 2018\)\. For such an active behavior as creating brand\-related content, the product and\/or brand plays but a minor role\. As Ahuvia \(2015\) asserts, especially on social media ‘nothing matters more to people than other people’; the very act of creating content requires so much effort that a relatively mundane reason such as a product’s low quality may not be enough to motivate consumers to create more content\. In other words, most consumers choose not to invest too much of their limited time and energy in something that plays such a relatively unimportant role in their lives\.

== 5\.2\. Contribution to marketing practice
#par(first-line-indent: 0em)[Practitioners can implement the findings of this article in two ways\. First, according to the analyses of the conceptual model, social media marketing managers should focus on building and maintaining consumers’ positive associations with their brands to elicit behavioral engagement with low\- and medium\-level COBRAs\. Thus, they should design social media branding campaigns that build positive associations with consumers rather than focusing on the functional aspects of a specific product\/brand\. Brand managers should also reach their most loyal fan bases through social media\. Although this consumer group is relatively smaller than non\-loyal fans on social media channels \(Nelson\-Field et al\., 2012\), loyal fans engage with the full spectrum of COBRAs\. Finally, consumers who perceive a product’s quality as low tend to consume and contribute more brand\-related content\. Negative brand\-related information travels fast \(Hornik et al\., 2015\) and can have harmful effects \(Pfeffer, Zorbach, & Carley, 2014\)\. Therefore, monitoring how consumers think about a product or brand and also intervening to control the potential damage of negative information are vitally important actions in today’s branding landscape \(Gregoire, Salle, & Tripp, 2015; van Noort & Willemsen, 2011\)\.]

Second, marketing managers can use the conceptual model as an audit instrument to track the intensity of consumers’ perceptions of brand equity in driving \(or not\) consumption, contribution, and creation of brand\-related social media content\. They can analyze the data collected from both macro\- and micro\-relationship perspectives\. The macro\-relationship perspective score will indicate the overall performance of a brand in triggering brand\-related social media behavior, while the micro\-relationship perspective scores will determine which CBBE dimension is driving behavioral engagement in terms of consumption, contribution, and creation of brand\-related social media content\. More important, executives can rely on individual\-item scores to determine which measure of CBBE they should manipulate to achieve the desired levels of brand\-related social media behavioral engagement\. Finally, this audit technique is not limited to the metrics given in a social media channel \(i\.e\. the number of shares and ‘likes’ on Facebook; Hoffman and Fodor, 2010\) but also allows executives to track and compare the performance of competing brands\.

== 5\.3\. Limitations and further research
#par(first-line-indent: 0em)[This study contributes to the development of the current body of literature on social media marketing and engagement but, at the same time, is not without limitations\. The restrictions of this research can provide guidelines for future studies\. This study approached CBBE using Aaker’s \(1991\) framework\. Although other research uses this four\-dimensional framework to empirically capture consumers’ perceptions of brand equity \(e\.g\. Christodoulides et al\., 2015\), additional ways to assess CBBE exist \(Christodoulides and de Chernatony 2010\)\. Empirical research could apply competing frameworks \(e\.g\. Keller, 1993 conceptualization based on brand knowledge\) to contribute further to the literature and mapping of antecedents of COBRAs\.]

Additionally, data regarding consumers’ past brand usage were not considered\. Social media users, especially Facebook users, tend to be loyal consumers, which could possibly bias the results \(Nelson\-Field et al\., 2012\)\. Thus, scholars could employ the brand usage variable for moderation and conditional process analyses\. Such analyses would answer questions such as how previous brand usage influences consumers’ behavioral engagement with brands in terms of consumption, contribution, and creation of brand\-related content on social media\. Similarly, moderation analysis could help unveil aspects not covered in this study, such as the extent to which consumers’ behavioral engagement with brand\-related social media content is stronger or weaker than relevant business and marketing outcome variables\.

Additionally, this study did not approach patters of similarities and differences that may emerge from the relationship of CBBE and COBRAs\. Previous studies have indicated that brand\-related social media communication differs across brand types and industries \(Bruhn, Schoenmueller, & Schäfer, 2012; Schivinski & Dabrowski, 2015\)\. Researchers could employ a multi\-level approach to assess such patterns in consumers’ behavioral engagement to explain how consumption, contribution, and creation of brand\-related social media content differ at brand and industry levels\.

Finally, although the COBRAs framework distinguishes across types and intensity of engagement, it was, as mentioned earlier, not designed to factor in the valence of the brand\-related social media content that consumers engage with\. In order to overcome this limitation, further research on COBRAs should extend the surveying instrument to capture content valence\. More specifically, researchers could explore experimental research design to control for content valence across different types of media, subsequently, addressing gaps in the body of knowledge concerning drivers of COBRAs distinguishing social media types and content valence\.

= Note
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[1\. This value is a reflection of the placement of brand awareness in the hierarchical structure of CBBE dimensions\.]]
= Disclosure statement
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[No potential conflict of interest was reported by the authors\.]

= Funding
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[This work was supported by the Narodowe Centrum Nauki \[Preludium 4 – UMO\-2012\/07\/N\/HS4\/02790\]\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Aaker, D\. A\. \(1991\)\. #emph[Managing brand equity: Capitalizing on the value of a brand name]\. New York, NY: The Free Press\.

Ahluwalia, R\. \(2002\)\. How prevalent is the negativity effect in consumer environments? #emph[Journal of Consumer Research], 29 \(2\), 270–279\.

Ahuvia, A\. C\. \(2015\)\. Nothing matters more to people than people: Brand meaning, brand love and social relationships\. #emph[Review of Marketing Research Special Issue on Brand Meaning Management], 12, 121–149\.

Ajzen, I\., & Fishbein, M\. \(1980\)\. #emph[Understanding attitudes and predicting social behaviour]\. Englewood Cliffs, NJ: Prentice Hall\.

Andrew, P\. J\., Kumar, V\., Polo, Y\., & Javier Sese, F\. \(2018\)\. Unlocking the power of marketing: Understanding the links between customer mindset metrics, behavior, and profitability\. #emph[Journal of the Academy of Marketing Science], 46\(5\), 813–836\.

Ashley, C\., & Tuten, T\. \(2015\)\. Creative strategies in social media marketing: An exploratory study of branded social content and consumer engagement\. #emph[Psychology & Marketing], 32\(1\), 15–27\.

Azar, S\. L\., Machado, J\. C\., Vacas\-De\-Carvalho, L\., & Mendes, A\. \(2016\)\. Motivations to interact with brands on Facebook – Towards a typology of consumer–brand interactions\. #emph[Journal of Brand Management], 23, 153–178\.

Bagozzi, R\. P\., & Youjae, Y\. \(1988\)\. On the evaluation of structural equation models\. #emph[Journal of the Academy of Marketing Science], 16\(1\), 74–94\.

Baldus, B\. J\., Voorhees, C\., & Calantone, R\. \(2015\)\. Online brand community engagement: Scale development and validation\. #emph[Journal of Business Research], 68\(5\), 978–985\.

Berger, J\., Sorensen, A\. T\., & Rasmussen, S\. J\. \(2010\)\. Positive effects of negative publicity: When negative reviews increase sales\. #emph[Marketing Science], 29 \(5\), 815–827\.

Bruhn, M\., Schoenmueller, V\., & Schäfer, D\. B\. \(2012\)\. Are social media replacing traditional media in terms of brand equity creation? #emph[Management Research Review], 35\(9\), 770–790\.

Buil, I\., de Chernatony, L\., & Eva, M\. \(2008\)\. A cross\-national validation of the consumer\-based brand equity scale\. #emph[Journal of Product & Brand Management], 17\(6\), 384–392\.

Buil, I\., Martínez, E\., & Leslie, D\. C\. \(2013\)\. The influence of brand equity on consumer responses\. #emph[Journal of Consumer Marketing], 30\(1\), 62–74\.

Carvalho, A\., & Fernandes, T\. \(2018\)\. Understanding customer brand engagement with virtual social communities: A comprehensive model of drivers, outcomes and moderators\. #emph[Journal of Marketing Theory and Practice], 26\(1–2\), 23–37\.

Chatzipanagiotou, K\., Veloutsou, C\., & Christodoulides, G\. \(2016\)\. Decoding the complexity of the consumer\-based brand equity process\. #emph[Journal of Business Research], 69 Elsevier B\.V, 5479–5486\.

Chen, S\.\-C\., Yen, D\. C\., & Hwang, M\. I\. \(2012\)\. Factors influencing the continuance intention to the usage of web 2\.0: An empirical study\. #emph[Computers in Human Behavior], 28\(3\), 933–941\.

Christodoulides, G\., Cadogan, J\. W\., & Veloutsou, C\. \(2015\)\. Consumer\-based brand equity measurement: Lessons learned from an international study\. #emph[International Marketing Review], 32\(3\/4\), 307–328\.

Christodoulides, G\., & Jevons, C\. \(2011\)\. The voice of the consumer speaks forcefully in brand identity: User\-generated content forces smart marketers to listen\. #emph[Journal of Advertising Research], 51\(1\), 101–108\.

Christodoulides, G\., Jevons, C\., & Bonhomme, J\. \(2012\)\. Memo to marketers: Quantitative evidence for change\. How user\-generated content really affects brands\. #emph[Journal of Advertising Research], 52\(1\), 53–64\.

Christodoulides, G\., & Leslie, D\. C\. \(2010\)\. Consumer\-based brand equity conceptualisation and measurement\. #emph[International Journal of Market Research], 52\(1\), 43–66\.

Chu, S\.\-C\., & Kim, Y\. \(2011\)\. Determinants of consumer Engagement in Electronic Word\-of\-Mouth \(EWOM\) in social networking sites\. #emph[International Journal of Advertising], 30\(1\), 47–75\.

Colicev, A\., Malshe, A\., Pauwels, K\., & O’Connor, P\. \(2018\)\. Improving consumer mindset metrics and shareholder value through social media: The different roles of owned and earned media\. #emph[Journal of Marketing], 82\(1\), 37–56\.

Craig, C\. S\., & Douglas, S\. P\. \(2005\)\. #emph[International marketing research] 3rd ed\. West Sussex, UK: John Wiley & Sons\.

de Vries, L\., Gensler, S\., & Leeflang, P\. S\. H\. \(2012\)\. Popularity of brand posts on brand fan pages: An investigation of the effects of social media marketing\. #emph[Journal of Interactive Marketing], 26\(2\), 83–91\.

de Vries, L\., Gensler, S\., & Leeflang, P\. S\. H\. \(2017\)\. Effects of traditional advertising and social messages on brand\-building metrics and customer acquisition\. #emph[Journal of Marketing], 81\(5\), 1–15\.

de Vries, L\., Peluso, A\. M\., Romani, S\., Leeflang, P\. S\. H\., & Marcati, A\. \(2017\)\. Explaining consumer brand\-related activities on social media: An investigation of the different roles of self\-expression and socializing motivations\. #emph[Computers in Human Behavior], 75, 272–282\.

Dhar, V\., & Chang, E\. A\. \(2009\)\. Does chatter matter? The impact of user\-generated content on music sales\. #emph[Journal of Interactive Marketing], 23\(4\), Elsevier Inc\., 300–307\.

Doorn van, J\., Lemon, K\. N\., Mittal, V\., Nass, S\., Pick, D\., Pirner, P\., & Verhoef, P\. C\. \(2010\)\. Customer engagement behavior: Theoretical foundations and research directions\. #emph[Journal of Service Research], 13\(3\), 253–266\.

Edelman\. 2018\. “2017 Edelman Trust Barometer\.” Retreived from https:\/\/www\.edelman\.com\/trust2017\/\.

Eelen, J\., Özturan, P\., & Verlegh, P\. W\. J\. \(2017\)\. The differential impact of brand loyalty on traditional and online word of mouth: The moderating roles of self\-brand connection and the desire to help the brand\. #emph[International Journal of Research in Marketing], 34\(4\), Elsevier B\.V, 872–891\.

Felix, R\., Rauschnabel, P\. A\., & Hinsch, C\. \(2016\)\. Elements of strategic social media marketing: A holistic framework\. #emph[Journal of Business Research]\. Elsevier B\.V\. doi:10\.1016\/j\.jbusres\.2016\.05\.001

Fishbein, M\., & Ajzen, I\. \(1975\)\. #emph[Belief, attitude, intention and behavior: An introduction to theory and research]\. Reading, MA: Addison\-Wesley\.

Fornell, C\., & Larcker, D\. F\. \(1981\)\. Evaluating structural equation models with unobservable variables and measurement error\. #emph[Journal of Marketing Research], 18\(1\), 39–50\.

Gensler, S\., Völckner, F\., Liu\-Thompkins, Y\., & Wiertz, C\. \(2013\)\. Managing brands in the social media environment\. #emph[Journal of Interactive Marketing], 27\(4\), Elsevier B\.V\., 242–256\.

Godes, D\., Mayzlin, D\., Chen, Y\., & Das, S\. \(2005\)\. The firm’s management of social interactions\. #emph[Marketing Letters], 1, 415–428\. http:\/\/link\.springer\.com\/article\/10\.1007\/s11002\-005\-5902\-4

Gregoire, Y\., Salle, A\., & Tripp, T\. M\. \(2015\)\. Managing social media crises with your customers: The good, the bad, and the ugly\. #emph[Business Horizons], 58\(2\), 173–182\.

Gunawan, D\. D\., & Huarng, K\.\-H\. \(2015\)\. Viral effects of social network and media on consumers’ purchase intention\. #emph[Journal of Business Research], 68\(11\), Elsevier Inc\., 2237–2241\.

GUS Central Statistical Office\. \(2016\)\. #emph[Społeczeństwo Informacyjne w Polsce\. Wyniki Badań Statystycznych z Lat 2012–2016]\. Warsaw, Poland: Główny Urząd Statystyczny\.

Haarhoff, G\., & Kleyn, N\. \(2012\)\. Open source brands and their online brand personality\. #emph[Journal of Brand Management], 20\(2\), Nature Publishing Group, 104–114\.

Hair, J\. R\. Jr\., Joseph, F\., WIllian, C\., Black, B\., Babin, J\., & Anderson, R\. E\. \(2014\)\. #emph[Multivariate data analysis] \(7th ed\.\)\. Harlow, UK: Pearson Education Limited\.

Harmeling, C\. M\., Moffett, J\. W\., Arnold, M\. J\., & Carlson, B\. D\. \(2017\)\. Toward a theory of customer engagement marketing\. #emph[Journal of the Academy of Marketing Science], 45, 312–335\.

Hennig\-Thurau, T\., Wiertz, C\., & Feldhaus, F\. \(2015\)\. Does twitter matter? The impact of microblogging word of mouth on consumers’ adoption of new movies\. #emph[Journal of the Academy of Marketing Science], 43, 375–394\.

Hoffman, D\. L\., Donna, L\., & Fodor, M\. \(2010\)\. Can you measure the ROI of your social media marketing? #emph[MIT Sloan Management Review], 52\(1\), 41–49\.

Hollebeek, L\. \(2011\)\. Exploring customer brand engagement: Definition and themes\. #emph[Journal of Strategic Marketing], 19 \(7\), 555–573\.

Hollebeek, L\. D\., & Chen, T\. \(2014\)\. Exploring positively\- versus negatively\-valenced brand engagement: A conceptual model\. #emph[Journal of Product & Brand Management], 23\(1\), 62–74\.

Hornik, J\., Satchi, R\. S\., Cesareo, L\., & Pastore, A\. \(2015\)\. Information dissemination via electronic word\-of\-mouth: Good news travels fast, bad news travels faster! #emph[Computers in Human Behavior], 45, 273–80\. Elsevier Ltd\.

Kahneman, D\., & Tversky, A\. \(1979\)\. Prospect theory: An analysis of decision under risk\. #emph[Economitrica], 47\(2\), 263–291\.

Kane, G\. C\., Alavi, M\., Labianca, G\., & Borgatti, S\. P\. \(2014\)\. What’s different about social media networks? A framework and research agenda\. #emph[MIS Quarterly], 38\(1\), 275–304\.

Kannan, P\. K\., & Li, H\. A\. \(2017\)\. Digital marketing: A framework, review and research agenda\. #emph[International Journal of Research in Marketing], 34\(1\), 22–45\.

Keller, K\. L\. \(1993\)\. Conceptualizing, measuring, and managing customer\-based brand equity\. #emph[Journal of Marketing], 57\(January\), 1–22\.

Keller, K\. L\. \(2016\)\. Reflections on customer\-based brand equity: Perspectives, progress, and priorities\. #emph[AMS Review], 1–16\. doi:10\.1007\/s13162\-016\-0078\-z

Kohli, C\., Suri, R\., & Kapoor, A\. \(2015\)\. Will social media kill branding? #emph[Business Horizons], 58\(1\), “Kelley School of Business, Indiana University”, 35–44\.

Labrecque, L\. I\., Vor dem Esche, J\., Mathwick, C\., Novak, T\. P\., & Hofacker, C\. F\. \(2013\)\. Consumer power: Evolution in the digital age\. #emph[Journal of Interactive Marketing], 27\(4\), 257–269, Elsevier B\.V\.

Lamberton, C\., & Stephen, A\. T\. \(2016\)\. A thematic exploration of digital, social media, and mobile marketing: Research evolution from 2000 to 2015 and an agenda for future inquiry\. #emph[Journal of Marketing], 80\(6\), 146–172\.

Lavidge, R\. J\., & Steiner, G\. A\. \(1961\)\. A model for predictive measurements of advertising effectiveness\. #emph[Journal of Marketing], 25\(6\), 59–62\.

Lovett, M\. J\., Peres, R\., & Shachar, R\. \(2013\)\. On brands and word of mouth\. #emph[Journal of Marketing Research], 50\(4\), 427–444\.

Maslowska, E\., Malthouse, E\. C\., & Collinger, T\. \(2016\)\. The customer engagement ecosystem\. #emph[Journal of Marketing Management], 32\(5–6\), 469–501\.

Moorthy, S\., & Hawkins, S\. A\. \(2005\)\. Advertising repetition and quality perception\. #emph[Journal of Business Research], 58\(3\), 354–360\.

Muntinga, D\. G\., Moorman, M\., & Smit, E\. G\. \(2011\)\. Introducing COBRAs: Exploring motivations for brand\-related social media use\. #emph[International Journal of Advertising], 30\(1\), 13–46\.

Muthén, L\. K\., & Muthén, B\. O\. \(2012\)\. #emph[Statistical analysis with latent variables: Mplus User’s Guide], 7th ed\. Los Angeles, CA\. https:\/\/www\.statmodel\.com\/download\/usersguide\/Mplus%20Users%20Guide%20v6\.pdf

Nelson\-Field, K\., Riebe, E\., & Sharp, B\. \(2012\)\. What’s not to ‘like?’ Can a Facebook fan base give a brand the advertising reach it needs? #emph[Journal of Advertising Research], 52\(2\), 262–269\.

Oliver, R\. L\. \(1997\)\. #emph[Satisfaction: A behavioral perspective on the consumer]\. New York, USA: McGraw\-Hill\.

Ou, Y\. C\., & Verhoef, P\. C\. \(2017\)\. The impact of positive and negative emotions on loyalty intentions and their interactions with customer equity drivers\. #emph[Journal of Business Research], 80 \(July\), Elsevier, 106–115\.

Palmatier, R\. W\., Scheer, L\. K\., & Jan\-Benedict, E\. M\. S\. \(2007\)\. Customer loyalty to whom? Managing the benefits and risks of salesperson\-owned loyalty\. #emph[Journal of Marketing Research] XLIV \(May\), 185–199\.

Pappu, R\., Quester, P\. G\., & Cooksey, R\. W\. \(2005\)\. Consumer\-based brand equity: Improving the measurement – empirical evidence\. #emph[Journal of Product & Brand Management], 14\(3\), 143–154\.

Pfeffer, J\., Zorbach, T\., & Carley, K\. M\. \(2014\)\. Understanding online firestorms: Negative word\-of\-mouth dynamics in social media networks\. #emph[Journal of Marketing Communications], 20\(Zorbach 2011\), 117–128\.

Podsakoff, P\. M\., MacKenzie, S\. B\., Lee, J\.\-Y\., & Podsakoff, N\. P\. \(2003\)\. Common method biases in behavioral research: A critical review of the literature and recommended remedies\. #emph[Journal of Applied Psychologysychology], 88\(5\), 879–903\.

Rodgers, S\., & Thorson, E\. \(2018\)\. Special Issue Introduction: Digital Engagement with Advertising\. #emph[Journal of Advertising], 47\(1\), 1–3\.

Sánchez\-Casado, N\., Confente, I\., Tomaseti\-Solano, E\., & Brunetti, F\. \(2018\)\. The role of online brand communties on building brand equity and loyalty through relational benefits\. #emph[Journal of Marketing Theory and Practice], 26\(3\), Routledge, 289–308\.

Schivinski, B\., Christodoulides, G\., & Dabrowski, D\. \(2016\)\. Measuring consumers’ engagement with brand\-related social\-media content: Development and validation of a scale that identifies levels of social\-media engagement with brands\. #emph[Journal of Advertising Research], 56\(1\), 64–80\.

Schivinski, B\., & Dabrowski, D\. \(2015\)\. The impact of brand communication on brand equity through Facebook\. #emph[Journal of Research in Interactive Marketing], 9 \(1\), 31–53\.

Schivinski, B\., & Dabrowski, D\. \(2016\)\. The effect of social media communication on consumer perceptions of brands\. #emph[Journal of Marketing Communications], 22\(2\), 189–214\.

Turcotte, J\., York, C\., Irving, J\., Scholl, R\. M\., & Pingree, R\. J\. \(2015\)\. News recommendations from social media opinion leaders: Effects on media trust and information seeking\. #emph[Journal of Computer\-Mediated Communication], 20, 520–535\.

Tversky, A\., & Kahneman, D\. \(1981\)\. The framing of decisions and the psychology of choice\. #emph[Science], 211\(4481\), 453–458\.

Unal, G\., Schivinski, B\., & Brzozowska\-Woś, M\. \(2017\)\. Literature review on conceptualisation of online consumer engagement\. #emph[Handel Wewnetrzny], 6\(371\), 353–362\.

van Noort, G\., & Willemsen, L\. M\. \(2011\)\. Online damage control: The effects of proactive versus reactive webcare interventions in consumer\-generated and brand\-generated platforms\. #emph[Journal of Interactive Marketing], 26 Elsevier B\.V\., 131–140\.

Voorveld, H\. A\., Guda Van Noort, M\., Muntinga, G\., & Bronner, F\. \(2018\)\. Engagement with social media and social media advertising : The differentiating role of platform type\. #emph[Journal of Advertising], 47\(1\), 38–54\.

Voorveld, H\. A\. M\., Theo Araujo, S\. F\., Bernritter, E\. R\., & Vliegenthart, R\. \(2018, April\)\. How advertising in offline media drives reach of and engagement with brands on Facebook\. #emph[International Journal of Advertising], 1–21\. doi:10\.1080\/02650487\.2018\.1454703

Wallace, E\., Buil, I\., & de Chernatony, L\. \(2014\)\. Consumer engagement with self\-expressive brands: Brand love and WOM outcomes\. #emph[Journal of Product & Brand Management], 23\(1\), 33–42\.

Yadav, M\. S\., & Pavlou, P\. A\. \(2014\)\. Marketing in computer\-mediated environments: Research synthesis and new directions\. #emph[Journal of Marketing], 78\(January\), 20–40\. http:\/\/journals\.ama\.org\/doi\/abs\/10\.1509\/jm\.12\.0020

Yoon, G\., Cong, L\., Ji, Y\. G\., North, M\., Hong, C\., & Liu, J\. \(2018\)\. Attracting comments: Digital engagement metrics on facebook and financial performance\. #emph[Journal of Advertising], 1–14\.

Zeithaml, V\. A\. \(1988\)\. Consumer perceptions of price, quality, and value: A means\-end model and synthesis of evidence\. #emph[Journal of Marketing], 52\(July\), 2–22\.

Zhang, J\., & Mao, E\. \(2016\)\. From online motivations to Ad clicks and to behavioral intentions: An empirical study of consumer response to social media advertising\. #emph[Psychology & Marketing], 33 \(3\), 155–164\.

#set par(hanging-indent: 0em)
#set text(size: 11pt)
#pagebreak()
= Appendix
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A1.] Descriptive statistics for the items of the conceptual model, factor loadings \(completely standardized lambda X – \(λ#sub[x]\)#super[b]\), and explained variance on each item \(#emph[R]#super[2]\)\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, 1.6cm), align: (left, right, right, right, right, right, right, right, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[\(λ#sub[x]\)#super[b]]], [#strong[#emph[R]#super[2]]], [#strong[#emph[t]\-value]], [#strong[Mean]], [#strong[SD]], [#strong[Skewness]], [#strong[Kurtosis]], [#strong[Authors]]),
table.hline(stroke: 0.5pt),
[#strong[COBRAs FRAMEWORK]], [], [], [], [], [], [], [], [],
[#emph[Consumption]], [], [], [], [], [], [], [], [],
[I read posts related to Brand X on social media\.], [0\.87], [0\.75], [76\.36], [3\.54], [2\.06], [0\.21], [−1\.25], [Schivinski et al\., 2016],
[I read fan page\(s\) related to Brand X on social networking sites\.], [0\.86], [0\.74], [64\.64], [3\.55], [2\.11], [0\.22], [−1\.32], [],
[I watch pictures\/graphics related to Brand X\.], [0\.71], [0\.51], [38\.26], [4\.01], [2\.09], [−0\.13], [−1\.31], [],
[I follow blogs related to Brand X\.], [0\.60], [0\.35], [25\.20], [2\.39], [1\.72], [1\.10], [0\.15], [],
[I follow Brand X on social networking sites\.], [0\.88], [0\.78], [78\.63], [3\.38], [2\.04], [0\.33], [−1\.21], [],
[#emph[Contribution]], [], [], [], [], [], [], [], [],
[I comment on videos related to Brand X\.], [0\.83], [0\.69], [43\.88], [1\.91], [1\.51], [1\.85], [2\.76], [],
[I comment on posts related to Brand X\.], [0\.88], [0\.77], [69\.86], [2\.09], [1\.59], [1\.48], [1\.44], [],
[I comment on pictures\/graphics related to Brand X\.], [0\.86], [0\.75], [60\.30], [1\.93], [1\.51], [1\.74], [2\.32], [],
[I share Brand X related posts\.], [0\.87], [0\.74], [54\.88], [2\.15], [1\.65], [1\.42], [1\.04], [],
[I ‘Like’ pictures\/graphics related to Brand X\.], [0\.65], [0\.42], [35\.82], [3\.11], [2\.07], [0\.53], [−1\.10], [],
[I ‘Like’ posts related to Brand X\.], [0\.70], [0\.49], [47\.71], [3\.00], [2\.02], [0\.62], [−0\.95], [],
[#emph[Creation]], [], [], [], [], [], [], [], [],
[I initiate posts related to Brand X on blogs\.], [0\.73], [0\.52], [27\.04], [1\.76], [1\.42], [2\.09], [3\.73], [],
[I initiate posts related to Brand X on social networking sites\.], [0\.82], [0\.68], [40\.60], [1\.84], [1\.53], [1\.99], [3\.13], [],
[I post pictures\/graphics related to Brand X\.], [0\.88], [0\.79], [72\.40], [1\.84], [1\.43], [1\.93], [3\.21], [],
[I post videos that show Brand X\.], [0\.80], [0\.65], [31\.47], [1\.80], [1\.40], [1\.85], [2\.82], [],
[I write posts related to Brand X on forums\.], [0\.88], [0\.77], [75\.56], [1\.84], [1\.45], [1\.87], [2\.78], [],
[I write reviews related to Brand X\.], [0\.80], [0\.65], [44\.42], [1\.74], [1\.45], [2\.12], [3\.77], [],
[#strong[CBBE FRAMEWORK]], [], [], [], [], [], [], [], [],
[#emph[Brand awareness]], [], [], [], [], [], [], [], [],
[I have heard of this brand\.], [0\.71], [0\.51], [16\.58], [6\.48], [1\.08], [−2\.48], [6\.51], [Christodoulides et al\., 2015],
[I am quite familiar with this brand\.], [0\.69], [0\.47], [17\.08], [6\.70], [0\.95], [−3\.53], [12\.66], [],
[I can recognize this brand among other brands\.], [0\.81], [0\.66], [27\.54], [6\.66], [0\.91], [−3\.17], [10\.94], [],
[#emph[Brand associations]], [], [], [], [], [], [], [], [],
[This brand has strong associations\.], [0\.87], [0\.76], [72\.95], [6\.05], [1\.25], [−1\.47], [1\.96], [],
[This brand has favorable associations\.], [0\.85], [0\.72], [52\.21], [5\.88], [1\.38], [−1\.19], [0\.84], [],
[It is clear what this brand stands for\.], [0\.77], [0\.60], [40\.28], [5\.99], [1\.22], [−1\.33], [1\.67], [],
[#emph[Perceived quality]], [], [], [], [], [], [], [], [],
[This brand is good quality\.], [0\.76], [0\.57], [35\.91], [5\.57], [1\.57], [−1\.02], [0\.38], [],
[This brand has excellent features\.], [0\.76], [0\.58], [40\.97], [5\.22], [1\.71], [−0\.85], [−0\.06], [],
[Compared to other brands in its category, this brand is of very high quality\.], [0\.81], [0\.66], [49\.83], [5\.88], [1\.25], [−1\.07], [0\.61], [],
[#emph[Brand loyalty]], [], [], [], [], [], [], [], [],
[I feel loyal to this brand\.], [0\.93], [0\.86], [132\.76], [4\.60], [1\.96], [−0\.44], [−0\.92], [],
[This brand is my first choice\.], [0\.89], [0\.80], [99\.59], [4\.58], [1\.94], [−0\.45], [−0\.88], [],
[I am committed to this brand\.], [0\.75], [0\.56], [48\.13], [4\.08], [2\.09], [−0\.01], [−1\.29], [],
table.hline(stroke: 0.8pt),
)]
]
#v(12pt)
#page(flipped: true)[
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table A2.] Reliability and validity of the conceptual model of CBBE effects on COBRAs\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 7.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[α]], [#strong[CR]], [#strong[FD]], [#strong[AVE]], [#strong[MSV]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]]),
table.hline(stroke: 0.5pt),
[1 – Creation], [0\.93], [0\.93], [0\.97], [0\.69], [0\.60], [#emph[0\.83]], [], [], [], [], [], [],
[2 – Brand associations], [0\.93], [0\.93], [0\.96], [0\.73], [0\.62], [0\.12 \(2\.81\)], [#emph[0\.85]], [], [], [], [], [],
[3 – Brand awareness], [0\.86], [0\.86], [0\.92], [0\.61], [0\.10], [−0\.24 \(−3\.89\)], [0\.32 \(6\.54\)], [#emph[0\.78]], [], [], [], [],
[4 – Consumption], [0\.88], [0\.87], [0\.96], [0\.58], [0\.39], [0\.48 \(11\.73\)], [0\.34 \(7\.66\)], [0\.05 \(1\.02\)], [#emph[0\.76]], [], [], [],
[5 – Contribution], [0\.90], [0\.90], [0\.97], [0\.62], [0\.60], [0\.77 \(23\.45\)], [0\.26 \(6\.29\)], [−0\.05 \(−1\.04\)], [0\.63 \(19\.35\)], [#emph[0\.78]], [], [],
[6 – Perceived quality], [0\.89], [0\.88], [0\.93], [0\.65], [0\.62], [0\.14 \(3\.03\)], [0\.79 \(31\.57\)], [0\.30 \(7\.01\)], [0\.25 \(4\.90\)], [0\.21 \(4\.86\)], [#emph[0\.80]], [],
[7 – Brand loyalty], [0\.92], [0\.92], [0\.97], [0\.72], [0\.47], [0\.27 \(6\.13\)], [0\.59 \(17\.63\)], [0\.16 \(3\.49\)], [0\.37 \(8\.13\)], [0\.34 \(8\.37\)], [0\.68 \(22\.74\)], [#emph[0\.85]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[α \= Cronbach’s alpha; CR \= composite reliability; AVE \= average variance extracted; FD \= factor determinacy; MSV \= maximum shared squared variance\. Robust maximum\-likelihood estimation method \(MLR\) χ#super[2]\(544\) \= 1113\.41, comparative fit index \(CFI\) \= 0\.93, Tucker–Lewis index \(TLI\) \= 0\.92, root mean square error of approximation \(RMSEA\) \= 0\.05 \(90% CI \[0\.04–0\.05\]\); n \= 414\. t\-value for correlations are in parenthesis\. The square root of the AVE values are in italics\.]
]
#v(12pt)
]

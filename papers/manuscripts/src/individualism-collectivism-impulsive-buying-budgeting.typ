#set document(title: "How values of individualism and collectivism influence impulsive buying and money budgeting: the mediating role of acculturation to global consumer culture", author: ("Barbara Czarnecka", "Bruno Schivinski", "Serap Keles"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Czarnecka, Schivinski and Keles \(2020\), accepted manuscript #h(1fr) Journal of Consumer Behaviour] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[How values of individualism and collectivism influence impulsive buying and money budgeting: the mediating role of acculturation to global consumer culture]]
#v(0.8em)
#text(size: 12pt)[Barbara Czarnecka, Bruno Schivinski, Serap Keles]
#v(0.2em)
#text(size: 10pt, style: "italic")[London South Bank University\; RMIT University\; University of Stavanger]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Czarnecka, B\., Schivinski, B\., & Keles, S\. (2020). How values of individualism and collectivism influence impulsive buying and money budgeting: the mediating role of acculturation to global consumer culture. #emph[Journal of Consumer Behaviour, 19]\(5\), 505–522. #link("https://doi.org/10.1002/cb.1833")[https:\/\/doi.org\/10\.1002\/cb\.1833]
  #v(0.9em)
  This is the peer reviewed version of the following article: Czarnecka, B\., Schivinski, B\., & Keles, S\. \(2020\)\. How values of individualism and collectivism influence impulsive buying and money budgeting: the mediating role of acculturation to global consumer culture\. Journal of Consumer Behaviour, 19\(5\), 505–522, which has been published in final form at #link("https://doi.org/10.1002/cb.1833")[https:\/\/doi.org\/10\.1002\/cb\.1833]\. This article may be used for non\-commercial purposes in accordance with Wiley Terms and Conditions for Use of Self\-Archived Versions\.
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors\; the publisher\'s typesetting and layout have been removed and Figure 1 redrawn\.
Downloaded from #link("https://schivinski.com/papers/individualism-collectivism-impulsive-buying-budgeting.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[How values of individualism and collectivism influence impulsive buying and money budgeting: the mediating role of acculturation to global consumer culture]]
#v(0.6em)
#par(first-line-indent: 0em)[Barbara Czarnecka#super[1]\*, Bruno Schivinski#super[2] and Serap Keles#super[3]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]London South Bank University, Division of Management, Marketing and People, London, UK\; #super[2]RMIT University, School of Media and Communication, Melbourne, Victoria, Australia\; #super[3]University of Stavanger, Faculty of Arts and Education, Stavanger, Norway]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Barbara Czarnecka]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() This study examined the effects of individual\-level cultural values of individualism and collectivism on impulsive buying and money budgeting and the mediating role of acculturation to global consumer culture\. By applying the person\-environment fit theory and acculturation theory, we argue that people who hold cultural values congruent with the culture they come into contact with are more likely to acculturate to it, and that those who acculturate to global consumer culture \(GCC\) are more likely to display consumption behaviors stimulated by GCC, namely impulsive buying and poor money budgeting\. The findings show that consumers acculturated to GCC report higher impulsive buying and lower money budgeting, and that it is not the distinction between individualism and collectivism, but rather between the vertical and horizontal values that determines the acceptance of GCC and the studied consumption behaviors\. Results revealed that vertical individualists \(those who believe in competition between individuals and who prioritize their needs over the needs of others\) and vertical collectivists \(those who believe in the subordination of individuals to groups\) were more likely to be acculturated to GCC\. Thus, the acceptance of inequality between individuals among other individuals, or within groups, is related to the acceptance of GCC and impulsive buying and money budgeting\. The level of acculturation to GCC mediates the relations between vertical individualism and collectivism values and impulsive buying and money budgeting\. Theoretical contributions to the research on horizontal\/vertical individualism\/collectivism, acculturation to GCC, and person\-environment fit theory, as well as practical implications for marketers are discussed\.]
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 19 May 2019\; revised 27 April 2020\; accepted 29 April 2020\.]]
#v(0.6em)
= 1 Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The Western\-style consumption culture, described as global consumer culture \(GCC\), continues to be a topic that attracts the attention of researchers \(Laroche & Teng, 2019\; Özsomer, 2019\)\. GCC involves the globalization of consumers\' wants and desires, and the search for, and construction of, the individual concept of “self” through material symbols such as global brands, products, and services that are similarly understood by consumers around the world \(Appadurai, 1990\; Arnould & Thompson, 2005\)\. The expansion of GCC is facilitated by technological advancements, the existence of global financial markets viduals, international cooperation and support for free trade, and international travel \(Appadurai, 1990\)\.]

While the proliferation of GCC has resulted in many positive outcomes for consumers, it has also been blamed for stimulating less positive consumer behaviors, namely, consumerism and materialism \(Cleveland, Laroche, & Papadopoulos, 2016\)\. These, in turn, manifest themselves in more specific consumer behaviors such as impulsive buying and lack of careful money budgeting \(Albinsson, Wolf, & Kopf, 2010\; Cleveland et al\., 2016\; Lysonski & Durvasula, 2013\; Wilk, 2017\)\. Impulsive buying is an unintended and unplanned decision to purchase, in which thoughtful consideration of all information and choice alternatives does not take place before the purchase is made \(Kacen & Lee, 2002\)\. Money budgeting describes a person\'s tendency to plan, budget, and save money \(Luna\-Arocas & Tang, 2004\)\. Recent proposals emphasize that several factors of GCC, such as Western materialistic values and the spread of consumerism, encourage impulsive buying and careless money considerations \(Atulkar & Kesari, 2018\; Bonsu, 2008\; Iyer, Blut, Xiao, & Grewal, 2019\; Podoshen & Andrzejewski, 2012\; Roberts & Sepulveda, 1999\; Unger & Raab, 2015\; Yu & Bastin, 2010\)\. Western economies whose growth and development depend on continuous consumer spending provide frequent opportunities for impulsive buying, such as online shopping or mobile commerce \(Henry, 2020\)\. Such opportunities allow individuals to buy products or services instantly, even when cash is not available by providing “buy now, pay later” systems of payment \(Wearn, 2020\)\. This suggests that planning for purchases, and in turn, budgeting money carefully, is not necessarily encouraged in such economies \(Calder, 2009\; Erasmus & Lebani, 2008\; Peñaloza & Barnhart, 2011\)\. Not all individuals, however, respond to GCC in the same way, and the question of why some consumers engage in GCC more than others remains under\-researched \(Carpenter, Moore, Alexander, & Doherty, 2013\)\. Certain consumers, more than others, seek and pursue consumption experiences, products, and brands that GCC offers \(Alden, Steenkamp, & Batra, 1999\)\. The process of consumer interaction with GCC has been conceptualized as acculturation to global consumer culture \(AGCC\), which describes “how individuals acquire the knowledge, skills and behaviors that are characteristic of a nascent and de\-territorialized global consumer culture” \(Cleveland & Laroche, 2007, p\. 252\)\.

How can the variance in the level of one\'s acculturation to GCC be explained? One approach may be to look at the individual themself: what values the person holds and how well these values match or fit with the culture \(Ward, Leong, & Low, 2004\)\. Cultural values are one of the main drivers of consumer behaviors, hence they may also influence an individual\'s likelihood of acculturation to GCC and consumption behaviors \(Kacen & Lee, 2002\; Lobo & Greenland, 2017\)\. Individuals usually strive to maintain consistency between their values and behaviors \(Van Vianen, 2018\)\. When faced with new stimuli, including cultural phenomena, individuals whose existing values and beliefs match the new cultural phenomena are more likely to acculturate to that new phenomena \(Ramos, 2005\)\. Existing research focusing on examining explanations of why some individuals accept and engage with GCC more than other individuals is scarce, and our study fills this gap\. We propose that the person\-environment fit theory, which posits that individuals\' values influence their responses to cultural phenomena and in turn influence specific behaviors motivated by that cultural phenomena \(Kristof\-Brown & Guay, 2011\), may provide theoretical explanation of why consumers vary in their level of engagement with GCC and related consumption behaviors\.

Examining values of vertical\/horizontal individualism–collectivism may shed light on why some individuals acculturate to GCC more readily than others \(Özsomer, 2012\)\. The vertical and horizontal distinction between individualism–collectivism values has been found to be an important distinction which may have implications for practice \(Cleveland & Bartikowski, 2018\)\. Vertical individualists value competition and individual achievement, while horizontal individualists see themselves as different from other individuals and value uniqueness and exceptionalism \(Nelson & Shavitt, 2002\)\. Such values are more compatible with GCC than values of collectivism\. Horizontal collectivists value group needs and well\-being more than individual needs and see themselves as similar to others – they emphasize common goals with others and interdependence\. Vertical collectivists value the subordination of individual goals to those of their “in\-groups,” submit to the will of authority, and support competition between their “in\-groups” and “out\-groups” \(Nelson & Shavitt, 2002\)\. Such values are less compatible with GCC\. In line with the rise in individualism \(Santos, Varnum, & Grossmann, 2017\) and the economic and social role of consumption in the success of many economies \(Schor, 2004\), it is reasonable to further examine the relations between these socially and economically important phenomena in detail\.

Our study goes beyond those that previously examined general materialism as an outcome of one\'s acceptance of GCC \(e\.g\., Cleveland, Laroche, & Takahashi, 2015\; Lysonski & Durvasula, 2013\)\. Therefore, this study is the first to address such questions in the context of less positive consumer behaviors\. Moreover, while studies examining consumer acculturation to the host culture are ubiquitous, few studies have examined acculturation of minorities to pan\-national, international cultural phenomena such as GCC \(Van Oudenhoven & Ward, 2013\)\. Subsequently, the authors pose the following research questions:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[RQ1\. #emph[Do consumers who are more acculturated to GCC buy more impulsively and report a lower level of money budgeting?]]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[RQ2\. #emph[How do individual\-level values of individualism and collectivism relate to AGCC?]]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[RQ3\. #emph[Does AGCC mediate the relations between cultural values of individualism and collectivism, and between impulsive buying and money budgeting, which constitute two consumer behaviors related to GCC?]]]
The results reveal that the cultural fit between values of individualism–collectivism and GCC, and impulsive buying and money budgeting, rests on the hierarchical nature of the values\. The “fit” occurs for those individuals who believe in hierarchical structures in which some individuals are more important, or successful than others among other individuals, or within groups\.

= 2 Theoretical background
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 2\.1 Acculturation to global consumer culture
#par(first-line-indent: 0em)[Global Consumer Culture Theory \(GCCT\) posits that there is a global consumer culture \(GCC\) emerging which transcends national borders and cultures \(Arnould & Thompson, 2005\)\. One of the important positions of GCCT is that, unsurprisingly, consumers exposed to GCC respond to it in various ways\. However, there has been little theoretical or empirical work on which traits can reliably explain the differences in individual consumers\' responses to GCC, as this avenue may provide knowledge with significant practical and social applications\. Individuals faced with new cultural phenomena, such as GCC, may exhibit a range of responses during the process of acculturation \(Shoham, Segev, & Gavish, 2017\)\. Acculturation, as applied to individuals, refers to changes that take place as a result of contact with culturally dissimilar people, ideas, and social influences, including consumption\. Consumer acculturation is a process by which the attitudes, values, beliefs, and behaviors of consumer culture are adopted by an individual who is exposed to it \(Luedicke, 2011\)\.]

Acculturation can take place because of almost any interaction between cultures, including globalization\. Cleveland and Laroche \(2007\) proposed a specific construct to describe a response that an individual consumer has towards GCC – acculturation to global consumer culture \(AGCC\)\. Seven distinct dimensions of AGCC were further proposed: \(a\) Cosmopolitanism: willingness to engage with “the other” from different cultures and the level of competence towards the “alien” culture\(s\) \(COS\)\; \(b\) Exposure to marketing activities of multinational or global corporations \(EXM\)\; \(c\) English language usage and exposure \(ELU\)\; \(d\) Social interactions, including travel, migration, and contacts with foreigners \(SIN\)\; \(e\) Global\/foreign mass media exposure \(GMM\)\; \(f\) Openness to, and desire to, emulate GCC \(OPE\)\; and \(g\) Self\-identification with global consumer culture in terms of how they dress, what they read, and how they interact with global brands \(IDT\)\.

The question of how consumers respond to GCC and its various elements has been a topic of limited research \(Gürhan\-Canli, Sarıal\-Abi, & Hayran, 2018\)\. Previous research approached the problem from the perspective of exploring the consequences of AGCC\'s influence on consumer behavior, for example, the preference for global brands or the effectiveness of positioning strategies linked to GCC \(Akaka & Alden, 2010\; Okazaki, Mueller, & Taylor, 2010\; Westjohn, Arnold, Magnusson, & Reynolds, 2016\; Westjohn, Singh, & Magnusson, 2012\)\. However, less focus was given to the important question of antecedents of AGCC\. Limited evidence shows that generational cohort membership affects AGCC, and that general individualism is related positively to AGCC among American consumers \(Carpenter et al\., 2013\; Carpenter, Moore, Doherty, & Alexander, 2012\; Sobol, Cleveland, & Laroche, 2018\)\.

== 2\.2 Person\-environment fit theory
#par(first-line-indent: 0em)[The theory of person\-environment fit is defined as the degree to which individual and environmental characteristics match or fit, and how that fit relates to behaviors and attitudes \(Caplan, 1987\)\. Personal characteristics include values, and environmental factors include culture \(Edwards, Caplan, & Harrison, 1998\)\. The adequacy of this fit between a person and the environment can affect their personal behavior, or in other words, the fit between a person\'s values and environment predicts certain behaviors \(Van Vianen, 2018\)\. When a consumer faces a new environment, such as a new culture, the similarity between the values of the consumer and the environment \(culture\) enables the consumer to acculturate to the new environment more successfully \(Miocevic & Zdravkovic, 2020\; Valenzuela & Rogers, 2018\)\.]

The theory builds on the arguments of consistency theories, which posit that individuals always seek cognitive balance between their values and behaviors and hence are drawn to things and environments that are consistent with their pre\-existing values \(Kristof, 1996\; Zajonc, 1960\)\. The theory is based on two fundamental assumptions: \(a\) human behavior is a function of the person and the environment and \(b\) persons seek congruency between their values and the environment in order to function effectively \(Elfenbein & O\'Reilly, 2007\; Miron, Erez, & Naveh, 2004\)\. Often, the “match\-up hypothesis” or “fit” concepts are also used to describe the match or “fit” between two objects of study \(Till & Busler, 2000\)\.

The person\-environment fit has usually been employed in organizational behavior research but may also be applied in efforts to explain the link between values and behaviors to cultural phenomena outside of the organizational context\. Variations of this theory have been applied in many areas of consumer behavior research\; for example, Kamins and Gupta \(1994\) investigated the effectiveness of “fit” between the celebrity endorser and the advertised product and found that congruency resulted in a more positive product attitude and higher advertisement believability\. In the area of branding, consumers prefer brands that are more congruent with their values \(Wallace, Buil, & de Chernatony, 2017\)\. This study employs the person\-fit theory to examine the effects of congruity of values on the acceptance of GCC and selected consumption behaviors\.

== 2\.3 Individualism as the endorsed value
#par(first-line-indent: 0em)[The individualism–collectivism dimension has been influential in social science research since the late 1980s, and numerous studies in consumer research have employed this framework and its modified versions \(Shavitt, Torelli, & Riemer, 2011\)\. The individualism–collectivism dimension is the broadest and most fundamental cultural value that can effectively distinguish individuals and societies \(Triandis & Gelfand, 1998\)\. Cultural values are shared standards of what is acceptable, important, or good in a society \(Schwartz, 2012\)\.]

The construct of individualism–collectivism deals with the relationship between the individual and other individuals and groups that is dominant within a society\. This dimension answers the question of whose interests, goals, ambitions, and needs are more important, that is, those of the individual or those of the collective\. Individualists are “me”\-oriented \(Sivadas, Bruvold, & Nelson, 2008\), and individuals are independent of one another \(Oyserman, Coon, & Kemmelmeier, 2002\)\. Individualistic people prefer loose social networks and are expected to look after themselves and their immediate families only\. Collectivists are “we”\-oriented \(Sivadas et al\., 2008\), and group membership is a fundamental aspect of their identity \(Oyserman et al\., 2002\)\. Collectivistic people prefer tight social networks and they are supposed to care for their immediate families as well as relatives, clan, or other members of a group\. The relationship between an individual and a group is not only a matter of living together but is also linked with the norms governing other aspects of life such as economic, educational, or political spheres of the society \(Torelli & Rodas, 2017\)\.

For people who are individualistic, personal interests, and goals are more important than “in\-group” interests and goals, and their behavior is generally guided by personal beliefs, goals, and preferences\. Collectivists value “in\-group” interests and goals as more important than those of the individual, where personal interests and goals are of less importance \(Sivadas et al\., 2008\)\. People who hold collectivist values see themselves as interdependent with others and their behavior is usually guided by social norms, group expectations, and group hierarchy \(Sivadas et al\., 2008\)\.

Researchers have argued that the polarity of the dichotomous individualism–collectivism dimension did not account for the multifaceted nature of personal differences within members of individualist and collectivist cultures \(Triandis & Gelfand, 1998\)\. Accordingly, an extended typology, including horizontal and vertical dimensions of social relationships at the individual level of analysis, was proposed \(Triandis & Gelfand, 1998\)\. This expanded categorization enlarged the original dichotomy by proposing four dimensions: Horizontal Individualism \(HI\), Vertical Individualism \(VI\), Horizontal Collectivism \(HC\), and Vertical Collectivism \(VC\) \(Triandis & Gelfand, 1998\)\. These categories of individualism–collectivism classify cultures and individuals according to their readiness to emphasize hierarchy \(Shavitt & Cho, 2016\)\. Relationships in vertical societies are structurally hierarchical, with members of the culture accepting inequality and acknowledging the importance of social rank, whereas relationships in horizontal societies are structurally egalitarian, with members accepting interdependence and equal status for all \(Nelson & Shavitt, 2002\)\. The subtle differences between the horizontal and vertical elements of individualism–collectivism have been found to be significant in explaining behaviours linked to individualism and collectivism \(Cleveland & Bartikowski, 2018\)\.

== 2\.4 Impulsive buying
#par(first-line-indent: 0em)[Impulsive buying is the tendency of a customer to buy goods and services without thoughtful consideration of all choice alternatives and information prior to the act of purchase \(Kacen & Lee, 2002\)\. Impulsive purchases constitute a substantial volume of goods sold every year across a broad range of product categories \(Hall, 2018\), and hence have been recognized as an important aspect of consumer purchase behavior by retailers and consumer behavior researchers \(Crawford & Melewar, 2003\)\. Impulsive buying constitutes a large part of consumer spending in the UK and other developed economies\. An average consumer in the UK could save around four times the average annual salary over their lifetime if impulse purchases were eliminated \(Hall, 2018\), and this is money that could be invested elsewhere \(NEST, 2013\)\. Impulsive buying may provide pleasure but may also lead to a number of negative outcomes and regret for the individual and is considered to be unsustainable consumption behavior influenced by a range of individual, social, and situational factors \(Spiteri Cornish, 2020\; Baun & Groeppel\-Klein, 2003\; Kacen & Lee, 2002\)\.]

The advancement of GCC, which places emphasis on material possessions as indicators of social standing and self\-identity, and aggressive marketing activities of brands are all factors that contribute to impulsive buying \(Liao, Shen, & Chu, 2009\; Podoshen & Andrzejewski, 2012\; Wood, 2005\)\. Combined with the fact that markets provide ever\-present opportunities for impulsive buying, such as mobile commerce and online shopping, which allow consumers to buy instantaneously \(Mintel Reports, 2018\), it is important to ask if consumers who are more accepting of Western consumption\-related values may be more susceptible to impulsive buying\. The focus of the vast amount of published research on impulsive buying has mostly concentrated on revealing psychological antecedents, sociodemographical correlates, and outcomes of impulsive buying \(Amos, Holmes, & Keneson, 2014\; Chen & Wang, 2016\)\. Yet, examining the influence of cultural factors on impulsive buying can provide additional insights into this behavior and shed light on the cultural antecedents of such behavior \(Kacen & Lee, 2002\; Shoham, Gavish, & Segev, 2015\; Zhang, Winterich, & Mittal, 2010\)\.

== 2\.5 Money budgeting
#par(first-line-indent: 0em)[Money is an essential tool for participating in consumer culture \(Williams Bradford, 2015\)\. Some scholars have labelled it as “the common language” of the worldwide consumer culture \(Roberts & Sepulveda, 1999\) because most marketing exchanges involve money \(Williams Bradford, 2015\)\. Conceptually, money is a fundamental element of GCC \(Arnould, 2011\; Guo, 2013\)\. At both the institutional and interpersonal levels, money moves around the world easily due to available “finance\-scapes\.” Despite the central role money plays in GCC, little is known about the relationship between AGCC and money attitudes, and some argue that studying how consumers approach money fills an important gap in knowledge regarding consumer cultures \(Wherry, 2011\)\.]

Money budgeting describes an individual\'s tendency to plan, budget, and save money and emphasizes whether one uses money carefully or not and whether one plans financially for the future \(Luna\-Arocas & Tang, 2004\)\. The importance of money is central to the existence and operation of market\-driven cultures\. People perceive, value, and treat money differently \(Engelberg & Sjöberg, 2006\; Furnham, 1996\)\. However, to date, no one has asked the question of how the consumers\' level of acceptance of GCC – the culture in which accumulation, possession, and spending of money play not only economic but also social and cultural roles \(Durvasula & Lysonski, 2010\) – relates to money budgeting, an important aspect of a person\'s financial well\-being \(Tatzel, 2002\)\.

== 2\.6 Hypothesis development
#par(first-line-indent: 0em)[Individuals who are vertical individualists \(VI\) value competition with other individuals and believe that competition is essential for creating good societies \(Shavitt, Torelli, & Riemer, 2011\; Triandis & Gelfand, 1998\)\. Such individuals attribute success to the individual self \(Torelli & Shavitt, 2010\)\. Such individuals are less constrained by group dynamics and group loyalty and hence may be more likely to engage with culture that is created by “out\-groups” \(Shavitt & Cho, 2016\)\. The values of GCC are mainly the ones that reflect the values of Western Anglo\-Saxon societies, such as freedom of choice, free market economy in which consumers are exposed to competing brands, and individual interests which take precedence over collective interests, and where consumption is used to signal achievement and status \(Özsomer, 2012\)\. Vertical individualism was found to be the main cultural dimension linked to materialism and status\-related conspicuous consumption and such behaviors as brand consciousness, buying branded products, and shopping in upscale retail outlets, all of which are important elements of consumer culture \(Zhang & Nelson, 2016\)\. Vertical individualists buy and display foreign brands to signal and maintain social status, gain social capital, and display their knowledge about, and participation in, practices originating from foreign cultures \(Cleveland & Bartikowski, 2018\; Roy & Chau, 2011\; Strizhakova, Coulter, & Price, 2011\)\. In line with the person\-environment fit theory, such individuals should feel more aligned with GCC built on competition and achievement and therefore:]

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1\. Vertical individualism \(VI\) is positively associated with AGCC]\.]]
Horizontal individualists value uniqueness and may use consumption to distinguish themselves from others and thus showcase their uniqueness \(Nelson & Shavitt, 2002\)\. Such individuals may pay attention to the way they dress and behave, and they may want to use the components of GCC \(global brands, visiting foreign countries, speaking a foreign language\) as signals of their distinctiveness from other individuals \(Shavitt & Cho, 2016\)\.

Values of uniqueness and individual independence are more compatible with the values of GCC, a culture which offers consumers the opportunity to use global brands and products, exposure and openness to foreign cultures \(Cleveland & Laroche, 2007\)\. Moreover, as individualists prioritize their own personal needs and interest over the needs of groups, they are less likely to be held back by group influence and hence would be more likely to accept cultural phenomena created and shared by “out\-groups” \(Shavitt & Cho, 2016\)\. Hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2\. Horizontal individualism \(HI\) is positively associated with AGCC]\.]]
Both vertical collectivists and horizontal collectivists see themselves as members of a group \(Zhang, Mandl, & Wang, 2011\)\. Such individuals value their groups and group interests take priority over individual interests\. People who hold vertical collectivism values see themselves as belonging to a group in which group members have an unequal status\. Such individuals are inward looking, have strong “ingroup” identification, and, as a result, may be less likely to accept culture that is foreign and created by “out\-groups” \(Shavitt & Cho, 2016\)\. Vertical collectivists are loyal to their “in\-groups” and submit to the will of their authority\. Fulfilling duties and obligations toward the group takes precedence over individual goals and interests, suggesting that values of conformity are important to such individuals \(Triandis & Gelfand, 1998\)\. With its focus on maintaining “in\-group” solidarity and respecting hierarchical societal structures, vertical collectivists should be more loyal to their “in\-groups” and therefore reluctant to accept and engage in a culture that is created and supported by “out\-groups”\; therefore:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3\. Vertical collectivism \(VC\) is negatively associated with AGCC]\.]]
Horizontal collectivists also believe group interests take priority over individual interests\. For them, this is expressed as care and cooperation because they see themselves as similar to others, with the emphasis on common goals with others, interdependence, and sociability \(Shavitt & Cho, 2016\)\. These individuals value benevolence, egalitarianism, and shared social responsibility, not hierarchy nor competition \(Shavitt et al\., 2011\)\. Group interests are important to them and hence they will value “in\-groups” more than “out\-groups” \(Shavitt et al\., 2011\)\. As a result, they will be less likely to accept a global community of consumption created and supported by “out\-groups,” therefore:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4\. Horizontal collectivism \(HC\) is negatively associated with AGCC]\.]]
The degree of acculturation to a culture impacts the behavior of individuals toward aspects of the culture\. Therefore, high levels of acculturation should lead to a high degree of acceptance of some, or all, behaviors of the culture, depending on the acculturation magnitude of an individual \(Shoham et al\., 2017\; Berry, Page, & Sackett, 2007\)\. The person\-environment fit theory argues that the congruence between an individual\'s values and the studied phenomena should determine the acceptance of this phenomenon by this individual\. Accordingly, AGCC should be positively related to an adoption of consumption behaviors characteristic of GCC\. One of the outcomes of the spread of GCC is an extension of global consumerism – consumers around the globe tend to exhibit a greater desire for consumer goods \(Lerman & Maxwell, 2006\; Yu & Bastin, 2010\)\. This desire for consumer goods may manifest itself in the form of impulsive buying, which is often communicated in the marketing communication of globally available Western brands \(e\.g\., Nike\'s advertising slogan “Just do it”\)\.

Impulsive buying is encouraged by the Western emphasis on individualistic values and hedonistic pleasure, the international spread of e\-commerce \(e\.g\., fast\/same\-day delivery services, streaming\), and the spread of consumer orientation \(Kacen & Lee, 2002\)\. Consumers living in consumption\-based economies, in which material objects are signals of social position, are influenced into obtaining such objects and tend to exhibit a tendency to buy impulsively \(Podoshen & Andrzejewski, 2012\)\. Impulsive buying was related to cultural values \(Horváth & Adıgüzel, 2017\)\. Therefore, because of the positive “fit” between AGCC and impulsive buying, consumers more acculturated to GCC should report more frequent impulsive buying:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H5\. AGCC is positively associated with impulsive buying]\.]]
It has been argued that the change in attitude toward money has become an important catalyst behind the spread of GCC \(Bonsu, 2008\)\. Consumer spending is an important part of most developed economies: spending rather than saving is encouraged in such economies \(Cadman, 2016\; Parker, Souleles, Johnson, & McClelland, 2013\)\. Consequently, GCC is a culture of spending rather than saving, a culture of “buy now, pay later” and of easily available credit to buy the advertised brands, pay for international travel, or purchase global brands\. The availability of consumer credit in a range of forms is widespread in developed economies, and retailers often actively encourage the use of such financial instruments \(Lee & Kwon, 2002\)\. Consumers who endorse the materialistic values of GCC have more positive attitudes towards debt and borrowing, engage in “financially risky behaviors,” and are less concerned about saving \(Richins, 2011\)\. As GCC encourages excessive spending, buying now and paying later, and the use of credit cards, money budgeting is seen as being incongruent with AGCC, and therefore:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H6\. AGCC is negatively associated with money budgeting]\.]]
== 2\.7 Mediating effects of AGCC
#par(first-line-indent: 0em)[The relationships between individual\-level cultural values of individualism and collectivism and impulsive buying and money budgeting are expected to be mediated by a level of AGCC\. Acculturation depends on values and equally has an influence on behavior\; hence, it should act as a mediator\. AGCC is a potential mechanism by which the values of individualism and collectivism produce changes on the two variables of impulsive buying and money budgeting\. Cultural values affect how consumers respond to GCC, and this, in turn, has an effect on how consumers behave toward GCC\-endorsed consumption\-related behaviors such as impulsive buying and money budgeting\. Cultural values predict the attitudes toward debt \(Dellande, Gilly, & Graham, 2016\), and impulsive buying, as explained above, is also related to cultural values \(Kacen & Lee, 2002\)\. Consumers\' levels of AGCC will mediate the relations between individual\-level cultural values and the selected behaviors\. In line with the person\-environment fit theory and the argument that the acculturation level determines an individual\'s behavior in relation to the culture, such as shopping preferences \(Ownbey & Horridge, 1997\) or levels of materialism \(Cleveland, Laroche, & Hallab, 2013\), we argue that the acculturation level will mediate the relations between cultural values of individualism and collectivism and impulsive buying and money budgeting\. AGCC will positively mediate the relations between individualism and collectivism and impulsive buying, as impulsive buying is congruent with AGCC, and AGCC will negatively mediate the relationship between individualism and collectivism and money budgeting, because money budgeting is incongruent with AGCC:]

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H7\. AGCC positively mediates the relationship between vertical individualism VI \(a\), vertical collectivism VC \(b\), horizontal individualism HI \(c\), horizontal collectivism HC \(d\), and impulsive buying]\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H8\. AGCC negatively mediates the relationship between vertical individualism VI \(a\), vertical collectivism VC \(b\), horizontal individualism HI \(c\), horizontal collectivism HC \(d\), and money budgeting]\.]]
#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Conceptual model\. Redrawn from the published figure\.]]
#v(0.6em)
== 2\.8 Control variables
#par(first-line-indent: 0em)[The choice of control variables was based on past research on AGCC, which demonstrated that the consumer\'s age, gender, and duration of stay in the country affect AGCC\. Age negatively associated with multiple dimensions of AGCC, indicating that older consumers tend to be less acculturated to GCC than younger consumers \(Carpenter et al\., 2012\; Carpenter et al\., 2013\)\. In relation to gender, males are more likely to score higher on two dimensions of AGCC: social interactions and exposure to marketing activities of international companies \(Carpenter et al\., 2013\)\. The length of the period of stay in the UK was also included, as research suggests acculturation levels depend on how long a person interacts with a culture \(Birman & Trickett, 2001\)\. Figure 1 summarizes the hypotheses of the study, depicting the direct and indirect relationships controlled for the consumer\'s age, gender, and length of staying in the host country\.]

= 3 Method
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 3\.1 Choice of country
#par(first-line-indent: 0em)[The UK is an economic power with considerable political and cultural influence around the world and is therefore suitable for examining the effects of globalization on consumer behavior\. The UK ranks in the top 10 in the KOF Globalization Index for Globalization, in the top 20 for economic and social globalization, and in the top 10 for political globalization \(KOF, 2017\)\. Consumer spending accounts for 60% of UK GDP and is an important pillar of the economy \(ONS, 2018a\)\. The UK is one of the major players in globalization, and is a major capitalist economy\. In the last several decades, the Anglo\-Saxon economies, specifically the USA and the UK, have been the major drivers of the expansion of global capitalism and consequently, GCC \(Cova, 1997\)\. Individuals from non\-English speaking non\-Anglo\-Saxon countries who move to the UK, are exposed to the influences of GCC more so than if they remained in their native countries, and are thus suitable as participants in studies for levels of acculturation to GCC\.]

== 3\.2 Participants and procedure
#par(first-line-indent: 0em)[Data were collected through an online survey from 594 adult immigrants living in the UK\. As this study focused on examining the role of individualism–collectivism values, we chose this sample to increase the variability of this variable over what might be represented by a more homogeneous group if we were to study consumers of one national culture\. In order to ensure a heterogeneous sample of immigrants, first we reviewed the types of immigrants in the UK and the reasons people move to the UK\. People immigrate to the UK for three reasons: \(a\) study, \(b\) work, \(c\) family \(Home Office, 2018\)\. In order to target individuals from those three groups, we followed a data collection strategy similar to that employed by Cleveland and Bartikowski \(2018\)\. First, online platforms for immigrants in the UK were identified on social networking sites such as Facebook or www\.internations\.org – e\.g\., “Poles in Luton” \[“Polacy w Luton”\] and “Nigerians in the UK” were identified as the largest Facebook groups for Polish and Nigerian immigrants, respectively, in the UK\. Administrators from the selected groups were invited to collaborate with the research team to help with the recruitment of participants by posting the link to the survey to the groups, or disseminating the link to the survey through their e\-mail subscription service\. In addition, the researchers, with the help of a research assistant \(a graduate student\), disseminated the link to the survey via e\-mail to contacts who potentially matched the respondent profile, and to students who were then asked to forward the link to the survey to their friends living in the UK\. The UK has a high market penetration of internet connection \(ONS, 2018b\), hence this way of reaching respondents ensured that a large number of potential respondents was reached, without neglecting a large proportion of the population, especially when reaching the focal diverse groups\.]

The eligibility for this study was established by requesting the respondent\'s migratory status in the UK and their nationality of origin\. Participants were selected for the study because they had moved to the UK from non\-Anglo\-Saxon countries and respondents qualified as residents of the UK if they confirmed they had lived in the UK for more than 6 months of the year or intended to stay in the UK for more than 6 months\. This criterion was used because it is the standard criterion for establishing tax residence, or when applying for confirmation of legal residence \(HM Revenue & Customs, 2016\)\. This population and sampling approach are deemed appropriate in order to examine the relations between the selected variables, as it ensures heterogeneity in terms of the level of individualism and collectivism, assuming that the participants\' national culture has had an impact on their values at an individual level\. This ensures we have recruited participants of different levels of values and further ensures that respondents are exposed to GCC more in the UK than elsewhere, simultaneously having the option to participate in it to varying degrees\.

Respondents represented 35 nationalities \(Table 1\)\. Long\-term UK residents \(more than 1 year\'s stay\) comprised 57\.2% of respondents, 4\.2% had just moved and intended to stay long\-term, and 38\.8% had just moved to study in the UK for more than 6 months\. The mean age was 32\.85 years \(SD \= 9\.37\), ranging from 18 to 74 years old\. Females made up 59% of the sample\. The majority of the respondents were in employment \(58%\) and declared holding a degree \(undergraduate – 32%, postgraduate – 42%\)\. Finally, the majority of the respondents\' average household income per year was within the £50,000–£74,000 category \(62%\)\.

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 1.] Nationalities included in the study]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto), align: (left, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Country]], [#strong[Frequency]], [#strong[%]]),
table.hline(stroke: 0.5pt),
[Pakistan], [41], [6\.91],
[Poland], [38], [6\.41],
[Germany], [28], [4\.72],
[Netherlands], [28], [4\.72],
[India], [26], [4\.38],
[Italy], [26], [4\.38],
[Nigeria], [24], [4\.05],
[Ghana], [23], [3\.88],
[Greece], [23], [3\.88],
[Portugal], [23], [3\.88],
[Saudi Arabia], [21], [3\.54],
[Slovakia], [18], [3\.04],
[Bangladesh], [17], [2\.87],
[Philippines], [17], [2\.87],
[China], [16], [2\.70],
[Spain], [16], [2\.70],
[Latvia], [15], [2\.53],
[Sri Lanka], [15], [2\.53],
[Egypt], [14], [2\.36],
[Jamaica], [13], [2\.19],
[Vietnam], [13], [2\.19],
[Argentina], [12], [2\.02],
[Belgium], [12], [2\.02],
[Bahrain], [11], [1\.85],
[Cyprus], [11], [1\.85],
[Iran], [11], [1\.85],
[Iraq], [11], [1\.85],
[Myanmar], [11], [1\.85],
[Rep\. of the Congo], [11], [1\.85],
[Romania], [11], [1\.85],
[Zimbabwe], [11], [1\.85],
[Bulgaria], [10], [1\.69],
[Brazil], [8], [1\.35],
[Chile], [6], [1\.01],
[France], [3], [0\.51],
table.hline(stroke: 0.8pt),
)]
]
#v(12pt)
== 3\.3 Measures
#par(first-line-indent: 0em)[Individualism\/Collectivism values were assessed with a scale of 14 items measuring four dimensions of individualism\/collectivism at the individual level: HC \(4 items\), VC \(4 items\), HI \(3 items\), and VI \(4 items\) \(Sivadas et al\., 2008\)\. The items were rated on a nine\-point Likert scale ranging from 1 \(#emph[never]\) to 9 \(#emph[always]\)\. This measurement was selected because it offers high reliability and validity across multiple cultural contexts \(Sivadas et al\., 2008\)\. Cronbach\'s alpha scores ranged from 0\.73 to 0\.80\.]

AGCC was measured with the 21\-item AGCC scale \(Durvasula & Lysonski, 2015\)\. This version of AGCC scale shows high reliability and validity, without deteriorating content domain coverage of the construct and includes one higher\-order AGCC factor and seven first\-order factors of cosmopolitanism \(3 items\), exposure to marketing activities of multinational corporations \(3 items\), English language usage\/exposure \(3 items\), social interactions \(3 items\), global mass media exposure \(3 items\), self\-identification with global consumer culture \(3 items\), and openness \(3 items\)\. Each item was rated on a seven\-point Likert scale, ranging from 1 \(#emph[strongly disagree]\) to 7 \(#emph[strongly agree]\)\. In this study, Cronbach\'s alpha for the AGCC dimensions ranged from 0\.73 to 0\.90\.

Impulsive buying scale comprised of three items extracted from Ridgway, Kukar\-Kinney, and Monroe \(2008\)\. This scale was used because it specifically addresses impulsive buying rather than compulsive buying as many other scales do\. Cronbach\'s alpha was 0\.86\.

Money budgeting scale was adopted from Luna\-Arocas and Tang \(2004\)\. The scale has been replicated across cultures and shows high reliability and consistency \(Tang, Tang, & Luna\-Arocas, 2005\)\. Cronbach\'s alpha was 0\.85\. Both impulsive buying and money budgeting scales were anchored from 1 \(#emph[strongly disagree]\) to 7 \(#emph[strongly agree]\)\. Descriptive statistics for the items used in this study are summarized in Table A1 \(Appendix\)\.

== 3\.4 Statistical analyses
#par(first-line-indent: 0em)[All the analyses were computed using the R software environment for statistical computing \(https:\/\/www\.r\-project\.org\) Version 3\.5\.1 \(Feather Spray\)\. The following packages were used #emph[psych] \(Procedures for Psychological, Psychometric, and Personality Research, Version 1\.84\) for the descriptive analyses, and #emph[lavaan] \(Latent Variable Analysis, Version 0\.6–2\) to fit the structural equation models\.]

== 3\.5 Common method bias
#par(first-line-indent: 0em)[Common method bias was calculated using the common latent factor method to test the data for systematic response patterns \(Podsakoff, MacKenzie, Lee, & Podsakoff, 2003\)\. The items of all latent variables were specified to freely load to a single factor \(unconstrained same\-source model\)\. The unconstrained model was subsequently compared to a second model, in which all factor loadings were constrained to zero \(constrained same\-source model\)\. The fit of the unconstrained model was worse than the constrained model, therefore indicating that data do not have common method bias issues \(Podsakoff et al\., 2003\)\.]

== 3\.6 Confirmatory factor analysis
#par(first-line-indent: 0em)[To validate the scales and test for convergent and discriminant validity, all independent and dependent latent variables were included in one multifactorial confirmatory model \(CFA\) estimated with a full information maximum likelihood algorithm \(FIML\)\. AGCC was specified as a second\-order factor consisting of the seven first\-order factors \(i\.e\., cosmopolitanism, exposure to marketing activities, English language usage\/exposure, social interactions, global mass media exposure, self\-identification with global consumer culture, and openness\)\. Gender, age, and the respondent\'s length of stay in the UK were added as co\-variates while estimating structural coefficients\.]

To test the unidimensionality of the CFA model, the items were specified to load into their specific factors\. The error terms were independent, and all the standardized loadings estimates were statistically significant and greater than 0\.60\. No evidence of cross\-loadings was identified\. The tests support convergent validity of the CFA model \(Kline, 2011\)\.

Following on from this, we calculated the average variance extracted \(AVE\) for each latent variable\. The AVEs ranged from 0\.50 to 0\.76 and were equal to or above the recommended threshold of 0\.50 \(Bagozzi & Yi, 1988\)\. The square roots of the AVEs were higher than the correlations across the factors\. Altogether, the tests evidence discriminant validity \(Kline, 2011\)\.

To evaluate the CFA model\'s goodness\-of\-fit \(GOF\), we used the following fit indices: the chi\-square test statistic, the comparative fit index \(CFI\), the Tucker–Lewis index \(TLI\), and the root mean square error of approximation \(RMSEA\)\. Values above 0\.90 for CFI and TLI and below 0\.08 for RMSEA indicate a good fit of the model to the data \(Kline, 2011\)\. The GOF values indicate that the CFA model had a good fit to the data\. The values were as follows: FIMLχ#super[2]#sub[\(896\)] \= 2,612\.87, CFI \= 0\.91, TLI \= 0\.90, and RMSEA \= 0\.05 \(90% confidence interval CI \[0\.05–0\.05\]\)\.

The composite reliability \(CR\) coefficient helped establish reliability\. The CR values ranged from 0\.75 to 0\.90, exceeding the recommended 0\.70 threshold value \(Bagozzi & Yi, 1988\)\. The CR coefficients further support the internal consistency of the scales\. Table 2 summarizes the outcomes resulting from the CFA analysis\.

#page(flipped: true)[
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Reliability and validity scores of the conceptual model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Construct]], [#strong[Alpha]], [#strong[CR]], [#strong[AVE]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]]),
table.hline(stroke: 0.5pt),
[1\. VI], [0\.74], [0\.75], [0\.50], [#emph[0\.71]], [0\.22\*\*\*], [0\.63\*\*\*], [0\.11\*\*], [0\.44\*\*\*], [0\.11\*\*], [0\.05],
[2\. HI], [0\.73], [0\.75], [0\.52], [], [#emph[0\.72]], [0\.03], [0\.66\*\*\*], [−0\.14\*\*], [−0\.14\*\*], [0\.13\*\*],
[3\. VC], [0\.79], [0\.82], [0\.54], [], [], [#emph[0\.73]], [0\.21\*\*\*], [0\.43\*\*\*], [0\.11\*\*], [0\.09\*],
[4\. HC], [0\.80], [0\.82], [0\.54], [], [], [], [#emph[0\.73]], [−0\.21\*\*\*], [−0\.29\*\*\*], [0\.28\*\*\*],
[5\. AGCC], [–], [–], [–], [], [], [], [], [–], [0\.47\*\*\*], [−0\.22\*\*],
[6\. Impulsive buying], [0\.86], [0\.86], [0\.67], [], [], [], [], [], [#emph[0\.82]], [−0\.51\*\*\*],
[7\. Budgeting], [0\.85], [0\.86], [0\.61], [], [], [], [], [], [], [#emph[0\.78]],
[Age], [–], [–], [–], [−0\.14\*\*], [−0\.16\*\*\*], [−0\.13\*\*], [−0\.08\*\*], [−0\.18\*\*], [−0\.24\*\*\*], [0\.12\*\*],
[Gender], [–], [–], [–], [−0\.28\*\*\*], [−0\.08\*\*], [−0\.26\*\*\*], [−0\.14\*\*], [−0\.11\*\*], [0\.25\*\*\*], [−0\.11\*],
[Length of stay], [–], [–], [–], [−0\.13\*\*], [−0\.08\*\*], [−0\.13\*\*], [−0\.13\*\*], [−0\.11\*\*], [−0\.04], [−0\.05],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]: VI\/HI \= vertical\/horizontal individualism\; VC\/HC \= vertical\/horizontal collectivism\; gender ref: 0 \= male\. The square root of the average variance extracted values appears in italics\. Cronbach\'s alpha, CR, and AVE for AGCC were calculated for each individual dimension\. FIML#emph[χ]#super[2]#sub[\(896\)] \= 2,612\.87, CFI \= 0\.91, TLI \= 0\.90, and RMSEA \= 0\.05 \(90% CI \[0\.05–0\.05\]\)\; #super[\*\*\*]#emph[p] \< 0\.001, #super[\*\*]#emph[p] \< 0\.01, #super[\*]#emph[p] \< 0\.10\; #emph[n] \= 594\. Abbreviations: CR, composite reliability\; AVE, average variance extracted\.]
]
#v(12pt)
]
== 3\.7 Structural equation model
#par(first-line-indent: 0em)[To test the directional hypotheses, the latent variables were included in a single structural model\. Structural equation modeling \(SEM\) is used in this study because this analytical approach estimates the multiple and interrelated dependence of latent variables in a single analysis and allows for accounting for measurement error \(Hair Jr, William, Babin, & Anderson, 2018\)\. In addition, SEM is used because of the confirmatory nature of this study \(Anderson & Gerbing, 1988\)\. Gender, age, and length of stay of the participants in the UK were included as control variables and were regressed on the second\-order factor of AGCC\. For robustness, the analysis was computed using 5,000 bootstrap draws\. The overall model fit was good as indicated: FIMLχ#super[2]#sub[\(914\)] \= 2,401\.98, CFI \= 0\.91, TLI \= 0\.90, and RMSEA \= 0\.05 \(90% \[CI 0\.05–0\.06\]\)\.]

Table 3 summarizes the structural coefficients\. While the length of stay in the UK was found nonsignificant \(#emph[p] \= \.40\), results indicated that younger participants were significantly more acculturated to GCC than older participants \(#emph[β] \= −0\.28, #emph[p] \< \.001\)\. In terms of gender, females were significantly more acculturated to GCC than males \(#emph[β] \= 0\.18, #emph[p] \< \.001\)\.

After controlling for the impact of age, gender, and the length of stay in the country, vertical individualism \(VI\) was still significantly associated with AGCC \(β \= 0\.44, #emph[p] \< \.001\), lending support for #emph[H1]\. This finding is consistent with the results obtained by Cleveland and Bartikowski \(2018\) where they found vertical individualism \(VI\) values to be positively associated with identity with GCC \(a component of AGCC\)\. Carpenter et al\. \(2013\) found that general individualism was positively related to AGCC\.

The second hypothesis tested the influence of horizontal individualism \(HI\) on AGCC\. This relationship was found nonsignificant \(#emph[p \=] \.54\), leading to the rejection of #emph[H2]\. This finding is inconsistent with Cleveland and Bartikowski\'s \(2018\) study in which HI values were negatively associated with identity with GCC\.

The next hypothesis anticipated a negative relation of vertical collectivism \(VC\) and AGCC\. The calculations reject #emph[H3] \(#emph[β] \= 0\.30, #emph[p] \< \.01\)\. In line with Cleveland and Bartikowski \(2018\), our findings show positive association between VC values and AGCC\.

The relation between horizontal collectivism \(HC\) and AGCC was negative and significant \(#emph[β] \= −0\.26, #emph[p] \= \.07\), lending support for #emph[H4]\. This finding stands contrary to findings in Cleveland and Bartikowski \(2018\) who found positive association between HC and identity with GCC\.

AGCC was found to be positively associated with impulsive buying \(#emph[β] \= 0\.60, #emph[p] \> \.001\), and negatively associated with money budgeting \(#emph[β] \= −0\.48, #emph[p] \> \.001\), supporting #emph[H5] and #emph[H6]\.

The results supported hypothesis #emph[H7a] \(#emph[β] \= 0\.40, #emph[p] \> \.001\) that AGCC would positively mediate the relations between VI and impulsive buying\. A negative mediation of AGCC between VI and money budgeting was statistically significant, lending support for #emph[H7b] \(#emph[β] \= −0\.21, #emph[p] \> \.01\)\. AGCC positively mediated the relationship between VC and impulsive buying \(#emph[β] \= 0\.27, #emph[p] \> \.01\) and negatively mediated the relationship between VC and money budgeting \(#emph[β] \= −0\.14, #emph[p] \= \.02\)\.

Finally, no statistically significant mediation of AGCC was found between HI and impulsive buying or money budgeting, leading to the rejection of #emph[H8a] \(#emph[p] \= \.54\) and #emph[H8b] \(#emph[p] \= \.55\)\. AGCC negatively mediated the relationship between HC and impulsive buying \(#emph[β] \= −0\.23, #emph[p] \= \.06\) and positively mediated the relationship between HC and money budgeting \(#emph[β] \= 0\.12, #emph[p] \= \.07\), hence not providing support for #emph[H8c] and #emph[H8d]\. Our findings can be viewed in the context of the study by Cleveland and Bartikowski \(2018\) who found identification with GCC to be a mediator between cultural values of vertical and horizontal individualism and collectivism and market mavenism, which further suggests that AGCC may be an important mechanism through which these cultural values affect consumer behaviors\.

The SEM model explained 57% of the variance \(R#super[2]\) in AGCC, 53% of the variance in impulsive buying, and 21% of the variance in money budgeting\.

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 3.] Standardized structural coefficients]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto), align: (left, right, right, right, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Hypothesis]], [#strong[β]], [#strong[#emph[t]\-value]], [#strong[#emph[p]\-value]], [#strong[Supported\/not supported]]),
table.hline(stroke: 0.5pt),
[H1\. Vertical individualism → AGCC], [0\.44], [3\.16], [\.001], [Supported],
[H2\. Horizontal individualism → AGCC], [−0\.08], [−0\.60], [\.54], [Not supported],
[H3\. Vertical collectivism → AGCC], [0\.30], [2\.39], [\.01], [Not supported],
[H4\. Horizontal collectivism → AGCC], [−0\.26], [−1\.80], [\.07], [Supported],
[H5\. AGCC → impulsive buying], [0\.60], [4\.52], [\.001], [Supported],
[H6\. AGCC → money budgeting], [−0\.48], [−3\.34], [\.001], [Supported],
[#emph[Control variables]], [], [], [], [],
[Age → AGCC], [−0\.28], [−4\.13], [\.001], [–],
[Gender → AGCC], [0\.18], [3\.73], [\.001], [–],
[Length of staying in the UK → AGCC], [0\.04], [0\.83], [\.40], [–],
[#emph[Indirect effects \(specific indirect β\)]], [], [], [], [],
[H7a\. Vertical individualism → AGCC → impulsive buying], [0\.40], [2\.97], [\.001], [Supported],
[H7b\. Vertical individualism → AGCC → money budgeting], [−0\.21], [−2\.52], [\.01], [Supported],
[H7c\. Vertical collectivism → AGCC → impulsive buying], [0\.27], [2\.39], [\.01], [Supported],
[H7d\. Vertical collectivism → AGCC → money budgeting], [−0\.14], [−2\.21], [\.02], [Supported],
[H8a\. Horizontal individualism → AGCC → impulsive buying], [−0\.07], [−0\.60], [\.54], [Not supported],
[H8b\. Horizontal individualism → AGCC → money budgeting], [0\.04], [0\.59], [\.55], [Not supported],
[H8c\. Horizontal collectivism → AGCC → impulsive buying], [−0\.23], [−1\.84], [\.06], [Not supported],
[H8d\. Horizontal collectivism → AGCC → money budgeting], [0\.12], [1\.75], [\.07], [Not supported],
[#emph[Total effects]], [], [], [], [],
[Vertical individualism → impulsive buying], [−0\.39], [−2\.61], [\.01], [–],
[Vertical individualism → money budgeting], [0\.26], [2\.10], [\.03], [–],
[Horizontal individualism → impulsive buying], [0\.24], [1\.51], [\.12], [–],
[Horizontal individualism → money budgeting], [−0\.19], [−1\.45], [\.14], [–],
[Vertical collectivism → impulsive buying], [−0\.06], [−0\.48], [\.62], [–],
[Vertical collectivism → money budgeting], [0\.12], [1\.20], [\.22], [–],
[Horizontal collectivism → impulsive buying], [−0\.19], [−1\.26], [\.20], [–],
[Horizontal collectivism → money budgeting], [0\.27], [2\.24], [\.02], [–],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]: FIML#emph[χ]#super[2]#sub[\(914\)] \= 2,401\.98, CFI \= 0\.91, TLI \= 0\.90, and RMSEA \= 0\.05 \(90% \[CI 0\.05–0\.06\]\)\; Gender ref: male \= 0\; #emph[n] \= 594\; number of bootstrap draws \= 5,000\. For the indirect effects, β is the specific indirect β\.]
]
#v(12pt)
= 4 Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Our examination goes beyond previous studies that focused on AGCC \(e\.g\., Cleveland et al\., 2013\; Cleveland et al\., 2016\; Cleveland & Bartikowski, 2018\) by studying the impact of horizontal\/vertical individualism–collectivism values and AGCC on impulsive buying and money budgeting rather than the general “materialism” construct\. In doing so, this study examines how cultural values and the consumer\'s level of AGCC relate to two specific consumer behaviors: impulsive buying and money budgeting\. Consumers who score high on vertical individualism \(VI\) and those who score high on vertical collectivism \(VC\) report higher levels of AGCC than those who hold horizontal individualism \(HI\) and horizontal collectivism \(HC\) values\. In other words, consumers who believe that individuals are not equal are more likely to accept and engage in GCC\. Individuals who are acculturated to GCC buy more impulsively and report lower money budgeting\. Moreover, the values of individualism–collectivism affect impulsive buying and money budgeting through the mediating mechanism of AGCC\. For VI and VC values, AGCC acts as a mediator in the expected fashion – that is, it positively mediates the relations between the cultural values and impulsive buying, and negatively mediates the relations between cultural values and money budgeting\. However, for HI and HC, the hypothesized mediating role of AGCC was not found\.]

== 4\.1 Theoretical contributions
#par(first-line-indent: 0em)[Theoretically, this study offers two important contributions\. First, it contributes to the debate on the importance of the distinction between vertical and horizontal values of the individualism–collectivism dimension \(Shavitt & Cho, 2016\)\. Our study suggests that it is the vertical versus horizontal distinction rather than the individualism versus collectivism distinction that plays a role in explaining consumers\' acceptance of GCC\. The level of adherence to AGCC and impulsive buying and money budgeting is a function of a person\'s preference for social hierarchies \(“me” versus other individuals and “my group” versus “me”\)\. The findings underscore the theoretical arguments that the fine\-grained differences in the individualism–collectivism distinction are meaningful and important \(Cleveland & Bartikowski, 2018\; Triandis & Gelfand, 1998\)\.]

Second, the results of the study suggest that the similarity \(fit\) between a person\'s cultural values, acculturation orientation, and the consumption behaviors is an important factor that explains to a large extent how individuals interact with GCC and the studied behaviors of impulsive buying and money budgeting\. Overall, our study demonstrates that respondents who are “vertical,” that is they report higher values that relate to their position as individuals among other individuals or as groups, are more acculturated to GCC and report higher frequency of behaviors congruent with GCC \(impulsive buying\) and lower frequency of behaviors incongruent with GCC \(money budgeting\)\. The finding of the importance of vertical orientation for the acceptance of GCC suggests that consumption\-related inequality endorsed by GCC is more favorably evaluated by consumers who accept inequality and social hierarchies between individuals, or hierarchies between individuals in groups\. This finding holds relevance to the broader domain of the effects of cultural values on acceptance of GCC and related consumption practices\. Perhaps this offers a potential explanation of the success of GCC and the spread of consumption practices such as impulsive buying and poor money budgeting in both individualistic and collectivistic cultures \(Cleveland et al\., 2013\; Guo, 2013\; Sobol et al\., 2018\; Zhang et al\., 2010\; Khaer, 2013\)\. We propose that because vertical orientation emphasizes hierarchy \(vertical orientation includes acceptance of inequality\) \(Shavitt, Johnson, & Zhang, 2011\), individuals who have a “vertical” orientation, regardless of whether it is individualistic or collectivistic, are interested in using symbols of GCC to emphasize being different or distinguished from other individuals \(VI\) and other groups \(VC\)\. As horizontal individualists and collectivists are more egalitarian, AGCC may not act as an important process of transfer of meaning from values to concrete behaviors for the horizontal orientation\. However, the values of individualism–collectivism affect impulsive buying and money budgeting mainly through the mechanism of AGCC, which underscores the role of the consumer\'s response to GCC in contributing to such outcomes\.

== 4\.2 Practical implications
#par(first-line-indent: 0em)[This study provides knowledge that could be useful mainly to consumer organizations \(such as, for example, debt charities\) and social marketers that promote more responsible and mindful consumption behaviors\. We propose some possible practical implications of this study below, but they should be considered with caution given the limitations of the study\.]

Our findings suggest that consumer organizations and social marketers should take consumers\' values and the degree of acculturation to GCC into consideration, since they are important factors in determining consumers\' level of impulsive buying and money budgeting\. Social marketers could improve segmentation, targeting, and communication efforts to encourage more mindful consumption and better money budgeting\. In order to raise awareness of the implications of impulsive buying and poor money budgeting, social marketing and consumer education programs and campaigns should focus on the global outlook of such consumers and appeal to their vertical individualistic and vertical collectivistic values\. Specifically, messages could explicitly convey or implicitly suggest the individual and collective benefits of making more considerate purchases or better money budgeting\. Appeals to improving the status of an individual among other individuals \(to target vertical individualists\) or to benefit one\'s family \(to target vertical collectivism\) may work effectively\. Such messages could be tied to how the outcomes of better planned purchases and money budgeting could enable individuals or groups to benefit from opportunities that GCC offers\. For example, a potentially effective strategy could be to portray how considerate purchases and money budgeting can help consumers to save money for themselves and their families to visit foreign countries\.

Commercial marketers, too, can draw from these findings\. For example, socially responsible financial services providers may target consumers acculturated to GCC with financial instruments that encourage them to budget better and plan financially for the longterm\. Financial services providers may be more successful offering such products to individuals who are vertical individualists or vertical collectivists and are more engaged with GCC\. This can be done, for example, by appealing to their global outlook and the need for emphasizing their status among other individualists \(VI\) or within an ingroup \(VC\)\. For example, brands appealing to such individuals should portray how the financial product\/brand will improve the status of the individual among other individuals \(when targeting vertical individualists\) or how the financial product serves the interests of the person\'s family\/group \(when targeting vertical collectivists\)\.

== 4\.3 Limitations and future research
#par(first-line-indent: 0em)[This study, although carefully planned, is not without limitations\. The cross\-sectional, nonexperimental research design of this study hinders drawing causal inferences from the data\. Cross\-sectional surveys reveal more about individuals\' perceptions of phenomena than the actual processes that take place between variables\; hence, results from this study should be used with caution \(Woodside, 2011\)\. The use of an online data collection approach, although justified here, presents numerous limitations in reaching consumers who do not engage with social media platforms\. The nonprobability sampling approach may have biased the results\. The questionnaire was administered in English\; hence, this already assumed some level of AGCC among the recruited respondents as English language exposure is one of the dimensions of AGCC\. Future research should reach out to consumers in their native languages\.]

The nature of the sample that we selected for this study, although ensuring the variability of the constructs under investigation, also presented some limitations and further research should address these\. The fact that consumers are exposed at the same time to the host culture \(British culture\), and the cross\-national, borderless GCC and how the different levels of acculturation to these phenomena interact and impact consumer behavior should be addressed in future studies \(Khan, Lindridge, & Pusaksrikit, 2018\)\. This study focused only on one aspect of an individual\'s cultural identity, but future research could explore how hybridized consumer identities or “polycultural consumer identity” develop in the context of GCC and at which level the “cultural fit” plays a role \(Morris, Chiu, & Liu, 2015\; Ryoo, 2009\)\. Our sampling approach focused on reaching respondents who represent variance in the level of individualism–collectivism values, but future studies could incorporate measures of ethnic identification with host and home cultures as well as identification with GCC and explore consumer acculturation in multi\-ethnic identity contexts \(Cleveland & Xu, 2019\)\. Evidence exists that ethnicity and various levels of acculturation may interact because ethnic minority consumers, such as is the case in this study, may experience multiple “selves” \(Jamal & Chapman, 2000\)\. Moreover, examinations of how these values and ethnic and cultural identities interact in the case of respondents living in multicultural communities \(Cleveland & Xu, 2019\), or how individuals born to immigrant parents affect AGCC, would further open up opportunities to explore questions of cultural fit \(Noels & Clément, 2015\)\. Our study did not measure the multifaceted work of integration performed by immigrants, which may have important implications for acculturation processes and outcomes\. Individuals take influences from multiple cultures and thereby become conduits through which cultures can affect each other in the context of consumption\. In addition, examining acculturation to GCC from a religious perspective, specifically how consumers navigate cultural contexts in which their own religious beliefs differ from those of the host culture, is also important \(Khan et al\., 2018\)\.

Considering the importance of global brands, consumption, and money to the global economy, as well as the current discussion about the impact of consumerism and consumer cultures on environments \(Wilk, 2017\), this area of research offers many important and socially relevant avenues of investigation\. Impulsive buying is more prevalent among consumers acculturated to GCC, and further research investigating the relations between impulsive buying and money attitudes, including money budgeting, would be useful in explaining how such buying behavior hinders better financial planning and budgeting \(Khare, 2013\; Khare, 2014\; Wang & Xiao, 2009\)\. Given the centrality of money in the participation of individuals in GCC, examining the relations between AGCC and money attitudes is also worthwhile\. Last, examining the studied aspects in other multicultural contexts in other countries is also recommended\.

= ORCID
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Barbara Czarnecka https:\/\/orcid\.org\/0000\-0002\-8314\-1727]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Akaka, M\. A\., & Alden, D\. L\. \(2010\)\. Global brand positioning and perceptions: international advertising and global consumer culture\. #emph[Interna\-] #emph[tional Journal of Advertising], #emph[29]\(1\), 37–56\. https:\/\/doi\.org\/10\.2501\/S0265048709201026

Albinsson, P\. A\., Wolf, M\., & Kopf, D\. A\. \(2010\)\. Anti\-consumption in East Germany: consumer resistance to hyperconsumption\. #emph[Journal of Con\-] #emph[sumer Behaviour], #emph[9], 412–425\. https:\/\/doi\.org\/10\.1002\/cb\.333

Alden, D\. L\., Steenkamp, J\.\-B\. E\. M\., & Batra, R\. \(1999\)\. Brand positioning through advertising in Asia, North America, and Europe: the role of global consumer culture\. #emph[Journal of Marketing], #emph[63]\(1\), 75–87\. https:\/\/doi\.org\/10\.2307\/1252002

Amos, C\., Holmes, G\. R\., & Keneson, W\. C\. \(2014\)\. A meta\-analysis of consumer impulse buying\. #emph[Journal of Retailing and Consumer Services], #emph[21]\(2\), 86–97\. https:\/\/doi\.org\/10\.1016\/j\.jretconser\.2013\.11\.004

Anderson, J\. C\., & Gerbing, D\. W\. \(1988\)\. Structural equation modeling in practice: A review and recommended two\-step approach\. #emph[Psychological] #emph[Bulletin], #emph[103]\(3\), 411\. https:\/\/doi\.org\/10\.1037\/0033\-2909\.103\.3\.411

Appadurai, A\. \(1990\)\. Disjuncture and Difference in the Global Cultural Economy\. #emph[Theory, Culture & Society], #emph[7]\(2–3\), 295–310\. https:\/\/doi\.org\/10\.1177\/026327690007002017

Arnould, E\. J\. \(2011\)\. Society, culture, and global consumer culture\. In Wiley International Encyclopedia of Marketing, Jagdish Sheth and Naresh Moholtra, eds\. Baily, MN and Lawrence, RZ, \(2005\)\.

Arnould, E\. J\., & Thompson, C\. J\. \(2005\)\. Consumer Culture Theory \(CCT\): twenty years of research\. #emph[Journal of Consumer Research], #emph[31]\(4\), 868–882\. https:\/\/doi\.org\/10\.1086\/426626

Atulkar, S\., & Kesari, B\. \(2018\)\. Impulse Buying: A consumer trait prospective in context of Central India\. #emph[Global Business Review], #emph[19]\(2\), 477–493\. https:\/\/doi\.org\/10\.1177\/0972150917713546

Bagozzi, R\. P\., & Yi, Y\. \(1988\)\. On the evaluation of structural equation models\. #emph[Journal of the Academy of Marketing Science], #emph[16]\(1\), 74–94\. https:\/\/doi\.org\/10\.1007\/BF02723327

Baun, D\., & Gröppel\-Klein, A\. \(2003\)\. Joy and surprise as guides to abetter understanding of impulse buying behaviour\. #emph[ACR European Advances], #emph[6], 290\-299

Berry, C\. M\., Page, R\. C\., & Sackett, P\. R\. \(2007\)\. Effects of self\-deceptive enhancement on personality–job performance relationships\. #emph[Interna\-] #emph[tional Journal of Selection and Assessment], #emph[15]\(1\), 94–109\. https:\/\/doi\.org\/10\.1111\/j\.1468\-2389\.2007\.00374\.x

Birman, D\., & Trickett, E\. J\. \(2001\)\. Cultural transitions in first\-generation immigrants: Acculturation of Soviet Jewish refugee adolescents and parents\. #emph[Journal of Cross\-cultural Psychology], #emph[32]\(4\), 456–477\. https:\/\/doi\.org\/10\.1177\/0022022101032004006

Bonsu, S\. K\. \(2008\)\. Ghanaian attitudes towards money in consumer culture\. #emph[International Journal of Consumer Studies], #emph[32]\(2\), 171–178\. https:\/\/doi\.org\/10\.1111\/j\.1470\-6431\.2007\.00639\.x

Cadman, E\. \(2016\)\. “Consumer spending drives UK economic growth,” The Financial Times\. Retrieved from https:\/\/www\.ft\.com\/content\/e194e464\-6b65\-11e6\-ae5b\-a7cc5dd5a28c

Calder, L\. \(2009\)\. #emph[Financing the American dream: A cultural history of con\-] #emph[sumer credit]\. Princeton, NJ: Princeton University Press\.

Caplan, R\. D\. \(1987\)\. Person\-environment fit theory and organizations: Commensurate dimensions, time perspectives, and mechanisms\. #emph[Jour\-] #emph[nal of Vocational Behavior], #emph[31]\(3\), 248–267\. https:\/\/doi\.org\/10\.1016\/0001\-8791\(87\)90042\-X

Carpenter, J\., Moore, M\., Doherty, A\. M\., & Alexander, N\. \(2012\)\. Acculturation to the global consumer culture: A generational cohort comparison\. #emph[Journal of Strategic Marketing], #emph[20]\(5\), 411–423\. https:\/\/doi\.org\/10\.1080\/0965254X\.2012\.671340

Carpenter, J\. M\., Moore, M\., Alexander, N\., & Doherty, A\. M\. \(2013\)\. Consumer demographics, ethnocentrism, cultural values, and acculturation to the global consumer culture: A retail perspective\. #emph[Journal of Market\-] #emph[ing Management], #emph[29]\(3\-4\), 271–291\. https:\/\/doi\.org\/10\.1080\/0267257X\.2013\.766629

Chen, Y\. F\., & Wang, R\. Y\. \(2016\)\. Are humans rational? Exploring factors influencing impulse buying intention and continuous impulse buying intention\. #emph[Journal of Consumer Behaviour], #emph[15]\(2\), 186–197\. https:\/\/doi\.org\/10\.1002\/cb\.1563

Cleveland, M\., & Bartikowski, B\. \(2018\)\. Cultural and identity antecedents of market mavenism: Comparing Chinese at home and abroad\. #emph[Journal] #emph[of Business Research], #emph[82], 354–363\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2017\.09\.012

Cleveland, M\., & Laroche, M\. \(2007\)\. Acculturation to the global consumer culture: scale development and research paradigm\. #emph[Journal of Business] #emph[Research], #emph[60], 249–259\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2006\.11\.006

Cleveland, M\., Laroche, M\., & Hallab, R\. \(2013\)\. Globalization, culture, religion, and values: Comparing consumption patterns of Lebanese Muslims and Christians\. #emph[Journal of Business Research], #emph[66]\(8\), 958–967\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2011\.12\.018

Cleveland M\., Laroche M\., Papadopoulos N\. \(2016\) Global consumer culture and cocal identity as drivers of materialism: An international study of convergence and divergence\. In: Campbell C\., Ma J\. \(eds\) #emph[Looking] #emph[Forward, Looking Back: Drawing on the Past to Shape the Future of Mar\-] #emph[keting\. Developments in Marketing Science: Proceedings of the Academy] #emph[of Marketing Science]\. Springer, Cham

Cleveland, M\., Laroche, M\., & Takahashi, I\. \(2015\)\. The intersection of global consumer culture and national identity and the effect on Japanese consumer behavior\. #emph[Journal of International Consumer Marketing], #emph[27]\(5\), 364–387\. https:\/\/doi\.org\/10\.1080\/08961530\.2015\.1014281

Cleveland, M\., & Xu, C\. \(2019\)\. Multifaceted acculturation in multiethnic settings\. #emph[Journal of Business Research], #emph[103], 250–260\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.01\.051

Cova, B\. \(1997\)\. Community and consumption: Towards a definition of the “linking value” of product or services\. #emph[European Journal of Marketing], #emph[31]\(3\/4\), 297–316\.

Crawford, G\., & Melewar, T\. C\. \(2003\)\. The importance of impulse purchasing behaviour in the international airport environment\. #emph[Journal of Con\-] #emph[sumer Behaviour], #emph[3]\(1\), 85–98\. https:\/\/doi\.org\/10\.1002\/cb\.124

Dellande, S\., Gilly, M\. C\., & Graham, J\. L\. \(2016\)\. Managing consumer debt: Culture, compliance, and completion\. #emph[Journal of Business] #emph[Research], #emph[69]\(7\), 2594–2602\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2015\.10\.140

Durvasula, S\., & Lysonski, S\. \(2010\)\. Money, money, money–how do attitudes toward money impact vanity and materialism?–the case of young Chinese consumers\. #emph[Journal of Consumer Marketing], #emph[27]\(2\), 169–179\. https:\/\/doi\.org\/10\.1108\/07363761011027268

Durvasula, S\., & Lysonski, S\. \(2015\)\. Cross\-national applicability of a parsimonious measure of Acculturation to Global Consumer Culture\. #emph[Psy\-] #emph[chological Reports], #emph[116]\(3\), 738–750\. https:\/\/doi\.org\/10\.2466\/01\.08\.PR0\.116k29w6

Edwards, J\. R\., Caplan, R\. D\., & Harrison, R\. V\. \(1998\)\. Person\-environment fit theory: Conceptual foundations, empirical evidence, and directions for future research\. In C\. L\. Cooper \(Ed\.\), #emph[Theories of organizational] #emph[stress] \(pp\. 28–67\)\. Oxford: Oxford University Press\.

Elfenbein, H\. A\., & O\'Reilly, C\. A\. \(2007\)\. Fitting in: The effects of relational demography and person\-culture fit on group process and performance\. #emph[Group & Organization Management], #emph[32]\(1\), 109–142\. https:\/\/doi\.org\/10\.1177\/1059601106286882

Engelberg, E\., & Sjöberg, L\. \(2006\)\. Money attitudes and emotional intelligence\. #emph[Journal of Applied Social Psychology], #emph[36]\(8\), 2027–2047\. https:\/\/doi\.org\/10\.1111\/j\.0021\-9029\.2006\.00092\.x

Erasmus, A\. C\., & Lebani, K\. \(2008\)\. Store cards: is it a matter of convenience or is the facility used to sustain lavish consumption? #emph[Interna\-] #emph[tional Journal of Consumer Studies], #emph[32]\(3\), 211–221\. https:\/\/doi\.org\/10\.1111\/j\.1470\-6431\.2008\.00667\.x

Furnham, A\. \(1996\)\. Attitudinal correlates and demographic predictors of monetary beliefs and behaviors\. #emph[Journal of Organizational Behavior], #emph[17], 375–388\. https:\/\/doi\.org\/10\.1509\/jmkr\.47\.5\.945

Guo, X\. \(2013\)\. Living in a global world: Influence of consumer global orientation on attitudes toward global brands from developed versus emerging countries\. #emph[Journal of International Marketing], #emph[21]\(1\), 1–22\.

Gürhan\-Canli, Z\., Sarıal\-Abi, G\., & Hayran, C\. \(2018\)\. Consumers and brands across the globe: research synthesis and new directions\. #emph[Jour\-] #emph[nal of International Marketing], #emph[26]\(1\), 96–117\. https:\/\/doi\.org\/10\.1509\/jim\.17\.0063

Hall, A\. \(2018\)\. #emph[“Brits spend] £#emph[144,000 on \'impulse buys\'during lifetime,] #emph[research finds”], available from: https:\/\/www\.independent\.co\.uk\/news\/business\/news\/consumer\-spending\-impulse\-buys\-lifetime\-average\-sweets\-clothes\-takeaways\-coffee\-lunch\-a8159651\.html\. \(accessed on May 27, 2020\)\.

Hair Jr, J\. F\., William, C\., Babin, B\. J\., & Anderson, R\. E\. \(2018\)\. Multivariate Data Analysis, 8th ed, Cengage\. Hall, A\. \(2018\)\. Brits spend £144,000 on ‘impulse buys’ during lifetime, research finds\. Retrieved from https:\/\/www\.independent\.co\.uk\/news\/business\/news\/consumer\-spending\-impulse\-buys\-lifetime\-average\-sweets\-clothes\-takeaways\-coffee\-lunch\-a8159651\.html

Henry, J\. \(2020\)\. “Consumers carry the global economy,” Retrieved on April 14, 2020 from https:\/\/www\.hsbc\.com\/news\-and\-insight\/2020\/consumers\-carry\-the\-global\-economy

HM Revenue & Customs\. \(2016\)\. RDR3: Statutory Residence Test\. Retrieved from: https:\/\/www\.gov\.uk\/government\/publications\/rdr3\-statutory\-residence\-test\-srt

Home Office \(2018\)\. Summary of latest statistics\. Retrieved from: https:\/\/www\.gov\.uk\/government\/publications\/immigration\-statistics\-year\-ending\-september\-2018\/summary\-of\-latest\-statistics

Iyer, G\. R\., Blut, M\., Xiao, S\. H\., & Grewal, D\. \(2019\)\. Impulse buying: a meta\-analytic review\. #emph[Journal of the Academy of Marketing Science], #emph[48], 1–21\.

Jamal, A\., & Chapman, M\. \(2000\)\. Acculturation and inter\-ethnic consumer perceptions: Can you feel what we feel? #emph[Journal of Marketing Manage\-] #emph[ment], #emph[16]\(4\), 365–391\. https:\/\/doi\.org\/10\.1362\/026725700784772853

Kacen, J\. J\., & Lee, J\. A\. \(2002\)\. The influence of culture on consumer impulsive buying behaviour\. #emph[Journal of Consumer Psychology], #emph[12]\(2\), 163–176\. https:\/\/doi\.org\/10\.1207\/S15327663JCP1202\_08

Kamins, M\. A\., & Gupta, K\. \(1994\)\. Congruence between spokesperson and product type: A matchup hypothesis perspective\. #emph[Psychology &] #emph[Marketing], #emph[11]\(6\), 569–586\. https:\/\/doi\.org\/10\.1002\/mar\.4220110605

Khan, A\., Lindridge, A\., & Pusaksrikit, T\. \(2018\)\. Why some South Asian Muslims celebrate Christmas: Introducing ‘acculturation trade\-offs\.’\. #emph[Journal of Business Research], #emph[82], 290–299\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2017\.07\.023

Khare, A\. \(2013\)\. Credit card use and compulsive buying behavior\. #emph[Journal] #emph[of Global Marketing], #emph[26]\(1\), 28–40\. https:\/\/doi\.org\/10\.1080\/08911762\.2013\.779406

Khare, A\. \(2014\)\. Money attitudes, materialism, and compulsiveness: Scale development and validation\. #emph[Journal of Global Marketing], #emph[27]\(1\), 30–45\. https:\/\/doi\.org\/10\.1080\/08911762\.2013\.850140

Kline, R\. \(2011\)\. Convergence of structural equation modeling and multilevel modeling\. In M\. Williams & W\. P\. Vogt \(Eds\.\), #emph[The SAGE handbook] #emph[of innovation in social research methods] \(pp\. 562–589\)\. London, England: SAGE Publications Ltd\. https:\/\/doi\.org\/10\.4135\/9781446268261

KOF\. \(2017\)\. 2017 KOF Index of globalization\. Retrieved from http:\/\/globalization\.kof\.ethz\.ch\/media\/filer\_public\/2017\/04\/19\/rankings\_2017\.pdf

Kristof, A\. \(1996\)\. Person\-organization fit: An integrative review of its conceptualizations,measurement, and implications\. #emph[Personnel Psy\-] #emph[chology], #emph[49], 1–49\. https:\/\/doi\.org\/10\.1111\/j\.1744\-6570\.1996\.tb01790\.x

Kristof\-Brown, A\., & Guay, R\. P\. \(2011\)\. Person–environment fit\. In #emph[APA] #emph[handbook of industrial and organizational psychology: Maintaining,] #emph[expanding, and contracting the organization] \(Vol\. 3, pp\. 3–50\)\. Washington, DC: American Psychological Association\.

Laroche, M\., & Teng, L\. \(2019\)\. Understanding the global consumer culture: Views from eastern and western scholars, an introduction to the special issue\. #emph[Journal of Business Research], #emph[103]\(C\), 219–221\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.01\.048

Lee, J\., & Kwon, K\. \(2002\)\. Consumers\' use of credit cards: store credit card usage as an alternative payment and financing medium\. #emph[Journal of] #emph[Consumer Affairs], #emph[36], 239–262\. https:\/\/doi\.org\/10\.1111\/j\.1745\-6606\.2002\.tb00432\.x

Lerman, D\., & Maxwell, S\. \(2006\)\. Joining a consumer society: Russian immigrant versus American materialism\. #emph[Journal of Consumer Behaviour], #emph[5], 479–490\. https:\/\/doi\.org\/10\.1002\/cb\.197

Liao, S\. L\., Shen, Y\. C\., & Chu, C\. H\. \(2009\)\. The effects of sales promotion strategy, product appeal and consumer traits on reminder impulse buying behaviour\. #emph[International Journal of Consumer Studies], #emph[33]\(3\), 274–284\. https:\/\/doi\.org\/10\.1111\/j\.1470\-6431\.2009\.00770\.x

Lobo, A\., & Greenland, S\. \(2017\)\. The influence of cultural values on green purchase behaviour\. #emph[Marketing Intelligence & Planning\.], #emph[35]\(3\), 377–396\. https:\/\/doi\.org\/10\.1108\/MIP\-08\-2016\-0131

Luedicke, M\. K\. \(2011\)\. Consumer acculturation theory: \(crossing\) conceptual boundaries\. #emph[Consumption Markets & Culture], #emph[14]\(3\), 223–244\. https:\/\/doi\.org\/10\.1080\/10253866\.2011\.574824

Luna\-Arocas, R\., & Tang, T\. L\. P\. \(2004\)\. The love of money, satisfaction, and the protestant work ethic: Money profiles among univesity professors in the USA and Spain\. #emph[Journal of Business Ethics], #emph[50]\(4\), 329–354\. https:\/\/doi\.org\/10\.1023\/B:BUSI\.0000025081\.51622\.2f

Lysonski, S\., & Durvasula, S\. \(2013\)\. Nigeria in transition: acculturation to global consumer culture\. #emph[Journal of Consumer Marketing], #emph[30]\(6\), 493–508\. https:\/\/doi\.org\/10\.1108\/JCM\-07\-2013\-0626

Mintel Reports\. \(2018\)\. UK Online retailing market 2018\. Mintel\. Retrieved from https:\/\/store\.mintel\.com\/uk\-online\-retailing\-market\-report

Miocevic, D\., & Zdravkovic, S\. \(2020\)\. Acculturation of expatriate consumers: Conditional effects of mental attachments to home country\. #emph[Journal of Global Marketing], 1–14\. https:\/\/doi\.org\/10\.1080\/08911762\.2019\.1710642

Miron, E\., Erez, M\., & Naveh, E\. \(2004\)\. Do personal characteristics and cultural values that promote innovation, quality, and efficiency compete or complement each other? #emph[Journal of Organizational Behavior], #emph[25] \(2\), 175–199\. https:\/\/doi\.org\/10\.1002\/job\.237

Morris, M\. W\., Chiu, C\. Y\., & Liu, Z\. \(2015\)\. Polycultural psychology\. #emph[Annual] #emph[Review of Psychology], #emph[66], 631–659\. https:\/\/doi\.org\/10\.1146\/annurevpsych\-010814\-015001

Nelson, M\. R\., & Shavitt, S\. \(2002\)\. Horizontal and vertical individualism and achievement values\. #emph[Journal of Cross\-Cultural Psychology], #emph[33]\(5\), 439–458\. https:\/\/doi\.org\/10\.1177\/0022022102033005001

Noels, K\. A\., & Clément, R\. \(2015\)\. Situational variations in ethnic identity across immigration generations: Implications for acculturative change and cross\-cultural adaptation\. #emph[International Journal of Psychology], #emph[50]\(6\), 451–462\. https:\/\/doi\.org\/10\.1002\/ijop\.12205

Okazaki, S\., Mueller, B\., & Taylor, C\. R\. \(2010\)\. Global Consumer Culture Positioning: testing perceptions of soft\-sell and hard\-sell advertising appeals between U\.S\. and Japanese consumers\. #emph[Journal of International] #emph[Marketing], #emph[18]\(2\), 20–34\. https:\/\/doi\.org\/10\.1509\/jimk\.18\.2\.20

ONS\. \(2018a\)\. Consumer trends, UK: October to December 2017, Retrieved from https:\/\/www\.ons\.gov\.uk\/economy\/nationalaccounts\/satelliteaccounts\/bulletins\/consumertrends\/octobertodecember2017

ONS\. \(2018b\)\. Internet users, UK: 2018\. Retrieved from https:\/\/www\.ons\.gov\.uk\/businessindustryandtrade\/itandinternetindustry\/bulletins\/internetusers\/2018

Ownbey, S\. F\., & Horridge, P\. E\. \(1997\)\. Acculturation levels and shopping orientations of Asian\-American consumers\. #emph[Psychology & Marketing], #emph[14] \(1\), 1–18\.

Oyserman, D\., Coon, H\. M\., & Kemmelmeier, M\. \(2002\)\. Rethinkingindividualism and collectivism: evaluation of theoretical assumptionsand meta\-analyses\. #emph[Psychological bulletin], #emph[128]\(1\), 3

Özsomer, A\. \(2012\)\. Adoption of global consumer culture: The road to global brands\. #emph[Handbook of research on international advertising], 42\-57\)\. Cheltenham, UK: \.Edward Elgar Publishing\. https:\/\/doi\.org\/10\.4337\/9781781001042\.00009\.

Özsomer, A\. \(2019\)\. Some recent influences on global consumer culture\. #emph[International Marketing Review], #emph[36]\(4\), 548–552\. https:\/\/doi\.org\/10\.1108\/IMR\-11\-2018\-0315

Parker, J\. A\., Souleles, N\. S\., Johnson, D\. S\., & McClelland, R\. \(2013\)\. Consumer spending and the economic stimulus payments of 2008\. #emph[American Economic] #emph[Review], #emph[103]\(6\), 2530–2553\. https:\/\/doi\.org\/10\.1257\/aer\.103\.6\.2530

Peñaloza, L\., & Barnhart, M\. \(2011\)\. Living US capitalism: The normalization of credit\/debt\. #emph[Journal of Consumer Research], #emph[38]\(4\), 743–762\. https:\/\/doi\.org\/10\.1086\/660116

Podoshen, J\. S\., & Andrzejewski, S\. A\. \(2012\)\. An examination of the relationships between materialism, conspicuous consumption, impulse buying, and brand loyalty\. #emph[Journal of Marketing Theory and Practice], #emph[20] \(3\), 319–333\. https:\/\/doi\.org\/10\.2753\/MTP1069\-6679200306

Podsakoff, P\. M\., MacKenzie, S\. B\., Lee, J\. Y\., & Podsakoff, N\. P\. \(2003\)\. Common method biases in behavioral research: A critical review of the literature and recommended remedies\. #emph[Journal of Applied Psychology], #emph[88]\(5\), 879\. https:\/\/doi\.org\/10\.1037\/0021\-9010\.88\.5\.879

Ramos, B\. M\. \(2005\)\. Acculturation and depression among Puerto Ricans in the mainland\. #emph[Social Work Research], #emph[29]\(2\), 95–105\. https:\/\/doi\.org\/10\.1093\/swr\/29\.2\.95

Richins, M\. L\. \(2011\)\. Materialism, transformation expectations, and spending: implications for credit use\. #emph[Journal of Public Policy & Marketing], #emph[30] \(2\), 141–156\. https:\/\/doi\.org\/10\.1509\/jppm\.30\.2\.141

Ridgway, N\., Kukar\-Kinney, M\., & Monroe, K\. B\. \(2008\)\. An axpanded conceptualization and a new measure of compulsive buying\. #emph[Jour\-] #emph[nal of Consumer Research], #emph[35]\(4\), 622–639\. https:\/\/doi\.org\/10\.1086\/591108

Roberts, J\. A\., & Sepulveda, C\. J\. M\. \(1999\)\. Money attitudes and compulsive buying: an exploratory investigation of the emerging consumer culture in Mexico\. #emph[Journal of International Consumer Marketing], #emph[11]\(4\), 53–74\. https:\/\/doi\.org\/10\.1300\/J046v11n04\_04

Roy, R\., & Chau, R\. \(2011\)\. Consumer\-based brand equity and status\-seeking motivation for a global versus local brand\. #emph[Asia Pacific Journal] #emph[of Marketing and Logistics], #emph[23]\(3\), 270–284\. https:\/\/doi\.org\/10\.1108\/13555851111143213

Ryoo, W\. \(2009\)\. Globalization, or the logic of cultural hybridization: The case of the Korean wave\. #emph[Asian Journal of Communication], #emph[19]\(2\), 137–151\. https:\/\/doi\.org\/10\.1080\/01292980902826427

Santos, H\. C\., Varnum, M\. E\. W\., & Grossmann, I\. \(2017\)\. Global increases in individualism\. #emph[Psychological Science], #emph[28]\(9\), 1228–1239\. https:\/\/doi\.org\/10\.1177\/0956797617700622

Schor, J\. \(2004\)\. #emph[Born to buy: the commercialized child and the new consumer] #emph[culture]\. New York, NY: Scribner\.

Schwartz, S\. H\. \(2012\)\. An overview of the Schwartz theory of basic values\. #emph[Online Readings in Psychology and Culture], #emph[2]\(1\), 1–20\. https:\/\/doi\.org\/10\.9707\/2307\-0919\.1116

Shavitt, S\., & Cho, H\. \(2016\)\. Culture and consumer behavior: the role of horizontal and vertical cultural factors\. #emph[Current Opinion in Psychology], #emph[8], 149–154\. https:\/\/doi\.org\/10\.1016\/j\.copsyc\.2015\.11\.007

Shavitt, S\., Johnson, T\. P\., & Zhang, J\. \(2011\)\. Horizontal and vertical cultural differences in the content of advertising appeals\. #emph[Journal of Inter\-] #emph[national Consumer Marketing], #emph[23]\(3–4\), 297–310\.

Shavitt, S\., Torelli, C\. J\., & Riemer, H\. \(2011\)\. Horizontal and vertical individualism and collectivism: implications for understanding psychological processes\. In M\. J\. Gelfand, C\.\-y\. Chiu, & Y\.\-y\. Hong \(Eds\.\), #emph[Advances in Culture and Psychology] \(Vol\. 1, pp\. 309–350\)\. London, England: Oxford University Press\.

Shoham, A\., Gavish, Y\., & Segev, S\. \(2015\)\. A cross\-cultural analysis of impulsive and compulsive buying behaviors among Israeli and US consumers: The influence of personal traits and cultural values\. #emph[Journal of] #emph[International Consumer Marketing], #emph[27]\(3\), 187–206\. https:\/\/doi\.org\/10\.1080\/08961530\.2014\.1000507

Shoham, A\., Segev, S\., & Gavish, Y\. \(2017\)\. The effect of acculturation and ethnic identification on consumer disidentification and consumption: An investigation of US Hispanics\. #emph[Journal of Consumer Behaviour], #emph[16]\(5\), 403–412\. https:\/\/doi\.org\/10\.1002\/cb\.1640

Sivadas, E\., Bruvold, N\. T\., & Nelson, M\. R\. \(2008\)\. A reduced version of the horizontal and vertical individualism and collectivism scale: A four\-country assessment\. #emph[Journal of Business Research], #emph[61]\(3\), 201–210\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2007\.06\.016

Sobol, K\., Cleveland, M\., & Laroche, M\. \(2018\)\. Globalization, national identity, biculturalism and consumer behavior: A longitudinal study of Dutch consumers\. #emph[Journal of Business Research], #emph[82], 340–353\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2016\.02\.044

Spiteri Cornish, L\. \(2020\)\. Why did I buy this? Consumers\' post\-impulse\-consumption experience and its impact on the propensity for future impulse buying behaviour\. #emph[Journal of Consumer Behaviour], #emph[19]\(1\), 36–46\. https:\/\/doi\.org\/10\.1002\/cb\.1792

Strizhakova, Y\., Coulter, R\. A\., & Price, L\. L\. \(2011\)\. Branding in a global marketplace: the mediating effects of quality and self\-identity brand signals\. #emph[International Journal of Research in Marketing], #emph[28]\(4\), 342–351\. https:\/\/doi\.org\/10\.1016\/j\.ijresmar\.2011\.05\.007

Tang, T\. L\., Tang, D\. S\., & Luna\-Arocas, R\. \(2005\)\. Money profiles: the love of money, attitudes, and needs\. #emph[Personnel Review], #emph[34]\(5\), 603–618\. https:\/\/doi\.org\/10\.1108\/00483480510612549

Tatzel, M\. \(2002\)\. “Money worlds” and well\-being: An integration of money dispositions, materialism and price\-related behavior\. #emph[Journal of] #emph[Economic Psychology], #emph[23]\(1\), 103–126\. https:\/\/doi\.org\/10\.1016\/S0167\-4870\(01\)00069\-1

Till, B\. D\., & Busler, M\. \(2000\)\. The match\-up hypothesis: physical attractiveness, expertise, and the role of fit on brand attitude, purchase intent and brand beliefs\. #emph[Journal of Advertising], #emph[29]\(3\), 1–13\. https:\/\/doi\.org\/10\.1080\/00913367\.2000\.10673613

Torelli, C\. J\., & Rodas, M\. A\. \(2017\)\. Tightness–looseness: Implications for consumer and branding research\. #emph[Journal of Consumer Psychology], #emph[27] \(3\), 398–404\. https:\/\/doi\.org\/10\.1016\/j\.jcps\.2017\.04\.003

Torelli, C\. J\., & Shavitt, S\. \(2010\)\. Culture and concepts of power\. #emph[Journal of] #emph[Personality and Social Psychology], #emph[99]\(4\), 703–723\. https:\/\/doi\.org\/10\.1037\/a0019973

Triandis, H\. C\., & Gelfand, M\. J\. \(1998\)\. Converging measurement of horizontal and vertical individualism and collectivism\. #emph[Journal of Personality] #emph[and Social Psychology], #emph[74]\(1\), 118–128\. https:\/\/doi\.org\/10\.1037\/0022\-3514\.74\.1\.118

Unger, A\., & Raab, G\. \(2015\)\. The dark side of globalization and consumption: How similar are Chinese and German consumers toward their proneness to compulsive buying? #emph[Journal of Asia\-Pacific Business], #emph[16]\(1\), 4–20\. https:\/\/doi\.org\/10\.1080\/10599231\.2015\.997624

Valenzuela, M\. A\., & Rogers, S\. E\. \(2018\)\. Strategizing personality traits: an acculturation approach to person–environment fit and expatriate adjustment\. #emph[The International Journal of Human Resource Management], 1–29\. https:\/\/doi\.org\/10\.1080\/09585192\.2018\.1526201

Van Oudenhoven, J\. P\., & Ward, C\. \(2013\)\. Fading majority cultures: The implications of transnationalism and demographic changes for immigrant acculturation\. #emph[Journal of Community & Applied Social Psychology], #emph[23]\(2\), 81–97\. https:\/\/doi\.org\/10\.1002\/casp\.2132

Van Vianen, A\. E\. \(2018\)\. Person–environment fit: A review of its basic tenets\. #emph[Annual Review of Organizational Psychology and Organizational] #emph[Behavior], #emph[5], 75–101\. https:\/\/doi\.org\/10\.1146\/annurev\-orgpsych\-032117\-104702

Wallace, E\., Buil, I\., & de Chernatony, L\. \(2017\)\. Consumers\' self\-congruence with a “liked” brand: Cognitive network influence and brand outcomes\. #emph[European Journal of Marketing], #emph[51]\(2\), 367–390\. https:\/\/doi\.org\/10\.1108\/EJM\-07\-2015\-0442

Wang, J\., & Xiao, J\. J\. \(2009\)\. Buying behavior, social support and credit card indebtedness of college students\. #emph[International Journal of Con\-] #emph[sumer Studies], #emph[33]\(1\), 2–10\.

Ward, C\., Leong, C\. H\., & Low, M\. \(2004\)\. Personality and sojourner adjustment: An exploration of the Big Five and the cultural fit proposition\. #emph[Journal of Cross\-Cultural Psychology], #emph[35]\(2\), 137–151\. https:\/\/doi\.org\/10\.1177\/0022022103260719

Wearn, R\. \(2020\)\. #emph[The rapid rise of \'Buy now, pay later\. Available from:] #emph[https:\/\/www\.bbc\.co\.uk\/news\/business\-51195759], \(accessed May 27, 2020\)\.

Westjohn, S\. A\., Arnold, M\. J\., Magnusson, P\., & Reynolds, K\. \(2016\)\. The influence of regulatory focus on global consumption orientation and preference for global versus local consumer culture positioning\. #emph[Jour\-] #emph[nal of International Marketing], #emph[24]\(2\), 22–39\. https:\/\/doi\.org\/10\.1509\/jim\.15\.0006

Westjohn, S\. A\., Singh, N\., & Magnusson, P\. \(2012\)\. Responsiveness to global and local consumer culture positioning: a personality and collective identity perspective\. #emph[Journal of International Marketing], #emph[20]\(1\), 58–73\. https:\/\/doi\.org\/10\.1509\/jim\.10\.0154

Wherry, F\. \(2011\)\. Money\. In D\. Southerton \(Ed\.\), #emph[Encyclopedia of consumer] #emph[culture] \(Vol\. 1, pp\. 991–996\)\. Thousand Oaks, CA: SAGE Publications, Inc\. https:\/\/doi\.org\/10\.4135\/9781412994248\.n367

Wilk, R\. \(2017\)\. Without consumer culture, there is no environmental crisis\. In #emph[PERN Cyberseminar on Culture, Beliefs and the Environment]\. Indiana, IN: Indiana University\.

Williams Bradford, T\. \(2015\)\. Beyond fungible: transforming money into moral and social resources\. #emph[Journal of Marketing], #emph[79]\(2\), 79–97\. https:\/\/doi\.org\/10\.1509\/jm\.13\.0437

Wood, M\. \(2005\)\. Discretionary unplanned buying in consumer society\. #emph[Journal of Consumer Behaviour], #emph[4]\(4\), 268–281\. https:\/\/doi\.org\/10\.1002\/cb\.14

Woodside, A\. G\. \(2011\)\. Responding to the severe limitations of cross\-sectional surveys: Commenting on Rong and Wilkinson\'s perspectives\. #emph[Australasian Marketing Journal], #emph[19]\(3\), 153–156\.

Yu, C\., & Bastin, M\. \(2010\)\. Hedonic shopping value and impulse buying behavior in transitional economies: A symbiosis in the Mainland China marketplace\. #emph[Journal of Brand Management], #emph[18]\(2\), 105–114\. https:\/\/doi\.org\/10\.1057\/978\-1\-352\-00011\-5\_14

Zajonc, R\. B\. \(1960\)\. The concepts of balance, congruity, and dissonance\. #emph[Public Opinion Quarterly], #emph[24]\(2\), 280–296\. https:\/\/doi\.org\/10\.1086\/266949

Zhang, J\., Mandl, H\., & Wang, E\. \(2011\)\. The effect of vertical–horizontal individualism–collectivism on acculturation and the moderating role of gender\. #emph[International Journal of Intercultural Relations], #emph[35]\(1\), 124–134\. https:\/\/doi\.org\/10\.1016\/j\.ijintrel\.2010\.09\.004

Zhang, J\., & Nelson, M\. R\. \(2016\)\. The effects of vertical individualism on status consumer orientations and behaviors\. #emph[Psychology & Marketing], #emph[33]\(5\), 318–330\. https:\/\/doi\.org\/10\.1002\/mar\.20877

Zhang, Y\., Winterich, K\. P\., & Mittal, V\. \(2010\)\. Power distance belief and impulsive buying\. #emph[Journal of Marketing Research], #emph[47]\(5\), 945–954\. https:\/\/doi\.org\/10\.1509\/jmkr\.47\.5\.945

= About the authors
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[#text(size: 10pt)[Barbara Czarnecka is Associate Professor in Marketing at London South Bank University, UK\. Dr\. Czarnecka\'s interests focus on culture and consumer behavior, cultural values, and behavior change communication\. Her work can be found in journals such as Journal of Advertising Research, Journal of Promotion Management, and Journal of Global Marketing\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Bruno Schivinski is Senior Lecturer in Advertising at RMIT University, Australia\. Dr\. Schivinski\'s research interests include consumer behavior and brand management and online marketing, particularly the understanding of the effects of social media brand\-related communication on consumer\'s perceptions of brands\. His work can be found in the Journal of Advertising Research, the Journal of Research of Interactive Marketing, and the Journal of Marketing Communications\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Serap Keles is Associate Professor of Psychology at the University of Stavanger, Norway\. Dr\. Keles researches how cultural values relate to a range of behaviors and attitudes\. Her work appeared in such outlets as International Journal of Human Resource Management, Journal of World Business, and Journal of Global Marketing\.]]

#pagebreak()
= Appendix
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A1.] Descriptive statistics for the constructs and measurements]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Constructs and measurements]], [#strong[Loading]], [#strong[Mean]], [#strong[SD]], [#strong[Skew\.]], [#strong[Kurt\.]]),
table.hline(stroke: 0.5pt),
[#emph[Vertical individualism \(Sivadas, Bruvold, & Nelson, 2008\)]], [], [], [], [], [],
[I enjoy working in situations involving competition with others\.], [0\.69], [5\.67], [2\.14], [−0\.21], [−0\.66],
[Competition is the law of nature\.], [0\.70], [6\.22], [2\.03], [−0\.55], [−0\.12],
[Without competition, it is not possible to have a good society\.], [0\.73], [5\.95], [2\.31], [−0\.48], [−0\.58],
[#emph[Vertical collectivism]], [], [], [], [], [],
[I would do what would please my family, even if I detested that activity\.], [0\.78], [5\.39], [2\.35], [−0\.29], [−0\.93],
[I usually sacrifice my self\-interest for the benefit of my group\.], [0\.83], [5\.69], [2\.26], [−0\.35], [−0\.73],
[Children should feel honored if their parents receive a distinguished award\.], [0\.60], [7\.27], [1\.99], [−1\.19], [0\.78],
[I would sacrifice an activity that I enjoy very much If my family did not approve of it\.], [0\.71], [5\.50], [2\.52], [−0\.26], [−1\.06],
[#emph[Horizontal individualism]], [], [], [], [], [],
[I enjoy being unique and different from others in many ways\.], [0\.91], [6\.69], [2\.23], [−1\.04], [0\.37],
[I often “do my own thing\.”], [0\.61], [6\.68], [1\.81], [−0\.64], [0\.22],
[I am a unique individual\.], [0\.60], [7\.17], [1\.65], [−0\.74], [0\.20],
[#emph[Horizontal collectivism]], [], [], [], [], [],
[My happiness depends very much on the happiness of those around me\.], [0\.60], [6\.02], [2\.38], [−0\.60], [−0\.53],
[The well\-being of my co\-workers is important to me\.], [0\.89], [6\.49], [2\.10], [−0\.88], [0\.26],
[If a co\-worker gets a prize, I would feel proud\.], [0\.82], [6\.47], [2\.09], [−0\.81], [0\.11],
[I feel good when I cooperate with others\.], [0\.60], [6\.56], [1\.88], [−0\.70], [0\.33],
[#emph[AGCC – Self\-identification with global consumer culture \(Durvasula & Lysonski, 2015\)]], [], [], [], [], [],
[The way that I dress is influenced by the advertising activities of foreign or global companies\.], [0\.82], [3\.01], [1\.99], [0\.63], [−0\.93],
[Advertising by foreign or global brands has a strong influence on my clothing choices\.], [0\.88], [3\.05], [1\.96], [0\.59], [−0\.95],
[I pay attention to the fashions worn by people in my age group that live in other countries\.], [0\.60], [3\.04], [1\.96], [0\.59], [−0\.94],
[#emph[AGCC – Global mass media exposure]], [], [], [], [], [],
[I enjoy watching Hollywood films at the theatre\.], [0\.78], [4\.69], [2\.22], [−0\.62], [−1\.15],
[I enjoy watching Hollywood movies that are in English\.], [0\.85], [5\.10], [2\.20], [−0\.98], [−0\.61],
[Some of my favorite actors\/actresses are from Hollywood\.], [0\.70], [4\.68], [2\.29], [−0\.60], [−1\.23],
[#emph[AGCC – Exposure to marketing activities]], [], [], [], [], [],
[In my city, there are many billboards, and advertising signs for foreign and global products\.], [0\.68], [4\.00], [2\.27], [−0\.14], [−1\.55],
[It is quite common to see ads for foreign or global products in local media\.], [0\.75], [4\.42], [2\.27], [−0\.43], [−1\.40],
[When I read a newspaper, I come across many advertisements for foreign or global products\.], [0\.69], [4\.03], [2\.23], [−0\.12], [−1\.55],
[#emph[AGCC – English language usage and exposure]], [], [], [], [], [],
[I feel very comfortable speaking in English\.], [0\.80], [6\.03], [1\.78], [−2\.12], [2\.14],
[I often speak English with family or friends\.], [0\.68], [5\.35], [2\.22], [−1\.12], [−0\.39],
[I speak English regularly\.], [0\.82], [6\.04], [1\.78], [−2\.10], [3\.07],
[#emph[AGCC – Openness to and desire to emulate GCC]], [], [], [], [], [],
[I think people my age are basically the same around the world\. For example, a 20\-something in Nigeria is basically the same as a 20\-something in the U\.S\., Germany, or anywhere else\.], [0\.76], [2\.88], [1\.91], [0\.76], [−0\.68],
[I think that my lifestyle is almost the same as those of my age group in other countries\.], [0\.88], [2\.97], [1\.90], [0\.67], [−0\.79],
[I think my lifestyle is almost the same as those of people of my social class in other countries\.], [0\.82], [3\.08], [2\.02], [0\.52], [−1\.12],
[#emph[AGCC – Social interactions]], [], [], [], [], [],
[I prefer spending my vacations outside of the country that I live in \(reverse\)\.], [0\.63], [5\.55], [1\.57], [−1\.24], [1\.00],
[Visiting foreign countries is one of my favorite things\.], [0\.80], [5\.22], [2\.03], [−1\.03], [−0\.29],
[I often think about going to different countries and doing some traveling\.], [0\.82], [5\.42], [1\.97], [−1\.30], [0\.40],
[#emph[AGCC – Cosmopolitanism]], [], [], [], [], [],
[I am interested in learning more about people who live in other countries\.], [0\.86], [5\.85], [1\.21], [−1\.42], [2\.50],
[I like to learn about other ways of life\.], [0\.89], [5\.99], [1\.11], [−1\.76], [2\.38],
[I enjoy being with people from other countries to learn about their views and approaches\.], [0\.87], [5\.97], [1\.16], [−1\.57], [2\.29],
[#emph[Impulsive buying \(Ridgway et al\., 2008\)]], [], [], [], [], [],
[I consider myself an impulse purchaser\.], [0\.79], [3\.18], [2\.03], [0\.43], [−1\.13],
[I buy things I do not need\.], [0\.85], [3\.19], [1\.85], [0\.54], [−0\.87],
[I buy things I did not plan to buy\.], [0\.83], [3\.74], [1\.85], [0\.13], [−1\.08],
[#emph[Money budgeting \(Luna\-Arocas & Tang, 2004\)]], [], [], [], [], [],
[I budget my money very well\.], [0\.88], [3\.65], [1\.05], [−0\.41], [−0\.48],
[I use my money very carefully\.], [0\.86], [3\.66], [1\.04], [−0\.48], [−0\.41],
[I pay my bills immediately to avoid interest or penalties\.], [0\.61], [4\.28], [0\.87], [−1\.31], [1\.65],
[I do financial planning for the future\.], [0\.76], [3\.69], [1\.08], [−0\.52], [−0\.51],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Loading \= standardized factor loading\; Skew\. \= skewness\; Kurt\. \= kurtosis\.]
]
#v(12pt)

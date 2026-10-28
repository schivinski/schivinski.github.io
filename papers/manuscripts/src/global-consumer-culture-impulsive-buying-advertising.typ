#set document(title: "Do consumers acculturated to global consumer culture buy more impulsively? The moderating role of attitudes towards and beliefs about advertising", author: ("Barbara Czarnecka", "Bruno Schivinski"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Czarnecka and Schivinski \(2019\), accepted manuscript #h(1fr) Journal of Global Marketing] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Do consumers acculturated to global consumer culture buy more impulsively? The moderating role of attitudes towards and beliefs about advertising]]
#v(0.8em)
#text(size: 12pt)[Barbara Czarnecka, Bruno Schivinski]
#v(0.2em)
#text(size: 10pt, style: "italic")[London South Bank University\; University of London \(affiliations at the time of publication\)]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Czarnecka, B\., & Schivinski, B\. (2019). Do consumers acculturated to global consumer culture buy more impulsively? The moderating role of attitudes towards and beliefs about advertising. #emph[Journal of Global Marketing, 32]\(4\), 219–238. #link("https://doi.org/10.1080/08911762.2019.1600094")[https:\/\/doi.org\/10\.1080\/08911762\.2019\.1600094]
  #v(0.9em)
  This is an Accepted Manuscript of an article published by Taylor & Francis in Journal of Global Marketing on 17 June 2019, available online: #link("https://doi.org/10.1080/08911762.2019.1600094")[https:\/\/doi.org\/10\.1080\/08911762\.2019\.1600094]
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors\; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/global-consumer-culture-impulsive-buying-advertising.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Do Consumers Acculturated to Global Consumer Culture Buy More Impulsively? The Moderating Role of Attitudes towards and Beliefs about Advertising]]
#v(0.6em)
#par(first-line-indent: 0em)[Barbara Czarnecka#super[a]\* and Bruno Schivinski#super[b]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[a]School of Business, London South Bank University, London, UK\; #super[b]Department of Management, University of London, London, UK]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Barbara Czarnecka, School of Business, London South Bank University, 103 Borough Rd, London SE1 0AA, UK]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() This research advances knowledge that can foster understanding of how global consumer culture \(GCC\) and its elements relate to impulsive buying and sheds light on how advertising attitudes and beliefs interact with this main relationship\. Specifically, this study examines the moderating effects of attitudes towards and beliefs about advertising on the relations between consumers’ level of acculturation to global consumer culture \(AGCC\) and impulsive buying\. Consumers who are the most acculturated to GCC, and who have positive attitudes towards and beliefs about advertising, buy the most impulsively\. AGCC is related to increased impulsive buying, even when attitudes towards and beliefs about advertising are negative\. The article contributes to the development of a theoretical explanation of these understudied relations by employing acculturation theory and congruity theory\. Social and practical implications are discussed\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] AGCC\; impulsive buying\; attitudes towards advertising\; beliefs about advertising]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Globalization processes have created numerous opportunities for consumers to buy impulsively \(Unger & Raab, 2015\)\. Global trade and the spread of technology enable consumers to purchase products and services in traditional stores and via the Internet, mobile phones, TV, or catalogs\. Consumers buy goods and services to satisfy their needs, but many of these purchases are unplanned and carried out on impulse\. Impulsive buying constitutes a large part of consumer spending in the UK and other developed economies\. An average consumer in the UK could save around four times the average yearly salary if impulse purchases were eliminated \(Hall, 2018\), money that could be invested elsewhere \(NEST, 2013\)\. Impulsive buying may provide joy and pleasure, but may also lead to a number of negative outcomes for the individual \(Baun & Groeppel\-Klein, 2003\; Silvera, Lavack, & Kropp, 2008\), and is considered an unsustainable consumption behavior that is influenced by a range of individual, social, and situational factors \(Kacen & Lee, 2002\)\.]

A consumer culture in which brands use aggressive marketing techniques to stimulate buying is a social factor partly responsible for encouraging impulsive buying \(Stoeckl & Luedicke, 2015\), a consumer behavior that is on the rise in both developed and developing economies \(Horváth & Adıgüzel, 2017\)\. With growing concerns about whether a global culture of consumerism and constant growth is environmentally and socially sustainable \(Dholakia, Jung, & Chowdhry, 2018\; United Nations, 2017\), more knowledge about the precedents of impulse buying is required in order to facilitate change\.

Impulsive buying is motivated and stimulated by a range of external and internal factors, including advertising \(Agee & Martin, 2001\; McAllister & Mazzarella, 2000\; Pereira Heath & Chatzidakis, 2012\)\. Advertising is an important tool of consumer socialization and is pervasive in consumer cultures\. Advertising and advertising attitudes are conceptually and empirically important elements of a consumer culture \(Lury, 2011\)\. Advertisers measure consumers’ attitudes towards and beliefs about advertising as indicators of advertising effectiveness, and academic researchers focus on those when testing consumers’ responses to creative strategies \(Mehta, 2000\)\.

As the processes and elements of globalization may be partly responsible for an increase in consumerism and behaviors such as impulsive buying, researchers emphasize the need for research on the effects of important aspects of the forces of globalization on consumers’ behavior \(Cleveland, Rojas\-Mendez, Laroche, & Papadopoulos, 2016\)\. In an attempt to address this, scholars have proposed a new theory to postulate the relations between globalization and consumers’ response to it \( Alden, Steenkamp, & Batra, 1999\; Merz, He, & Alden, 2008\)\. Global consumer culture theory \(GCCT\) posits that the evolving globalization of markets has led to the emergence of a global consumer culture \(GCC\) in which consumers are exposed to and influenced by global cultural flows, such as a variety of foreign and local brands, media, technology, and the significance of consumption in constructing meaningful lives \(Cleveland et al\., 2016\; Steenkamp, 2019\)\.

Originating from GCCT is the concept of acculturation to global consumer culture \(AGCC\), which focuses on how consumers respond to the global market forces \(Cleveland & Laroche, 2007\)\. Scholars have called for more research incorporating GCCT’s concepts, such as AGCC, to help explain consumer behavior phenomena more accurately than, for example, the over\-researched concept of national cultures \(Czarnecka, Brennan, & Keles, 2018\; Khang, Han, Shin, Jung, & Kim, 2016\)\.

This study extends the literature on the concept of AGCC by examining previously unexplored questions of relations between fundamental elements of GCC and consumer behavior\. It attempts to explain whether the consumer’s level of AGCC relates to impulsive buying behavior and attitudes towards advertising in general\. Theoretically, it attempts to test the assumptions of acculturation theory and congruity theory by proposing a conceptual model to investigate the influence of AGCC on impulsive buying and on attitudes towards advertising in general\. To extend the knowledge on these primary relationships, the conceptual model was submitted to a series of moderation analyses, including—as moderators—the consumers’ attitudes towards advertising in general, and their beliefs about advertising\.

In summary, the study will answer two questions: \(a\) Do consumers who are more acculturated to GCC buy more impulsively and have more positive attitudes towards advertising? and \(b\) Do attitudes towards and beliefs about advertising strengthen\/weaken the influence of AGCC on impulsive buying?

Theoretically, this study provides meaningful theoretical explanations of relations between AGCC and important elements of GCC previously not examined in the literature\. Managers will benefit from this study by finding out how advertising attitudes and beliefs relate to the relations between AGCC and impulse buying\. Global advertisers can use such knowledge to appropriately segment and target consumers, and responsible marketers and retailers to adjust their practices to encourage more mindful purchase behavior\.

= Theoretical background
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Acculturation to a global consumer culture
#par(first-line-indent: 0em)[The concept of GCC reflects the global diffusion of consumption signs and behaviors \(e\.g\., well\-known global brands, or products such as mobile phones\), predominantly from Western developed countries \(Alden et al\., 1999\)\. GCC consists of consumption\-related symbols, values, and behaviors that are perceived by individuals and businesses around the world as global \(Akaka & Alden, 2010\)\. GCC is further characterized by the need to conform, the attraction of material possessions, and consumerism \(Arnould, 2011\)\.]

Consumers have a myriad of interactions with GCC \(Czarnecka & Keles, 2014\)\. Some consumers are attracted to and identify with the various elements of GCC \(Cleveland, 2018\)\; others dislike the perceived homogenization of meanings and symbols \(Arnett, 2002\; Steenkamp & De Jong, 2010\)\. This process is known as consumer acculturation, in which consumer behavior becomes more or less similar to the behavior of the members of the dominant culture \(Berry, 2005\)\.

Researchers have been studying how consumers respond to the cultural influences of globalization by conceptualizing and measuring AGCC, a process in which individual consumers gain the knowledge, skills, and behaviors that represent the developing and de\-territorialized GCC\. The seven distinct dimensions of AGCC \(Cleveland & Laroche, 2007\) include: \(a\) Cosmopolitanism: willingness to engage with other cultures, and a level of competence towards alien cultures\; \(b\) exposure to marketing activities of multinational or global corporations\; \(c\) English language usage and exposure\; \(d\) social interactions, including travel, migration, and contacts with foreigners\; \(e\) global\/foreign mass media exposure: a consumer’s individual experience with foreign and global mass media\; \(f\) openness to and desire to emulate GCC: an individual’s interest in seeking foreign products for their symbolism or other personal reasons\; \(g\) self\-identification with GCC: an individual’s identification with GCC in terms of how they dress, what they read, and how they interact with global brands\.

Extant studies have focused on examining the relationships between AGCC and other consumption\-related dispositions \(Cleveland, 2018\; Cleveland, Laroche, & Hallab, 2013\; Cleveland, Laroche, & Papadopoulos, 2015\; Cleveland, Laroche, & Takahashi, 2015\; Cleveland et al\., 2016\; Sobol, Cleveland, & Laroche, 2018\; Taylor & Okazaki, 2015\; Westjohn, Arnold, Magnusson, & Reynolds, 2016\), but no studies have focused on the economically and socially important element of GCC\; namely, impulsive buying\. Scholars have called for more research investigating how AGCC relates to consumer behavior \(Bartsch, Diamantopoulos, Paparoidamis, & Chumpitaz, 2016\; Cleveland, 2018\), and this article is an attempt to fill this gap\.

== Impulsive buying
#par(first-line-indent: 0em)[Impulsive buying accounts for a substantial volume of goods sold every year across a broad range of product categories \(NEST, 2013\; Sharma, Sivakumaran, & Marshall, 2010\)\. Impulsive buying is defined as an unintended, unplanned, and compelling purchasing behavior in which the rapidity of the purchase decision process precludes thoughtful consideration of all information and choice alternatives \(Holbrook, 1987\)\.]

Western economies provide incessant opportunities for impulsive buying, such as online shopping, mobile commerce, or TV shopping, which allow consumers to respond immediately to the stimuli, such as advertising, and buy instantly \(Mintel Reports, 2015\)\. Recent proposals emphasize the increasing endorsement of GCC: Western materialistic values, the spread of consumerism, and the emphasis on material possessions as indicators of social standing are factors contributing to impulsive buying \(Atulkar & Kesari, 2018\; Dittmar, 2005, Podoshen & Andrzejewski, 2012\; Unger & Raab, 2015\; Yu & Bastin, 2010\)\.

The focus of the vast amount of research on impulsive buying was mostly on revealing psychological antecedents \(Thompson & Prendergast, 2015\), socio\-demographic correlates \(Wood, 1998\), and outcomes of impulsive buying \(Yi & Baumgartner, 2011\)\. Only a few studies have examined the influence of marketing\-related factors and consumers’ acculturation on impulsive buying \(Jones, Reynolds, Weun, & Beatty, 2003\; Kwak, Zinkhan & DeLorme, 2002\; Liao, Shen & Chu, 2009\)\. Yet, investigating the influence of such factors on impulsive buying can provide additional insights into this behavior and demonstrate if impulsive buying can also be related to consumers’ response to the environmental context\. The extent to which consumers accept and interact with the GCC, as measured by AGCC, may be an important factor in explaining impulsive buying\.

== Attitudes towards and beliefs about advertising
#par(first-line-indent: 0em)[Advertising, a communication tool to disseminate information about products and services that brands use to persuade consumers of benefits of owning the advertised product \(Brinol, Rucker, & Petty, 2015\), is an important component of GCC and the most visible part of the marketing mix \(Akaka & Alden, 2010\; Coulter, Zaltman, & Coulter, 2001\)\.]

From the consumers’ perspective, among the indicators of advertising effectiveness are attitudes towards and beliefs about advertising \(Mehta, 2000\; Tan & Chia, 2007\)\. The more positive the attitudes towards and beliefs about advertising, the more effective the advertising may be in terms of convincing consumers to act in a particular way \(Mehta, 2000\)\.

Attitude towards advertising in general is based on opinions that a consumer forms about advertising \(Tan & Chia, 2007\), and is described as a learned tendency to respond in a favorable or unfavorable manner to advertising in general\. It might influence the way a consumer responds to a specific advertisement \(Lutz, Mackenzie, & Belch, 1983\)\.

Beliefs about advertising are important predictors of advertising effectiveness \(Mehta, 2000\; Wang & Sun, 2010\)\. Following Tan and Chia’s \(2007\) well\-established model, which conceptually distinguished beliefs from attitudes, the six beliefs about advertising include: \(a\) advertising as a source of product information \(product information\)\; \(b\) advertising creating social image \(social image\)\; \(c\) advertising providing hedonic experiences \(hedonic\)\; \(d\) advertising being good for the economy \(good for economy\)\; \(e\) advertising’s role in misleading consumers \(falsity\/no sense\)\; and \(f\) advertising promoting materialism \(materialism\)\.

Product information belief describes a consumer’s beliefs about advertising as a source of information about advertised products, services, or ideas\. Social image belief describes a consumer’s conviction that advertising influences their lifestyle and formation of images of social status \(Wang & Sun, 2010\)\. Hedonic belief describes the idea that advertising can be entertaining, fun, and enjoyable\. Good for economy beliefs reflect a consumer’s views about the contribution that advertising makes to the economy, such as lowering the cost of goods, promoting healthy competition, or creating jobs\. Falsity\/no sense beliefs refer to advertising as a provider of untrue and misleading information\. Materialism beliefs relate to how a consumer views the role of advertising in encouraging materialistic behaviors \(Tan & Chia, 2007\)\.

Studies looking at attitudes toward and beliefs about advertising appear frequently in the literature, but they have not approached the context of GCC, despite the importance of advertising and, hence, advertising attitudes and beliefs to the spread of this cultural phenomenon\. Keeping in mind that these are theoretically related, the current authors tested the relations across AGCC, consumers’ attitudes towards advertising, beliefs about advertising, and impulsive buying behavior\.

== Hypothesis development
#block(above: 1em, below: 0.5em)[#text(size: 10.5pt)[AGCC and its effects on impulsive buying and on attitude towards advertising]]
#par(first-line-indent: 0em)[According to the arguments of GCCT, GCC is emerging, and consumers are influenced by and respond to the various aspects of GCC in various ways\. The way consumers learn and respond to new cultural forces is labeled consumer acculturation, and in the context of GCCT, this acculturation process has been conceptualized as AGCC \(Cleveland & Laroche, 2007\)\. According to acculturation theory, the extent of acculturation to a particular culture influences individuals’ behaviors towards aspects of the culture: high levels of acculturation should lead to adoption of some or all behaviors of a particular culture, depending on the acculturation strategy of an individual \(Berry, 2005\; Luedicke, 2011\; Penaloza, 1989\)\. Specifically, AGCC should be positively related to the adoption of consumption behaviors characteristic of GCC\. One of the outcomes of the spread of GCC is an extension of global consumerism \(Lysonski & Srinivas, 2015\)\; individuals around the globe exhibit a desire for consumer goods\. The spread of GCC may stimulate this desire in the form of impulsive buying, which is often communicated in promotional materials of global Western brands \(e\.g\., Nike’s advertising tagline “Just do it” \(Penaloza, 1998\)\.]

Materialism positively influences impulsive buying, and materialism was found to be positively related to AGCC \(Cleveland et al\., 2016\)\. Impulsive buying is encouraged by the Western emphasis on individualistic values and hedonistic pleasure\; the international spread of e\-commerce \(e\.g\., fast\/same\-day delivery services, streaming\), and the spread of consumer orientation \(Kacen & Lee, 2002\)\. Culture was found to be linked to developing motivations for impulsive buying \(Horváth & Adıgüzel, 2017\)\. Consumers living in consumption\-based economies that also value material objects as signals of social position are influenced to obtain such objects, and tend to exhibit proneness to buy impulsively \(Podoshen & Andrzejewski, 2012\)\. Acculturation theorists argue that as consumers acculturate to a given culture, their behavior, including consumption, changes \(Berry, 2005\; Luedicke, 2011\)\. The behavior may become more or less similar to the behavior of natives of a particular culture, depending on the level of acculturation\. As consumers acculturate to GCC, as measured by AGCC, those more acculturated to GCC should report more frequent behaviors characteristic of the spread of GCC, such as impulsive buying\. Based on these arguments, it is proposed that:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1:] AGCC is positively associated with impulsive buying\.]]
Similarly, AGCC should influence the consumers’ attitudes towards important elements of GCC, such as advertising\. Advertising is rooted in Western consumption culture, and is an important tool of dissemination of GCC \(Merz et al\., 2008\)\. GCCT posits that global brands rely on advertising and other marketing communication tools to inform consumers about their products and create positive response \(Akaka & Alden, 2010\; Schivinski & Dabrowski, 2016\)\. The spread of GCC depends and relies on the use of marketing communications, including advertising \(Holt, 2002\)\. Bearing in mind that global media and multinational marketing activities are the most influential agents of AGCC \(Cleveland et al\., 2016\), it is anticipated that consumers more acculturated to GCC will report a more positive attitude towards advertising in general:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2:] AGCC is positively associated with attitudes towards advertising in general\.]]
#block(above: 1em, below: 0.5em)[#text(size: 10.5pt)[AGCC, impulsive buying, and the moderating effects of advertising attitudes and beliefs]]
#par(first-line-indent: 0em)[Theoretically, one of advertising’s roles is to influence consumers to change their behavior \(Brinol et al\., 2015\)\. If consumers like advertising in general, the influence of it on buying behavior should be positive \(Wolin, Korgaonkar, & Lund, 2002\)\. Attitudes towards advertising and beliefs about advertising are related to purchase behavior \(Mehta, 2000\; Wang & Sun, 2010\), whereas mass advertising is argued to be one of the many factors that affect impulsive buying \(Peter & Vladimir, 2014\; Stern, 1962\)\. Someone’s attitude towards advertising in general may influence this individual’s acceptance of online advertisements or billboards or the acceptance of products advertised, in line with the argument that such relations between such attitudes would lead to a cognitive congruence \(Wang & Sun, 2010\)\. It may also influence the acceptance of the behavior communicated by advertising in general, which is usually the buying of the advertised products \(Mackenzie, Lutz, & Belch, 1986\)\. Popular culture texts such as advertisements are approached in GCCT as lifestyle and identity “recipes” that communicate how the advertised good or brand helps consumers become individuals who feel like, look like, and act like the actors portrayed in the advertisements \(Arnould & Thompson, 2005\)\. It is therefore reasonable to assume that positive attitude towards and beliefs about these “lifestyle instructions” or artifacts of GCC positively influence consumers’ responses to marketplace phenomena that are encouraged in these advertisements, such as buying the advertised product, or buying products in general\. It should also increase consumers’ desire for those products and, in turn, contribute to wanting to own them\. Attitudes and beliefs may also act as moderators of relationships between other consumption\-related variables \(Kraus, 1995\)\.]

Much of impulsive buying is based on a high degree of consumer knowledge about the item that is gained from prior experience with it, or from advertising\. Impulse buying can be encouraged through advertising by, for example, the establishment of a close tie\-in between at\-home and in\-store advertising \(Stern, 1962\)\. Impulse purchases may also result from effects such as increased brand familiarity and recall of positive perceptions of the advertised item when consumers are being exposed to it in a store \(Agee & Martin, 2001\; Peter & Vladimir, 2014\)\.

Advertising is an important component of GCC, and hence attitudes and beliefs about advertising are expected to moderate the relationship between AGCC and impulsive buying\. It is anticipated that individuals highly acculturated to GCC who also have positive attitudes and beliefs about advertising will be more susceptible to impulsive buying than those who do not share the same attitudes and beliefs\. Consumers who have positive attitudes and beliefs about advertising tend to keep up to date with what is available on the market and hence they may be prone to impulsive consumption \(Mehta, 2000\)\. These assumptions are built on the principles of congruity theory, which posits that individuals always strive for congruency between their attitudes, beliefs, and behaviors \(Osgood & Tannenbaum, 1955\; Zajonc, 1960\)\. Drawing from the congruity theory, it is argued here that consumers’ attitudes, beliefs, and behaviors related to GCC should be congruent\; that is, they should be positively related\. In other words, they should move in tandem, and a decrease\/increase in one variable should also lead to a decrease\/increase in another variable if these variables are associated with one phenomenon\.

A study of Chinese urban residents examined the link between global consumerism, exposure to and attitudes towards advertising, and consumerist values\. Exposure to media contents and advertisements featuring Western, consumption\-related appeals contributed to more favorable attitudes towards and acceptance of two consumerist values: quality and innovative consumption\. Consumers with more positive attitudes towards advertising held more favorable attitudes towards consumerist values \(Paek & Pan, 2004\)\. In another study, consumers’ attitudes toward global brands and globalization attitudes have been found to have a positive impact on the decision to buy global brands \(Bartsch et al\., 2016\), suggesting that attitudes play an important role in explaining consumers’ behavior towards some elements of GCC, and that there was a direction towards a similarity \(congruence\) of attitudes and behaviors towards a phenomenon\.

Although these authors did not specifically focus on AGCC, their research was closely related to the area of GCC and consumption, and suggested that attitudes towards advertising are positively linked to the acceptance of certain consumption\-related values\. In line with congruity theory, as individuals strive to achieve consistency between their attitudes and behaviors, the following hypothesis summarizes these arguments:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3:] Consumers most acculturated to GCC and having positive attitudes towards advertising buy most impulsively, and the attitude towards advertising in general strengthens the positive relationship between AGCC and impulsive buying\.]]
Impulsive buying is related to hedonic motivations \(Sharma et al\., 2010\), and advertising often portrays hedonic appeals, is created to entertain consumers, and is frequently used to encourage consumers to compare themselves to others\. Consumers who view advertising as a source of hedonic experiences, and as a source of information about their social image, will display more impulsive buying behaviors\. Positive beliefs about advertising as a source of information will also strengthen the main relationship, as research shows that consumers use advertising to look for information about products \(Shrum, Mccarty, & Lowrey, 1995\)\. In line with congruence theory, consumers will strive to achieve a harmony between their attitudes, beliefs, and behaviors, hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4:] Consumers who report high levels of AGCC and hold positive beliefs about advertising’s hedonic attributes \(H4A\), beliefs about advertising’s role in creating social image \(H4B\), beliefs about advertising’s information role \(H4C\), and beliefs about advertising’s economic role \(H4D\) buy most impulsively, and these beliefs have a strengthening effect on the positive relationship between AGCC and impulsive buying\.]]
On the other hand, negative beliefs about a phenomenon will affect this phenomenon in a negative way, in line with the assumption that such negative beliefs disturb the congruence between high level of AGCC and impulsive buying\. Consumers who believe that advertising is deceptive and contributes to materialism may buy less impulsively than those who disagree with such statements \(Wolin et al\., 2002\)\.

The influence of AGCC on impulsive buying should be weaker for those consumers who hold negative beliefs about advertising, as these beliefs are not in congruence with the positive levels of AGCC\. Negative beliefs about advertising are not in harmony with high levels of AGCC, hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H5:] Consumers who report high levels of AGCC and hold negative beliefs about advertising’s deceptive role \(H5A\) and beliefs about advertising’s role in contributing to materialism \(H5B\), buy least impulsively, and these beliefs weaken the positive relationship between AGCC and impulsive buying\.]]
= Method
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Choice of country and respondents
#par(first-line-indent: 0em)[The UK remains an economic power with considerable political and cultural influence around the world\. It ranks in the top 20 in the KOF Globalization Index for social globalization, and in the top 10 for political globalization \(KOF, 2018\)\. It is therefore reasonable to suggest that the UK is one of the major players in globalization\. The British economy is based on and driven by consumer spending \(PwC, 2016\), and advertising is used to encourage buying\. The UK advertising industry is one of the most developed and complex in the world, and it is vital to the UK economy \(Albert & Reid, 2011\)\. For these reasons, the UK is an important market to study the elements and effects of AGCC\.]

== Participants and procedures
#par(first-line-indent: 0em)[In the current study, data were collected through a standardized online survey\. A heterogeneous sample of immigrants were recruited in the UK through two sampling approaches\. Immigrants from non\-Western countries were deemed a suitable population for this study because residing in the UK ensured that they were more likely to be exposed to GCC\. First, a list of online platforms for immigrants in the UK was identified on social networking sites such as Facebook or www\.internations\.org\. For example, Poles in Luton \[#emph[Polacy w Luton]\], and Poles in London and the UK \[#emph[Polacy w Londynie i UK]\] were identified as the biggest Facebook groups for Polish immigrants in the UK\; Nigerians in the UK was a Facebook group for Nigerians\; and Warwick\-German Speaking Society was a Facebook group for Germans in the UK\. Administrators from these groups were invited to collaborate with the research team to help with the recruitment of participants by posting the link to the survey in the groups, disseminating the link to the survey through their e\-mail subscription service, and encouraging members to participate\. In addition, the researchers, with the help of a research assistant, disseminated the link to the survey via e\-mail to contacts who potentially matched the respondent’s profile\. The UK has a high market penetration of Internet connection \(ONS, 2015\), hence this way of finding consumers ensured reaching a high number of potential respondents\.]

The participation in the study was voluntary and no rewards were offered\. The study’s eligibility was established by requesting the respondent’s migratory status in the UK\. Respondents were qualified as residents in the UK if they confirmed living in the UK for more than six months of the year or intending to stay in the UK for more than six months\. This criteria was used because it is the standard criteria for establishing tax residence, or when applying for confirmation of legal residence\. This sampling approach resulted in a sample of 426 participants\.

== Survey development and measures
#par(first-line-indent: 0em)[To test the conceptual model, a questionnairebased survey was designed in English\. The survey consisted of demographic questions along with items measuring the variables under investigation\. The demographic questions included questions about respondents’ age, gender, education, employment status, and country of birth, and the respondents’ length of residence in the UK\.]

To capture the consumer’s level of AGCC, the 21\-item scale validated by Durvasula and Lysonski \(2015\) was used\. Three items extracted from Ridgway, Kukar\-Kinney, and Monroe \(2008\) measured perceived impulsive buying\. AGCC and impulsive buying items were anchored from 1–#emph[strongly disagree] to 7–#emph[strongly agree]\. To capture attitude towards advertising in general and beliefs about advertising, the items, anchored from 1–#emph[strongly disagree] to 5–#emph[strongly agree], were adopted from Tan and Chia \(2007\) \(Appendix A\)\. The final version of the instrument was sent to two expert judges for review\. After adjustments, a pilot study was conducted \(Johanson & Brooks, 2010\)\. Respondents found the questionnaire easy to complete and understand, there were no technical issues reported, and the main study followed\.

== Data management and analytic strategy
#par(first-line-indent: 0em)[Data management involved three steps\. First, we inspected the data for missing values and accuracy\. To test the structure of the missing data, we performed Little’s missing completely at random \(MCAR\) test using IBM SPSS Statistics Version 24\. Little’s MCAR test generated a chi\-square value of 2,384\.90, DF \= 2,201, #emph[p] \= 0\.16\; consequently, the hypothesis of MCAR is rejected at 0\.05 significance level, demonstrating that data are missing at random\. We eliminated 60 \(12%\) cases from the analyses that yielded several missing values \(above 5% of the total number of items\)\. Skewness and kurtosis were computed to assess for univariate normality of the data\. No item had absolute values of skewness \> 3\.0 and kurtosis \> 8\.0 \(Kline, 2011\; see Appendix A for skewness and kurtosis values\)\.]

To screen for univariate outliers, we used Mahalanobis distances and the critical value for each case \(based on the chi\-square distribution values\), which resulted in no further exclusion of participants\. The dataset procedures resulted in a sample size of 426 respondents\.

The sample includes immigrants from a total of 35 nationalities, including: Nigeria 24\.4%, Poland 21\.2%, Germany 12\.7%, Pakistan 7%, Vietnam 3\.8%, and Bangladesh 2\.8%\. In terms of residency in the UK, the sample’s mean was 11 years \(SD \= 6\.5 years\), where 53\.6% of respondents declared that they lived in the UK for up to seven years, 32\.5% were in the residence bracket of 8–14 years\; 10% were in the residence bracket of 15–21 years\; and 3\.5% declared that they had lived in the UK for more than 22 years\. The mean age was 31\.20 \(SD \= 9\.3\), ranging from 18 to 74 years old\. The majority of the respondents were in full\- or part\-time employment \(48%\), 44% were students, and 8% were unemployed \(including retired\)\. A large part of the sample declared holding a degree \(undergraduate 32%, postgraduate 42%\), whereas 16% had A\-levels or equivalent, 7% had vocational\/trade training, and 3% were educated to GCSE level\. Females made up 61% of the sample\.

= Data analysis and results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Measurement procedures
#par(first-line-indent: 0em)[The latent variables were loaded in a multifactorial confirmatory model \(CFA\)\. The CFA model was estimated using the robust maximum\-likelihood method \(MLR\) implemented in M#emph[plus] 7\.2 software package\.]

To assess the goodness\-of\-fit \(GOF\) of the CFA model, the following indexes were used: chi\-square test statistic, the comparative fit index \(CFI\), Tucker–Lewis index \(TLI\), and root mean square error of approximation \(RMSEA\)\. Values above the threshold of 0\.90 for CFI and TLI, and below 0\.08 for RMSEA, indicate a good fit of the model to the data \(Hair, Black, Babin, & Anderson, 2014\)\. The results suggested that the CFA model had a good fit to the data\. The GOF values were: MLR χ#super[2]#sub[\(288\)] \= 343\.92, CFI \= 0\.98, TLI \= 0\.97, and RMSEA \= 0\.02\; 90% confidence interval \(C\.I\.\) of 0\.01–0\.02\.

Cronbach’s alpha \(α\), composite reliability \(CR\) and factor determinacy \(FD\) were assessed to establish the reliability of each individual scale \(Appendix A\)\. Both alpha and CR values for the latent variables ranged from 0\.75 to 0\.88\. Those values exceed the recommended 0\.70 threshold value \(Bagozzi & Yi, 1988\)\. The FD values for all of the latent variables were above 0\.88, surpassing the recommended threshold of 0\.80 \(Muthén & Muthén, 2012\)\. All of the loading estimates were statistically significant and greater than 0\.52\. The t\-values for each item ranged from 9\.59 to 57\.55 \(#emph[p] \< 0\.001\)\. There was no evidence of cross\-loadings\; convergent validity was confirmed \(Hair et al\., 2014\)\.

To assess discriminant validity, the average variance extracted \(AVE\) for each construct was calculated\. The AVE of the constructs ranged from 0\.50 to 0\.71 \(Appendix A\)\. Those values were equal to or higher than the acceptable value of 0\.50 \(Fornell & Larcker, 1981\)\. The correlational matrix for the CFA analysis is in Appendix B\.

The next step of the analysis was to test the conceptual model and the postulated hypotheses\. As the objective of the study involves understanding AGCC as an overall construct and does not focus on its individual dimensions, a second\-order factor of AGCC was specified \(Cleveland et al\., 2016\)\. Therefore, AGCC consisted of cosmopolitanism \(three items\), exposure to marketing activities of multinational companies \(three items\), English language usage and exposure \(three items\), social interactions \(three items\), global mass media exposure \(three items\), openness to and desire to emulate GCC \(three items\), and self\-identification with GCC \(three items\) \(Durvasula & Lysonski, 2015\)\. The second\-order factor loading estimates ranged from 0\.19 \(cosmopolitanism\; #emph[t] \= 2\.37, and exposure to marketing activities\; #emph[t] \= 2\.39\) to 0\.68 \(global mass media exposure\; #emph[t] \= 10\.60\), with the exception of the factor openness to and desire to emulate GCC, which was not statistically significant \(#emph[p] \= 0\.56\)\. This factor was retained in the model for two reasons: first, openness to and desire to emulate GCC are theoretically important dimensions of AGCC \(Cleveland & Laroche, 2007\; Durvasula & Lysonski, 2015\)\; and second, the exclusion of the factor did not significantly improve the overall fit of the model\. Therefore, the GOF values for the second\-order AGCC\-specified CFA model remained the same as the first\-order model, as no new parameters were specified in the model, nor excluded\.

== Path and moderation analyses
#par(first-line-indent: 0em)[To test the directional relationships, path analysis with structural equation modeling \(SEM\) was used in M#emph[plus] 7\.2\. The estimator method was MLR\. The GOF values for the directional model were: MLR χ#super[2]#sub[\(390\)] \= 584\.25, CFI \= 0\.93, TLI \= 0\.92, and RMSEA \= 0\.03\; 90% C\.I\. 0\.02–0\.04\.]

The control variables were regressed on both impulsive buying and attitudes towards advertising\. The calculations indicated that consumer’s age \(β \= −0\.30\; #emph[t] \= −6\.11\; #emph[p] \= 0\.001\), gender \(β \= 0\.16\; #emph[t] \= 3\.10\; #emph[p] \= 0\.001\), and income level \(β \= 0\.09\; #emph[t] \= 1\.85\; #emph[p] \= 0\.06\) were found to influence impulsive buying\. Similarly, age \(β \= −0\.11\; #emph[t] \= −1\.67\; #emph[p] \= 0\.09\) and income level \(β \= −0\.09\; #emph[t] \= −1\.76\; #emph[p] \= 0\.07\) impact the consumer’s attitudes towards advertising\. No effect was found for the influence of gender on attitudes towards advertising \(#emph[p] \= 0\.12\)\.

The first directional hypothesis anticipated a positive influence of AGCC on impulsive buying\. The calculations confirmed the positive relationship \(β \= 0\.24\; #emph[t] \= 2\.87\; #emph[p] \= 0\.004\), leading to the confirmation of H1\. Similarly, H2 anticipated a positive influence of AGCC on attitudes towards advertising in general\. These effects were also detected to be statistically significant \(β \= 0\.37\; #emph[t] \= 4\.64\; #emph[p] \< 0\.001\), hence supporting the second hypothesis\. The outcomes of the path analysis are summarized in Table 1\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Standardized structural coefficients of the conceptual model\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Path structure]], [#strong[β]], [#strong[#emph[t]\-value]], [#strong[#emph[p]\-value]]),
table.hline(stroke: 0.5pt),
[H1\. AGCC → impulsive buying], [0\.24], [2\.87], [0\.004],
[H2\. AGCC → attitudes towards advertising], [0\.37], [4\.64], [0\.001],
[#emph[Control variables]], [], [], [],
[Age → impulsive buying], [−0\.30], [−6\.11], [0\.001],
[Gender → impulsive buying], [0\.16], [3\.10], [0\.001],
[Income → impulsive buying], [0\.09], [1\.85], [0\.06],
[Age → attitudes towards advertising], [−0\.11], [−1\.67], [0\.09],
[Gender → attitudes towards advertising], [−0\.08], [−1\.54], [0\.12],
[Income → attitudes towards advertising], [−0\.09], [−1\.76], [0\.07],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]\. AGCC \= second\-order factor from acculturation to global consumer culture\; MLR χ#super[2]#sub[\(390\)] \= 584\.25, CFI \= 0\.93, TLI \= 0\.92, RMSEA \= 0\.03 \[90% CI 0\.02–0\.04\]\. Gender reference: 1 \= female\; n \= 426\.]
]
#v(12pt)
Prior to running the interactions, a second CFA was computed to check both the fit of the extended model and for inspection of possible multicollinearity\. The base model was the same as specified for the directional relationships with the addition of the interaction terms\. The GOF of the new model was good: MLR χ#super[2]#sub[\(840\)] \= 1,389\.09, CFI \= 0\.91, TLI \= 0\.90, RMSEA \= 0\.03 \[90% C\.I\. 0\.03–0\.04\] and there were no indications of multicollinearity \(Appendix B\)\. Finally, to test for the moderation effects, M#emph[plus] 7\.2 with 5,000 bootstrap samples was used\. The estimations terminated normally and the information criteria for the model were Akaike \(AIC\) \= 51,444\.02, Bayesian \(BIC\) \= 51,902\.17, with the sample\-size adjusted BIC \= 51,543\.58\.

The first series of interactions \(H3\) tested anticipated that consumers who are acculturated to GCC, and like advertising, should buy the most impulsively and that the attitude toward advertising in general should strengthen the effect of AGCC on impulsive buying\. Hypothesis H3 was partially supported, as indeed the highest levels of AGCC and positive attitudes towards advertising in general lead to the highest levels of impulsive buying\. However, the most dramatic increase in impulsive buying was for consumers who had less favorable attitudes towards advertising in general \(unst\. β \= −1\.49\; #emph[t] \= −2\.75\; #emph[p] \= 0\.01\)\. H3 is partially supported\.

Similarly, it was hypothesized that consumers most acculturated to GCC and having positive beliefs about advertising should buy the most impulsively, and these positive beliefs were hypothesized to have a strengthening effect on the effect of AGCC on impulsive buying\. The calculations showed that, indeed, consumers with high levels of AGCC and positive beliefs buy the most impulsively, but the strongest impact of AGCC on impulsive buying was for consumers who had less favorable beliefs about advertising: \(H4A\) \(unst\. β \= −2\.53\; #emph[t] \= −3\.34\; #emph[p] \= 0\.001\), advertising’s role in creating social image \(H4B\) \(unst\. β \= −0\.77\; #emph[t] \= −1\.79\; #emph[p] \= 0\.07\), advertising’s information role \(H4C\) \(unst\. β \= −1\.15\; #emph[t] \= −2\.03\; #emph[p] \= 0\.04\), and advertising’s economic role \(H4D\) \(unst\. β \= −2\.16\; #emph[t] \= −2\.79\; #emph[p] \= 0\.01\)\. Hence, hypotheses H4A, H4B, H4C, and H4D were partially supported\.

Finally, H5 hypothesized that high levels of AGCC and negative beliefs about advertising would lead to low levels of impulsive buying, and that the influence of AGCC on impulsive buying should be weakened when accounting for the consumer’s beliefs about advertising’s deceptive role \(H5A\) and their beliefs about advertising promoting materialism \(H5B\)\. As expected, consumers who hold negative beliefs buy the least impulsively\. However, a positive moderation effect was detected for the test of H5A, leading to its partial acceptance \(unst\. β \= 3\.42\; #emph[t] \= 2\.76\; #emph[p] \= 0\.009\)\. No significant effects were detected when moderating the consumer’s beliefs about advertising promoting materialism \(#emph[p] \= 0\.66\), thus leading to the rejection of H5B\. Figure 1 and Table 2 reports the results of hypothesis testing and moderation analysis\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Moderation analysis outcomes\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Hypothesis]], [#strong[Unst\. β]], [#strong[#emph[t]\-value]], [#strong[#emph[p]\-value]]),
table.hline(stroke: 0.5pt),
[#emph[AGCC → impulsive buying, moderated by]], [], [], [],
[H3\. Attitudes towards advertising in general], [−1\.49], [−2\.75], [0\.01],
[H4A\. Beliefs about advertising’s hedonic attributes], [−2\.53], [−3\.34], [0\.001],
[H4B\. Beliefs about advertising’s role in creating social image], [−0\.77], [−1\.79], [0\.07],
[H4C\. Beliefs about advertising’s information role], [−1\.15], [−2\.03], [0\.04],
[H4D\. Beliefs about advertising’s economic role], [−2\.16], [−2\.79], [0\.01],
[H5A\. Beliefs about advertising’s deceptive role], [3\.42], [2\.76], [0\.009],
[H5B\. Beliefs about advertising promoting materialism], [0\.36], [0\.44], [0\.66],
[#emph[Direct effects on impulsive buying from the moderation analysis]], [], [], [],
[Attitudes towards advertising in general], [0\.26], [3\.50], [0\.001],
[Beliefs about advertising’s hedonic attributes], [0\.22], [2\.07], [0\.04],
[Beliefs about advertising’s role in creating social image], [0\.10], [1\.43], [0\.15],
[Beliefs about advertising’s information role], [0\.18], [2\.15], [0\.03],
[Beliefs about advertising’s economic role], [0\.32], [2\.99], [0\.001],
[Beliefs about advertising’s deceptive role], [−0\.50], [3\.50], [0\.001],
[Beliefs about advertising promoting materialism], [−0\.06], [−0\.55], [0\.58],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]\. AGCC \= second\-order factor from acculturation to global consumer culture\. Information criteria for the model: Akaike \(AIC\) \= 51,444\.02, Bayesian \(BIC\) \= 51,902\.17, sample\-size adjusted BIC \= 51,543\.58\; n \= 426\.]
]
#v(12pt)
#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Model of AGCC, impulsive buying, and attitudes towards and beliefs about advertising\. #emph[Note]\. AGCC \= second\-order factor from acculturation to global consumer culture\; ∗p \< 0\.1, ∗∗p \< 0\.05, ∗∗∗p \< 0\.001\; n\.s\. \= non\-significant coefficient\.]]
#v(0.6em)
= Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Theorists claim that GCC has emerged and consumers have been interacting with the various elements of GCC in different ways\. GCC has been characterized as a culture of materialism, overconsumption, and waste \(Prothero et al\., 2011\)\. How consumers interact with GCC and its various elements and how it relates to consumption patterns that are not socially responsible, such as impulsive buying, have been relatively unexplored in terms of possible theoretical explanations of those relationships \(Cleveland, 2018\)\. This research is a step towards understanding how some of the elements of GCC are related, and which theories can aid the understanding of the interactions consumers have with GCC\. This study examined the influence of AGCC on impulsive buying and attitude towards advertising in general, and the selected conditions under which AGCC has the most pronounced effect on impulsive buying, namely the moderating effects of attitudes towards advertising and beliefs about advertising on the main relationship between AGCC and impulsive buying\.]

Theoretically, the findings support the proposed theoretical rationale of acculturation theory by demonstrating that the selected consumers’ consumption behavior and attitude towards GCC phenomena are positively related to AGCC levels\. The more acculturated to GCC consumers are, the more positive their response to the GCC\-related phenomena, such as impulsive buying and attitudes towards advertising in general\. Congruity theory explains some of the relationships consumers have with GCC, but some questions remain open to further investigation\. The study adds to the literature on antecedents of impulsive buying and positive attitudes towards advertising in general\.

Consumers who report high levels of AGCC and hold positive attitudes towards and beliefs about advertising buy the most impulsively of all consumers \(Appendices C–H\)\. Consumers who like advertising are more socialized into the consumer culture, hence they buy the most impulsively out of all consumers\. When consumers have less positive attitudes towards and beliefs about advertising, AGCC has the most pronounced effect on them in terms of impulsive buying\. These consumers do not buy the most impulsively, but they increase their impulsive buying rate the most as the level of AGCC increases\.

The results support the theoretical assumption of congruity theory: when AGCC and attitudes towards and beliefs about advertising are in congruence, they are related to impulsive buying levels that are harmonious with the two variables\; individuals usually form behaviors, attitudes and beliefs that work in harmony and are congruent\. However, when there is incongruence—i\.e\., the moderator is not in tandem with the level of AGCC—the influence of AGCC on impulsive buying is the strongest\. This research poses a question for further investigation into why negative beliefs about the tools of marketing persuasion do not weaken the influence of AGCC on impulsive buying\. At present, congruity theory suggests that attitudes or behaviors would change if there was imbalance \(Osgood & Tannenbaum, 1955\), and we argue that further longitudinal research could shed light on these relationships\. Consumers who hold negative beliefs about advertising and who report high levels of AGCC continue to buy impulsively\. This may occur because much of social judgment and behavior occur without conscious awareness or intent of the consumer, and are a result of the influence of the environment \(Dijksterhuis, Smith, Van Baaren, & Wigboldus, 2005\)\. This also suggests that for those who hold negative attitudes towards and beliefs about advertising, the influence of AGCC is so strong that it neutralizes the protective potential of negative attitudes towards and beliefs about advertising\. Longitudinal research may be able to examine if, over time, consumer’s attitudes become more positive to be in harmony with other behaviors\.

From a societal perspective, this study suggests that consumers’ responses to cultural factors are important predictors of impulsive buying and attitudes towards advertising\. The findings provide at least a partial explanation of why impulsive buying is on the rise in many developing countries \(Horváth & Adıgüzel, 2017\; Unger & Raab, 2015\)\. The acceptance of GCC is positively related to impulsive buying and hence poses a challenge for consumer groups working towards stronger protection of consumers\. While it would be almost impossible to control the spread of GCC, governments and consumer protection groups should work towards implementing stricter regulations of global brands’ practices that have been shown to be related to impulsive buying, such as aggressive advertising or sales promotions that encourage excessive buying\. Advertisers, governments, and consumer groups together should be taking active interest in developing ways to support mindful purchases in this consumption\-driven consumer culture \(Sulston, 2012\), and advertising in a form of public service advertisements may be one way of doing so, given global consumers’ positive attitudes towards advertising\. For example, consumers acculturated to GCC may respond better to messages that frame the issue of impulsive buying as global rather than local, and show the individual cost of impulse purchases, but this is an area to be investigated\.

For managers, this study provides evidence that consumers acculturated to GCC buy more impulsively and have more positive attitudes towards advertising in general than consumers who are less acculturated to GCC\. Global brands may feel confident that using advertising to target consumers acculturated to GCC may be effective because of their positive approach towards advertising\. Brands should foster these positive attitudes towards and beliefs about advertising\. Managers should work towards creating such positive attitudes and beliefs by, for example, being ethical and truthful in advertising, or by creating fun and innovative advertisements that are not intrusive, as such variables have been shown to make consumers like advertising more \(Eagle, Dahl, Czarnecka, & Lloyd, 2014\)\.

= Limitations and suggestions for future research
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Several factors may influence the external validity of this study\. Although carefully planned and executed, the study is not without limitations\. The measures of AGCC used in this study assume that GCC is driven and shaped by American media and brands, and does not take into account the possibility that GCC may be shaped by more diverse market forces than only American consumer culture\. However, as this study was conducted in the UK, an Anglo\-Saxon country that is a driver of globalization, it was deemed appropriate to use a measure of AGCC that assumed that GCC was largely Americandriven\. Future studies should measure GCC’s components that may be driven by European or Asian market forces, if the study is conducted in a region where such influences may be present\. In addition, exploring the relations between multiple consumer identities as proposed by Arnett \(2002\) and others \(Stöttinger & Penz, 2018\), such as consumer ethnocentrism \(Han & Guo, 2018\) and AGCC or global consumer orientation \(Guo, 2013\), is important to understand how consumers navigate between the conflicting forces and how they influence consumption behavior\.]

An online data collection tool was used, and hence the respondents represent a segment of society that may differ from less\-frequent or non\-users of the Internet\. Data were collected from a self\-selected sample\. This non\-probability sampling technique is an evident limitation in this study, since the respondents may not be representative, which consequently limits the external validity of the results \(Heckman, 2010\)\. Moreover, this survey was conducted in English, which assumes that respondents already possess some level of AGCC as English language usage is one of the dimensions of AGCC\. Similar limitations were previously reported by other researchers \(Cleveland et al\., 2016\)\. We join the call for more research to reach consumers in their native languages\. Another limitation is that impulsive buying measures captured reported and perceived impulsive buying behavior, not actual instances of impulsive buying\. In addition, other theoretical constructs, such as ethnic identity or national identity and ethnocentrism, should be examined alongside AGCC to examine the interactions between those concepts and selected behaviors\.

Buying impulses are thought to be largely universal in nature \(Kacen & Lee, 2002\), but market conditions and structures, systems of exchange, and cultural forces affect impulsive buying\. This study shows that AGCC explains impulsive buying behavior and is higher for consumers who like advertising\. We suggest that other marketing factors that encourage impulse purchasing need attention in the context of AGCC\. Access to the Internet or acceptance of mobile commerce may well be such important factors\.

In addition, as acculturation is a socialization process that changes over time \(Berry, Phinney, Sam, & Vedde, 2006\), longitudinal research may help examine which of the social factors influence the level of AGCC, and how consumers move towards a congruent state of attitudes, beliefs, and behaviors\. Further research may include exploring advertising creative strategies that consumers more acculturated to GCC would find more persuasive\.

= Conclusion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[This research examined the relations between acculturation to global consumer culture and impulsive buying and attitudes towards advertising in general\. In addition, the moderating role of attitudes towards and beliefs about advertising on the association of acculturation to GCC and impulsive buying were examined\. The findings reveal that consumers acculturated to GCC buy more impulsively and like advertising more than consumers less acculturated to GCC\. Consumers acculturated to GCC and those who like advertising more, as measured by attitudes and beliefs about advertising, buy the most impulsively of all consumers\. This study offers important evidence that consumers’ cultural orientation is related to their consumption behaviors\. The findings may contribute to advertising literacy programs to raise awareness of issues of the persuasive nature of advertising and the strong influence of consumers’ acceptance of GCC on impulsive buying\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Agee, T\., & Martin, B\. A\. S\. \(2001\)\. Planned or impulse purchases? How to create effective infomercials\. #emph[Journal of Advertising Research], #emph[41]\(6\), 35–42\.

Akaka, M\. A\., & Alden, D\. L\. \(2010\)\. Global brand positioning and perceptions: International advertising and global consumer culture\. #emph[International Journal of Advertising], #emph[29], 37–56\. doi:10\.2501\/S0265048709201026

Albert, A\., & Reid, B\. \(2011\)\. #emph[The contribution of the advertising industry to the UK economy \[Online\]]\. The Work Foundation\. Retrieved from http:\/\/www\.theworkfoundation\.com\/downloadpublication\/report\/295\_the%20contribution%20of%20advertising%20to%20the%20uk%20economy%20311011\.pdf \[Accessed June 20, 2016\]\.

Alden, D\. L\., Steenkamp, J\.\-B\. E\. M\., & Batra, R\. \(1999\)\. Brand positioning through advertising in Asia, North America, and Europe: The role of global consumer culture\. #emph[Journal of Marketing], #emph[63], 75–87\. doi:10\.2307\/1252002

Arnett, J\. J\. \(2002\)\. The psychology of globalization\. #emph[American Psychologist], #emph[57]\(10\), 774–783\. doi:10\.1037\/0003\-066X\.57\.10\.774

Arnould, E\. J\. \(2011\)\. Global consumer culture\. In J\. N\. Sheth & N\. Malhotra \(Eds\.\), #emph[International encyclopedia of marketing]\. Hoboken, USA: Wiley\-Blackwell\.

Arnould, E\. J\., & Thompson, C\. J\. \(2005\)\. Consumer culture theory \(CCT\): Twenty years of research\. #emph[Journal of Consumer Research], #emph[31], 868–882\. doi:10\.1086\/426626

Atulkar, S\., & Kesari, B\. \(2018\)\. Impulse buying: A consumer trait prospective in context of central India\. #emph[Global Business Review], #emph[19]\(2\), 477–493\. doi:10\.1177\/0972150917713546

Bagozzi, R\., & Yi, Y\. \(1988\)\. On the evaluation of structure equation models\. #emph[Journal of the Academy of Marketing Science], #emph[16], 74–94\.

Bartsch, F\., Diamantopoulos, A\., Paparoidamis, N\. G\., & Chumpitaz, R\. \(2016\)\. Global brand ownership: The mediating roles of consumer attitudes and brand identification\. #emph[Journal of Business Research], #emph[69], 3629–3635\. doi:10\.1016\/j\.jbusres\.2016\.03\.023

Baun, D\., & Groeppel\-Klein, A\. \(2003\)\. Joy and surprise as guides to a better understanding of impulse buying behaviour\. In D\. Turley & S\. Brown \(Eds\.\), #emph[European advances in consumer research]\. Provo, UT: Association for Consumer Research\.

Berry, J\. W\. \(2005\)\. Acculturation: Living successfully in two cultures\. #emph[International Journal of Intercultural Relations], #emph[29], 697–712\. doi:10\.1016\/j\.ijintrel\.2005\.07\.013

Berry, J\. W\., Phinney, J\. S\., Sam, D\. L\., & Vedde, P\. \(2006\)\. Immigrant youth: Acculturation, identity, and adaptation\. #emph[Applied Psychology], #emph[55], 303–332\. doi:10\.1111\/j\.1464\-0597\.2006\.00256\.x

Brinol, P\., Rucker, D\. D\., & Petty, R\. E\. \(2015\)\. Naıve theories about persuasion: Implications for information processing and consumer attitude change\. #emph[International Journal of Advertising], #emph[34], 85–106\. doi:10\.1080\/02650487\.2014\.997080

Cleveland, M\. \(2018\)\. Acculturation to the global consumer culture: Ten years after and agenda for the next decade\. #emph[Journal of Global Scholars of Marketing Science], #emph[28]\(3\), 257–271\. doi:10\.1080\/21639159\.2018\.1466656

Cleveland, M\., & Laroche, M\. \(2007\)\. Acculturation to the global consumer culture: Scale development and research paradigm\. #emph[Journal of Business Research], #emph[60], 249–259\. doi:10\.1016\/j\.jbusres\.2006\.11\.006

Cleveland, M\., Laroche, M\., & Hallab, R\. \(2013\)\. Globalization, culture, religion, and values: Comparing consumption patterns of Lebanese Muslims and Christians\. #emph[Journal of Business Research], #emph[66], 958–967\. doi:10\.1016\/j\.jbusres\.2011\.12\.018

Cleveland, M\., Laroche, M\., & Papadopoulos, N\. \(2015\)\. You are what you speak? Globalization, multilingualism, consumer dispositions and consumption\. #emph[Journal of Business Research], #emph[68], 542–552\. doi:10\.1016\/j\.jbusres\.2014\.09\.008

Cleveland, M\., Laroche, M\., & Takahashi, I\. \(2015\)\. The intersection of global consumer culture and national identity and the effect on Japanese consumer behavior\. #emph[Journal of International Consumer Marketing], #emph[1], 1–24\.

Cleveland, M\., Rojas\-Mendez, J\., Laroche, M\., & Papadopoulos, N\. \(2016\)\. Identity, culture, dispositions and behavior: A cross\-national examination of globalization and culture change\. #emph[Journal of Business Research], #emph[69], 1090–1102\. doi:10\.1016\/j\.jbusres\.2015\.08\.025

Coulter, R\. A\., Zaltman, G\., & Coulter, K\. S\. \(2001\)\. Interpreting consumer perceptions of advertising: An application of the Zaltman metaphor elicitation Technique\. #emph[Journal of Advertising], #emph[30], 1–21\. doi:10\.1080\/00913367\.2001\.10673648

Czarnecka, B\., Brennan, R\., & Keles, S\. \(2018\)\. Cultural meaning, advertising, and national culture: A four\-country study\. #emph[Journal of Global Marketing], #emph[31]\(1\), 4–17\. DOI: doi:10\.1080\/08911762\.2017\.1376364

Czarnecka, B\., & Keles, S\. \(2014\)\. Global consumer culture positioning: The use of global consumer culture positioning appeals across four European countries\. #emph[Journal of Euromarketing], #emph[23]\(3\), 59–67\.

Dijksterhuis, A\., Smith, P\. K\., Van Baaren, R\. B\., & Wigboldus, D\. H\. J\. \(2005\)\. The unconscious consumer: Effects of environment on consumer behavior\. #emph[Journal of Consumer Psychology], #emph[15]\(3\), 193–202\.

Dittmar, H\. \(2005\)\. Compulsive buying—a growing concern? An examination of gender, age, and endorsement of materialistic values as predictors\. #emph[British Journal of Psychology], #emph[96], 467–491\. doi:10\.1348\/000712605X53533

Dholakia, U\., Jung, J\., & Chowdhry, N\. \(2018\)\. Should I buy this when I have so much? Reflection on personal possessions as an anticonsumption strategy\. #emph[Journal of Public Policy & Marketing], 1–14\.

Durvasula, S\., & Lysonski, S\. \(2015\)\. Cross\-national applicability of a parsimonious measure of acculturation to global consumer culture\. #emph[Psychological Reports], #emph[116], 738–750\. doi:10\.2466\/01\.08\.PR0\.116k29w6

Eagle, L\., Dahl, S\., Czarnecka, B\., & Lloyd, J\. \(2014\)\. #emph[Marketing Communications]\. London, UK: Routledge\.

Fornell, C\., & Larcker, D\. F\. \(1981\)\. Evaluating structural equation models with unobservable variables and measurement error\. #emph[Journal of Marketing Research], #emph[18], 39–50\. doi:10\.1177\/002224378101800104

Guo, X\. \(2013\)\. Living in a global world: Influence of consumer global orientation on attitudes toward global brands from developed versus emerging countries\. #emph[Journal of International Marketing], #emph[21]\(1\), 1–22\. doi:10\.1509\/jim\.12\.0065

Hair, J\., Black, W\., Babin, B\., & Anderson, R\. \(2014\)\. #emph[Multivariate data analysis]\. London, UK: Pearson Education\.

Hall, A\. \(2018\)\. #emph[Brits spend £144,000 on ‘impulse buys’ during lifetime, research finds]\. The Independent \[online\]\. Retrieved from https:\/\/www\.independent\.co\.uk\/news\/business\/news\/consumer\-spending\-impulse\-buys\-lifetime\-average\-sweets\-clothes\-takeaways\-coffee\-lunch\-a8159651\.html \[Accessed July 15, 2018\]\.

Han, M\. C\., & Guo, C\. \(2018\)\. How consumer ethnocentrism \(CET\), ethnocentric marketing, and consumer individualism affect ethnocentric behavior in China\. #emph[Journal of Global Marketing], #emph[31]\(5\), 324–338\. doi:10\.1080\/08911762\.2018\.1437649

Heckman, J\. J\. \(2010\)\. Selection bias and self\-selection\. In S\. N\. Durlauf & L\. E\. Blume \(Eds\.\), #emph[Microeconometrics]\. London, UK: Palgrave Macmillan\. \[CrossRef\]\.

Holbrook, M\. B\. \(1987\)\. Mirror, mirror, on the wall, what’s unfair in the reflections on advertising? #emph[Journal of Marketing], #emph[51], 95–104\. doi:10\.2307\/1251650

Holt, D\. B\. \(2002\)\. Why do brands cause trouble? A dialectical theory of consumer culture and branding\. #emph[Journal of Consumer Research], #emph[29], 70–90\. doi:10\.1086\/339922

Horváth, C\., & Adıgüzel, F\. \(2017\)\. Shopping enjoyment to the extreme: Hedonic shopping motivations and compulsive buying in developed and emerging markets\. #emph[Journal of Business Research], #emph[86], 300–310\.

Johanson, G\. A\., & Brooks, G\. P\. \(2010\)\. Initial scale development: Sample size for pilot studies\. #emph[Educational and Psychological Measurement], #emph[70], 394–400\. doi:10\.1177\/0013164409355692

Jones, M\. A\., Reynolds, K\. E\., Weun, S\., & Beatty, S\. E\. \(2003\)\. The product\-specific nature of impulse buying tendency\. #emph[Journal of Business Research], #emph[56]\(7\), 505–511\. doi:10\.1016\/S0148\-2963\(01\)00250\-8

Kacen, J\. J\., & Lee, J\. A\. \(2002\)\. The influence of culture on consumer impulsive buying behaviour\. #emph[Journal of Consumer Psychology], #emph[12], 163–176\. doi:10\.1207\/S15327663JCP1202\_08

Khang, H\., Han, S\., Shin, S\., Jung, A\.\-R\., & Kim, M\.\-J\. \(2016\)\. A retrospective on the state of international advertising research in advertising, communication, and marketing journals: 1963–2014\. #emph[International Journal of Advertising], #emph[35], 540–568\. doi:10\.1080\/02650487\.2015\.1066477

Kline, R\. B\. \(2011\)\. #emph[Methodology in the social sciences\. Principles and practice of structural equation modeling] \(3rd ed\.\)\. New York, NY: Guilford Press\.

KOF \(2018\)\. #emph[KOF globalisation index: Globalisation lull Continues]\. Retrieved from https:\/\/www\.kof\.ethz\.ch\/en\/news\-and\-events\/media\/press\-releases\/2018\/12\/kof\-globalisation\-index\-globalisation\-lull\-continues\.html \[Online\]\. \[Accessed February 14, 2019\]\.

Kraus, S\. J\. \(1995\)\. Attitudes and the prediction of behavior: A meta\-analysis of the empirical literature\. #emph[Personality and Social Psychology Bulletin], #emph[21], 58–75\. doi:10\.1177\/0146167295211007

Kwak, H\., Zinkhan, G\. M\., & Delorme, D\. E\. \(2002\)\. Effects of compulsive buying tendencies on attitudes toward advertising: The moderating role of exposure to TV commercials and TV shows\. #emph[Journal of Current Issues & Research in Advertising], #emph[24]\(2\), 17–32\. doi:10\.1080\/10641734\.2002\.10505132

Liao, S\., Shen, Y\., & Chu, C\. \(2009\)\. The effects of sales promotion strategy, product appeal and consumer traits on reminder impulse buying behaviour\. #emph[International Journal of Consumer Studies], #emph[33], 274–284\. doi:10\.1111\/j\.1470\-6431\.2009\.00770\.x

Luedicke, M\. K\. \(2011\)\. Consumer acculturation theory: \(Crossing\) Conceptual boundaries\. #emph[Consumption Markets & Culture], #emph[14], 223–244\. doi:10\.1080\/10253866\.2011\.574824

Lury, C\. \(2011\)\. #emph[Consumer culture] \(2nd ed\.\)\. Cambridge, UK: Polity Press\.

Lutz, R\.J\., Scott\.B\.M\., & George E\.B\. \(1983\)\. Attitude Toward the Ad As a Mediator of Advertising Effectiveness: Determinants and Consequences\. In Richard P\. Bagozziand Alice M\. Tybout \(Eds\.\), NA\-Advances in Consumer Research \(Vol\. 10, pp\. 532\-539\)\. Ann Abor, MI : Association for Consumer Research\.

Lysonski, S\. D\. & Srinivas \(2015\)\. Predisposition to global brands: The impact of acculturation, ethnocentrism, and materialism\. #emph[Journal of Global Business Management], #emph[11], 88–98\.

Mackenzie, S\. B\., Lutz, R\. J\., & Belch, G\. E\. \(1986\)\. The role of attitude toward the ad as a mediator of advertising effectiveness: A test of competing explanations\. #emph[Journal of Marketing Research], #emph[23], 130–143\. doi:10\.1177\/002224378602300205

Mcallister, M\. P\., & Mazzarella, S\. R\. \(2000\)\. Advertising and consumer culture\. #emph[Mass Communication & Society], #emph[3], 347–350\. doi:10\.1207\/S15327825MCS0304\_01

Mehta, A\. \(2000\)\. Advertising attitudes and advertising effectiveness\. #emph[Journal of Advertising Research], #emph[40], 67–72\. doi:10\.2501\/JAR\-40\-3\-67\-72

Merz, M\. A\., He, Y\., & Alden, D\. L\. \(2008\)\. A categorization approach to analyzing the global consumer culture debate\. #emph[International Marketing Review], #emph[25], 166–182\. doi:10\.1108\/02651330810866263

Mintel Reports \(2015\)\. #emph[Consumer trends 2015 \[Online\]]\. Mintel\. Retrieved from http:\/\/www\.nestpensions\.org\.uk\/schemeweb\/NestWeb\/includes\/public\/news\/Impulse\-buy\-Brits\.html \[Accessed August 25, 2016 2016\]\.

Muthén, L\. K\., & Muthén, B\. O\. \(2012\)\. #emph[Mplus user’s guide] Los Angeles, CA: Muthén & Muthén\.

NEST \(2013\)\. #emph[Impulse\-buy Brits spend £6\.2 billion on things they don’t use \[Online\]]\. www\.nestpensions\.org\.uk\.Retrieved from http:\/\/www\.nestpensions\.org\.uk\/schemeweb\/NestWeb\/includes\/public\/news\/Impulse\-buy\-Brits\.html \[Accessed August 25, 2016 2016\]\.

ONS \(2015\)\. #emph[Internet access–households and individuals: 2015 \[Online\]]\. Office for National Statistics\. Retrieved from http:\/\/www\.ons\.gov\.uk\/peoplepopulationandcommunity\/householdcharacteristics\/homeinternetandsocialmediausage\/bulletins\/internetaccesshouseholdsandindividuals\/2015\-08\-06 \[Accessed July 25, 2016\]\.

Osgood, C\. E\., & Tannenbaum, P\. H\. \(1955\)\. The principle of congruity in the prediction of attitude change\. #emph[Psychological Review], #emph[62]\(1\), 42–55\.

Paek, H\.\-J\., & Pan, Z\. \(2004\)\. Spreading global consumerism: Effects of mass media and advertising on consumerist values in China\. #emph[Mass Communication and Society], #emph[7], 491–515\. doi:10\.1207\/s15327825mcs0704\_7

Penaloza, L\. \(1998\)\. Just doing it: A visual ethnographic study of spectacular consumption behavior at Nike Town\. #emph[Consumption Markets & Culture], #emph[2], 337–400\. doi:10\.1080\/10253866\.1998\.9670322

Penaloza, L\. N\. \(1989\)\. Immigrant consumer acculturation\. In K\. S\. Thomas & U\. T\. Provo \(Eds\.\), #emph[NA \- Advances in Consumer Research] \(Vol\. 6, pp\. 110\-118\)\. Association for Consumer Research\.

Pereira Heath, M\. T\., & Chatzidakis, A\. \(2012\)\. ‘Blame it on marketing’: Consumers’ views on unsustainable consumption\. #emph[International Journal of Consumer Studies], #emph[36], 656–667\. doi:10\.1111\/j\.1470\-6431\.2011\.01043\.x

Peter, H\., & Vladimir, V\. \(2014\)\. Promotion and shoppers’ impulse purchases: The example of clothes\. #emph[Journal of Consumer Marketing], #emph[31], 94–102\.

Podoshen, J\. S\., & Andrzejewski, S\. A\. \(2012\)\. An examination of the relationships between materialism, conspicuous consumption, impulse buying, and brand loyalty\. #emph[Journal of Marketing Theory and Practice], #emph[20], 319–333\. doi:10\.2753\/MTP1069\-6679200306

Prothero, A\., Dobscha, S\., Freund, J\., Kilbourne, W\. E\., Luchs, M\. G\., Ozanne, L\. K\., & Thogersen, J\. \(2011\)\. Sustainable consumption: Opportunities for consumer research and public policy\. #emph[Journal of Public Policy & Marketing], #emph[30], 31–38\. doi:10\.1509\/jppm\.30\.1\.31

PWC \(2016\)\. #emph[Consumer spending trends to 2030 \[Online\]]\. PwC\. Retrieved from http:\/\/www\.pwc\.co\.uk\/services\/economics\-policy\/insights\/uk\-economic\-outlook\/ukeo\-nov13\-consumer\-spending\-trends\-to\-2030\.html \[Accessed March 30, 2016\]\.

Ridgway, N\., Kukar\-Kinney, M\., & Monroe, K\. B\. \(2008\)\. An axpanded conceptualization and a new measure of compulsive buying\. #emph[Journal of Consumer Research], #emph[35], 622–639\. doi:10\.1086\/591108

Schivinski, B\., & Dabrowski, D\. \(2016\)\. The effect of social media communication on consumer perceptions of brands\. #emph[Journal of Marketing Communications], #emph[22], 189–214\. doi:10\.1080\/13527266\.2013\.871323

Sharma, P\., Sivakumaran, B\., & Marshall, R\. \(2010\)\. Impulse buying and variety seeking: A trait\-correlates perspective\. #emph[Journal of Business Research], #emph[63], 276–283\. doi:10\.1016\/j\.jbusres\.2009\.03\.013

Shrum, L\. J\., Mccarty, J\. A\., & Lowrey, T\. M\. \(1995\)\. Buyer characteristics of the green consumer and their implications for advertising strategy\. #emph[Journal of Advertising], #emph[24], 71–82\. doi:10\.1080\/00913367\.1995\.10673477

Silvera, D\. H\., Lavack, A\. M\., & Kropp, F\. \(2008\)\. Impulse buying: The role of affect, social influence, and subjective wellbeing\. #emph[Journal of Business Research], #emph[25], 23–33\. doi:10\.1108\/07363760810845381

Sobol, K\., Cleveland, M\., & Laroche, M\. \(2018\)\. Globalization, national identity, biculturalism and consumer behavior: A longitudinal study of Dutch consumers\. #emph[Journal of Busness Research], #emph[82], 340–353\. doi:10\.1016\/j\.jbusres\.2016\.02\.044

Steenkamp, J\. B\. E\. \(2019\)\. Global versus local consumer culture: Theory, measurement, and future research directions\. #emph[Journal of International Marketing], #emph[27], 1\. doi:10\.1177\/1069031X18811289

Steenkamp, J\. B\. E\., & De Jong, M\. G\. \(2010\)\. A global investigation into the constellation of consumer attitudes toward global and local products\. #emph[Journal of Marketing], #emph[74]\(6\), 18–40\. doi:10\.1509\/jmkg\.74\.6\.18

Stern, H\. \(1962\)\. The significance of impulse buying today\. #emph[Journal of Marketing], #emph[26], 59–62\. doi:10\.2307\/1248439

Stoeckl, V\. E\., & Luedicke, M\. K\. \(2015\)\. Doing well while doing good? An integrative review of marketing criticism and response\. #emph[Journal of Business Research], #emph[68], 2452–2463\. doi:10\.1016\/j\.jbusres\.2015\.06\.032

Stöttinger, B\., & Penz, E\. \(2018\)\. Balancing territorial identities: How consumers manage their ethnic, regional, and national identities in daily life and consumption situations\. #emph[International Marketing Review]\. https:\/\/doi\.org\/10\.1108\/IMR\-03\-2018\-0115

Sulston, J\. \(2012\)\. #emph[Growth, interrupted: Why the planet needs more than just economic development \[Online\]]\. Foreign Affairs \[Online\]\. Retrieved from https:\/\/www\.foreignaffairs\.com\/articles\/2012\-08\-30\/growth\-interrupted \[Accessed December 2, 2017\]\.

Tan, S\. J\., & Chia, L\. \(2007\)\. Are we measuring the same attitude? Understanding media effects on attitude towards advertising\. #emph[Marketing Theory], #emph[7], 353–377\.

Taylor, C\. R\., & Okazaki, S\. \(2015\)\. Do global brands use similar executional styles across cultures? A comparison of US and Japanese television advertising\. #emph[Journal of Advertising], #emph[44], 276–288\. doi:10\.1080\/00913367\.2014\.996306

Thompson, E\. R\., & Prendergast, G\. P\. \(2015\)\. The influence of trait affect and the five\-factor personality model on impulse buying\. #emph[Personality and Individual Differences], #emph[76], 216–221\. doi:10\.1016\/j\.paid\.2014\.12\.025

Unger, A\., & Raab, G\. \(2015\)\. The dark side of globalization and consumption: How similar are Chinese and German consumers toward their proneness to compulsive buying? #emph[Journal of Asia\-Pacific Business], #emph[16], 4–20\. doi:10\.1080\/10599231\.2015\.997624

United Nations \(2017\)\. #emph[Goal 12: Ensure sustainable consumption and production patterns \[Online\]]\. United Nations\. Retrieved from http:\/\/www\.un\.org\/sustainabledevelopment\/sustainable\-consumption\-production\/ \[Accessed December 1, 2017\]\.

Wang, Y\., & Sun, S\. \(2010\)\. Examining the role of beliefs and attitudes in online advertising: A comparison between the USA and Romania\. #emph[International Marketing Review], #emph[27], 87–107\. doi:10\.1108\/02651331011020410

Westjohn, S\. A\., Arnold, M\. J\., Magnusson, P\., & Reynolds, K\. \(2016\)\. The influence of regulatory focus on global consumption orientation and preference for global versus local consumer culture positioning\. #emph[Journal of International Marketing], #emph[24], 22–39\. doi:10\.1509\/jim\.15\.0006

Wolin, L\. D\., Korgaonkar, P\., & Lund, D\. \(2002\)\. Beliefs, attitudes and behaviour towards web advertising\. #emph[International Journal of Advertising], #emph[21], 87–113\. doi:10\.1080\/02650487\.2002\.11104918

Wood, M\. \(1998\)\. Socio\-economic status, delay ofgratification, and impulse buying\. #emph[Journal of Economic Psychology], #emph[19], 295–320\. doi:10\.1016\/S0167\-4870\(98\)00009\-9

Yi, S\., & Baumgartner, H\. \(2011\)\. Coping with guilt and shame in the impulse buying context\. #emph[Journal of Economic Psychology], #emph[32]\(3\), 458–467\. doi:10\.1016\/j\.joep\.2011\.03\.011

Yu, C\., & Bastin, M\. \(2010\)\. Hedonic shopping value and impulse buying behavior in transitional economies: A symbiosis in the Mainland China marketplace\. #emph[Journal of Brand Management], #emph[18]\(2\), 105–114\. doi:10\.1057\/bm\.2010\.32

Zajonc, R\. B\. \(1960\)\. The process of cognitive tuning in communication\. #emph[Journal of Abnormal and Social Psychology], #emph[61]\(2\), 159–167\.

#page(flipped: true)[
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Appendix A] #linebreak() Descriptive statistics, factor loadings \(completely standardized lambda X\), explained variance on each item \(#emph[R]#super[2]\), skewness \(Sk\), kurtosis \(Kur\), Cronbach’s alpha \(α\), composite reliability \(Jöreskog’s Rhô, CR\), factor determinacy \(FD\), and average variance extracted \(Rhô vc, AVE\)\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Measurements]], [#strong[\(λ#sub[x]\)#super[b]]], [#strong[#emph[R]#super[2]]], [#strong[#emph[t]\-value]], [#strong[Mean \(SD\)]], [#strong[Sk]], [#strong[Kur]], [#strong[α\/CR\/FD\/AVE]]),
table.hline(stroke: 0.5pt),
[#emph[AGCC – Cosmopolitanism \(Cleveland & Laroche, 2007\)]], [], [], [], [], [], [], [α \= 0\.89\; CR \= 0\.86\; FD \= 0\.96\; AVE \= 0\.67],
[I am interested in learning more about people who live in other countries\.], [0\.78], [0\.61], [29\.60], [5\.81 \(1\.25\)], [−1\.51], [2\.79], [],
[I like to learn about other ways of life\.], [0\.79], [0\.63], [21\.85], [5\.98 \(1\.09\)], [−2\.03], [6\.02], [],
[I enjoy being with people from other countries to learn about their views and approaches\.], [0\.89], [0\.80], [52\.49], [5\.99 \(1\.16\)], [−1\.79], [4\.50], [],
[#emph[AGCC \- Exposure to marketing activities]], [], [], [], [], [], [], [α \= 0\.79\; CR \= 0\.78\; FD \= 0\.90\; AVE \= 0\.55],
[In my city, there are many billboards and advertising signs for foreign and global products\.], [0\.68], [0\.32], [12\.05], [3\.57 \(2\.20\)], [0\.23], [−1\.46], [],
[It is quite common to see ads for foreign or global products in local media\.], [0\.73], [0\.42], [15\.26], [3\.55 \(2\.19\)], [2\.31], [−1\.58], [],
[When I read a newspaper, I come across many advertisements for foreign or global products\.], [0\.81], [0\.58], [19\.84], [3\.55 \(2\.18\)], [2\.20], [−1\.45], [],
[#emph[AGCC \- English language usage and exposure]], [], [], [], [], [], [], [α \= 0\.75\; CR \= 0\.78\; FD \= 0\.90\; AVE \= 0\.55],
[I feel very comfortable speaking in English\.], [0\.79], [0\.62], [22\.68], [5\.93 \(1\.83\)], [−1\.95], [2\.46], [],
[I often speak English with family or friends\.], [0\.63], [0\.40], [16\.45], [5\.12 \(2\.29\)], [−0\.88], [−0\.87], [],
[I speak English regularly\.], [0\.80], [0\.64], [21\.39], [5\.91 \(1\.88\)], [−1\.86], [2\.03], [],
[#emph[AGCC – Social interactions]], [], [], [], [], [], [], [α \= 0\.75\; CR \= 0\.76\; FD \= 0\.89\; AVE \= 0\.51],
[I prefer spending my vacations outside of the country that I live in\.], [0\.58], [0\.34], [12\.74], [5\.26 \(2\.09\)], [−1\.38], [1\.45], [],
[Visiting foreign countries is one of my favorite things\.], [0\.81], [0\.67], [25\.74], [5\.45 \(2\.04\)], [−1\.05], [−0\.33], [],
[I often think about going to different countries and doing some traveling\.], [0\.75], [0\.56], [19\.39], [5\.43 \(2\.16\)], [2\.04], [0\.27], [],
[#emph[AGCC – Global mass media exposure]], [], [], [], [], [], [], [α \= 0\.80\; CR \= 0\.79\; FD \= 0\.98\; AVE \= 0\.56],
[I enjoy watching Hollywood films at the theater\.], [0\.71], [0\.50], [22\.14], [4\.42 \(2\.33\)], [−0\.36], [−1\.48], [],
[I enjoy watching Hollywood movies that are in English\.], [0\.78], [0\.61], [29\.43], [4\.96 \(2\.29\)], [2\.29], [−0\.93], [],
[Some of my favorite actors\/actresses are from Hollywood\.], [0\.77], [0\.59], [27\.18], [4\.67 \(2\.30\)], [2\.30], [−1\.27], [],
[#emph[AGCC – Openness to and desire to emulate GCC]], [], [], [], [], [], [], [α \= 0\.76\; CR \= 0\.75\; FD \= 0\.98\; AVE \= 0\.50],
[I think people my age are basically the same around the world\. For example, a 20\-something in Nigeria is basically the same as a 20\-something in the US, Germany, or anywhere else\.], [0\.58], [0\.34], [9\.59], [2\.51 \(1\.61\)], [1\.10], [0\.50], [],
[I think that my lifestyle is almost the same as those of my age group in other countries\.], [0\.86], [0\.74], [14\.82], [2\.57 \(1\.01\)], [1\.00], [0\.28], [],
[I think my lifestyle is almost the same as those of people of my social class in other countries\.], [0\.67], [0\.37], [10\.61], [1\.81 \(0\.78\)], [0\.78], [−0\.54], [],
[#emph[AGCC – Self\-identification with global consumer culture]], [], [], [], [], [], [], [α \= 0\.75\; CR \= 0\.78\; FD \= 0\.89\; AVE \= 0\.56],
[The way that I dress is influenced by the advertising activities of foreign or global companies\.], [0\.75], [0\.56], [19\.27], [2\.99 \(1\.97\)], [0\.68], [−0\.84], [],
[Advertising by foreign or global brands has a strong influence on my clothing choices\.], [0\.87], [0\.77], [29\.62], [3\.07 \(1\.97\)], [0\.62], [−0\.94], [],
[I pay attention to the fashions worn by people in my age group who live in other countries\.], [0\.60], [0\.35], [14\.93], [3\.03 \(2\.01\)], [0\.66], [−0\.92], [],
[#emph[Impulsive Buying \(Ridgway et al\., 2008\)]], [], [], [], [], [], [], [α \= 0\.77\; CR \= 0\.77\; FD \= 0\.88\; AVE \= 0\.53],
[I consider myself an impulse purchaser\.], [0\.70], [0\.49], [17\.38], [3\.14 \(1\.86\)], [0\.47], [−1\.05], [],
[I buy things I don’t need\.], [0\.72], [0\.52], [18\.96], [3\.08 \(1\.67\)], [0\.65], [−0\.67], [],
[I buy things I did not plan to buy\.], [0\.77], [0\.60], [22\.57], [3\.83 \(1\.68\)], [0\.09], [−1\.04], [],
[#emph[Attitude towards advertising in general \(Tan & Chia, 2007\)]], [], [], [], [], [], [], [α \= 0\.79\; CR \= 0\.80\; FD \= 0\.96\; AVE \= 0\.58],
[Overall, I consider advertising a good thing\.], [0\.88], [0\.78], [30\.57], [3\.43 \(0\.88\)], [−0\.61], [0\.35], [],
[My general opinion of advertising is unfavorable\. \(reverse scored\)], [0\.52], [0\.27], [11\.12], [3\.23 \(0\.94\)], [−0\.11], [−0\.25], [],
[Overall, I like advertising\.], [0\.85], [0\.72], [35\.03], [3\.40 \(0\.92\)], [−0\.69], [0\.26], [],
[#emph[Beliefs about advertising’s information role]], [], [], [], [], [], [], [α \= 0\.87\; CR \= 0\.88\; FD \= 0\.95\; AVE \= 0\.71],
[Advertising is a valuable source of information about sales\.], [0\.80], [0\.64], [38\.54], [3\.78 \(0\.99\)], [−0\.80], [0\.31], [],
[Advertising tells me which brands have the features I am looking for\.], [0\.88], [0\.78], [57\.55], [3\.67 \(0\.98\)], [−0\.84], [0\.39], [],
[Advertising helps me keep up to date about products\/services available in the marketplace\.], [0\.86], [0\.73], [51\.20], [3\.77 \(0\.93\)], [−1\.06], [1\.15], [],
[#emph[Beliefs about advertising’s role in creating social image]], [], [], [], [], [], [], [α \= 0\.86\; CR \= 0\.86\; FD \= 0\.94\; AVE \= 0\.68],
[From advertising, I learn about fashions and about what to buy to impress others\.], [0\.87], [0\.75], [49\.49], [3\.1 \(1\.17\)], [−0\.22], [−0\.84], [],
[Advertising tells me what people with lifestyles similar to mine are buying and using\.], [0\.84], [0\.71], [44\.77], [3\.22 \(1\.09\)], [−0\.35], [−0\.61], [],
[Advertising helps me know which products will or will not reflect the sort of person I am\.], [0\.77], [0\.59], [32\.30], [2\.95 \(1\.14\)], [−0\.09], [−0\.92], [],
[#emph[Beliefs about advertising’s hedonic attributes]], [], [], [], [], [], [], [α \= 0\.80\; CR \= 0\.81\; FD \= 0\.93\; AVE \= 0\.59],
[Quite often, advertising is amusing and entertaining\.], [0\.69], [0\.48], [23\.50], [3\.65 \(0\.90\)], [−0\.62], [0\.37], [],
[Sometimes I take pleasure in thinking about what I saw or heard or read in advertisements\.], [0\.86], [0\.73], [42\.55], [3\.33 \(1\.09\)], [−0\.55], [−0\.38], [],
[Sometimes advertisements are even more enjoyable than other media contents\.], [0\.75], [0\.57], [29\.30], [3\.25 \(1\.15\)], [−0\.41], [−0\.64], [],
[#emph[Beliefs about advertising’s economic role]], [], [], [], [], [], [], [α \= 0\.75\; CR \= 0\.75\; FD \= 0\.93\; AVE \= 0\.50],
[In general, advertising helps our nation’s economy\.], [0\.71], [0\.40], [16\.78], [3\.44 \(0\.95\)], [−0\.65], [0\.37], [],
[Mostly, advertising is wasteful of economic resources\.], [0\.69], [0\.38], [15\.83], [3\.37 \(1\.00\)], [−0\.20], [−0\.47], [],
[In general, advertising promotes competition, which benefits the consumer\.], [0\.73], [0\.46], [19\.43], [3\.62 \(0\.94\)], [−0\.62], [0\.198], [],
[#emph[Beliefs about advertising’s deceptive role]], [], [], [], [], [], [], [α \= 0\.77\; CR \= 0\.77\; FD \= 0\.89\; AVE \= 0\.52],
[In general, advertising is misleading\.], [0\.77], [0\.60], [22\.85], [3\.36 \(0\.93\)], [−0\.18], [−0\.09], [],
[Most advertising insults the intelligence of the average consumer\.], [0\.73], [0\.53], [21\.66], [3\.28 \(1\.00\)], [−0\.16], [−0\.45], [],
[In general, advertisements present a true picture of the product advertised\.], [0\.68], [0\.35], [17\.53], [3\.43 \(0\.99\)], [−0\.18], [−0\.50], [],
[#emph[Beliefs about advertising promoting materialism]], [], [], [], [], [], [], [α \= 0\.79\; CR \= 0\.80\; FD \= 0\.90\; AVE \= 0\.58],
[Advertising promotes undesirable values in our society\.], [0\.57], [0\.33], [15\.42], [3\.07 \(1\.00\)], [−0\.05], [−0\.36], [],
[Advertising makes people buy unaffordable products just to show off\.], [0\.86], [0\.74], [33\.25], [3\.44 \(1\.06\)], [−0\.50], [−0\.30], [],
[Advertising makes people live in a world of fantasy\.], [0\.83], [0\.70], [31\.80], [3\.40 \(1\.03\)], [−0\.38], [−0\.30], [],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]\. Reverse\-scored item marked \"\(reverse scored\)\"\. AGCC and impulsive buying items anchored from 1 \= strongly disagree to 7 \= strongly agree\; attitude towards advertising and beliefs about advertising items anchored from 1 \= strongly disagree to 5 \= strongly agree\.]
]
#v(12pt)
]
#page(flipped: true)[
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Appendix B] #linebreak() Correlation matrix of the effects of the multifactorial CFA models]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 7pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Construct]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]], [#strong[8]], [#strong[9]], [#strong[10]], [#strong[11]], [#strong[12]], [#strong[13]], [#strong[14]], [#strong[15]]),
table.hline(stroke: 0.5pt),
[1\. AGCC – Cosmopolitanism], [#emph[0\.81]], [], [], [], [], [], [], [], [], [], [], [], [], [], [],
[2\. AGCC – Exposure to marketing activities], [0\.16], [#emph[0\.74]], [], [], [], [], [], [], [], [], [], [], [], [], [],
[3\. AGCC – English language usage and exposure], [0\.11], [0\.01], [#emph[0\.74]], [], [], [], [], [], [], [], [], [], [], [], [],
[4\. AGCC – Social interactions], [0\.22], [0\.03], [0\.13], [#emph[0\.71]], [], [], [], [], [], [], [], [], [], [], [],
[5\. AGCC – Global mass media exposure], [−0\.01], [0\.17], [0\.28], [0\.27], [#emph[0\.74]], [], [], [], [], [], [], [], [], [], [],
[6\. AGCC – Openness to and desire to emulate GCC], [0\.01], [0\.20], [0\.02], [−0\.09], [0\.01], [#emph[0\.70]], [], [], [], [], [], [], [], [], [],
[7\. AGCC – Self\-identification with global consumer culture], [−0\.02], [0\.27], [−0\.02], [0\.21], [0\.38], [0\.09], [#emph[0\.74]], [], [], [], [], [], [], [], [],
[8\. Impulsive buying], [−0\.02], [0\.13], [−0\.08], [0\.10], [0\.31], [−0\.02], [0\.21], [#emph[0\.72]], [], [], [], [], [], [], [],
[9\. Attitude towards advertising], [0\.07], [0\.13], [0\.01], [0\.03], [0\.39], [0\.01], [0\.22], [0\.23], [#emph[0\.76]], [], [], [], [], [], [],
[10\. Beliefs about advertising’s information role], [0\.08], [0\.21], [0\.02], [0\.16], [0\.39], [0\.04], [0\.28], [0\.15], [0\.71], [#emph[0\.84]], [], [], [], [], [],
[11\. Beliefs about advertising’s role in creating social image], [0\.06], [0\.24], [−0\.06], [0\.21], [0\.38], [0\.08], [0\.43], [0\.14], [0\.44], [0\.65], [#emph[0\.82]], [], [], [], [],
[12\. Beliefs about advertising’s hedonic attributes], [0\.11], [0\.17], [−0\.09], [0\.16], [0\.35], [−0\.02], [0\.34], [0\.15], [0\.69], [0\.61], [0\.67], [#emph[0\.76]], [], [], [],
[13\. Beliefs about advertising’s economic role], [0\.10], [0\.15], [0\.05], [0\.17], [0\.37], [−0\.05], [0\.28], [0\.23], [0\.71], [0\.68], [0\.57], [0\.68], [#emph[0\.70]], [], [],
[14\. Beliefs about advertising’s deceptive role], [0\.02], [0\.11], [−0\.09], [−0\.03], [−0\.21], [−0\.07], [−0\.12], [0\.05], [−0\.57], [−0\.39], [−0\.16], [−0\.31], [−0\.45], [#emph[0\.72]], [],
[15\. Beliefs about advertising promoting materialism], [0\.02], [0\.01], [−0\.09], [0\.03], [−0\.11], [−0\.06], [−0\.01], [−0\.01], [−0\.28], [−0\.08], [0\.06], [−0\.10], [−0\.15], [0\.52], [#emph[0\.76]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[The square root of the average variance extracted values appears in italics\. Pairwise correlations 1–9 denote the first CFA model: MLR χ#super[2]#sub[\(288\)] \= 343\.92, CFI \= 0\.98, TLI \= 0\.97, RMSEA \= 0\.02 \[90% C\.I\. 0\.01–0\.02\]\; Pairwise correlations 10–11 \(including the first CFA model\) denote the second CFA model: MLR χ#super[2]#sub[\(840\)] \= 1,389\.09, CFI \= 0\.91, TLI \= 0\.90, RMSEA \= 0\.03 \[90% C\.I\. 0\.03–0\.04\]\; n \= 426\.]
]
#v(12pt)
]
#pagebreak()
= Appendices C–H
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The moderating role of attitudes towards advertising in general \(Appendix C\) and of beliefs about advertising’s hedonic attributes \(D\), role in creating social image \(E\), information role \(F\), the belief that advertising is good for the economy \(G\) and beliefs about advertising’s deceptive role \(H\) on impulsive buying\.]

#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Appendices C–H\. Mean impulsive buying at low and high levels of AGCC, for low, average and high levels of each moderator \(redrawn from the published plots\)\.]]
#v(0.6em)

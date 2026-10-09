#set document(title: "Measuring consumers’ engagement with brand\-related social\-media content: Development and validation of a scale that identifies levels of social\-media engagement with brands", author: ("Bruno Schivinski", "George Christodoulides", "Dariusz Dabrowski"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Schivinski, Christodoulides and Dabrowski \(2016\), accepted manuscript #h(1fr) Journal of Advertising Research] },
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
#text(size: 19pt, weight: "bold", hyphenate: false)[Measuring consumers’ engagement with brand\-related social\-media content: Development and validation of a scale that identifies levels of social\-media engagement with brands]
#v(0.8em)
#text(size: 12pt)[Bruno Schivinski, George Christodoulides, Dariusz Dabrowski]
#v(0.2em)
#text(size: 10pt, style: "italic")[Nottingham Trent University; Birkbeck, University of London; Gdańsk University of Technology \(affiliations at the time of publication\)]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Schivinski, B\., Christodoulides, G\., & Dabrowski, D\. (2016). Measuring consumers’ engagement with brand\-related social\-media content: Development and validation of a scale that identifies levels of social\-media engagement with brands. #emph[Journal of Advertising Research, 56]\(1\), 64–80. #link("https://doi.org/10.2501/JAR-2016-004")[https:\/\/doi.org\/10\.2501\/JAR\-2016\-004]
  #v(0.9em)
  This is an Accepted Manuscript of an article published in Journal of Advertising Research, 56\(1\), 64–80, March 2016, published by the Advertising Research Foundation and now available from Taylor & Francis: #link("https://doi.org/10.2501/JAR-2016-004")[https:\/\/doi.org\/10\.2501\/JAR\-2016\-004]
  #v(0.9em)
  This is the authors' accepted manuscript. Its content is that of the published article; it differs only in
  formatting and pagination. Please cite the published version.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.github.io/papers/measuring-consumer-engagement-social-media-content.html")[schivinski.github.io]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Measuring Consumers’ Engagement With Brand\-Related Social\-Media Content: Development and Validation of a Scale that Identifies Levels of Social\-Media Engagement with Brands]]
#v(0.6em)
#par(first-line-indent: 0em)[Bruno Schivinski, George Christodoulides, and Dariusz Dabrowski]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[Bruno Schivinski, Nottingham Trent University; George Christodoulides, Birkbeck, University of London; Dariusz Dabrowski, Gdansk University of Technology]]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() The purpose of the current study was to develop a scale to measure the consumer’s engagement with brand\-related social\-media content, based on three dimensions established in the framework of an earlier theoretical construct, “Consumer’s Online Brand\-Related Activities” \(Muntinga, Moorman, and Smit, 2011\)\. Qualitative techniques were used to generate an initial pool of items that captured different levels of consumer engagement with consumption, contribution, and creation of brand\-related social\-media content\. Quantitative data from a survey of 2,252 consumers across Poland then was collected in two phases to calibrate and validate the ensuing scale, measuring participants’ engagement, with nearly 300 brands spanning a range of industries\. Results confirmed the structure and psychometric properties of the scale\.]
#block(width: 100%, inset: (x: 12pt, y: 10pt), stroke: (left: 2pt + rgb("#8a5a00")), fill: rgb("#f6f7f9"))[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Management slant]
#pad(left: 0.4em)[#par(hanging-indent: 1em)[•#h(0.5em)Advertisers can use the authors’ “Consumers’ Engagement With Brand\-Related Social\-Media Content” scale as an instrument for auditing and tracking the effectiveness of social media marketing strategies\.]]
#pad(left: 0.4em)[#par(hanging-indent: 1em)[•#h(0.5em)Each individual item of the reported scale provides advertisers with specific brand\-related social\-media activities they could pursue\.]]
#pad(left: 0.4em)[#par(hanging-indent: 1em)[•#h(0.5em)Brand equity and brand attitudes correlate positively and significantly with individual brand\-related social\-media activities\.]]
]
#v(0.6em)
= Introduction
#par(first-line-indent: 0em)[Social networking sites such as Facebook, YouTube, and Twitter have become increasingly important in consumers’ lives and influence their communication habits\. With consumers deeply engaging in social media, an increasing share of communication is occurring in these new environments \(Berthon, Pitt, and Campbell, 2008\)\.]

In contrast with the static websites in the early days of the Internet, the interactive nature of social media ultimately has changed how consumers engage with brands\. When using social media on a regular basis, consumers come into contact with myriad brands and products by reading, writing, watching, commenting, “Liking,” sharing, and so forth\.

Despite the growing amount of research on consumers’ engagement with brands on social media, the authors of the current paper believe that operationalization of this factor is largely fragmented and still is at a nascent stage \(Schultz and Peltier, 2013\)\. The goal of the current study is to fill the measurement gap regarding consumers’ engagement with brand\-related content on social media by developing— and validating—a scale that differentiates between the levels and types of engagement with brands on social media\.

A 2014 study addressed the need for an instrument to capture consumers’ engagement with brands on social media by developing a scale to measure such engagement in a brand community \(Hollebeek, Glynn, and Brodie, 2014\)\. The current scale took the concept a step further by

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)measuring engagement with brand\-related social\-media content rather than engagement with the brand #emph[per se];]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)defining and measuring “engagement” as a behavioral construct rather than an affective\/cognitive and behavioral one\.]]
The current scale, furthermore, demonstrates conceptual divergence from a metric proposal introduced for customer engagement on Facebook \(Oviedo\-Garcia, Munoz\-Exposito, Castellanos\-Verdugo, and Shancho\-Mejias, 2014\)\. Specifically, the authors

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)adopted a pencil\-and\-paper survey approach instead of a calculation of fixed parameters based on mathematical formulas;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)focused on the consumer and not on the organizational perspective;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)emphasized a more comprehensive range of brand\-related activities, which makes the current scale a flexible instrument independent of Facebook metrics \(#emph[e\.g\.], number of “Likes,” comments, shares, posts, and other clicks\)\.]]
The current research drew on an earlier behavioral construct that encompasses consumer activities pertaining to brand\-related content on social media \(Muntinga, Moorman, and Smit, 2011\), known as the “Consumer’s Online Brand\-Related Activities” framework\.

Considering the increasing role of brand communication on social media, the authors believe researchers and practitioners should have a measurement instrument that not only covers a vast range of brand\-related social\-media activities but also differentiates across levels of media engagement from a consumer’s point of view\. This study is a first step in that direction\.

The authors have extended the earlier framework by introducing—and describing its systematic development and validation—a “Consumer’s Engagement With Brand\-Related Social\-Media Content” \(CEBSC\) scale\. In support of that program, the authors used a combination of qualitative and quantitative research methods\.

The following research objectives, therefore, were proposed:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)#strong[RO1:] To identify and categorize individual Consumer’s Online Brand\-Related Activities;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)#strong[RO2:] To test the factorial validity of scores from the authors’ CEBSC scale;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)#strong[RO3:] To test whether a hierarchical relationship existed among the dimensions of the framework;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)#strong[RO4:] To validate the psychometric properties of the scale with nomological network constructs\.]]
= Literature Review
== Consumers’ Online Brand\-Related Activities
#par(first-line-indent: 0em)[Consumers’ interests in brands on the Internet began in the 1990s, when people started using bulletin boards on sites such as Yahoo and AOL to share their preferences for and opinions about products \(Kozinets, 2001\)\.]

The development of Internet technology supported a new dimension of consumer involvement with brands on social media \(Li and Bernoff, 2011\)\. Online environments such as blogs, wikis, media\-sharing sites, social\-networking sites, and other social\-media–based websites have significantly extended the manner and depth of consumer–brand interactions \(Christodoulides, 2009\)\.

Consumers use an array of tools and resources on social media to engage with brands\. Nevertheless, different brand\-related activities on social media may entail different levels of engagement\. For instance,

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)When consumers see a picture or watch a movie displaying a Harley\-Davidson motorcycle, they are consuming brand\-related media;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)When consumers engage with media by commenting on a post or “Liking” a piece of content, they are moving from the stage of “observer” to a “media contributor”;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)When consumers decide to upload a picture of their new Chuck Taylor All\-Star sneakers on Facebook, they are creating brand\-related content\.]]
These three levels of consumer engagement with brands on social media appeared in an earlier model’s “Consumer’s Online Brand\-Related Activities” framework \(Muntinga #emph[et al\.], 2011\) as consumption, contribution, and creation dimensions\.

The current authors believe they have extended the literature on social media, user\-generated content, and engagement\. They describe their scale as a “pencil\-and\-paper\-type instrument” that allows theoreticians and practitioners to gauge different levels of consumers’ engagement with brand\-related content on social media\.

Conceptually, this research draws from earlier work\. In one exploratory study, boundaries were defined according to the level of consumer engagement with user\-generated media and suggested that people engage with such media in three ways \(Shao, 2009\):

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)by consuming,]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)by participating, and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)by producing brand\-related media\.]]
Scholars further investigated consumers’ motivations for engaging in online brand\-related activities by validating the theoretical Consumer’s Online Brand\-Related Activities framework \(Muntinga #emph[et al\.], 2011\)\. In that study, the researchers had analyzed the online activities of 20 consumers who had used instant\-message interviews and suggested three dimensions of analysis: “consumption,” “contribution,” and “creation\.” Although that study’s authors had introduced the framework of the Consumer’s Online Brand\-Related Activities theory, they did not provide a formal definition of it\.

To guide their enhancement, conceptualization, and measurement of the framework, the current authors, therefore, proposed their own definition:

“A set of brand\-related online activities on the part of the consumer that vary in the degree to which the consumer interacts with social media and engages in the consumption, contribution, and creation of media content\.”

The consuming dimension has its roots in marketing literature and includes consumers’ participation in networks and online brand communities \(#emph[e\.g\.], Armstrong and Hagel, 1996; Dholakia, Bagozzi, and Pearo, 2004; Kozinets, 1999; Muniz and O’Guinn, 2001\)\. This type of Consumer’s Online Brand\-Related Activities program represents a minimum level of engagement and refers to consumers who passively consume brand\-related media without participating \(Muntinga #emph[et al\.], 2011; Shao, 2009\)\.

The consumption of brand\-related content includes both firm\-created and user\-generated media, and, therefore, no distinction of communication sources is anticipated\. This is the most frequent type of online brand\-related activity among consumers \(Muntinga #emph[et al\.], 2011\)\.

The contributing dimension includes both peer\-to\-peer and peer\-to\-content interactions about brands \(Shao, 2009\)\. This dimension does not include actual creation but rather reflects consumers’ contribution to brand\-related content through participation in media previously created by either a company or another individual\.

Because of its interactive nature, the contributing dimension has gained popularity among practitioners and brand researchers \(Dickinson\-Delaporte and Kerr, 2014\)\. Research on this type of consumer online brand\-related activity can be traced back to studies on brand\-related electronic word of mouth \(#emph[e\.g\.], Chevalier and Mayzlin, 2006; Dellarocas, Zhang, and Awad, 2007; Hennig\-Thurau, Gwinner, Walsh, and Gremler, 2004; Hung and Li, 2007\) and online customer reviews \(#emph[e\.g\.], Ho\-Dac, Carson, and Moore, 2013; Zhu and Zhang, 2010\)\.

More recently, researchers have given attention to consumers who “Like” brands \(#emph[e\.g\.], Nelson\-Field, Riebe, and Sharp, 2012; Wallace, Buil, De Chernatony, and Hogan, 2014\) or share brand\-related content on social media \(#emph[e\.g\.], Belk, 2014; Brettel, Reich, Gavilanes, and Flatten#emph[,] 2015; Craig, Greene, and Versaci, 2015; Shi, Rui, and Whinston, 2014\)\.

Finally, the creating dimension involves consumers’ creation and online publication of brand\-related content\. Studies on consumer involvement in the creation of brand\-related content are grounded in product cocreation \(#emph[e\.g\.], Füller, Bartl, Ernst, and Mühlbacher, 2006; Füller, Mühlbacher, Matzler, and Jawecki, 2009; Prahalad and Ramaswamy, 2002\) and consumer empowerment \(#emph[e\.g\.], Pires, Stanton, and Rita, 2006; Wathieu, Brenner, Carmon, Chattopadhay #emph[et al\.], 2002; Wright, Newman, and Dennis, 2006\)\.

More recent studies have focused on user\-generated content \(#emph[e\.g\.], Berthon #emph[et al\.], 2008; Bruhn, Schoenmueller, and Schäfer, 2012; Christodoulides, Jevons, and Bonhomme, 2012; Daugherty, Eastin, and Bright, 2008; Hautz, Füller, Hutter, and Thürridl, 2013; Schivinski and Dabrowski, 2014, 2015\)\.

The creating dimension, therefore, represents the strongest level of online brand\-related engagement \(Muntinga #emph[et al\.], 2011\) in that the content consumers generate may be a stimulus for further consumption and\/or contribution by other peers\.

From this discussion, note that the same person may act as a consumer, contributor, and creator of content for the same brand concurrently or successively, depending on situational factors\. Likewise, the same consumer may choose to contribute for one brand but only consume content for another brand\. Consequently, by including the above three dimensions into the Consumer’s Online Brand\-Related Activities framework, researchers may gain a richer understanding of the phenomena\.

In this context, the authors articulate Consumers’ Online Brand\-Related Activities as a three\-factor framework and expect its three constituent dimensions to be positively correlated\.

= Methodology
#par(first-line-indent: 0em)[To reach the four anticipated research objectives, the authors followed a multistage process of scale development and validation \(#emph[e\.g]\., Churchill, 1979\)\. Five studies—three qualitative and two quantitative—were conducted in Poland\.]

To accomplish #strong[RO1], three qualitative studies were designed to extend the preliminary set of Consumer’s Online Brand\-Related Activities reported in the literature \(Li and Bernoff, 2011; Muntinga #emph[et al\.,] 2011\), consequently aiming for a broader exploration of individual activities, for which the authors used

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)Study 1: online focus groups;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)Study 2: online depth interviews;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)Study 3: netnography\.\.]]
The outcomes of the qualitative studies served as a basis to achieve the subsequent research objectives\. Therefore, the authors prepared an initial pool of items that was used to further develop the CEBSC scale\.

Two quantitative studies followed:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)Study 4: This study was designed to address both #strong[RO2] and #strong[RO3]\. The authors calibrated and tested the measurement instrument with a confirmatory factor analysis and further subjected it to a #emph[post hoc] analysis to investigate whether a hierarchical relationship indeed existed among the Consumer’s Online Brand\-Related Activities framework dimensions;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)Study 5: Finally, to achieve #strong[RO4], an additional data collection \(with a new sample of consumers\) was used to verify the structure and psychometric properties of the scale and established the criterion\-related validity of the instrument \(with brand equity and brand attitudes\)\.]]
For an extensive list of activities pertinent to each dimension of the Consumer’s Online Brand\-Related Activities framework \(#emph[i\.e\.], consumption, contribution, creation\) considered in the five studies, see Appendix A\.

= Qualitative Exploration
== Study 1: Online Focus Groups
#par(first-line-indent: 0em)[The purpose of Study 1 was to elaborate on the brand\-related social\-media activities previously reported in the literature \(Li and Bernoff, 2011; Muntinga #emph[et al\.], 2011\)\.]

To that end, the authors administrated two online focus groups \(bulletin boards\) using the service Google Groups for a two\-week period\. In total, 25 respondents participated in the study and were divided into two groups:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)12 respondents who passively consumed \(bulletin board 1: consumption\);]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)13 who created brand\-related content \(bulletin board 2: creation\)]]
The current authors believe that activities pertinent to the contributing dimension should emerge spontaneously because it intermediates the consuming and creating dimensions\. The division of respondents— according to their level of engagement with brands on social media—helps better capture the content domain, thus addressing the primary purpose of the study \(#emph[i\.e\.,] further exploration of Consumer’s Online Brand\-Related Activities theory\)\. For this exploratory step, the authors used an asynchronous method of online focus groups with bulletin boards \(Fox #emph[et al\.], 2007\)\.

To participate in bulletin board 1, the respondents needed to use the Internet daily and actively follow brands on social media\. The same criteria were required for participation in bulletin board 2, plus respondents needed to have created at least three pieces of content for at least one brand\. Those who did not fulfill these criteria were not allowed to take part in the studies\.

Respondents’ ages ranged from 18 to 34 years\. The respondents affirmed that they spent from two to five hours online daily\. The majority of respondents \(47 percent\) declared using at least one social\-media channel; 33 percent “frequently” used two services; the remaining used three or more services\. The sample was evenly distributed according to gender\.

Both bulletin boards were administered daily by one moderator\. The role of the moderator was to post new entries and motivate the respondents to engage in the discussion\. The moderator also provided explanation to respondents in case of doubts, though without solving any of the tasks for them\.

Throughout the study, the respondents were asked such exploratory questions as:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)“What sort of activities \[things\] do you do on social media that involve brands?”]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)“Can you name activities that motivate Internet users to be engaged with a brand?”]]
== Study 1 Results
#par(first-line-indent: 0em)[The outcomes of Study 1 included activities belonging to the three types of consumer online brand\-related activities \(#emph[i\.e\.], consumption, contribution, and creation\)\. Activities the respondents mentioned included]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)following a brand on social media;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)watching brand\-related videos, picture, and images;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)commenting on brand\-related posts; and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)writing brand\-related content on blogs\.]]
Although the outcomes of Study 1 closely matched the activities reported previously in the literature, the authors wanted to confirm and complement the list of consumer online brand\-related activities using a synchronous data collection method\.

== Study 2: Online Depth Interviews
#par(first-line-indent: 0em)[The goals of Study 2 were]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)to confirm the previous list of consumer online brand\-related activities with a different sample of Internet users through a synchronous data collection method, and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)to discover activities that remained undetected in Study 1\.]]
In total, 32 consumers were interviewed by means of online instant messaging\-based software\. To recruit respondents, the authors used similar criteria to those in Study 1\. The sample also had a similar structure to that in Study 1\.

Three interviewers received training and were informed about the research objectives and goals\. During the interviews, the respondents were asked to recall the brands they followed on social media and give examples of activities they took part in according to the given level of online brand\-related engagement \(#emph[i\.e\.], consumption, contribution, and creation\)\.

== Study 2 Results
#par(first-line-indent: 0em)[The results generated from Study 2 enhanced the outcomes from Study 1\. As expected, the online depth interviews uncovered activities that were not previously detected with the asynchronous research method, including]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)subscribing to a brand\-related video channel,]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)commenting on a brand\-related fan page, and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)publishing a brand\-related picture of a product\.]]
The results of both Studies 1 and 2 provided an extensive list of consumer online brand\-related activities that the respondents could recall from memory\. The authors, therefore, designed a subsequent study to cover online brand\-related activities that were possibly forgotten by the respondents using a less obtrusive research method\.

== Study 3: Netnography
#par(first-line-indent: 0em)[This study’s objectives were to:]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)verify whether the activities obtained from the literature and Studies 1 and 2 were commonly found across social\-media channels, and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)identify activities that the respondents could not recall from memory\.]]
To reach the given objectives, the current authors applied netnography, a technique they believe is far less obtrusive than the ones used previously, mainly because it entails observing consumers’ online behavior in a context not established by the researcher \(Kozinets, 2002\)\.

Five researchers were trained to perform the netnography; none had access to the outcomes of the first and second stages of the research\. The investigators were instructed to observe actions on the Internet and generate a list of consumer online brand\-related activities\.

The observations were held across social\-media channels the respondents had listed during Studies 1 and 2\. At the end of the procedure, the authors reviewed the outcomes of the investigations and generated a single list\.

== Study 3 Results
#par(first-line-indent: 0em)[As expected, the results of Study 3 rendered a more extensive list of activities than the previous two studies\. Activities such as downloading brand\-related widgets, clicking on brand\-related advertisements, and rating a branded product were included in the final Consumer’s Online Brand\-Related Activities typology\.]

The outcomes of the three qualitative studies collectively made up an initial pool of 35 items to measure Consumer’s Online Brand\-Related Activities along the lines of the current framework’s three dimensions:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The consuming dimension was measured with 12 items\. This scale measures the level of users’ engagement in passive consumption of media by reading, watching, and following brands on social media\.]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The contributing dimension was measured with 15 items\. This scale captures the intermediary level of consumers’ engagement with a brand on social media\. Activities that belong to this level require consumers to interact with the brand by “Liking,” sharing, and commenting\.]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The creating dimension was measured by eight items\. This scale captures the highest level of consumer engagement with brands on social media by creating content in the form of texts, images, and videos\.]]
= Quantitative Analysis
== Study 4: Scale Development, Calibration, and #emph[Post Hoc] Analysis
#par(first-line-indent: 0em)[A robust fourth study entailed developing, calibrating, and testing the authors’ CEBSC scale\. The authors also performed a #emph[post hoc] analysis that assessed the hierarchical relationships of the consumption, contribution, and creation dimensions\.]

== Scale Development: Item Reduction and Reliability
#par(first-line-indent: 0em)[For Study 4, the authors developed a questionnaire from the initial item pool\. Respondents were asked to indicate their level of agreement with each of the 35 statements using a 7\-point Likert scale anchored by “not very often” and “very often\.” The respondents could also select the option “not at all” \(coded as 0\)\.]

A sample of 48 undergraduate business students pretested the questionnaire\. All the students mentioned that they follow brands in different social\-media channels\. Minor changes to the order and wording of questions were made after the pretest\.

The main data collection was conducted online\. Rather than using probability sampling during the recruiting process, the authors recruited respondents by extending invitations in several social\-media channels, online forums, and discussion groups\. They weighted the final sample demographically to ensure that its characteristics represent the Internet users in Poland \(Fulgoni, 2014; GUS Central Statistical Office, 2012\)\.

The authors made no #emph[a priori] behavioral distinction between respondents in the sampling strategy \(#emph[i\.e\.], consumers, contributors, and creators of brand\-related social\-media content\), to avoid a skewed distribution of the sample and to ensure that the final instrument could be used with typical consumers independent of their level of engagement with a brand\.

The invitation to the survey consisted of informative text highlighting the broad topic of the study\. After clicking on the survey’s link, respondents were redirected to the questionnaire\. The survey was divided into blocks:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The introduction presented an explanatory description of the general objectives of the study and distinguished among the three types of consumer online brand\-related activities;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The second block consisted of demographic questions;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The third block asked the respondents to enter a brand they actively followed on social media\. Examples of engagement with brands on social media were briefly described\. The respondents were also informed that they would be using the chosen brand throughout the survey;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)To capture the CEBSC scale dimensions, three additional blocks were individually presented to the respondents; each contained the scale for a single dimension\. The authors randomized the order of the blocks and the scale within each block to avoid systematic order effects\.]]
A sample of 2,578 Polish consumers participated in the study\. Invalid and incomplete questionnaires were rejected \(12\.65 percent\), resulting in 2,252 valid questionnaires \(87\.35 percent\)\. Women represented 59\.6 percent of the respondents\. The age of the respondents ranged from 18 to 62 years, with a median age of 26 to 29 years \(53\.8 percent\)\. The education level of the sample ranged from primary school to higher education, with a median of at least some college education\. Total daily Internet usage ranged from up to one hour to more than six hours, with a median Internet usage of up to two hours daily\.

In total, the authors analyzed 299 brands spanning a range of industries, including amusement and recreation, apparel and accessories, automotive, beverages, food, hi\-tech, mobile operators, and perfumes and cosmetics\.

To verify the levels of consumers’ engagement with brands on social media, the authors computed the mean scores for the three dimensions of the CEBSC scale\. On average, respondents reported higher levels of consumption engagement \(#emph[M] \= 3\.68, #emph[SD] \= 1\.60\) than contribution engagement \(#emph[M] \= 2\.65, #emph[SD] \= 1\.52\) and creation engagement \(#emph[M] \= 2\.02, #emph[SD] \= 1\.36; See Appendix B\)\.

For managerial relevance, the authors evaluated the levels of consumer engagement with consumption, contribution, and creation of brand\-related social\-media content along a continuum, specifically:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The lower \(higher\) the score in the CEBSC scale dimension, the lower \(higher\) is the individual’s engagement\.]]
Because the CEBSC scale is a metric instrument, any threshold fixed to determine low–high levels of consumer engagement is arbitrary \(Vernette and Hamdi\-Kidar, 2013\)\. Therefore, to assess the sample’s proportion of low–high consumers, contributors, and creators of brand\-related social\-media content, the authors opted to use the first upper and lower deciles as a threshold \(top 10 percent and 90 percent\)\. The proportion of low and high consumers partaking in brand\-related social\-media content was

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)12\.7 percent and 7\.9 percent;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)that of contributors was 18\.9 percent and 8\.4 percent;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)that of creators was 40\.8 percent and 9\.5 percent, respectively\.]]
The authors then randomly split the usable sample into calibration and validation samples \(Churchill, 1979; Cudeck and Browne, 1983; Gerbing and Anderson, 1988\)\. Each sample consisted of 1,126 consumers\. The calibration sample served to develop the scale, and the validation sample served to verify its dimensionality, as well as establishing its psychometric properties \(See Appendix C\)\.

The authors performed an exploratory factor analysis with the maximum\-likelihood estimation method and Promax orthogonal factor rotation using IBM SPSS software package version 21\.0 \(IBM Corp\., Armonk, NY\)\. Factor extraction followed the MINEIGEN criterion \(#emph[i\.e\.], all factors with eigenvalues \>1\)\. The Kaiser–Meyer– Olkin measure of sampling adequacy value was 0\.97, with a significant chi\-square value for the Bartlett test of sphericity, χ² \= 25243\.07, #emph[p] \< 0\.001, indicating that sufficient correlations exist among the variables \(Hair, Black, Babin, and Anderson, 2014\)\. Thus, the exploratory factor analysis was appropriate for the data\.

Four items had cross\-loading issues and failed to exhibit a simple factor structure; therefore, they were removed from the analysis\. The final structure of the CEBSC scale included 31 items, which reflected a three\-factor solution and accounted for 55\.33 percent of the total variance\. The internal consistency \(Cronbach’s alpha\) of the measurement instrument was as follows:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)consumption α \= 0\.90 \(12 items\),]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)contribution α \= 0\.93 \(11 items\), and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)creation α \= 0\.94 \(8 items\)\.]]
The Cronbach’s alpha value for each of the three dimensions demonstrates the internal consistency of the scales \(Nunnally, 1978\)\. The correlations between the CEBSC scale dimensions were positive and significant \(consumption–creation: #emph[r] \= 0\.72; contribution–creation: #emph[r] \= 0\.65; consumption–contribution: #emph[r] \= 0\.50\)\.

== Scale Calibration and Testing: Confirmatory Factor Analysis
#par(first-line-indent: 0em)[Using the highly technical measurement procedure known as “confirmatory factor analysis,” the researchers calibrated and tested their CEBSC scale\. The procedure involved using specialized software and indexing to check the hypothesized three\-factor \(consumption, contribution, and creation\) structure of the scale and to analyze the covariance matrix\.]

All latent variables were included in a single multifactorial confirmatory factor model in M#emph[plus] 7\.2 software\. The maximum\-likelihood estimation method was used, and the goodness\-of\-fit scores of the model were evaluated using the following:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)the chi\-square test statistic]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)the comparative fit index \(CFI\)]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)the Tucker–Lewis index \(TLI\)]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)the root mean square error of approximation \(RMSEA\)]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)the standardized root mean square residual \(SRMR\)\.]]
Values greater than 0\.90 for CFI and TLI and values of 0\.08 or lower for RMSEA or SRMR indicate good model fit \(Hu and Bentler, 1999\)\.

== Calibration and Testing Results
#par(first-line-indent: 0em)[The results of the confirmatory factor analysis showed that the three\-factor, 31\-item model had a poor fit to the data: χ²\(430\) \= 3643\.40, CFI \= 0\.87, TLI \= 0\.86, RMSEA \= 0\.08, and SRMR \= 0\.06\.]

The next step involved identifying the areas of misfit in the model: To assess the possible model misspecification, the authors examined the standardized loadings of the items and modification indices \(Hair #emph[et al\.], 2014\)\. The authors proceeded by eliminating 14 items:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)the standard loadings of which were below the 0\.5 cutoff;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)that demonstrated cross\-loading issues that were not detected during the exploratory factor analysis;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)that yielded high modification index values\.]]
After the authors ran the diagnostics and eliminated the problematic items, the ensuing three\-factor 17\-item model yielded a good fit: χ²\(115\) \= 859\.26, CFI \= 0\.95, TLI \= 0\.94, RMSEA \= 0\.07, and SRMR \= 0\.06\.

As it is common with rating scales, the assumption of multivariate normality was violated \(the data indicated multivariate kurtosis\)\. Hence, the authors also conducted an alternative confirmatory factor analysis using the robust maximum\-likelihood estimation method\. The model yielded good goodness\-of\-fit values: χ²\(115\) \= 557\.47, CFI \= 0\.95, TLI \= 0\.94, RMSEA \= 0\.05, and SRMR \= 0\.06\.

The next step was to calculate the construct reliabilities of the three dimensions of CEBSC scale\. The reliability was

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)0\.88 for consumption]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)0\.92 for contribution]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)0\.93 for creation\.]]
These values exceeded the threshold of 0\.7 \(Hair #emph[et al\.], 2014\), thus demonstrating the internal consistency of the three subscales\. All loading estimates were statistically significant and greater than 0\.63\. The #emph[t] values ranged from 30\.92 to 105\.56 \(#emph[p] \< 0\.001\)\. These results provide evidence of convergent validity \(Hair #emph[et al\.], 2014\)\.

In terms of discriminant validity, the authors calculated the average variance extracted \(AVE\) for each construct\. The AVE values were

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)0\.54 \(consumption\)]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)0\.65 \(contribution\)]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)0\.68 \(creation\)\.]]
The authors then compared the AVE values with the square of the estimated correlation between constructs \[maximum shared squared variance \(MSV\); Hair #emph[et al\.], 2014\]\. The AVE values were greater than the MSV values, thus confirming discriminant validity\.

Finally, the correlations between the Consumer’s Online Brand\-Related Activities dimensions were as follows:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)contribution\/creation: #emph[r] \= 0\.77]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)consumption\/contribution: #emph[r] \= 0\.65]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)consumption\/creation: #emph[r] \= 0\.51\.]]
The correlations were positive and significant \(See Table 1 and Figure 1\)\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Reliability and Validity of the Consumer’s Engagement With Brand\-Related Social\-Media Content \(CEBSC\) Scale]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[α]], [#strong[CR]], [#strong[AVE]], [#strong[MSV]], [#strong[CONT]], [#strong[CONS]], [#strong[CREA]]),
table.hline(stroke: 0.5pt),
[CONT], [0\.92], [0\.92], [0\.65], [0\.59], [#emph[0\.80]], [], [],
[CONS], [0\.88], [0\.88], [0\.54], [0\.42], [0\.65], [#emph[0\.77]], [],
[CREA], [0\.93], [0\.93], [0\.68], [0\.59], [0\.77], [0\.51], [#emph[0\.83]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[The square root of the average variance extracted values appears in italics\. CR \= composite reliability; AVE \= average variance extracted; MSV \= maximum shared squared variance; CONT \= contribution; CONS \= consumption; CREA \= creation\.]
]
#v(12pt)
#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Confirmatory Factor Analysis: Three\-Factor CEBSC Framework]]
#v(0.6em)
== #emph[Post Hoc] Analysis: Hierarchical Relationship of Dimensions
#par(first-line-indent: 0em)[The next stage of the analysis was to investigate whether a hierarchical relationship existed among the dimensions of the Consumer’s Online Brand\-Related Activities framework\.]

The authors followed the traditional hierarchy\-of\-effects model \(Lavidge and Steiner, 1961\)\. Thus, the evolution of the CEBSC can be described as a learning process by which people’s consumption of brand\-related content leads to contributions, which in turn lead to creation \(See Figure 2\)\.

#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 2\. Structural Equation Model: CEBSC Scale Post Hoc Analysis]]
#v(0.6em)
== #emph[Post Hoc] Analysis Results
#par(first-line-indent: 0em)[All latent variables of CEBSC scale were included in a single multifactorial structural equation model in M#emph[plus] 7\.2 software with robust maximum\-likelihood estimator\. The results of the analysis revealed that the model had a good fit to the data\. The goodness\-of\-fit scores were]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)χ²\(115\) \= 557\.47]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)CFI \= 0\.95]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)TLI \= 0\.94]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)RMSEA \= 0\.05]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)SRMR \= 0\.06\.]]
The results further showed that a hierarchical relationship existed among the Consumer’s Online Brand\-Related Activities dimensions:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)consumption → contribution \(β \= 0\.61, #emph[p] \= 30\.00\) and contribution → creation \(β \= 0\.81, #emph[p] \= 33\.59\)\.]]
In addition, the authors computed the indirect effects to test for the mediating effects of the contributing dimension\. To test for the inference of indirect effects, the authors applied a bias\-corrected bootstrapping \(5,000\) resampling procedure with 99 percent confidence interval \(Hayes, 2013; Muthén and Muthén, 2012\)\. The results showed that the direct effect between consumption and creation becomes nonsignificant when contribution is included in the model as a mediator \(See Table 2\)\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Mediation Analysis]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto), align: (left, right, right, right, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Hypothesis]], [#strong[Direct β without mediator]], [#strong[Direct β with mediator]], [#strong[Indirect β]], [#strong[Mediation type observed]]),
table.hline(stroke: 0.5pt),
[Partial mediation Consumption→Contribution→Creation], [0\.51\*\*\*], [0\.02 \(n\.s\.\)], [0\.49\*\*\*], [Full mediation],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Bootstrapping sample \= 5,000\. \*\*\* p \> 0\.001; n\.s\. \= nonsignificant\.]
]
#v(12pt)
= Study 5: Scale Validation
#par(first-line-indent: 0em)[The last objective of this research was to further validate the authors’ CEBSC scale by examining whether it behaves as expected in relation to constructs in its nomological network\. Study 5 thus explored the psychometric properties of the scale with two important variables that capture consumers’ perceptions of brands:]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)brand equity]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)brand attitudes\.]]
Consumers’ engagement with a brand likely will lead to better brand knowledge and, consequently, brand equity \(Aaker, 1997; Keller, 1993\)\. At the same time, the prospect of high\-equity brands more likely will motivate consumers to undertake online brand\-related activities such as user\-generated content \(Christodoulides #emph[et al\.], 2012\)\. Furthermore, brand\-related social\-media content from both consumers and firms positively influences consumers’ perceptions of brand equity and their brand attitudes \(Bruhn #emph[et al\.], 2012; Schivinski and Dabrowski, 2014\)\.

Therefore, the two constructs \(brand equity and brand attitudes\) should be significantly and positively correlated with the CEBSC scale\.

A new sample of 416 Polish consumers participated in Study 5\. The structure of the sample and the scores of consumption, contribution, and creation for each individual closely matched those from Study 4\. The same recruitment techniques were used\.

To capture brand equity, the authors used six items adapted from previous research \(Yoo and Donthu, 2001\)\. This scale measures the added value of a branded product in comparison with an unbranded product with the same characteristics\.

Three items adapted from the works of Low and Lamb \(2000\) and Villarejo\-Ramos and Sánchez\-Franco \(2005\) measured brand attitudes\.

== Study 5 Results
#par(first-line-indent: 0em)[All latent variables were included in a single multifactorial confirmatory model in M#emph[plus] 7\.2\. The confirmatory factor analysis was performed using the robust maximum\-likelihood estimator\. The model demonstrated a good fit, as evidenced by the following goodness\-of\-fit values: χ²\(288\) \= 600\.95, CFI \= 0\.96, TLI \= 0\.95, RMSEA \= 0\.05, and SRMR \= 0\.06\.]

The Cronbach’s alpha values for each scale ranged from 0\.88 to 0\.94\. Composite reliabilities ranged from 0\.92 to 0\.94\. These values exceeded the threshold of 0\.7, indicating the internal consistency of the scales\. All factor loading estimates were statistically significant and ranged from 0\.70 to 0\.95 \(#emph[p] \< 0\.001; See Appendix C\)\.

The average variance extracted and maximum shared squared variance values also were calculated for each subscale\. The average variance extracted values ranged from 0\.66 to 0\.84 and were greater than the maximum shared squared variance values \(See Table 3\)\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 3.] Reliability and Validity Scores of the CEBSC Scale]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[α]], [#strong[CR]], [#strong[AVE]], [#strong[MSV]], [#strong[BEQ]], [#strong[CONS]], [#strong[CONT]], [#strong[CREA]], [#strong[BA]]),
table.hline(stroke: 0.5pt),
[BEQ], [0\.93], [0\.93], [0\.70], [0\.57], [#emph[0\.84]], [], [], [], [],
[CONS], [0\.88], [0\.92], [0\.66], [0\.42], [0\.40], [#emph[0\.81]], [], [], [],
[CONT], [0\.92], [0\.92], [0\.67], [0\.61], [0\.27], [0\.65], [#emph[0\.82]], [], [],
[CREA], [0\.95], [0\.95], [0\.75], [0\.61], [0\.23], [0\.50], [0\.78], [#emph[0\.87]], [],
[BA], [0\.94], [0\.94], [0\.84], [0\.57], [0\.76], [0\.37], [0\.20], [0\.14], [#emph[0\.92]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[The square root of the average variance extracted values appears in italics\. CR \= composite reliability; AVE \= average variance extracted; MSV \= maximum shared squared variance; BEQ \= brand equity; CONS \= consumption; CONT \= contribution; CREA \= creation; BA \= brand attitudes\.]
]
#v(12pt)
The results from the confirmatory factor analysis in Study 5 demonstrate that the CEBSC scale is a reliable and robust measurement instrument\. The outcomes of the correlation analysis across this scale, brand equity, and brand attitudes ranged from 0\.14 to 0\.78 with #emph[t] values between 3\.59 and 53\.58 \(#emph[p] \< 0\.001; See Table 4\)\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 4.] Correlation Analysis Outcomes across the CEBSC Scale, Brand Equity, and Brand Attitudes]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Correlated factors]], [#strong[Estimate]], [#strong[#emph[SE]]], [#strong[#emph[t]\-value]]),
table.hline(stroke: 0.5pt),
[Consumption\/Contribution], [0\.65], [0\.02], [27\.75],
[Consumption\/Creation], [0\.50], [0\.03], [19\.18],
[Contribution\/Creation], [0\.78], [0\.01], [53\.58],
[Consumption\/Brand equity], [0\.40], [0\.04], [9\.09],
[Contribution\/Brand equity], [0\.27], [0\.04], [6\.27],
[Creation\/Brand equity], [0\.23], [0\.04], [5\.41],
[Consumption\/Brand attitude], [0\.37], [0\.03], [9\.69],
[Contribution\/Brand attitude], [0\.20], [0\.04], [5\.22],
[Creation\/Brand attitude], [0\.14], [0\.04], [3\.59],
[Brand equity\/Brand attitude], [0\.76], [0\.03], [25\.32],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[χ²\(288\) \= 600\.95, CFI \= 0\.96, TLI \= 0\.95, RMSEA \= 0\.05, SRMR \= 0\.06; p \< 0\.001; Estimator \= robust maximum\-likelihood; n \= 416\.]
]
#v(12pt)
= Conclusions
== General Discussion and Theoretical Contributions
#par(first-line-indent: 0em)[The Consumer’s Online Brand\-Related Activities framework \(Muntinga #emph[et al\.], 2011\) is a behavioral construct that contains the consumer’s engagement with brands on social media\. The authors of the current paper believe their study is the first of its kind to approach the scale development of that framework\.]

To guide in the development of a parsimonious, valid, and reliable scale to measure the consumer’s engagement with brands on social media, the authors established four research objectives \(RO1–RO4\)\. To reach the given objectives, they used a combination of qualitative and quantitative research methods\.

== Research Objective 1
#par(first-line-indent: 0em)[#strong[RO1] was intended to identify and categorize individual Consumer’s Online Brand\-Related Activities, which were not reported previously in literature \(Li and Bernoff, 2011; Muntinga #emph[et al\.], 2011\)\. The authors carried out a literature search on the subject, complemented by asynchronous \(online focus groups\), synchronous \(online depth interviews\), and nonobtrusive qualitative research methods \(netnography\)\.]

The overall contribution of RO1 to literature results was a comprehensive typology of online activities encompassing three different levels of CEBSC\.

== Research Objective 2
#par(first-line-indent: 0em)[#strong[RO2] was set to test the factorial validity of scores from the CEBSC scale\. The authors used exploratory and confirmatory statistics to analyze the brand\-related social\-media behavior of 2,252 Polish consumers across 299 brands spanning a range of industries\.]

The accomplishment of RO2 contributes to the literature with a robust and reliable scale to measure the consumer’s consumption, contribution, and creation of brand\-related social\-media content\.

== Research Objective 3
#par(first-line-indent: 0em)[#strong[RO3] was designed to test whether a hierarchical relationship existed among the CEBSC scale dimensions\. The authors ran a #emph[post hoc] analysis with structural equation modeling\. The results suggested a hierarchical relationship among the consumption, contribution, and creation dimensions\.]

These findings contribute to the literature on online brand communication in three ways:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)from a macro perspective, by empirically showing that consumers engage in higher levels of online brand\-related activities as a result of a learning process;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)from a micro perspective, by identifying the consuming dimension as an antecedent of consumers’ engagement in the contribution of brand\-related content on social media and the contributing dimension as an antecedent of user\-generated content;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)by demonstrating that the contributing dimension is a mediator between the consuming and creating dimensions]]
== Research Objective 4
#par(first-line-indent: 0em)[#strong[RO4] was anticipated to validate the psychometric properties of the current scale with two nomological network variables \(#emph[i\.e\.], brand equity and brand attitudes\)\. The authors analyzed the brand\-related social\-media behavior and brand perceptions of 416 Polish consumers using confirmatory statistics\.]

The outcomes from RO4 contribute to the literature by corroborating with findings from previous research, which indicated that brand equity and brand attitudes correlate positively and significantly with individual brand\-related social\-media activities\.

In summary, the results empirically demonstrate that the authors’ CEBSC scale is a three\-factor construct that includes the consumption, contribution, and creation dimensions suggested in the earlier framework\.

These three dimensions capture lower to higher levels of brand\-related social\-media engagement\. Furthermore, this wide scope of the scale highlights its broad usability to quantify and measure consumers’ behavior toward brands on social media\.

Further employment of the CEBSC scale may facilitate theoretical development in the domains of marketing, advertising, branding, consumer behavior, and other research fields, the authors believe\. The scale can be used to measure the construct’s effects on outcome variables such as

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)brand extension]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)purchase intention]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)price premium\.]]
Applying the measurement instrument in such a manner, the authors believe, will generate knowledge about the influence of consumption, contribution, and creation of brand\-related social\-media content on various consumer responses\.

In contrast, the earlier Consumer’s Online Brand\-Related Activities is a behavioral framework\. The advantage of the current CEBSC scale is that it can be implemented in structural models as dependent variables\. Using this approach, scholars might test several variables to assess the drivers of the Consumer’s Online Brand\-Related Activities framework\. This information would be of significant value to theory in the pursuit of answers to important questions, such as:

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)Why do consumers engage in brand\-related social\-media activities?]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)What types of brands most likely would induce consumers to engage in social media?]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)What kinds of marketing activities influence consumers’ engagement with brand\-related content on social media?]]
The authors believe this is the first study to #emph[holistically] examine consumption, contribution, and creation of brand\-related social\-media content under a single framework\. At first glance, the data suggest that lower levels of engagement \(consumption\) are associated with higher levels of brand equity or more favorable brand attitudes \(compared with creation\)\. This finding, however, likely is due to a suppression effect, given that the number of people who consume brand\-related content on social media is significantly higher than the number of people who contribute and create\.

== Managerial Contributions
#par(first-line-indent: 0em)[Although companies are using social\-media channels as part of their marketing and advertising communication strategies, research on consumer behavior related to brands on social media is nascent \(Araujo #emph[et al\.], 2015; Burmann, 2010; Fulgoni and Lipsman, 2015; Yadav and Pavlou, 2014\)\.]

But before managers can more confidently employ social\-media marketing and branding, they need to understand how consumers behave and interact with brands on those channels\.

The CEBSC scale should assist in this matter\. This research provides clear guidance on what constitutes the Consumer’s Online Brand\-Related Activities framework \(#emph[i\.e\.], the consuming, contributing, and creating dimensions\) and which online activities define those dimensions\. The dimensions of the CEBSC scale give managers the conceptual instrument to delineate consumers’ social\-media behavior toward brands according to their level of engagement\.

Additionally, the underlying subscales \(in this case, each individual item in a dimension\) provide managers with specific brand\-related social\-media activities they could pursue\.

When managing the presence of brands online and executing social\-media marketing strategies, managers can use the CEBSC scale to audit and track the effectiveness of these programs\. When using it systematically, managers not only can evaluate the success of their social\-media marketing strategies but also take corrective action when necessary\. The parsimony of the scale is intended to facilitate such practical applications\.

Because Consumer’s Online Brand\-Related Activities is a holistic framework, managers should administer its three dimensions simultaneously\. By using the current authors’ CEBSC scale holistically, greater insights can be gleaned into consumers’ social\-media behavior toward brands\. The subscales also may be used individually when, for example, researchers or practitioners wish to focus on a specific type of activity, such as consumers’ brand\-related social\-media content creation\.

Advertisers should closely monitor social\-media channels and the brand\-related activities consumers are more intensely engaging in, while also trying to stimulate the activities they want consumers to be more active with\.

This point is consistent with the view that the full integration of the three levels of CEBSC scale into social\-media communication strategies will benefit brands\. For example, the consumption of firm\-created and user\-generated brand\-related social\-media communication influences consumer mindsets and, thus, behavior \(Bruhn #emph[et al\.], 2012; Schivinski and Dabrowski, 2014\)\.

Consumers’ contribution of brand\-related content is a key metric for evaluating the success of social\-media marketing efforts \(Nelson\-Field #emph[et al\.], 2012\) and plays an important role in the process of communication message acceptance \(Coulter and Roggeveen, 2012\)\.

Finally, the creation of user\-generated content shapes traditional advertising policies \(Krishnamurthy and Dou, 2008\) and leads to positive consumer acceptance \(Pornpitakpan, 2004\)\.

Furthermore, the current scale’s original framework—Consumer’s Online Brand\-Related Activities—assumes a hierarchical structure\. Practitioners should continue their social\-media branding agendas by being present on social\-media channels and by continuously producing engaging brand\-related content that their target audiences likely will consume\. Doing so likely will induce consumers to engage further by commenting, “Liking,” and even sharing the brand\-related content consumed\.

By engaging in the contributing dimension, consumers may successively begin creating user\-generated content by initiating posts, writing product reviews, or posting brand\-related videos and pictures\. The hierarchical structure of the framework also is supported by the indication that the contribution dimension serves as a mediator between the consumption and creation of brand\-related social\-media content\.

= Limitations and Further Research
#par(first-line-indent: 0em)[Although this research makes a significant contribution to the measurement of consumers’ engagement with brand\-related social media content, it is not without limitations\. As such, the restrictions of this research can provide guidelines for future studies\.]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The list of Consumer’s Online Brand\-Related Activities \(Appendix A\) presented in this study is not exhaustive\. With the constant changes and adaptations of websites and web services, new activities pertinent to the three dimensions of CEBSC scale likely will emerge\. Researchers should continue searching for new trends on social media and adjusting the instrument in line with technological changes\.]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)The data in Studies 4 and 5 were not factored for consumers’ past brand usage\. Although the scores of consumption, contribution, and creation for each respondent were provided, the results presented should be interpreted with care\. Further research should address this limitation\. In addition, scholars should use the brand usage variable for moderation and conditional process analysis\. Such analyses would answer questions such as how previous brand usage influences consumers’ scores of engagement with brand\-related social\-media content\.]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 0.9em)[•#h(0.5em)Finally, this research was conducted in a single country\. Although social\-media channels are similar across the globe, the authors encourage other researchers to undertake replication studies in other countries to assess the equivalence of the CEBSC scale across nations and cultures\.]]
Researchers also could use a combination of the CEBSC scale and other behavioral variables in a latent class analysis \(Goodman, 1974\) to classify consumers who engage in brand\-related social\-media activities into homogeneous subgroups and, thus, to explore a typology of consumers according to their level and type of engagement in online brand\-related activities\.

Assuming that consumers’ perceptions of social\-media communication differ across industries, researchers also could implement the CEBSC scale to explore in greater depth patterns of similarities and differences within the consumption, contribution, and creation of brand\-related social\-media content\. Researchers could use a multilevel approach to the data to perform analysis between \(industries\) and within \(brands\) groups\.

= About the Authors
#par(first-line-indent: 0em)[#text(size: 10pt)[Bruno Schivinski is a sociologist and lecturer in marketing at Nottingham Trent University\. He consults for online service providers, websites, and scientific institutions such as the Polish Ministry of Science and Higher Education \(MNiSW\) and the National Science Centre \(NCN\)\. Schivinski specializes in online consumer behavior, social\-media marketing, online branding, and user\-generated content\. His work can be found in such journals as the #emph[Journal of Research of Interactive Marketing] and the #emph[Journal of Marketing Communications]\. This research was conducted while he worked at the Gdansk University of Technology in Poland\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[George Christodoulides is a professor of marketing and assistant dean at Birkbeck, University of London\. His research interests include brand management and digital marketing, particularly brand equity conceptualization and measurement, and the impact of digital and social media on consumer\-brand relationships\. Christodoulides’ work has been published in #emph[European Journal of Marketing], #emph[Marketing Theory], #emph[Journal of Advertising Research \(JAR\)], #emph[Industrial Marketing Management], and #emph[International Marketing Review]\. He is associate editor of #emph[International Marketing Review] and serves on the editorial advisory boards of six other academic journals\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Dariusz Dabrowski is chair and associate professor of marketing at Gdansk University of Technology, Faculty of Management and Economics\. His research focuses on online consumer behavior, relationship marketing, and new\-product development\. Dabrowski is the author of #emph[Informacje Rynkowe w Rozwoju Nowych Produktów] \(Information Market in New Product Development\), Wydawnictwo PG, Gdansk 2009, and has consulted for the Polish Ministry of Science and Higher Education \(MNiSW\) and the National Science Centre \(NCN\)\. His research has appeared in #emph[Social Sciences], #emph[Journal of Marketing Communications], and #emph[Journal of Research in Interactive Marketing], among other journals\.]]

= Acknowledgments
#par(first-line-indent: 0em)[The authors would like to thank Geoffrey Precourt \(#emph[JAR] editor\-in\-chief\) and Nanette Burns \(managing editor\)—as well as Jenni Romaniuk \(co\-executive editor\/international\) and the two anonymous reviewers—for their constructive feedback throughout the review process, which influenced the final version of the article\. The authors would also like to thank Francesca Cooley for her assistance in translation preparing the original manuscript\. This research was supported by the National Science Centre in Poland \(Preludium 4 – UMO\-2012\/07\/N\/HS4\/02790\)\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Aaker, J\. L\. “Dimensions of Brand Personality\.” #emph[Journal of Marketing Research] 34, 3 \(1997\): 347–356\.

Araujo, T\., P\. Neijens, and R\. Vliegenthart\. “What Motivates Consumers to Re\-Tweet Brand Content? The Impact of Information, Emotion, and Traceability on Pass\-Along Behavior\.” #emph[Journal of Advertising Research] 53, 3 \(2015\): 1–12\.

Armstrong, A\., and J\. Hagel III\. “The Real Value of On\-Line Communities\.” #emph[Harvard Business Review] 74, May–June \(1996\): 134–141\.

Belk, R\. “You Are What You Can Access: Sharing and Collaborative Consumption Online\.” #emph[Journal of Business Research] 67, 8 \(2014\): 1595–1600\.

Berthon, P\. R\., L\. Pitt, and C\. Campbell\. “Ad Lib: When Customers Create the Ad\.” #emph[California Management Review] 50, 4 \(2008\): 6–31\.

Brettel, M\., J\.\-C\. Reich, J\. M\. Gavilanes, and T\. C\. Flatten\. “What Drives Advertising Success on Facebook? An Advertising\-Effectiveness Model: Measuring the Effects on Sales of ‘Likes’ and Other Social\-Network Stimuli\.” #emph[Journal of Advertising Research] 52, 2 \(2015\): 162–175\.

Bruhn, M\., V\. Schoenmueller, and D\. B\. Schäfer\. “Are Social Media Replacing Traditional Media in Terms of Brand Equity Creation?” #emph[Management Research Review] 35, 9 \(2012\): 770–790\.

Burmann, C\. “A Call for ‘User\-Generated Branding\.’” #emph[Journal of Brand Management] 18, 1 \(2010\): 1–4\.

Chevalier, J\., and D\. Mayzlin\. “The Effect of Word of Mouth on Sales: Online Book Reviews\.” #emph[Journal of Marketing Research] 43, 3 \(2006\): 345–354\.

Christodoulides, G\. “Branding in the Post\-Internet Era\.” #emph[Marketing Theory] 9, 1 \(2009\): 141–144\.

Christodoulides, G\., C\. Jevons, and J\. Bonhomme\. “Memo to Marketers: Quantitative Evidence for Change\. How User\-Generated Content Really Affects Brands\.” #emph[Journal of Advertising Research] 52, 1 \(2012\): 53–64\.

Churchill, G\. A\. “A Paradigm for Developing Better Measures of Marketing Constructs\.” #emph[Journal of Marketing Research] 16, 1 \(1979\): 64–73\.

Coulter, K\. S\., and A\. Roggeveen\. “‘Like It or Not’: Consumer Responses to Word\-of\-Mouth Communication in On\-Line Social Networks\.” #emph[Management Research Review] 35, 9 \(2012\): 878–899\.

Craig, C\. S\., W\. H\. Greene, and A\. Versaci\. “E\-Word of Mouth: Early Predictor of Audience Engagement: How Pre\-Release ‘E\-WOM’ Drives Box\-Office Outcomes of Movies\.” #emph[Journal of Advertising Research] 52, 2 \(2015\): 62–72\.

Cudeck, R\., and M\. Browne\. “Cross\-Validation of Covariance Structures\.” #emph[Multivariate Behavioral Research] 18, 2 \(1983\): 147–167\.

Daugherty, T\., M\. Eastin, and L\. Bright\. “Exploring Consumer Motivations for Creating User\-Generated Content\.” #emph[Journal of Interactive Advertising] 8, 2 \(2008\): 16–25\.

Dellarocas, C\., X\. Zhang, and N\. F\. Awad\. “Exploring the Value of Online Product Reviews in Forecasting Sales: The Case of Motion Pictures\.” #emph[Journal of Interactive Marketing] 21, 4 \(2007\): 23–45\.

Dholakia, U\. M\., R\. P\. Bagozzi, and L\. K\. Pearo\. “A Social Influence Model of Consumer Participation in Network\- and Small\-Group\-Based Virtual Communities\.” #emph[International Journal of Research in Marketing] 21, 3 \(2004\): 241–263\.

Dickinson\-Delaporte, S\., and G\. Kerr\. “Agency\-Generated Research of Consumer\-Generated Content: The Risks, Best Practices, and Ethics\.” #emph[Journal of Advertising Research] 54, 4 \(2014\): 469–478\.

Fox, F\. E\., M\. Morris, and N\. Rumsey\. “Doing Synchronous Online Focus Groups With Young People: Methodological Reflections\.” #emph[Qualitative Health Research], 17, 4 \(2007\): 539–547\.

Fulgoni, G\. “Uses and Misuses of Online\-Survey Panels in Digital Research: Digging Past the Surface\.” #emph[Journal of Advertising Research] 54, 2 \(2014\): 133–137\.

Fulgoni, G\., and A\. Lipsman\. “Digital Word of Mouth and Its Offline Amplification: A Holistic Approach to Leveraging and Amplifying All Forms of WOM\.” #emph[Journal of Advertising Research] 55, 2 \(2015\): 18–21\.

Füller, J\., M\. Bartl, H\. Ernst, and H\. Mühlbacher\. “Community Based Innovation: How to Integrate Members of Virtual Communities Into New Product Development\.” #emph[Electronic Commerce Research] 6, 1 \(2006\): 57–73\.

Füller, J\., H\. Mühlbacher, K\. Matzler, and G\. Jawecki\. “Consumer Empowerment through Internet\-Based Co\-creation\.” #emph[Journal of Management Information Systems] 26, 3 \(2009\): 71–102\.

Gerbing, D\., and J\. Anderson\. “An Updated Paradigm for Scale Development Incorporating Unidimensionality and Its Assessment\.” #emph[Journal of Marketing Research] 25, 2 \(1988\): 186–193\.

Goodman, L\. A\. “Exploratory Latent Structure Analysis Using Both Indentifiable and Unidentifiable Models\.” #emph[Biometrika] 61, 2 \(1974\): 215–231\.

Gus Central Statistical Office\. #emph[Demographic Yearbook of Poland: Branch Yearbooks]\. Warsaw, Poland: Zakład Wydawnictw Statystycznych, 2012\.

Hair, J\. F\., Jr\., W\. C\. Black, B\. J\. Babin, and R\. E\. Anderson\. #emph[Multivariate Data Analysis], 7th ed\. Harlow, England: Pearson Education Limited, 2014\.

Hautz, J\., J\. Füller, K\. Hutter, and C\. Thürridl\. “Let Users Generate Your Video Ads? The Impact of Video Source and Quality on Consumers’ Perceptions and Intended Behaviors\.” #emph[Journal of Interactive Marketing] 28, 1 \(2013\): 1–15\.

Hayes, A\. #emph[Introduction to Mediation, Moderation, and Conditional Process Analysis]\. New York, NY: Guilford Press, 2013\.

Hennig\-Thurau, T\., K\. P\. Gwinner, G\. Walsh, and D\. D\. Gremler\. “Electronic Word\-of\-Mouth via Consumer\-Opinion Platforms: What Motivates Consumers to Articulate Themselves on the Internet?” #emph[Journal of Interactive Marketing] 18, 1 \(2004\): 38–52\.

Ho\-Dac, N\., S\. Carson, and W\. Moore\. “The Effects of Positive and Negative Online Customer Reviews: Do Brand Strength and Category Maturity Matter?” #emph[Journal of Marketing] 77, November \(2013\): 37–53\.

Hollebeek, L\. D\., M\. S\. Glynn, and R\. J\. Brodie\. “Consumer Brand Engagement in Social Media: Conceptualization, Scale Development and Validation\.” #emph[Journal of Interactive Marketing] 28, 2 \(2014\): 149–165\.

Hu, L\.\-T\., and P\. M\. Bentler\. “Cutoff Criteria for Fit Indexes in Covariance Structure Analysis: Conventional Criteria Versus New Alternatives\.” #emph[Structural Equation Modeling] 6, 1 \(1999\): 1–55\.

Hung, K\. H\., and S\. Y\. Li\. “The Influence of eWom on Virtual Consumer Communities: Social Capital, Consumer Learning, and Behavioral Outcomes\.” #emph[Journal of Advertising Research] 47, 4 \(2007\): 485–495\.

Keller, K\. L\. “Conceptualizing, Measuring, and Managing Customer\-Based Brand Equity\.” #emph[Journal of Marketing] 57, January \(1993\): 1–22\.

Kozinets, R\. V\. “E\-Tribalized Marketing? The Strategic Implications of Virtual Communities of Consumption\.” #emph[European Management Journal] 17, 3 \(1999\): 252–264\.

Kozinets, R\. V\. “Utopian Enterprise: Articulating the Meanings of Star Trek’s Culture of Consumption\.” #emph[Journal of Consumer Research] 28, June \(2001\): 67–88\.

Kozinets, R\. V\. “The Field Behind the Screen: Using Netnography for Marketing Research in Online Communities\.” #emph[Journal of Marketing Research] 39, 1 \(2002\): 61–72\.

Krishnamurthy, S\., and W\. Dou\. “Advertising with User\-Generated Content: A Framework and Research Agenda\.” #emph[Journal of Interactive Advertising] 8, 2 \(2008\): 1–4\.

Lavidge, S\. W\., and G\. A\. Steiner\. “A Model for Predictive Measurements of Advertising Effectiviness\.” #emph[Journal of Marketing] 25, 6 \(1961\): 59–62\.

Li, C\., and J\. Bernoff\. #emph[Groundswell: Winning in a World Transformed by Social Technologies\.] Boston, MA: Harvard Business Review Press, 2011\.

Low, G\., and C\. Lamb Jr\. “The Measurement and Dimensionality of Brand Associations\.” #emph[Journal of Product & Brand Management] 9, 6 \(2000\): 350–370\.

Muniz, A\. M\., Jr\., and T\. C\. O’Guinn\. “Brand Community\.” #emph[Journal of Consumer Research] 27, March \(2001\): 412–433\.

Muntinga, D\. G\., M\. Moorman, and E\. G\. Smit\. “Introducting COBRAs: Exploring Motivations for Brand\-Related Social Media Use\.” #emph[International Journal of Advertising] 30, 1 \(2011\): 13–46\.

Muthén, L\., and B\. Muthén\. #emph[Statistical Analysis with Latent Variables: Mplus User’s Guide], 7th ed\. Los Angeles, CA: Muthén & Muthén, 2012\.

Nelson\-Field, K\., E\. Riebe, and B\. Sharp\. “What’s Not to ‘Like?’ Can a Facebook Fan Base Give a Brand the Advertising Reach it Needs?” #emph[Journal of Advertising Research] 52, 2 \(2012\): 262–269\.

Nunnally, J\. #emph[Psychometrical Theory], 2nd ed\. New York, NY: McGraw\-Hill, 1978\.

Oviedo\-Garcia, M\., M\. Munoz\-Exposito, M\. Castellanos\-Verdugo, and M\. Shancho\-Mejias\. “Metric Proposal for Customer Engagement in Facebook\.” #emph[Journal of Research in Interactive Marketing] 8, 4 \(2014\): 327–344\.

Pires, G\. D\., J\. Stanton, and P\. Rita\. “The Internet, Consumer Empowerment and Marketing Strategies\.” #emph[European Journal of Marketing] 40, 9\/10 \(2006\): 936–949\.

Pornpitakpan, C\. “The Persuasiveness of Source Credibility: A Critical Review of Five Decades’ Evidence\.” #emph[Journal of Applied Social Psychology] 34, 2 \(2004\): 243–281\.

Prahalad, C\. K\., and V\. Ramaswamy\. “The Co\-Creation Connection\.” #emph[Strategy and Business] 27, \(2002\): 1–12\.

Schivinski, B\., and D\. Dabrowski\. “The Effect of Social Media Communication on Consumer Perceptions of Brands\.” #emph[Journal of Marketing Communications], ahead of print \(2014\): 1–26\. DOI: 10\.1080\/13527266\.2013\.871323

Schivinski, B\., and D\. Dabrowski\. “The Impact of Brand Communication on Brand Equity through Facebook\.” #emph[Journal of Research in Interactive Marketing] 9, 1 \(2015\): 31–53\.

Schultz, D\. E\., and J\. Peltier\. “Social Media’s Slippery Slope: Challenges, Opportunities, and Future Research Directions\.” #emph[Journal of Research in Interactive Marketing] 7, 2 \(2013\): 86–89\.

Shao, G\. “Understanding the Appeal of User\-Generated Media: A Uses and Gratification Perspective\.” #emph[Internet Research] 19, 1 \(2009\): 7–25\.

Shi, Z\., H\. Rui, and A\. Whinston\. “Content Sharing in a Social Broadcasting Environment: Evidence From Twitter\.” #emph[MIS Quarterly] 38, 1 \(2014\): 123–142\.

Vernette, E\., and L\. Hamdi\-Kidar\. “Co\-Creation With Consumers: Who Has the Competence and Wants to Cooperate?” #emph[International Journal of Market Research] 55, 4 \(2013\): 2–20\.

Villarejo\-Ramos, A\. F\., and M\. J\. Sánchez\-Franco\. “The Impact of Marketing Communication and Price Promotion on Brand Equity\.” #emph[Journal of Brand Management] 12, 6 \(2005\): 431–444\.

Wallace, E\., I\. Buil, L\. De Chernatony, and M\. Hogan\. “Who ‘Likes’ You \. \. \. and Why? A Typology of Facebook Fans: From ‘Fan’\-atics and Self\-Expressives to Utilitarians and Authentics\.” #emph[Journal of Advertising Research] 54, 1 \(2014\): 92–109\.

Wathieu, L\., L\. Brenner, Z\. Carmon, A\. Chattopadhay, K\. Wertenbroch, A\. Drolet, J\. Gourville, A\. V\. Muthukrishnan, et al\. “Consumer Control and Empowerment: A Primer\.” #emph[Marketing Letters] 13, 3 \(2002\): 297–305\.

Wright, L\., A\. Newman, and C\. Dennis\. “Enhancing Consumer Empowerment\.” #emph[European Journal of Marketing] 40, 9\/10 \(2006\): 925–935\.

Yadav, M\., and P\. Pavlou\. “Marketing in Computer\-Mediated Environments: Research Synthesis and New Directions\.” #emph[Journal of Marketing] 78, 1 \(2014\): 20–40\.

Yoo, B\., and N\. Donthu\. “Developing and Validating a Multidimensional Consumer\-Based Brand Equity Scale\.” #emph[Journal of Business Research] 52, 1 \(2001\): 1–14\.

Zhu, F\., and X\. \(Michael\) Zhang\. “Impact of Online Consumer Reviews on Sales: The Moderating Role of Product and Consumer Characteristics\.” #emph[Journal of Marketing] 74, 2 \(2010\): 133–148\.

#set par(hanging-indent: 0em)
#set text(size: 11pt)
#pagebreak()
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Appendix A] #linebreak() Activities Pertinent to Each Dimension of the “Consumer’s Online Brand\-Related Activities” Framework]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto), align: (left, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Activity]], [#strong[Sources]]),
table.hline(stroke: 0.5pt),
[#emph[Consumption]], [],
[To download brand\-related widgets\/applications], [d, e],
[To follow a brand on social networking sites], [a, b, c, d],
[To follow brand\-related blogs], [c, d, e],
[To listen to brand\-related audio], [e, \*],
[To play brand\-related games], [d, e],
[To read brand\-related emails], [c, \*\*\*],
[To read brand\-related fan page\(s\) on social networking sites], [a, b, c, d],
[To read brand\-related posts on social media], [a, b, c],
[To read brand\-related reviews], [a, b, c, d, e, \*\*\*],
[To read other people’s comments about a brand on social media], [a, b, c, d, e, \*\*\*],
[To send brand\-related virtual card], [e, \*],
[To watch brand\-related ads \(e\.g\., banners, YouTube ads\)], [d, \*\*\*],
[To watch brand\-related pictures\/graphics], [a, b, c, d, e],
[To watch brand\-related videos], [b, c, e, \*\*\*],
[#emph[Contribution]], [],
[To add brand\-related videos to favorites], [c, d, \*\*\*],
[To click on brand\-related ads], [d, \*\*\*],
[To comment on brand\-related pictures\/graphics], [a, b, c, d, e],
[To comment on brand\-related posts], [c, d, e],
[To comment on brand\-related videos], [a, b, c, d, e],
[To engage in brand\-related conversations], [e, \*],
[To forward brand\-related emails to my friends\/family], [c, \*\*],
[To join a brand\-related profile on social networking sites], [e, \*],
[To “Like” brand\-related fan pages], [a, b, c, d, \*\*\*],
[To “Like” brand\-related pictures\/graphics], [a, b, c, d],
[To “Like” brand\-related posts], [b, c, d],
[To “Like” brand\-related videos], [a, b, c, d, \*\*\*],
[To participate in online contests\/drawings sponsored by a brand], [d, \*\*],
[To rate brand\-related products], [e, \*],
[To share brand\-related pictures\/graphics], [a, b, c, d, \*\*\*],
[To share brand\-related posts], [a, b, c, d],
[To share brand\-related videos], [a, b, c, d, \*\*],
[To take part in brand\-related online events], [b, d, \*\*],
[#emph[Creation]], [],
[To create brand\-related audio], [e, \*],
[To create brand\-related hashtags „\#” on social networking sites], [c, \*\*\*],
[To create brand\-related posts], [e, \*],
[To initiate brand\-related posts on blogs], [a, b, c, d, e],
[To initiate brand\-related posts on social networking sites], [a, b, c, d],
[To post brand\-related pictures\/graphics], [a, b, c, e],
[To post brand\-related videos], [b, c, d, e],
[To post pictures exposing self and a brand], [b, c, d, \*\*\*],
[To write brand\-related posts on forums], [c, d],
[To write brand\-related reviews], [c, d, e],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[a Activity detected during Study 1 \(bulletin board – consumption\); b Activity detected during Study 1 \(bulletin board – creation\); c Activity detected during Study 2 \(in\-depth interviews\); d Activity detected during Study 3 \(netnography\); e Activity previously reported in literature; #emph[ Item not identified during the qualitative procedures; ]#emph[ Item removed from the analysis during the exploratory factor analysis; ]\*\* Item removed from the analysis during the confirmatory factor analysis\.]
]
#v(12pt)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Appendix B] #linebreak() Mean Scores for the Three Dimensions of the CEBSC Scale by Industry]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Industry]], [#strong[#emph[n]]], [#strong[Consumption #emph[M]]], [#strong[#emph[SD]]], [#strong[Contribution #emph[M]]], [#strong[#emph[SD]]], [#strong[Creation #emph[M]]], [#strong[#emph[SD]]]),
table.hline(stroke: 0.5pt),
[Alcoholic beverages], [128], [3\.78], [1\.50], [3\.10], [1\.53], [2\.22], [1\.28],
[Nonalcoholic beverages], [225], [2\.99], [1\.48], [2\.44], [1\.35], [1\.82], [1\.16],
[Amusement and recreation], [196], [3\.76], [1\.58], [2\.96], [1\.51], [2\.06], [1\.38],
[Apparel and accessories], [205], [4\.49], [1\.51], [2\.86], [1\.70], [2\.10], [1\.54],
[Automotive], [106], [4\.70], [1\.60], [2\.83], [1\.74], [2\.78], [2\.41],
[Food and kindred products], [152], [4\.33], [1\.29], [3\.07], [1\.31], [2\.13], [1\.33],
[Hi\-tech], [609], [3\.43], [1\.49], [2\.50], [1\.43], [1\.98], [1\.30],
[Mobile operators], [324], [3\.24], [1\.38], [2\.26], [1\.26], [1\.71], [1\.22],
[Perfumes and cosmetics], [151], [3\.91], [1\.43], [2\.57], [1\.56], [1\.85], [1\.11],
[Services], [156], [4\.69], [1\.63], [3\.36], [1\.78], [2\.59], [1\.66],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Note: N \= 2,252 \(full data set\)\.]
]
#v(12pt)
#page(flipped: true)[
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Appendix C] #linebreak() Descriptive Statistics for the Items of the CEBSC Scale, Factor Loadings \(Completely Standardized Lambda X\), and Explained Variance on Each Item \(R#super[2]\) for the Final Three\-Factor 17\-Item Model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 7.5pt)[#table(columns: (auto, 1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, left, right, right, right, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Item]], [#strong[]], [#strong[Calibration λ]], [#strong[R²]], [#strong[M \(SD\)]], [#strong[Validation λ]], [#strong[R²]], [#strong[M \(SD\)]], [#strong[Full λ]], [#strong[R²]], [#strong[M \(SD\)]], [#strong[Study 5 λ]], [#strong[R²]], [#strong[M \(SD\)]]),
table.hline(stroke: 0.5pt),
[#emph[Consumption]], [], [], [], [], [], [], [], [], [], [], [], [], [],
[Cons1], [I read posts related to Brand X on social media\.], [0\.83], [0\.68], [3\.79 \(1\.99\)], [0\.82], [0\.68], [3\.89 \(1\.94\)], [0\.83], [0\.68], [3\.84 \(1\.97\)], [0\.87], [0\.75], [3\.72 \(2\.06\)],
[Cons2], [I read fan page\(s\) related to Brand X on social networking sites\.], [0\.83], [0\.69], [3\.78 \(2\.06\)], [0\.84], [0\.71], [3\.90 \(2\.05\)], [0\.84], [0\.70], [3\.84 \(2\.05\)], [0\.85], [0\.72], [3\.67 \(2\.14\)],
[Cons3], [I watch pictures\/graphics related to Brand X\.], [0\.64], [0\.41], [4\.22 \(1\.89\)], [0\.66], [0\.43], [4\.34 \(1\.90\)], [0\.66], [0\.44], [4\.28 \(1\.90\)], [0\.77], [0\.60], [3\.87 \(2\.01\)],
[Cons4], [I follow blogs related to Brand X\.], [0\.63], [0\.39], [2\.70 \(1\.88\)], [0\.63], [0\.40], [2\.81 \(1\.90\)], [0\.64], [0\.41], [2\.76 \(1\.90\)], [0\.69], [0\.48], [2\.69 \(1\.97\)],
[Cons5], [I follow Brand X on social networking sites\.], [0\.87], [0\.76], [3\.66 \(2\.04\)], [0\.86], [0\.74], [3\.76 \(1\.97\)], [0\.86], [0\.74], [3\.71 \(2\.01\)], [0\.87], [0\.76], [3\.49 \(2\.05\)],
[#emph[Contribution]], [], [], [], [], [], [], [], [], [], [], [], [], [],
[Contr1], [I comment on videos related to Brand X\.], [0\.85], [0\.73], [2\.16 \(1\.63\)], [0\.84], [0\.71], [2\.27 \(1\.72\)], [0\.85], [0\.72], [2\.22 \(1\.68\)], [0\.83], [0\.69], [2\.37 \(1\.83\)],
[Contr2], [I comment on posts related to Brand X\.], [0\.87], [0\.76], [2\.35 \(1\.69\)], [0\.90], [0\.80], [2\.43 \(1\.76\)], [0\.88], [0\.78], [2\.39 \(1\.73\)], [0\.90], [0\.81], [2\.51 \(1\.93\)],
[Contr3], [I comment on pictures\/graphics related to Brand X\.], [0\.87], [0\.75], [2\.17 \(1\.68\)], [0\.86], [0\.74], [2\.26 \(1\.71\)], [0\.87], [0\.75], [2\.22 \(1\.70\)], [0\.86], [0\.74], [2\.42 \(1\.85\)],
[Contr4], [I share Brand X related posts\.], [0\.89], [0\.79], [2\.43 \(1\.76\)], [0\.88], [0\.78], [2\.52 \(1\.80\)], [0\.89], [0\.79], [2\.47 \(1\.78\)], [0\.90], [0\.80], [2\.59 \(1\.95\)],
[Contr5], [I “Like” pictures\/graphics related to Brand X\.], [0\.62], [0\.39], [3\.34 \(2\.00\)], [0\.63], [0\.40], [3\.40 \(2\.02\)], [0\.63], [0\.39], [3\.37 \(2\.01\)], [0\.68], [0\.46], [3\.33 \(2\.17\)],
[Contr6], [I “Like” posts related to Brand X\.], [0\.67], [0\.45], [3\.20 \(1\.98\)], [0\.67], [0\.44], [3\.28 \(1\.99\)], [0\.67], [0\.44], [3\.24 \(1\.98\)], [0\.73], [0\.53], [3\.30 \(2\.10\)],
[#emph[Creation]], [], [], [], [], [], [], [], [], [], [], [], [], [],
[Creat1], [I initiate posts related to Brand X on blogs\.], [0\.89], [0\.78], [1\.94 \(1\.55\)], [0\.90], [0\.78], [1\.95 \(1\.52\)], [0\.89], [0\.80], [1\.95 \(1\.54\)], [0\.91], [0\.82], [2\.21 \(1\.76\)],
[Creat2], [I initiate posts related to Brand X on social networking sites\.], [0\.87], [0\.76], [2\.01 \(1\.58\)], [0\.90], [0\.76], [2\.17 \(1\.70\)], [0\.89], [0\.79], [2\.09 \(1\.64\)], [0\.89], [0\.79], [2\.35 \(1\.83\)],
[Creat3], [I post pictures\/graphics related to Brand X\.], [0\.87], [0\.76], [1\.98 \(1\.54\)], [0\.82], [0\.76], [2\.19 \(1\.67\)], [0\.84], [0\.71], [2\.08 \(1\.61\)], [0\.89], [0\.79], [2\.29 \(1\.80\)],
[Creat4], [I post videos that show Brand X\.], [0\.83], [0\.69], [1\.96 \(1\.53\)], [0\.85], [0\.69], [2\.11 \(1\.60\)], [0\.84], [0\.71], [2\.03 \(1\.57\)], [0\.86], [0\.73], [2\.27 \(1\.80\)],
[Creat5], [I write posts related to Brand X on forums\.], [0\.80], [0\.65], [1\.96 \(1\.53\)], [0\.80], [0\.65], [2\.11 \(1\.60\)], [0\.80], [0\.64], [2\.04 \(1\.57\)], [0\.85], [0\.72], [2\.29 \(1\.79\)],
[Creat6], [I write reviews related to Brand X\.], [0\.75], [0\.57], [1\.91 \(1\.52\)], [0\.69], [0\.57], [2\.04 \(1\.61\)], [0\.72], [0\.52], [1\.97 \(1\.56\)], [0\.82], [0\.68], [2\.16 \(1\.74\)],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Note: Calibration sample: χ²\(115\) 564\.31, CFI \= 0\.95, TLI \= 0\.95, RMSEA \= 0\.05, SRMR \= 0\.06; Validation sample: χ²\(115\) 557\.47, CFI \= 0\.95, TLI \= 0\.94, RMSEA \= 0\.05, SRMR \= 0\.06; Full data set: χ²\(115\) 719\.47, CFI \= 0\.93, TLI \= 0\.92, RMSEA \= 0\.05, SRMR \= 0\.05; Study 5: χ²\(313\) \= 651\.71, CFI \= 0\.95, TLI \= 0\.95, RMSEA \= 0\.05, SRMR \= 0\.06; p \< 0\.001; Estimator \= robust maximum\-likelihood\.]
]
#v(12pt)
]

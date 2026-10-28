#set document(title: "Social media brand engagement in the context of collaborative consumption: the case of AIRBNB", author: ("Bruno Schivinski", "Daniela Langaro", "Teresa Fernandes", "Francisco Guzmán"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Schivinski et al\. \(2020\), accepted manuscript #h(1fr) Journal of Brand Management] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Social media brand engagement in the context of collaborative consumption: the case of AIRBNB]]
#v(0.8em)
#text(size: 12pt)[Bruno Schivinski, Daniela Langaro, Teresa Fernandes, Francisco Guzmán]
#v(0.2em)
#text(size: 10pt, style: "italic")[RMIT University; ISCTE\-IUL; University of Porto; University of North Texas]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Schivinski, B\., Langaro, D\., Fernandes, T\., & Guzmán, F\. (2020). Social media brand engagement in the context of collaborative consumption: the case of AIRBNB. #emph[Journal of Brand Management, 27]\(6\), 645–661. #link("https://doi.org/10.1057/s41262-020-00207-5")[https:\/\/doi.org\/10\.1057\/s41262\-020\-00207\-5]
  #v(0.9em)
  This version of the article has been accepted for publication, after peer review \(when applicable\) and is subject to Springer Nature’s AM terms of use, but is not the Version of Record and does not reflect post\-acceptance improvements, or any corrections\. The Version of Record is available online at: #link("https://doi.org/10.1057/s41262-020-00207-5")[https:\/\/doi.org\/10\.1057\/s41262\-020\-00207\-5]
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/social-media-brand-engagement-airbnb.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Social media brand engagement in the context of collaborative consumption: the case of AIRBNB]]
#v(0.6em)
#par(first-line-indent: 0em)[Bruno Schivinski#super[1]\*, Daniela Langaro#super[2], Teresa Fernandes#super[3] and Francisco Guzmán#super[4]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]RMIT University, School of Media and Communication, Melbourne, Victoria, Australia; #super[2]ISCTE\-IUL, Department of Marketing, Operation and Management, Lisbon, Portugal; #super[3]University of Porto, Faculty of Economics, Porto, Portugal; #super[4]University of North Texas, G\. Brint Ryan College of Business, Texas, USA]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Bruno Schivinski]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() This study focuses on social media brand engagement in the context of shared and collaborative consumption businesses, a novel trend in the hospitality industry\. By drawing on the concept of brands being defined collectively through an assemblage of heterogonous human and nonhuman actors, and focusing on the brand Airbnb—a peer\-to\-peer online platform for renting, swapping, and lending accommodations—the current study examines how consumers’ perceptions of Airbnb brand equity mediate the relationship between functional and hedonic brand image and social media behavioral engagement in terms of consumption, contribution, and creation of brand\-related content \(COBRAs\)\. Results discriminate between direct and indirect effects\. Findings reveal that hedonic brand image directly influences behavioral engagement on social media, whereas brand equity fully mediates the relationship between functional brand image and COBRAs\. Implications for theory and practice related to shared or collaborative consumption platforms in the hospitality industry are discussed and suggestions for future studies are presented\. This research paper provides conceptual and theoretical clarity on issues such as how consumers’ brand perceptions influence their behavioral engagement on social media\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Functional brand image; Hedonic brand image; Overall brand equity; Consumer brand engagement; COBRAs; AIRBNB]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Revised 19 June 2019; published online 5 September 2020\.]]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The rise of social media and mobile apps, as well as the increased reliance on e\-commerce systems, has facilitated the sharing of goods and services \(Lu and Kandampully 2016\), privileging access over ownership \(Hamari et al\. 2016\)\. As a consequence, during the past decade, shared or collaborative consumption practices have gained widespread popularity, with more than two\-thirds of consumers worldwide willing to engage in such activities \(Liu and Mattila 2017\) and revenues being expected to reach \$335 billion by 2025 \(PwC Global 2015\)\. The concept of shared or collaborative consumption implies that access to goods and services is among peers, with exchanges being coordinated through community\-based online services \(Hamari et al\. 2016\)\. Just as Uber has shaken up the traditional taxi industry \(Varma et al\. 2016\), the enthusiasm with this business format has strongly influenced the hospitality industry, with a growing number of peer\-to\-peer renting, swapping, lending and accommodation services such as Airbnb, VRBO, HomeAway, Flipkey, Homestay, among numerous other startups, revolutionizing the traditional accommodation sector \(Sigala 2017; Guttentag et al\. 2018; Lee and Kim 2018a\)\. Among these, Airbnb is the most salient brand and the benchmark company in its particular domain \(Tussyadiah and Pesonen 2016; Chen and Xie 2017; Moon et al\. 2019\), generating a revenue of more than \$25 billion yearly, having over 6 million users, and exceeding the yearly revenue of hotel chains, such as Marriott and Hilton \(Lalicic and Weismayer 2018\)\. Differently from the traditional accommodation sector, peer\-to\-peer accommodation brands rely heavily on the engagement of users on social media in their marketing and branding strategies \(Moon et al\. 2019\)\. This study thus explores, in the context of shared and collaborative consumption businesses, how core impressions and perceptions of brands influence consumers’ behavior regarding brand engagement on social media\.]

Brands are defined collectively through an assemblage of heterogonous human and nonhuman actors \(Price and Coulter 2019\), as individuals expect to highly engage and interact with the brands they consume \(Veloutsou and Black 2019; Harmeling et al\. 2017\)\. Brand\-consumer interactions are essential to the consumer experience \(Brakus et al\. 2009\), and consumer experience is critical in the assemblage of brand meanings \(Price and Coulter 2019\)\. The co\-creation of brand experiences is particularly relevant in the tourism industry \(Fan et al\. 2020\) and it is facilitated by social media \(Ramaswamy and Ozcan 2016\)\. Social media also plays a significant role in the development and growth of shared and collaborative consumption business models, allowing the co\-creation of tourism experiences \(Ha and Lee 2018; Filieri et al\. 2019\) through peer\-to\-peer communications, campaigns around storytelling, and brand narratives based on people’s real stories and testimonials \(Liu and Mattila 2017; Lu and Kandampully 2016\)\. These experiences connect individuals to the brand and to other consumers who engage with the brand online \(Harrigan et al\. 2018\)\. Recently, scholars have outlined an excellent opportunity for developing new research on how brand co\-creation occurs in shared and collaborative consumption business models \(Sundararajan 2019; Swaminathan et al\. 2020; Lee and Kim 2018a\)\. This is of critical relevance for the hospitality industry in general and for Airbnb type of platforms in particular, as these rely on premises of trust among strangers with brand robustness being socially co\-created \(Lee and Kim 2018b; 2018a\)\. In other words, consumers’ previous attitudes about peer\-to\-peer accommodation services and similar type platforms are being evermore socially co\-created\.

Given that there is a range of open questions raised by the growth of the sharing economy \(Sundararajan 2019\) and that the academic literature related to social media in tourism is still in its infancy \(Fernandes and Fernandes 2018; Garrido\-Moreno et al\. 2018; Filieri et al\. 2019\), hospitality managers have received little scholarly guidance on how to incorporate social media in their brand strategies \(Hudson et al\. 2015; Moon et al\. 2019\), with the effects of branding on marketing variables related to social media, such as CBE, remaining largely unexplored \(Liu and Mattila 2017\)\. Although an increasing number of travel organizations are embracing social media, and its role in developing CBE in a tourism context is recognized, there is still a dearth of research on the topic, particularly when it comes to the limited, mainly qualitative studies, on shared and collaborative consumption business models \(Liang et al\. 2018\)\. A few, notable exceptions include Harrigan et al\.’s \(2017, 2018\) studies on engagement with tourism social media sites such as TripAdvisor, Expedia, and Priceline, where the authors validate previous multidimensional CBE scales \(So et al\. 2014\) in an online tourism context\. Regarding technological advances, the new business model of peer\-to\-peer renting, and that brands are shifting away from firm ownership to shared ownership, scholars have recently requested branding research from the shared economy perspective for a more holistic understanding of the phenomenon \(Sundararajan 2019; Swaminathan et al\. 2020; Lee and Kim 2018a\)\.

The current study contributes to the literature in the field of hospitality branding in terms of shared or collaborative consumption and its relationship with branding and social media\. A topic of high importance to drive knowledge and guide informed managerial practices \(Sundararajan 2019; Swaminathan et al\. 2020\), since the presence of brands on social media are increasingly becoming a complex phenomenon in which value, image, and equity are co\-created in through relationships and interactions among all stakeholders, including consumers \(Hutter et al\. 2013; Ind et al\. 2020; Price and Coulter 2019; Kennedy and Guzmán 2016\)\. More specifically, the current study draws on the concept of brands being shaped collectively through heterogonous human and nonhuman actors to explore the ecosystem within which CBE takes place on social media, by means of investigating the influence of brand image \(both functional and hedonic\) and the mediating role of brand equity on motivating users to consume, contribute and create brand\-related content on social media \(Muntinga et al\. 2011; Schivinski and Dabrowski 2016\)\.

= Literature review
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Businesses in general and tourism service providers in particular, are currently exploring how to manage social media to engage their customers \(Litvin et al\. 2018\), due to its positive effects on customer relationships and branding, combined with the scarce amount of existing research \(Schivinski 2019\)\. The following sections review the studies on CBE, presenting its behavioral component and nomological structure\.]

== Social media consumer brand engagement: a behavioral approach
#par(first-line-indent: 0em)[Many different definitions and conceptualizations of consumer brand engagement have been published in the scholarly literature\. While certain conceptualizations of engagement focus on its multidimensional nature \(Obilo et al\. 2020\), others have defined it with reference to specific customer activities or behavioral patterns \(Schivinski et al\. 2016; Muntinga et al\. 2011\)\. As such, van Doorn et al\. \(2010\) define engagement as “customers’ behavioral manifestations toward a brand or firm, beyond purchase, resulting from motivational drivers” \(p\. 254\)\.]

The behavioral interpretation of CBE is used as a basis for the analysis presented further in this paper, with the pattern and type of brand\-related activities that users get involved within social media \(e\.g\., liking, commenting, posting media\) being used as a proxy for engagement \(Barger et al\. 2016; Schivinski 2019\)\. While exploring the behavioral perspective of CBE in social media, Muntinga et al \(2011\) introduced the concept of COBRAs \(Consumers’ Online Brand\-Related Activities\), which classifies social media behaviors into three usage types, reflecting “a set of brand\-related online activities on the part of the consumer that vary in the degree to which the consumer interacts with social media and engages in the consumption, contribution, and creation of media content” \(Schivinski et al 2016, p\. 66\)\. COBRAs consist of hierarchical dimensions hence, consumption, contribution, and creation\. The three dimensions relate to consumers gradually interacting with brands on social media, from lower levels \(passive interaction\) to higher levels \(active interaction\) of engagement \(Schivinski et al 2016; Muntinga et al 2011\)\.

In terms of passive interaction, the consumption dimension covers brand\-related activities such as viewing\/watching posts, clicking on content, or reading content other consumers post, without active participation \(Schivinski et al 2016\)\. The contribution dimension is the mid\-level behavioral engagement, which encompasses interactions with other consumers or the brand\. Such activities include liking and endorsing brand\-related content, commenting, sharing, and reposting content \(Schivinski et al 2016\)\. Finally, the creation dimension, covers a higher level of behavioral activities such as co\-developing, producing and publishing new brandrelated content on social media\. Creation activities include writing and posting reviews, uploading photos\/selfies using the brand, and initiating hashtags \(Schivinski et al 2016; Stathopoulou et al 2017\)\. COBRAs importance is heightened when consumers expect to engage and interact with the brands they consume \(Harmeling et al 2017; Veloutsou and Black 2019\) and in a time that brands are defined collectively \(Price and Coulter 2019\)\.

In the context of the tourism industry and, within that, in the perspective of shared or collaborative consumption, COBRAs occupy a strategic role as social media has changed not only how organizations communicate with customers \(Michopoulou and Moisa 2019\), but also how customers organize their decisions while planning their trips\. In that sense, social media has become one of the main credible sources of information for tourists, who prefer to collect information about their destinations from their online peers instead of traditional sources \(e\.g\., travel agents or mass media advertising\), given peer\-to\-peer independency, relevance and credibility \(Lu and Stepchenkova 2015\)\. In other words, social media is helping socially shape and co\-create consumers’ previous attitudes about shared and collaborative consumption business models\.

Social media platforms provide consumers a wide variety of ways to be involved in COBRAs \(Harrigan et al\. 2018; Schivinski 2019\)\. Notably, Facebook, Twitter, and review sites such as TripAdvisor represent an important part of peer consumer opinions available online and became the ultimate source, where information can be gathered, reviews posted, and complaints heard \(Fernandes and Fernandes 2018\) to be later broadcast for the benefit of other consumers \(Lu and Stepchenkova 2015\)\. The advantage, or disadvantage, these social media platforms provide is the existence, or lack, of trust consumers place on the information they contain \(Reimer and Benkenstein 2016; Ruiz\-Mafe et al\. 2018\)\. Ultimately, trust between consumers and brands is essential for consumers to be willing to engage and co\-create \(Kennedy and Guzmán 2016\) and for long\-term partnerships to form \(Fournier 1998\)\.

== Driving social media engagement: the role of branding
#par(first-line-indent: 0em)[Although the research on the topic of consumer engagement has grown, the paucity of studies continues to represent an important oversight of the literature \(Schivinski 2019\)\. Therefore, many research gaps remain, namely regarding the nomological network of the construct \(Carvalho and Fernandes 2018; Schivinski 2019\), which has its exploration limited to customer\-led drivers\. Among those are drivers related to involvement \[e\.g\., Hollebeek et al\. \(2014\) and later on Harrigan et al\. \(2017\) on their study on tourism social media brands\], personality traits \(Marbach et al\. 2016\), users benefits and gratifications \(Dolan et al\. 2016\), customer participation, interactivity and flow experience \(Carvalho and Fernandes 2018\), and individual predispositions such as online interaction propensity \(Stokburger\-Sauer and Wiertz 2015\)\. These studies mainly highlight the importance of individual factors in driving social media engagement, to the expense of firm\-led factors such as branding, which seem to have been neglected by the broad empirical research on CBE \(France et al\. 2016\)\.]

Yet, early engagement studies \(e\.g\., van Doorn et al\. 2010\) emphasized branding, as well as brand characteristics, as some of the most important firm\-based factors influencing engagement behaviors\. In one of the few studies on brandrelated drivers developed in a social media environment, De Vries and Carlson \(2014\) claim that brand strength \(i\.e\., the strength of the relationship with a particular brand\), or brand equity, leads to higher levels of brand engagement\. Later on, Schivinski et al\. \(2016\) validated the nomological dependencies of brand equity and COBRAs\. Both studies were conducted with brands not related to hospitality branding, hence demanding for further validation\.

Outside the context of social media, the situation stands with few studies exploring branding related aspects\. Among them, France et al\. \(2016\) developed one of the first studies to empirically measure both customer\-centered and firmled antecedents of CBE in a comprehensive model across product and service brands\. The authors consider brand quality \(i\.e\., the cognitive and emotional evaluations of a brand\) and brand interactivity \(i\.e\., the brand’s willingness and desire for integration with consumers\) as brand\-related drivers and empirically demonstrate their role as “a platform from which brand management may influence the customer’s level of brand engagement” \(France et al 2016, p\. 132\)\. Few other studies have also contributed to validating the influence of branding on CEB \(Islam and Rahman 2016; Merz et al 2018\), with their findings helping to support the hypotheses proposed in the current study, as presented next\.

= Theoretical model
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== The effect of brand image on consumers’ online brand‑related activities \(COBRAs\)
#par(first-line-indent: 0em)[Brand image, “the understanding consumers derive from the total set of brand\-related activities engaged by the firm” \(Park et al 1986, p\. 135\), relates to the associations attached to the brand in the mind of the consumer, reflecting the way that brands are perceived \(Keller 1993; Dobni and Zinkhan 1990\)\. The associations combine attributes, benefits, and attitudes\. These are related with each other while constituting the brand image, with attributes representing the descriptive characteristics that define the brand name, benefits representing the value associated to the attributes and, finally, attitudes representing the evaluative perceptions regarding the benefits and attributes, being often acknowledged as the component of brand image which is most strongly capable of energizing behaviors \(Langaro et al 2018\)\.]

Research on social media captures brand image according to two main associations, hedonic or functional \(e\.g\., Bruhn et al\. 2012\)\. Functional associations are related to utilitarian, economic, and rational aspects of the brand regarding, for example, reliability, competence, skillfulness, usefulness, and quality \(Keller 2013\)\. As such, they give objective meaning to the brand\. Hedonic brand associations, on the other hand, provide subjective meaning to the brand, encompassing emotional and affective image and being linked to non\-product\-related aspects, such as selfconcept connections, emotions, fun, attachment and symbolism \(Aaker 1996; Batra and Homer 2004; Batra and Ahtola 1991\)\. Online peer\-to\-peer accommodation services convey both functional and hedonic associations\. Platforms such as Airbnb are likely to be perceived as more affordable and accessible when compared to traditional lodging options, which contributes to its utilitarian or functional image \(Lee and Kim 2018a; Prebensen and Rosengren 2016\)\. Moreover, great care is taken in construing an image of efficiency and professionalism \(Liu and Mattila 2017\)\. Yet, Airbnb has also emphasized an enjoyable and entertaining image through diverse visual stimuli, interactions with locals, and unique travel experiences \(Miao et al\. 2014\)\. It can thus be expected that both hedonic and functional aspects play a role with regard to the Airbnb brand \(Lee and Kim 2018b\), though opinions regarding their relative importance vary \(Lee and Kim 2018a\)\.

Though few studies have assessed the differential effects of functional and hedonic associations \(Delgado\-Ballester and Sabiote 2015; Mohan et al 2017\), previous research reveals that when consumers hold a favorable, unique, and strong brand image they behave favorably toward the brand \(Esch et al 2006\), with positive effects validated in the context of hospitality \(Šerić et al 2018\) and social media \(Schivinski and Dabrowski 2016\)\. Regarding differential effects, Lee and Kim \(2018a\) examine the impact of hedonic and utilitarian values on satisfaction and loyalty of Airbnb customers, while Prebensen and Rosengren \(2016\) and Ryu et al \(2010\) examine how the impact of these two aspects on satisfaction differ in tourism and hospitality settings\.

However, concerning the body of literature on CBE, the effects of brand image on consumers’ responses have thus far been poorly investigated\. Despite brand image being proposed as one of the most important antecedents of behavioral engagement and suggested to be further investigated \(Schivinski 2019\), so far the only study that validates this relationship was conducted outside the context of social media, with findings capturing positive effects of brand image on CBE resulting from consumers’ willingness to engage with brands that are accepted for their positive image \(Islam and Rahman 2016\)\. In their study, the authors suggest that brand image reflects the personification of a brand, which if congruent with a consumers’ self\-concepts \(Aaker 1996\) may influence consumers’ self\-brand identification and brand love \(Batra et al 2012\)\. Likewise, a recent study shows that regardless of favoring functional or hedonic associations in a brand messaging to consumers with predominantly analytic versus intuitive cognitive style thinking, what truly helps consumers favor a brand over another is the alignment between a brand’s image and their values and beliefs \(Alvarado\-Karste and Guzmán 2020\)\.

In the context of shared and collaborative consumption, and in line with research that suggests that brands \(a\) try to engage with consumers by aligning with causes that they care about \(Shepherd et al 2015\) and \(b\) engage consumers in the co\-creation of brand identities \(Iglesias et al 2018; Ind et al 2020; Kennedy and Guzmán 2016\), it is proposed that: the stronger and more favorable is the perceived hedonic and functional brand image of Airbnb, the more consumers will be willing to express their self\-brand identification by means of engaging with the brand in social media\. Namely by consuming content \(e\.g\., reading posts about Airbnb and others reviews\), contributing with their perspective and opinions \(e\.g\., liking or commenting news about the brand\), and creating content to be shared with their own networks \(e\.g\., posting photos of their own experiences in Airbnb locations\)\. The following hypotheses capture this effect:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1\.] Airbnb functional brand image positively influences \(#emph[H1a]\) consumption, \(#emph[H1b]\) contribution, and \(#emph[H1c]\) creation of social media brand\-related content\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2\.] Airbnb hedonic brand image positively influences \(#emph[H2a]\) consumption, \(#emph[H2b]\) contribution, and \(#emph[H2c]\) creation of social media brand\-related content\.]]
== The mediating effects of overall brand equity \(OBE\)
#par(first-line-indent: 0em)[Yoo and Donthu’s \(2001\) single\-dimensional measurement of overall brand equity is introduced to the literature of consumer\-based brand equity \(CBBE\) with the intent to capture the value, utility, and transactional attitudinal loyalty, which result from the set of perceptions, attitudes, knowledge, and behavior on the part of consumers, associated to the brand name \(Christodoulides and de Chernatony 2010\)\. As a conceptual framework, CBBE is a key marketing and business asset, which creates a connection that distinguishes the bonds between a company and its target audience, while fostering behaviors \(Keller and Lehmann 2006\)\. The management of CBBE and its growth increases competitive advantage and drives brand wealth \(Yoo and Donthu 2001\)\.]

Although a large body of studies focus on understanding the mechanisms behind the creation of CBBE, the literature is highly fragmented and inconclusive \(Chatzipanagiotou et al\. 2016; Baalbaki and Guzmán 2016\)\. This situation results from a lack of scholarly agreement on the conceptualization of CBBE \(Christodoulides et al\. 2015\)\. Among the numerous methods to capture CBBE, two of the most usually adopted conceptualizations in the literature are Aaker’s \(1991\) four\-dimensional framework and Yoo and Donthu’s \(2001\) single\-dimensional construct, measuring overall brand equity \(OBE\)\. Both approaches tend to privilege capturing attitudinal loyalty related to core brand transactions\. In Aaker’s CBBE framework consumers’ transactional intentions regarding brand loyalty are captured together with other three dimensions: brand awareness, brand associations, and perceived quality\. Aakers’ framework is typically employed in research to understand the internal nuances of CBBE \(Christodoulides and de Chernatony 2010\), which goes beyond the scope of this paper\. On the other hand, Yoo and Donthu’s single\-dimensional OBE is often used for its simplicity and accuracy, justifying its adoption in the current study, where specific nuances are not intended to be captured \(Schivinski et al\. 2019\), but the overall mediating effect of brand equity in the relationship between brand image and CBE\.

Despite the previously hypothesized link between brand image and CBE, the mechanism underlying this complex relationship is yet not well known\. For proposing the mediational role of OBE, the authors build on the concept of brands being defined collectively through an assemblage of heterogonous human and nonhuman actors \(Price and Coulter 2019\)\. Given consumers’ expectations to highly engage and interact with the brands they consume and value \(Veloutsou and Black 2019; Harmeling et al\. 2017\) within a collaborative consumption context, social media helps to socially shape and co\-create consumers’ attitudes \(France et al\. 2020\)\.

When using the peer\-to\-peer accommodation services, consumers have direct contact with the functional aspects of the website, and\/or online application\. Consumers, therefore, develop functional brand associations related to aspects such as practicality, usefulness, quality, reliability, and economic value of the service\. This in turn gives objective meaning to the hospitality brand\. Subjective meaning, related to hedonic brand associations, on the other hand, is reinforced when consuming firm\-created emotional and affective content portraying tourism, holidays, and other positive experiences\. Together, both functional and hedonic brand associations regarding the hospitality service \(in this particular case, Airbnb\), may result in higher social media CBE behaviors \(brand\-related behaviors\) when a positive impact on OBE occurs \(brandrelated intentions\)\. This idea is supported in the literature, which suggests that strong equity generates strong brand commitment and attachment, thus providing additional drivers for consumers to partake in all ranges of behaviors from developing their knowledge about the brand to sharing their brand experiences with family and friends \(Schivinski 2019; Schivinski et al 2019\)\.

In summary, given that consumer attitudes are being socially co\-created \(France et al 2020\), the authors suggest that consumers primarily foster positive hedonic and functional perceptions for a hospitality brand, which in turn enhances their social media brand\-related behavior as they engender higher perceived brand equity\. These effects are summarized in the following hypotheses:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3\.] OBE mediates the positive relationship between Airbnb functional brand image and \(#emph[H3a]\) consumption, \(#emph[H3b]\) contribution, and \(#emph[H3c]\) creation of social media brand\-related content\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4\.] OBE mediates the positive relationship between Airbnb hedonic brand image and \(#emph[H4a]\) consumption, \(#emph[H4b]\) contribution, and \(#emph[H4c]\) creation of social brand\-related content\.]]
== Controlling variables
#par(first-line-indent: 0em)[The conceptual model testing the role of OBE between the consumers’ perceptions of brand image and COBRAs in the context of shared or collaborative consumption is controlled for relevant variables to predict CBE\. Research has evidenced that consumers engagement with brands on social media is predicted by sociodemographic factors and usage patterns \(Harmeling et al 2017; Schivinski 2019\)\. Those are specified in the conceptual model in terms of consumers’ gender, age, and use of social media\. Figure 1 depicts the conceptual model\.]

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Fig\. 1 The mediating role of brand equity on the relationship between the consumer’s perceptions of Airbnb brand image and COBRAs\. #emph[Note]: simple arrows #emph[a] denote the direct paths from independent variables to mediator; #emph[b] denotes the direct paths from mediator to dependent variables; #emph[c] denotes the theorized direct path from independent to dependent variables\. Dashed arrow represents the indirect \(#emph[c’]: mediating\) effect of CBBE on the relationship between Airbnb brand image and COBRAs]]
#v(0.6em)
= Method
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Participants and procedures
#par(first-line-indent: 0em)[A heterogeneous sample of social media users was recruited in Poland\. Airbnb was chosen to be investigated as previously stated in this article, this platform is the leading peer\-to\-peer online platform for renting, swapping, and lending accommodations, which is \(1\) used as the benchmark for other hospitality companies and \(2\) other peer\-to\-peer platforms, as well as \(3\) is the top reference for consumers using this type of service \(Mintel 2017\)\.]

Users of Airbnb were contacted during the sample recruitment process on different social media channels \(e\.g\., Facebook, Instagram, YouTube, Twitter\) and specialized forums for travelers in Poland\. Data collection was carried out by publishing a link to an online survey\. The survey containing the study’s psychometric instruments was prepared and hosted on Qualtrics\. During the data collection, the online link was distributed on a weekly basis, for a total of 2 weeks using the social media platforms where respondents can engage with Airbnb brand\.

After clicking on the survey link, the respondents had access to an introductory text explaining the context of the research and addressing confidentiality and data related issues\. To confirm the participants’ eligibility, they were initially asked if they had accessed and used social media in the past 6 months\. Those who answered ‘#emph[no]’ were not allowed to proceed in the survey\. Additionally, participants were asked to declare whether they actively \(1\) follow \(yes\/no\) and \(2\) interact with Airbnb in social media platforms \(yes\/no\), as well as \(3\) specify in which platform\(s\) they do if so\. Only respondents that followed, interacted with the brand, and were able to determine the social media platform where that behavior occurred were eligible to partake the study\. Additionally, respondents were asked if they had ever used the service Airbnb at least once to lease or rent shortterm lodging \(yes\/no\)\.

Upon completion of the online recruitment process, an overall sample of 530 respondents was successfully recruited\. The mean age of the sample was 29 years \(SD\= 5\.66 years, range 18–52 years\) and females represented 47% \(#emph[n] \= 293\) of the total sample\.

== Measures
#par(first-line-indent: 0em)[Sociodemographic questions included the respondents’ gender, age, education level, and household income\. The respondents’ frequency of traveling was controlled with a question regarding how often they travelled within the last 6–12 months\. Social media behavior was assessed by asking the respondents’ average time spent on social media during weekdays \(Monday\/Friday\), weekends \(Saturday\/Sunday\), and the average time spent on social media channels\. Respondents were also asked to declare whether they use smart devices to access social media content\.]

To capture the consumers’ perceptions of Airbnb brand equity, Yoo and Donthu’s \(2001\) 4\-item OBE scale was used\. To measure functional and hedonic brand image, Bruhn et al\.’s \(2012\) 7\-item scale was adopted\. The items of those scales were answered using a 7\-point scale ranging from 1 ‘#emph[Completely disagree]’ to 7 ‘#emph[Completely agree]’\. Finally, the 17 items of Schivinski et al\.’s \(2016\) Consumer’s Engagement with Brand\-Related Social Media Content scale \(CEBSC\) were implemented to assess the consumers’ behavioral engagement with Airbnb on social media\. The CESBC scales were anchored from 1 ‘#emph[Never]’ to 7 ‘#emph[Very] #emph[often]’\.

The survey was carried out in Polish\. We adopted standardized practices for cross\-cultural adaptation of self\-report measures \(Beaton et al\. 2000\)\. The process of forward\-translation of the survey was conducted by two independent bilingual translators whose mother tongue was Polish\. Inconsistencies across the translations were solved in discussions by the research team members fluent in Polish\. The translations of the survey were then merged by the research team and the two translators\. The final version of the survey was piloted with 49 potential respondents \(43% female, Mean#sub[age] \= 27\.6, SD\= 6\.6 years\)\. The respondents did not detect any language or structural issues in the instrument\.

== Data management and analytic strategy
#par(first-line-indent: 0em)[Data management involved three steps: \(1\) inspecting for missing values, \(2\) assessing for univariate normality, \(3\) screening for univariate and multivariate outliers\. Little’s missing completely at random \(MCAR\) was used to test the structure of the missing data\. The test yielded a Chi\-square value of 284\.66, DF \= 233, #emph[p] value \= \.17\. The results indicate that the hypothesis of MCAR is rejected at a \.05 significance level, suggesting that the data is missing at random\. Following, 78 \(12\.5%\) cases were excluded from the analyses due to showing severe missing values \(≥ 5 items of the survey\)\. The skewness and kurtosis for the items of the survey was computed to assess for univariate normality\. No item had absolute values of kurtosis \> 8 or skewness \> 3 \(Kline 2011; see “Appendix” section\)\.]

To inspect for univariate outliers, standardized composite sum scores were calculated for all the constructs in the survey\. Respondents were considered univariate outliers if scored ± 3\.29 standard deviations from a construct #emph[z]\-score\. The adopted threshold includes around 99\.9% of the normally distributed construct’s #emph[z]\-scores \(Field 2013\)\.

Lastly, Mahalanobis’ distances and the critical value for each case \(based on the Chi\-square distribution values\) we implemented to assess the data for multivariate outliers, which resulted in the exclusion of 15 participants\. The cleaning procedures yielded a final sample size of 449 \(84\.7%\) respondents, which were eligible for the following analyses\.

== Statistical analyses
#par(first-line-indent: 0em)[The statistical analyses included: \(1\) descriptive analysis of the structure of the sample; \(2\) construct validity and dimensionality assessment of the conceptual model using confirmatory factor analysis \(CFA\); \(3\) reliability analysis of the latent variables using the following coefficients of internal consistency: Cronbach’s alpha, composite reliability \(CR\), and factor determinacy \(FD\); and \(4\) the test of the postulated hypothesis via structural equation modeling \(SEM\)\. The statistical analyses outlined above were conducted using IBM SPSS Version 24 and M#emph[plus] 7\.2\.]

= Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Descriptive statistics
#par(first-line-indent: 0em)[Females consisted of 55\.90% of the sample \(#emph[n] \= 251\)\. The structure of the respondents’ age was as follows: 24\.28% \(#emph[n] \= 109\) were 18\-24 years old, 33\.63% \(#emph[n] \= 151\) were 25\-30 years old, 32\.29% \(#emph[n] \= 145\) were 31\-37 years old, 9\.13% \(#emph[n] \= 41\) were 38\-46 years old, and the remainder were older than 46 years old \(67%; #emph[n] \= 3\)\. In terms of the levels of education, 51\.44% \(#emph[n] \= 321\) the respondents had completed at least some college education, 26\.94% \(#emph[n] \= 121\) had received a high school diploma, and the remainder declared to have obtained a secondary school certificate\.]

As per traveling behavior, 89% of the respondents \(#emph[n] \= 397\) declared to have travelled within the last 6 months; all the sample declared to have travelled with the past year prior to taking the survey\. The average time spent on social media was 7\.5 h on weekdays \(SD\= 2\.23 h\) and 6\.31 h on weekends \(SD\= 2\.21 h\), with an average of about 16 min per browsing session \(SD\= 11\.66 min\)\. Furthermore, 98\.44% \(#emph[n] \= 442\) of respondents reported using smart devices to access social content\. Facebook and Instagram were the most used social media channels\. Finally, 79\.51% \(#emph[n] \= 357\) of the sample had declared to use Airbnb at least once to lease or rent short\-term lodging\.

== Construct validity and dimensionality
#par(first-line-indent: 0em)[A CFA with robust maximum likelihood estimation method \(MLR\) was computed to assess the construct validity and dimensionality of the conceptual model\. To determine the goodness of fit \(GOF\) for the model, a conventional fit indices and thresholds was used \(i\.e\., the root mean square error of approximation \(RMSEA\) \[\.05;\.08\], RMSEA 90% confidence interval \(CI\) with the lower limit close to 0 and the upper limit below or equal \.08; standardized root mean square residual \(SRMR\) \[\.05;\.08\]; comparative fit index \(CFI\); and Tucker\-Lewis fit index \(TLI\) \[\.90;\.95\] \(Kline 2011\)\.]

The GOF indices for the CFA model indicate a very good fit: MLRχ#super[2]#sub[\(335\)] \= 836\.55, RMSEA \= \.06 \(90%CI \= \.05–\.06\), SRMR \= \.06, CFI \= \.93, and TLI \= \.93\. Additionally, the CFA model yields standardized item loads above the acceptable threshold of #emph[λ]#sub[\*ij\*] \= \.70 \(Kline 2011\), with the exception of \[CONS4\] #emph[“I follow blogs related to Airbnb”] \(#emph[λ]#sub[Cons4] \= \.69, #emph[p] value \< \.001\) \(see “Appendix” section\)\. The item was not removed from further analysis due to its borderline score near #emph[λ]#sub[\*ij\*] \= \.70 and the indication of its removal not leading to significant improvement in the overall model\. Finally, there was no evidence of cross\-loading through the items\. The tests provide evidence of convergent validity of the constructs used \(Kline 2011\)\.

In terms of discriminant validity, the average variance extracted \(AVE\) was calculated for all latent variables\. AVE values are well above the acceptable threshold of \.50 \(Kline 2011\), ranging from \.66 to \.87\. Finally, AVE square roots are higher than the correlations across factors\. Altogether, the tests indicate discriminant validity \(Kline 2011\)\.

== Reliability analysis
#par(first-line-indent: 0em)[The reliability coefficients \(i\.e\., Cronbach’s alpha and composite reliability \(CR\)\) are well above the recommended \.70 threshold, providing evidence of strong internal consistency of all the scales used in this study \(Fornell and Larcker 1981; Hair et al\. 2014\)\. Finally, the factor determinacy scores are also above the desired threshold of \.80 \(Muthén and Muthén 2012\), giving further evidence of internal consistency of the scales used\. Table 1 summarizes the reliability, validity, and CFA outputs\.]

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Construct reliability and validity outputs\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Construct]], [#strong[α]], [#strong[CR]], [#strong[FD]], [#strong[AVE]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]]),
table.hline(stroke: 0.5pt),
[1\. Consumption], [\.90], [\.90], [\.96], [\.66], [#emph[\.81]], [], [], [], [], [],
[2\. Contribution], [\.92], [\.92], [\.97], [\.68], [\.72], [#emph[\.82]], [], [], [], [],
[3\. Creation], [\.95], [\.95], [\.97], [\.76], [\.59], [\.78], [#emph[\.87]], [], [], [],
[4\. Overall brand equity], [\.89], [\.90], [\.96], [\.69], [\.38], [\.24], [\.19], [#emph[\.83]], [], [],
[5\. Functional brand image], [\.95], [\.95], [\.98], [\.87], [\.36], [\.19], [\.13], [\.69], [#emph[\.93]], [],
[6\. Hedonic brand image], [\.94], [\.94], [\.97], [\.80], [\.41], [\.26], [\.22], [\.71], [\.63], [#emph[\.89]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[α \= Cronbach’s alpha, CR \= composite reliability, FD \= factor determinacy, AVE \= average variance extracted; The square root of the AVE values is marked in italic\. MLRχ#super[2]\(335\) \= 836\.55, RMSEA \= \.06 \(90%CI \= \.05–\.06\), SRMR \= \.06, CFI \= \.93, TLI \= \.93; n \= 449]
]
#v(12pt)
== Structural equation model
#par(first-line-indent: 0em)[To verify the directional hypotheses, the six latent variables were specified in a single structural equation model \(SEM\)\. The control variables \(i\.e\., age, gender, and social media usage\) were regressed on the COBRAs dimensions\. The calculations were based on the MLR estimator\. The results of the SEM indicate a good fit to the data as indicated by the following GOF values: MLRχ#super[2]#sub[\(416\)] \= 972\.08, RMSEA \= \.05 \(90%CI \= \.05–\.06\), SRMR \= \.06; CFI \= \.93, and TLI \= \.92\.]

Airbnb functional brand image has no influence on the consumption, contribution, and creation of brand\-related content, leading to the rejection of hypotheses #emph[H1a] \(#emph[p] value \= \.25\), #emph[H1b] \(#emph[p] value \= \.56\), and #emph[H1c] \(#emph[p] value \= \.23\)\. On the other hand, consumers’ perceptions of Airbnb hedonic brand image positively influence the three dimensions of COBRAs, providing support for #emph[H2a] \(#emph[β]#sub[consumption]\= \.31; #emph[t] value \= 3\.51; #emph[p] value \< \.001\), #emph[H2b] \(#emph[β]#sub[contribution]\= \.32; #emph[t] value \= 3\.32; #emph[p] value \< \.001\), and #emph[H2c] \(#emph[β]#sub[creation]\= \.33; #emph[t] value \= 3\.19; #emph[p] value \< \.001\)\.

As per the direct effects of Airbnb brand image on overall brand equity \(#emph[a] paths\), the calculations indicate a positive effect from both functional brand image \(#emph[β] \= \.67; #emph[t] value \= 10\.17; #emph[p] value \< \.001\) and hedonic brand image \(#emph[β] \= \.15; #emph[t] value \= 2\.11; #emph[p] value \.03\) on overall brand equity\. The calculations also demonstrate that overall brand equity influences COBRAs \(#emph[b] paths\) in terms of consumption \(#emph[β] \= \.22; #emph[t] value \= 2\.43; #emph[p] value \< \.001\), contribution \(#emph[β] \= \.19; #emph[t] value \= 2\.04; #emph[p] value \= \.04\), and creation \(#emph[β] \= \.18; #emph[t] value \= 1\.89; #emph[p] value \= \.05\) of brand\-related content on social media\.

Regarding the control variables, consumers’ gender had no influence on their consumption \(#emph[p] value \= \.13\), contribution \(#emph[p] value \= \.99\), and creation \(#emph[p] value \= 53\) of social media brand\-related content\. Consumers’ age influenced both contribution \(#emph[β] \= \.11; #emph[t] value \= 1\.93; #emph[p] value \= \.05\) and creation \(#emph[β] \= \.12; #emph[t] value \= 1\.93; #emph[p] value \= \.05\) of social media brand\-related content\. No effect was detected for consumption COBRAs type \(#emph[p] value \= \.19\)\. Finally, social media usage influenced the consumption \(#emph[β] \= \.11; #emph[t] value \= 2\.41; #emph[p] value \= \.01\), contribution \(#emph[β] \= \.08; #emph[t] value \= 1\.75; #emph[p] value \= \.07\), and creation \(#emph[β] \= \.09; #emph[t] value \= 1\.67; #emph[p] value \= \.09\) of social media brand\-related content\.

Finally, for robustness a post hoc model was estimated with a split sample, using only the consumers who declared to use the service Airbnb at least once to lease or rent shor#emph[t] term lodging\. The results do not differ from the preceding model and align with the literature on CBBE and CEB, which explains that those constructs are not constrained to the perceptions consumers build after using or purchasing, but also apply for prospect consumers \(Sánchez\-Casado et al\. 2018; Pansari and Kumar 2017\)\.

== Mediation analysis
#par(first-line-indent: 0em)[For the mediation analysis, the same model specification was used: \(1\) computed with the maximum likelihood \(ML\) estimation method \(Muthén and Muthén 2012\) and \(2\) performed with 5000 bootstrap draws\. The GOF values indicate a good fit to the data: MLχ#super[2]#sub[\(416\)] \= 1216\.32, RMSEA \= \.06 \(90%CI \= \.06–\.07\), SRMR \= \.06, CFI \= \.93, TLI \= \.92\.]

Hypothesis #emph[H3] verified the mediational role of overall brand equity on the relationship between functional Airbnb brand image and COBRAs\. Although the directional hypothesis indicated no statistically significance from functional Airbnb brand image on COBRAs \(vide #emph[H1]\), the calculations indicate statistically significant indirect effects through OBE, therefore supporting #emph[H3]\. Hence overall brand equity #emph[fully] mediates the relationship between functional Airbnb brand image and consumption \(#emph[indβ] \= \.26; #emph[t] value \= 6\.64; #emph[p] value \< \.001\), contribution \(#emph[indβ] \= \.16; #emph[t] value \= 4\.65; #emph[p] value \< \.001\), and creation \(#emph[indβ] \= \.13; #emph[t] value \= 4\.04; #emph[p] value \< \.001\) of social media brand\-related content\.

Hypothesis #emph[H4] tested the mediational role of overall brand equity on the positive relationship between hedonic Airbnb brand image and COBRAs \(#emph[H2]\)\. Statistically significant indirect effects were detected supporting #emph[H4], hence overall brand equity #emph[partially] mediates hedonic Airbnb brand image and consumption \(#emph[indβ] \= \.06; #emph[t] value \= 2\.14; #emph[p] value \= \.03\), contribution \(#emph[indβ] \= \.04; #emph[t] value \= 1\.93; #emph[p] value \= \.05\), and creation \(#emph[indβ] \= \.03; #emph[t] value \= 1\.78; #emph[p] value \= \.07\) of social media brand\-related content\. The main results regarding hypotheses testing are presented in Table 2\.

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 2.] Structural results\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Hypothesis]], [#strong[]], [#strong[]], [#strong[]]),
table.hline(stroke: 0.5pt),
[#emph[Direct effects]], [Beta], [t value], [p value],
[H1a\. Functional brand image → consumption], [\.10], [1\.13], [\.25],
[H1b\. Functional brand image → contribution], [−\.05], [−\.57], [\.56],
[H1c\. Functional brand image → creation], [−\.12], [−1\.19], [\.23],
[H2a\. Hedonic brand image → consumption], [\.31], [3\.51], [\.001],
[H2b\. Hedonic brand image → contribution], [\.32], [3\.32], [\.001],
[H2c\. Hedonic brand image → creation], [\.33], [3\.19], [\.001],
[apath1\. Functional brand image → OBE], [\.67], [10\.17], [\.001],
[apath2\. Hedonic brand image → OBE], [\.15], [2\.11], [\.03],
[bpath1\. OBE → consumption], [\.22], [2\.43], [\.001],
[bpath2\. OBE → contribution], [\.19], [2\.04], [\.04],
[bpath3\. OBE → creation], [\.18], [1\.89], [\.05],
[#emph[Indirect effects]], [Indirect beta], [t value], [p value],
[c’ H3a\. Functional brand image → OBE → consumption], [\.26], [6\.64], [\.001],
[c’ H3b\. Functional brand image → OBE → contribution], [\.16], [4\.65], [\.001],
[c’ H3c\. Functional brand image → OBE → creation], [\.13], [4\.04], [\.001],
[c’ H4a\. Hedonic brand image → OBE → consumption], [\.06], [2\.14], [\.03],
[c’ H4b\. Hedonic brand image → OBE → contribution], [\.04], [1\.93], [\.05],
[c’ H4c\. Hedonic brand image → OBE → creation], [\.03], [1\.78], [\.07],
[#emph[Control variables]], [Beta], [t value], [p value],
[Gender → consumption], [\.06], [1\.49], [\.13],
[Gender → contribution], [\.00], [\.00], [\.99],
[Gender → creation], [−\.03], [−\.61], [\.53],
[Age → consumption], [\.06], [1\.30], [\.19],
[Age → contribution], [\.11], [1\.93], [\.05],
[Age → creation], [\.12], [1\.93], [\.05],
[Social media usage → consumption], [\.11], [2\.41], [\.01],
[Social media usage → contribution], [\.08], [1\.75], [\.07],
[Social media usage → creation], [\.09], [1\.67], [\.09],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[GOF values for the directional SEM: MLRχ#super[2]\(416\) \= 972\.08, RMSEA \= \.05 \(90%CI \= \.05–\.06\), SRMR \= \.06; CFI \= \.93, and TLI \= \.92; GOF for the mediational model: MLχ#super[2]\(416\) \= 1216\.32, RMSEA \= \.06 \(90%CI \= \.06–\.07\), SRMR \= \.06, CFI \= \.93, TLI \= \.92; Bootstrap sampling \= 5000; Gender reference: 1 \= female; OBE \= Overall brand equity; apath \= direct structural path from independent variable to mediator, bpath \= direct structural path from mediator to dependent variable, c’ \= indirect effect; n \= 449]
]
#v(12pt)
= Discussion and conclusion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The trend of shared or collaborative consumption has strongly impacted the hospitality industry, with a growing number of peer\-to\-peer accommodation services, such as Airbnb, shaking up the traditional business models \(Sigala 2017; Guttentag et al\. 2018\)\. In this context, social media plays a significant role by allowing consumers to socially shape attitudes \(France et al\. 2020\) and co\-create the brand \(Varma et al\. 2016; Fan et al\. 2020\) by means of collaborating in peer\-to\-peer brand\-related communications \(Lu and Kandampully 2016\) and sharing their travel experiences \(Filieri et al 2019; Guttentag et al 2018; Ha and Lee 2018\) while engendering on consumer brand engagement \(CBE\)\. This communication flow is especially helpful in the context of shared or collaborative consumption, in particular for new hospitality business models, where the premise of trust among strangers stands and building a socially robust and trustable brand becomes a prerequisite \(Lee and Kim 2018b\)\.]

Despite its relevance, few studies so far have helped to understand what are the firm\-led, brand\-related aspects that may influence users in adopting CBE behaviors on social media, with the few exceptions taking place outside the context of the hospitality industry\. In view of this, the current study contributes to the body of literature by drawing on the concept of brands being defined collectively through an assemblage of heterogonous human and nonhuman actors \(Price and Coulter 2019\) to explore the ecosystem within which CBE takes place on social media\. Specifically, by investigating the influence of Airbnb brand image \(both functional and hedonic\) and the mediating role of Airbnb’s OBE in motivating users to engage in CBE behaviors by means of consumption, contribution, and creation of Airbnbrelated content \(Schivinski 2019\)\.

Overall, the findings indicate that brand image influences CBE behaviors on social media, with hedonic associations playing overall a more relevant role than functional aspects in the consumption, contribution, and creation of brand\-related content\. While evaluating the mediating role of OBE, it is possible to conclude that the paths of effects vary according to the type of brand image associations\. Though hedonic brand image positively influences COBRAs both directly and indirectly, functional brand image impacts COBRAs only through the mediating role of OBE, while direct effects are non\-significant\. Moreover, functional associations not only play a less important role overall, but also mainly influence the lowest passive form of CBE, consuming, while having rather neglectable effects on contribution and creation\. These findings are in line with Alvarado\-Karste and Guzmán \(2020\), who find that consumers will favor hedonic elements of a marketing offering when making decisions driven by intuitive analytic thinking and have implications for theory and practice in the field of hospitality branding\.

== Theoretical implications
#par(first-line-indent: 0em)[Theoretically, the current study contributes to revealing that brand image operates in different manners depending on its content type \(hedonic or functional\)\. This finding extends previous studies where the effects of brand image on engagement were not distinguished \(Islam and Rahman 2016\)\. Findings support the dominant role of hedonic motivations on CBE, which are in line with Delgado\-Ballester and Sabiote \(2015\) who claim that functional aspects are less important in driving consumers’ response to the presence of the brand than non\-functional associations\. Since the latter are more difficult to imitate, less vulnerable to product\-related changes represent a more “unique value endowed by the brand” \(p\. 1861\)\. This line of reasoning can also be applied to shared or collaborative hospitality businesses, since the competitive efforts of hotels \(e\.g\., through price matching strategies\) may dilute a brand’s utilitarian value to consumers as a more affordable alternative \(Lee and Kim 2018a\)\. However, regarding Airbnb, the literature presents conflicting perspectives considering how these two value systems influence consumers and, to the best of our knowledge, only Lee and Kim \(2018a\) examine its differential effects on outcomes such as satisfaction and loyalty\. This study thus extends previous findings while further testing and comparing Airbnb’s hedonic and functional brand image influence on other meaningful, brand\-related variables, namely Airbnb’s online CBE, and provides additional evidence of the hedonic values’ stronger impact in this particular setting\.]

Results further indicate that functional brand image impacts COBRAs only when mediated by OBE\. This implies that Airbnb associations, like being a credible, reliable, and trustful platform, operate as a trigger to CBE only if these aspects have a positive impact on consumers’ overall perceptions of Airbnb brand equity\. More specifically, the functional aspects of Airbnb brand image mainly benefit transactional attitudinal loyalty, as captured in OBE\. Given that engagement refers to behaviors beyond mere transactions \(van Doorn et al\. 2010\), and functional brand associations are more performance or transactiondriven \(regarding for instance reliability or competence\), this lack of direct effects and the mediating role of OBE were to be expected\.

This result, although in line with the basic premise of perceptions related to trust being critical for consumers to be willing to engage and co\-create \(Kennedy and Guzmán 2016\) and for long\-term partnerships to form \(Fournier 1998\), is at odds with previous studies on the impact of brand association types in the field of hospitality \(Ryu et al\. 2010; Prebensen and Rosengren 2016\) that find a direct and prevalent effect of functional values on satisfaction\. This, however, might be explained by the fact that satisfaction, unlike CBE, relates to a transaction\-specific evaluation \(Hollebeek et al\. 2014\)\.

Conversely, hedonic brand image behaves in a different manner, with the mediation of OBE playing a role in driving the effects, yet, less prominent\. As such, the results indicate that being attractive, desirable, and strong in character and personality directly motivates CBE behaviors toward Airbnb, with users expressing themselves and helping to co\-create the brand by means of consumption, contribution, and creation of brand\-related content\. This finding is in line with Kennedy and Guzmán’s \(2016\) finding that fun is one of the main consumer motivators to co\-create, and thus, being a hedonic activity, consumers will place more trust on the information that has been co\-created and is found on social media \(Reimer and Benkenstein 2016; Ruiz\-Mafe et al\. 2018\)\. Airbnb serves a prominent example of how shared or collaborative consumption practices interact with user\-generated branding \(Varma et al\. 2016; Liu and Mattila 2017\), where user engagement and co\-creation of value through social media and online communities are central for brand meaning and identity creation\.

The findings presented in this paper also contribute to the overall literature on engagement in terms of clarification of the nomological network of CBE\. In their seminal work, van Doorn et al\. \(2010\) defined CBE as “customers’ behavioral manifestation toward a brand or firm, beyond purchase, resulting from motivational drivers” \(p\. 253\)\. While discussing this definition the authors suggest the notion of transactional attitudinal loyalty as an important antecedent to CBE\. The current study builds on this general notion as both functional and hedonic brand image effects are mediated by OBE\. Moreover, the findings also contribute to expanding this conceptual definition, as results indicate that hedonic brand image operates as a direct trigger for consumers to engage in COBRAs even when the indirect effects on OBE are considered\. Based on this, the results might suggest that despite that attitudinal loyalty is an important antecedent to CBE behaviors, it is not crucial or indispensable\.

== Managerial implications
#par(first-line-indent: 0em)[The findings also suggest various implications for practice\. Among them is the practical understanding that fostering a positive brand image has positive effects on CBE with travelers consuming, contributing, and creating content on social media for Airbnb\. The differences between functional and hedonic brand image imply that despite both being relevant, hedonic brand image as a motivational trigger has stronger direct effects on CBE\. Therefore, consumers’ engagement with the Airbnb brand in social media is more of an intrinsically enjoyable activity than an instrumental one\. Functional associations mainly lead to passive forms of CBE such as reading posts, while main effects on more active forms such as contributing and creating are achieved through hedonic aspects\. So, in line with Kennedy and Guzmán’s findings \(2016\), if consumers find Airbnb attractive or desirable, they will engage with the brand on social media, actively contributing and helping to co\-create Airbnb brand meanings, even if their intentions toward sustaining core transactions are only low influenced\. This suggests that collaborative hospitality businesses like Airbnb aiming to engage their customer base in social media should focus on having their brands mirroring their targets on the aspects that may drive perceptions toward the brand being attractive, desirable, and strong in personality and character\.]

Following suggestions from Delgado\-Ballester and Sabiote \(2015\), in order to generate a hedonic brand image, managers should associate brands with other entities \(such as people, events and places\), which can be achieved through an enhanced social media platform that enables guests to share their experiences through creative used\-generated content \(Lee and Kim 2018a\), thus enabling them to get involved in creating emotional value\. Yet, though functional associations proved to be less relevant in this study, its role in building OBE should not be overlooked, particularly considering the need to build a trustful Airbnb brand and ensure that guests will revisit Airbnb in the future \(Fournier 1998\)\. Social media may be helpful also in this regard \(Reimer and Benkenstein 2016; Ruiz\-Mafe et al\. 2018\), whereas information provided and interaction with users contributes to enhanced reliability and trust between the parties\. Therefore, the utilitarian and hedonic aspects of brand image complement each other and should be kept in mind by collaborative hospitality businesses wishing to enhance both guests’ engagement and attitudinal loyalty as captured in OBE\.

== Limitations and future research
#par(first-line-indent: 0em)[The findings discussed in the current study need to be acknowledged within certain limitations related to the sample characteristics \(e\.g\., respondents were from a single country\), theoretical model \(e\.g\., OBE was accessed as the only mediator\), and the fact that findings are limited to only one specific shared and collaborative consumption brand—Airbnb\. The study captures a Western perspective on consumers’ brand associations, and so generalizations to non\-Western, developing nations, should be handled with care\. Moreover, given that culture is expected to play a significant role in adopting distinctive CBE styles and behaviors \(Hollebeek 2018; Czarnecka and Schivinski 2019\), future research is advised to replicate this study in different countries and cultures\. Regardless of the relevance of OBE in mediating the effects of hedonic brand image on CBE behaviors, other mechanisms compete for explaining the effects\. Previous studies have suggested that self\-brand identification and brand love \(Islam and Rahman 2016; Batra et al\. 2012\) might play an important role, with consumers engaging in COBRAs as a way to express themselves\. Future studies could further elaborate on understanding behavioral CBE related to the expectations and opinions of reference groups \(such as family members, peers and friends\), and the consumer’s motivation to comply\. Moreover, future studies could extend the findings by means of incorporating additional potential mediating and\/or moderating constructs already suggested in the literature but not yet validated for their effects on COBRAs \(e\.g\., brand love and self\-brand identification\), and further exploring specific nuances concerning the constituents of brand image \(e\.g\., brand attitude\) \(Schivinski 2019\)\.]

Finally, despite some positive early signals in terms of recovery of the collaborative consumption market after the disruption caused by the COVID\-19 pandemic—in particular of Airbnb \(Carey 2020\)—researchers may extend this topic and contrast the findings in the context of the effects of isolation, social distancing, and restrictive guidelines affecting the hospitality collaborative service industry and beyond\.

= Compliance with ethical standards
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[#emph[Conflict of interest] The authors declare that they have no conflict of interest\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Aaker, D\.A\. 1996\. Measuring brand equity across products and markets\. #emph[California Management Review] 38 \(3\): 102–120\.

Alvarado\-Karste, D\., and F\. Guzmán\. 2020\. The effect of brand identity\-cognitive style fit and social influence on consumer\-based brand equity\. #emph[Journal of Product & Brand Management]\. https:\/\/doi\.org\/10\.1108\/jpbm\-06\-2019\-2419\.

Baalbaki, S\., and F\. Guzmán\. 2016\. A consumer\-perceived consumer\-based brand equity scale\. #emph[Journal of Brand Management] 23 \(3\): 229–251\. https:\/\/doi\.org\/10\.1057\/bm\.2016\.11\.

Barger, V\.A\., J\. Peltier, and D\. Schultz\. 2016\. Social media and consumer engagement: A review and research agenda\. #emph[Journal of Research in Interactive Marketing] 10 \(4\): 268–287\. https:\/\/doi\.org\/10\.1108\/JRIM\-06\-2016\-0065\.

Batra, R\., and O\.T\. Ahtola\. 1991\. Measuring the hedonic and utilitarian sources of consumer attitudes\. #emph[Marketing Letters] 2 \(2\): 159–170\. https:\/\/doi\.org\/10\.1007\/BF00436035\.

Batra, R\., A\. Ahuvia, and R\.P\. Bagozzi\. 2012\. Brand love\. #emph[Journal of Marketing] 76 \(2\): 1–16\. https:\/\/doi\.org\/10\.1509\/jm\.09\.0339\.

Batra, R\., and P\.M\. Homer\. 2004\. The situational impact of brand image beliefs\. #emph[Journal of Consumer Psychology] 14 \(3\): 318–330\. https:\/\/doi\.org\/10\.1207\/s15327663jcp1403\_12\.

Beaton, D\.E\., C\. Bombardier, F\. Guillemin, and M\. Bosi Ferraz\. 2000\. Guidelines for the process of cross\-cultural adaptation of self\-report measures\. #emph[Spine] 25 \(24\): 3186–3191\. https:\/\/doi\.org\/10\.1097\/00007632\-200012150\-00014\.

Brakus, J\.J\., B\.H\. Schmitt, and L\. Zarantonello\. 2009\. Brand experience: What is it? How is it measured? Does it affect loyalty? #emph[Journal of Marketing] 73 \(3\): 52–68\. https:\/\/doi\.org\/10\.1509\/jmkg\.73\.3\.052\.

Bruhn, M\., V\. Schoenmueller, and D\.B\. Schäfer\. 2012\. Are social media replacing traditional media in terms of brand equity creation? #emph[Management Research Review] 35 \(9\): 770–790\. https:\/\/doi\.org\/10\.1108\/01409171211255948\.

Carey, M\. 2020\. Airbnb bookings are climbing again\. #emph[Conde Nast]\. https :\/\/www\.cntraveler\.com\/story\/airbnb\-bookings\-are\-climbing\-again \. Accessed 10 June 2020\.

Carvalho, A\., and T\. Fernandes\. 2018\. Understanding customer brand engagement with virtual social communities: A comprehensive model of drivers, outcomes and moderators\. #emph[Journal of Marketing Theory and Practice] 26 \(1–2\): 23–37\. https:\/\/doi\.org\/10\.1080\/10696679\.2017\.1389241\.

Chatzipanagiotou, K\., C\. Veloutsou, and G\. Christodoulides\. 2016\. Decoding the complexity of the consumer\-based brand equity process\. #emph[Journal of Business Research] 69 \(11\): 5479–5486\. https :\/\/doi\.org\/10\.1016\/j\.jbusres\.2016\.04\.159\.

Chen, Y\., and K\.L\. Xie\. 2017\. Consumer valuation of Airbnb listings: A hedonic pricing approach\. #emph[International Journal of Contem\- porary Hospitality Management] 29 \(9\): 2405–2424\. https:\/\/doi\.org\/10\.1108\/IJCHM\-10\-2016\-0606\.

Christodoulides, G\., and L\. de Chernatony\. 2010\. Consumer\-based brand equity conceptualisation and measurement\. #emph[Interna\- tional Journal of Market Research] 52 \(1\): 43–66\. https:\/\/doi\.org\/10\.2501\/S1470785310201053\.

Christodoulides, G\., J\.W\. Cadogan, and C\. Veloutsou\. 2015\. Consumer\-based brand equity measurement: Lessons learned from an international study\. #emph[International Marketing Review] 32 \(3\/4\): 307–328\. https:\/\/doi\.org\/10\.1108\/IMR\-10\-2013\-0242\.

Czarnecka, B\., and B\. Schivinski\. 2019\. Do consumers acculturated to global consumer culture buy more impulsively? The moderating role of attitudes towards and beliefs about advertising\. #emph[Journal of Global Marketing] 32 \(4\): 219–238\. https:\/\/doi\.org\/10\.1080\/08911762\.2019\.1600094\.

De Vries, N\.J\., and J\. Carlson\. 2014\. Examining the drivers and brand performance implications of customer engagement with brands in the social media environment\. #emph[Journal of Brand Man\- agement] 21 \(6\): 495–515\. https:\/\/doi\.org\/10\.1057\/bm\.2014\.18\.

Delgado\-Ballester, E\., and E\.F\. Sabiote\. 2015\. Brand experimental value versus brand functional value: Which matters more for the brand? #emph[European Journal of Marketing] 49 \(11\/12\): 1857–1879\. https:\/\/doi\.org\/10\.1108\/EJM\-02\-2014\-0129\.

Dobni, D\., and G\.M\. Zinkhan\. 1990\. In search of brand image: A foundation analysis\. In #emph[Advances in consumer research], vol\. 17, ed\. M\.E\. Goldberg, G\. Gorn, and R\.W\. Pollay, 110–119\. Provo, UT: Association for Consumer Research\.

Dolan, R\., J\. Conduit, J\. Fahy, and S\. Goodman\. 2016\. Social media engagement behaviour: A uses and gratifications perspective\. #emph[Journal of Strategic Marketing] 24 \(3–4\): 261–277\. https:\/\/doi\.org\/10\.1080\/0965254X\.2015\.1095222\.

Esch, F\.\-R\., T\. Langner, B\.H\. Schmitt, and P\. Geus\. 2006\. Are brands forever? How brand knowledge and relationships affect current and future purchases\. #emph[Journal of Product & Brand Management] 15 \(2\): 98–105\. https:\/\/doi\.org\/10\.1108\/10610420610658938\.

Fan, D\.X\.F\., C\.H\.C\. Hsu, and B\. Lin\. 2020\. Tourists’ experiential value co\-creation through online social contacts: Customerdominant logic perspective\. #emph[Journal of Business Research] 108: 163–173\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.11\.008\.

Fernandes, T\., and F\. Fernandes\. 2018\. Sharing dissatisfaction online: Analyzing the nature and predictors of hotel guests negative reviews\. #emph[Journal of Hospitality Marketing & Management] 27 \(2\): 127–150\. https:\/\/doi\.org\/10\.1080\/19368623\.2017\.1337540\.

Field, A\. 2013\. #emph[Discovering statistics using SPSS: And sex and drugs and rock “n” roll]\. Thousand Oaks: SAGE Publications\. https:\/\/doi\.org\/10\.1111\/j\.1365\-2648\.2007\.04270\_1\.x\.

Filieri, R\., E\. Raguseo, and C\. Vitari\. 2019\. What moderates the influence of extremely negative ratings? The role of review and reviewer characteristics\. #emph[International Journal of Hos\- pitality Management] 77: 333–341\. https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2018\.07\.013\.

Fornell, C\., and D\.F\. Larcker\. 1981\. Evaluating structural equation models with unobservable variables and measurement error\. #emph[Journal of Marketing Research] 18 \(1\): 39–50\. https:\/\/doi\.org\/10\.2307\/3151312\.

Fournier, S\. 1998\. Consumers and their brands: Developing relationship theory in consumer research\. #emph[Journal of Consumer Research] 24 \(4\): 343–373\. https:\/\/doi\.org\/10\.1086\/209515\.

France, C\., D\. Grace, J\. Lo Iacono, and J\. Carlini\. 2020\. Exploring the interplay between customer perceived brand value and customer brand co\-creation behaviour dimensions\. #emph[Journal of Brand Man\- agement]\. https:\/\/doi\.org\/10\.1057\/s41262\-020\-00194\-7\.

France, C\., B\. Merrilees, and D\. Miller\. 2016\. An integrated model of customer\-brand engagement: Drivers and consequences\. #emph[Journal of Brand Management] 23 \(2\): 119–136\. https:\/\/doi\.org\/10\.1057\/bm\.2016\.4\.

Garrido\-Moreno, A\., V\.J\. García\-Morales, N\. Lockett, and S\. King\. 2018\. The missing link: Creating value with social media use in hotels\. #emph[International Journal of Hospitality Management] 74: 94–104\. https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2018\.03\.008\.

Guttentag, D\., S\. Smith, L\. Potwarka, and M\. Havitz\. 2018\. Why tourists choose Airbnb: A motivation\-based segmentation study\. #emph[Journal of Travel Research] 57 \(3\): 342–359\. https:\/\/doi\.org\/10\.1177\/0047287517696980\.

Ha, E\.Y\., and H\. Lee\. 2018\. Projecting service quality: The effects of social media reviews on service perception\. #emph[International Journal of Hospitality Management] 69: 132–141\. https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2017\.09\.006\.

Hair Jr\., J\.F\., W\.C\. Black, B\.J\. Babin, and R\.E\. Anderson\. 2014\. #emph[Multi\- variate data analysis], 7th ed\. Harlow: Pearson Education Limited\.

Hamari, J\., M\. Sjöklint, and A\. Ukkonen\. 2016\. The sharing economy: Why people participate in collaborative consumption\. #emph[Journal of the Association for Information Science and Technology] 67 \(9\): 2047–2059\. https:\/\/doi\.org\/10\.1002\/asi\.23552\.

Harmeling, C\.M\., J\.W\. Moffett, M\.J\. Arnold, and B\.D\. Carlson\. 2017\. Toward a theory of customer engagement marketing\. #emph[Journal of the Academy of Marketing Science] 45: 312–335\. https:\/\/doi\.org\/10\.1007\/s11747\-016\-0509\-2\.

Harrigan, P\., U\. Evers, M\.P\. Miles, and T\. Daly\. 2017\. Customer engagement with tourism social media brands\. #emph[Tourism Manage\- ment] 59: 597–609\. https:\/\/doi\.org\/10\.1016\/j\.tourman\.2016\.09\.015\.

Harrigan, P\., U\. Evers, M\.P\. Miles, and T\. Daly\. 2018\. Customer engagement and the relationship between involvement, engagement, self\-brand connection and brand usage intent\. #emph[Journal of Business Research] 88: 388–396\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2017\.11\.046\.

Hollebeek, L\.D\. 2018\. Individual\-level cultural consumer engagement styles: Conceptualization, propositions and implications\. #emph[Interna\- tional Marketing Review] 35 \(1\): 42–71\. https:\/\/doi\.org\/10\.1108\/IMR\-07\-2016\-0140\.

Hollebeek, L\.D\., M\.S\. Glynn, and R\.J\. Brodie\. 2014\. Consumer brand engagement in social media: Conceptualization, scale development and validation\. #emph[Journal of Interactive Marketing] 28 \(2\): 149–165\. https:\/\/doi\.org\/10\.1016\/j\.intmar\.2013\.12\.002\.

Hudson, S\., M\.S\. Roth, T\.J\. Madden, and R\. Hudson\. 2015\. The effects of social media on emotions, brand relationship quality, and word of mouth: An empirical study of music festival attendees\. #emph[Tour\- ism Management] 47: 68–76\. https:\/\/doi\.org\/10\.1016\/j\.tourman\.2014\.09\.001\.

Hutter, K\., J\. Hautz, S\. Dennhardt, and J\. Füller\. 2013\. The impact of user interactions in social media on brand awareness and purchase intention: The case of MINI on Facebook\. #emph[Journal of Product & Brand Management] 22 \(5\/6\): 342–351\. https:\/\/doi\.org\/10\.1108\/JPBM\-05\-2013\-0299\.

Iglesias, O\., S\. Markovic, M\. Bagherzadeh, and J\.J\. Singh\. 2018\. Cocreation: A key link between corporate social responsibility, customer trust, and customer loyalty\. #emph[Journal of Business Ethics] 163: 151–166\. https:\/\/doi\.org\/10\.1007\/s10551\-018\-4015\-y\.

Ind, N\., N\. Coates, and K\. Lerman\. 2020\. The gift of co\-creation: What motivates customers to participate\. #emph[Journal of Brand Man\- agement] 27 \(2\): 181–194\. https:\/\/doi\.org\/10\.1057\/s41262\-019\-00173\-7\.

Islam, J\.U\., and Z\. Rahman\. 2016\. Examining the effects of brand love and brand image on customer engagement: An empirical study of fashion apparel brands\. #emph[Journal of Global Fashion Marketing] 7 \(1\): 45–59\. https:\/\/doi\.org\/10\.1080\/20932685\.2015\.1110041\.

Keller, K\.L\. 1993\. Conceptualizing, measuring, and managing customer\-based brand equity\. #emph[Journal of Marketing] 57 \(1\): 1–22\. https:\/\/doi\.org\/10\.2307\/1252054\.

Keller, K\.L\. 2013\. #emph[Strategic brand management]\. London: Pearson Education Limited\.

Keller, K\.L\., and D\.R\. Lehmann\. 2006\. Brands and branding: Research finginds an future priorities\. #emph[Marketing Science] 25 \(6\): 740–759\. https:\/\/doi\.org\/10\.1287\/mksc\.1050\.0153\.

Kennedy, E\., and F\. Guzmán\. 2016\. Co\-creation of brand identities: Consumer and industry influence and motivations\. #emph[Journal of Consumer Marketing] 33 \(5\): 313–323\. https:\/\/doi\.org\/10\.1108\/JCM\-07\-2015\-1500\.

Kline, R\.B\. 2011\. #emph[Principles and practice of structural equation mod\- eling], 3rd ed\. New York: The Guilford Press\.

Lalicic, L\., and C\. Weismayer\. 2018\. A model of tourists’ loyalty: The case of Airbnb\. #emph[Journal of Hospitality and Tourism Technology] 9 \(1\): 80–93\. https:\/\/doi\.org\/10\.1108\/JHTT\-02\-2017\-0020\.

Langaro, D\., P\. Rita, and M\. Salgueiro\. 2018\. Do social networking sites contribute for building brands? Evaluating the impact of users’ participation on brand awareness and brand attitude\. #emph[Jour\- nal of Marketing Communications] 24 \(2\): 146–168\. https:\/\/doi\.org\/10\.1080\/13527266\.2015\.1036100\.

Lee, S\., and D\.Y\. Kim\. 2018a\. The effect of hedonic and utilitarian values on satisfaction and loyalty of Airbnb users\. #emph[International Journal of Contemporary Hospitality Management] 30 \(3\): 1332– 1351\. https:\/\/doi\.org\/10\.1108\/IJCHM\-09\-2016\-0504\.

Lee, S\., and D\.Y\. Kim\. 2018b\. Brand personality of Airbnb: Application of user involvement and gender differences\. #emph[Journal of Travel and Tourism Marketing] 35 \(1\): 32–45\. https:\/\/doi\.org\/10\.1080\/10548408\.2017\.1284030\.

Liang, L\.J\., H\.S\.C\. Choi, and M\. Joppe\. 2018\. Understanding repurchase intention of Airbnb consumers: Perceived authenticity, electronic word\-of\-mouth, and price sensitivity\. #emph[Journal of Travel & Tourism Marketing] 35 \(1\): 73–89\. https:\/\/doi\.org\/10\.1080\/10548408\.2016\.1224750\.

Litvin, S\.W\., R\.E\. Goldsmith, and B\. Pan\. 2018\. A retrospective view of electronic word\-of\-mouth in hospitality and tourism management\. #emph[International Journal of Contemporary Hospitality Management] 30 \(1\): 313–325\. https:\/\/doi\.org\/10\.1108\/IJCHM\-08\-2016\-0461\.

Liu, S\.Q\., and A\.S\. Mattila\. 2017\. Airbnb: Online targeted advertising, sense of power, and consumer decisions\. #emph[International Journal of Hospitality Management] 60: 33–41\. https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2016\.09\.012\.

Lu, C\., and J\. Kandampully\. 2016\. What drives customers to use access\-based sharing options in the hospitality industry? #emph[Research in Hospitality Management] 6 \(2\): 119–126\. https:\/\/doi\.org\/10\.1080\/22243534\.2016\.1253276\.

Lu, W\., and S\. Stepchenkova\. 2015\. User\-generated content as a research mode in tourism and hospitality applications: Topics, methods, and software\. #emph[Journal of Hospitality Marketing & Management] 24 \(2\): 119–154\. https:\/\/doi\.org\/10\.1080\/19368623\.2014\.907758\.

Marbach, J\., C\.R\. Lages, and D\. Nunan\. 2016\. Who are you and what do you value? Investigating the role of personality traits and customer\-perceived value in online customer engagement\. #emph[Journal of Marketing Management] 32 \(5–6\): 502–525\. https:\/\/doi\.org\/10\.1080\/0267257X\.2015\.1128472\.

Merz, M\.A\., L\. Zarantonello, and S\. Grappi\. 2018\. How valuable are your customers in the crand value co\-creation process? The development of a customer co\-creation value \(CCCV\) scale\. #emph[Journal of Business Research] 82: 79–89\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2017\.08\.018\.

Miao, L\., X\. Lehto, and W\. Wei\. 2014\. The hedonic value of hospitality consumption: Evidence from Spring Break experiences\. #emph[Journal of Hospitality Marketing & Management] 23 \(2\): 99–121\. https:\/\/doi\.org\/10\.1080\/19368623\.2013\.766582\.

Michopoulou, E\., and D\.G\. Moisa\. 2019\. Hotel social media metrics: The ROI dilemma\. #emph[International Journal of Hospitality Manage\- ment] 76: 308–315\. https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2018\.05\.019\.

Mintel\. 2017\. Marriott partners with hostmaker to challenge #emph[Airbnb’s homesharing model]\. https:\/\/academic\.mintel\.com\/display\/793905\/\.Accessed10June2020\.

Mohan, M\., F\.R\. Jiménez, B\.P\. Brown, and C\. Cantrell\. 2017\. Brand skill: Linking brand functionality with consumer\-based brand equity\. #emph[Journal of Product & Brand Management] 26 \(5\): 477–491\. https:\/\/doi\.org\/10\.1108\/JPBM\-06\-2016\-1247\.

Moon, H\., L\. Miao, L\. Hanks, and N\.D\. Line\. 2019\. Peer\-to\-peer interactions: Perspectives of Airbnb guests and hosts\. #emph[International Journal of Hospitality Management] 77: 405–414\. https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2018\.08\.004\.

Muntinga, D\.G\., M\. Moorman, and E\.G\. Smit\. 2011\. Introducing COBRAs: Exploring motivations for brand\-related social media use\. #emph[International Journal of Advertising] 30 \(1\): 13–46\. https:\/\/doi\.org\/10\.2501\/IJA\-30\-1\-013\-046\.

Muthén, L\.K\. and Muthén, B\.O\. 2012\. Statistical analysis with latent variables: Mplus user’s guide, 7th edn, Los Angeles, CA\.

Obilo, O\.O\., E\. Chefor, and A\. Saleh\. 2020\. Revisiting the consumer brand engagement concept\. #emph[Journal of Business Research]\. https :\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.12\.023\.

Pansari, A\., and V\. Kumar\. 2017\. Customer engagement: The construct, antecedents, and consequences\. #emph[Journal of the Academy of Marketing Science] 45 \(3\): 294–311\. https:\/\/doi\.org\/10\.1007\/s11747\-016\-0485\-6\.

Park, C\.W\., B\.J\. Jaworski, and D\.J\. Maclnnis\. 1986\. Strategic brand concept\-image management\. #emph[Journal of Marketing] 50 \(4\): 135– 145\. https:\/\/doi\.org\/10\.2307\/1251291\.

Prebensen, N\.K\., and S\. Rosengren\. 2016\. Experience value as a function of hedonic and utilitarian dominant services\. #emph[International Journal of Contemporary Hospitality Management] 28 \(1\): 113– 135\. https:\/\/doi\.org\/10\.1108\/IJCHM\-02\-2014\-0073\.

Price, L\.L\., and R\.A\. Coulter\. 2019\. Crossing bridges: Assembling culture into brands and brands into consumers’ global local cultural lives\. #emph[Journal of Consumer Psychology] 29 \(3\): 547–554\. https:\/\/doi\.org\/10\.1002\/jcpy\.1121\.

PwC Global\. 2015\. #emph[The sharing economy: Consumer intelligence series]\. https:\/\/www\.pwc\.com\/us\/en\/industry\/entertainment\-media\/publications\/consumer\-intelligence\-series\/assets\/pwc\-cis\-sharing\-economy\.pdf\.Accessed10June2020\.

Ramaswamy, V\., and K\. Ozcan\. 2016\. Brand value co\-creation in a digitalized world: An integrative framework and research implications\. #emph[International Journal of Research in Marketing] 33 \(1\): 93–106\. https:\/\/doi\.org\/10\.1016\/j\.ijresmar\.2015\.07\.001\.

Reimer, T\., and M\. Benkenstein\. 2016\. When good WOM hurts and bad WOM gains: The effect of untrustworthy online reviews\. #emph[Journal of Business Research] 69 \(12\): 5993–6001\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2016\.05\.014\.

Ruiz\-Mafe, C\., K\. Chatzipanagiotou, and R\. Curras\-Perez\. 2018\. The role of emotions and conflicting online reviews on consumers’ purchase intentions\. #emph[Journal of Business Research] 89: 336–344\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2018\.01\.027\.

Ryu, K\., H\. Han, and S\.S\. Jang\. 2010\. Relationships among hedonic and utilitarian values, satisfaction and behavioral intentions in the fast\-casual restaurant industry\. #emph[International Journal of Con\- temporary Hospitality Management] 22 \(3\): 416–432\. https:\/\/doi\.org\/10\.1108\/09596111011035981\.

Sánchez\-Casado, N\., I\. Confente, E\. Tomaseti\-Solano, and F\. Brunetti\. 2018\. The role of online brand communties on building brand equity and loyalty through relational benefits\. #emph[Journal of Marketing Theory and Practice] 26 \(3\): 289–308\. https:\/\/doi\.org\/10\.1080\/10696679\.2018\.1451256\.

Schivinski, B\. 2019\. Eliciting brand\-related social media engagement: A conditional inference tree framework\. #emph[Journal of Business Research]\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.08\.045\.

Schivinski, B\., and D\. Dabrowski\. 2016\. The effect of social media communication on consumer perceptions of brands\. #emph[Journal of Marketing Communications] 22 \(2\): 189–214\. https:\/\/doi\.org\/10\.1080\/13527266\.2013\.871323\.

Schivinski, B\., G\. Christodoulides, and D\. Dabrowski\. 2016\. Measuring consumers’ engagement with brand\-related social\-media content: Development and validation of a scale that identifies levels of social\-media engagement with brands\. #emph[Journal of Advertising Research] 56 \(1\): 64–80\. https:\/\/doi\.org\/10\.2501\/JAR\-2016\-004\.

Schivinski, B\., D\.G\. Muntinga, H\.M\. Pontes, and P\. Lukasik\. 2019\. Influencing COBRAs: The effects of brand equity on the consumer’s propensity to engage with brand\-related content on social media\. #emph[Journal of Strategic Marketing]\. https:\/\/doi\.org\/10\.1080\/0965254x\.2019\.1572641\.

Šerić, M\., J\. Mikulić, and I\. Gil\-Saura\. 2018\. Exploring relationships between customer\-based brand equity and its drivers and consequences in the hotel context: An impact\-asymmetry assessment\. #emph[Current Issues in Tourism] 21 \(14\): 1621–1643\. https:\/\/doi\.org\/10\.1080\/13683500\.2016\.1209163\.

Shepherd, S\., T\.L\. Chartrand, and G\.J\. Fitzsimons\. 2015\. When brands reflect our ideal world: The values and brand preferences of consumers who support versus reject society’s dominant ideology\. #emph[Journal of Consumer Research] 42 \(1\): 76–92\. https:\/\/doi\.org\/10\.1093\/jcr\/ucv005\.

Sigala, M\. 2017\. Collaborative commerce in tourism: Implications for research and industry\. #emph[Current Issues in Tourism] 20 \(4\): 346–355\. https:\/\/doi\.org\/10\.1080\/13683500\.2014\.982522\.

So, K\.K\.F\., C\. King, and B\. Sparks\. 2014\. Customer engagement with tourism brands\. #emph[Journal of Hospitality & Tourism Research] 38 \(3\): 304–329\. https:\/\/doi\.org\/10\.1177\/1096348012451456\.

Stathopoulou, A\., L\. Borel, G\. Christodoulides, and D\. West\. 2017\. Consumer branded \#hashtag engagement: Can creativity in TV advertising influence hashtag engagement? #emph[Psychology & Market\- ing] 34 \(4\): 448–462\. https:\/\/doi\.org\/10\.1002\/mar\.20999\.

Stokburger\-Sauer, N\.E\., and C\. Wiertz\. 2015\. Online consumption communities: An introduction\. #emph[Psychology & Marketing] 32 \(2\): 235–239\. https:\/\/doi\.org\/10\.1002\/mar\.20776\.

Sundararajan, A\. 2019\. Commentary: The twilight of brand and consumerism? Digital trust, cultural meaning, and the quest for connection in the sharing economy\. #emph[Journal of Marketing] 83 \(5\): 32–35\. https:\/\/doi\.org\/10\.1177\/0022242919868965\.

Swaminathan, V\., A\. Sorescu, J\.B\.E\.M\. Steenkamp, T\.C\. Gibson O’Guinn, and B\. Schmitt\. 2020\. Branding in a hyperconnected world: Refocusing theories and rethinking boundaries\. #emph[Journal of Marketing] 84 \(2\): 24–46\. https:\/\/doi\.org\/10\.1177\/0022242919899905\.

Tussyadiah, I\.P\., and J\. Pesonen\. 2016\. Impacts of peer\-to\-peer accommodation use on travel patterns\. #emph[Journal of Travel Research] 55 \(8\): 1022–1040\. https:\/\/doi\.org\/10\.1177\/0047287515608505\.

Varma, A\., N\. Jukic, A\. Pestek, C\.J\. Shultz, and S\. Nestorov\. 2016\. Airbnb: Exciting innovation or passing fad? #emph[Tourism Man\- agement Perspectives] 20: 228–237\. https:\/\/doi\.org\/10\.1016\/j\.tmp\.2016\.09\.002\.

Veloutsou, C\., and I\. Black\. 2019\. Creating and managing participative brand communities: The roles members perform\. #emph[Journal of Business Research]\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.06\.032\.

Yoo, B\., and N\. Donthu\. 2001\. Developing and validating a multidimensional consumer\-based brand equity scale\. #emph[Journal of Business Research] 52 \(1\): 1–14\. https:\/\/doi\.org\/10\.1016\/s0148\-2963\(99\)00098\-3\.

#set par(hanging-indent: 0em)
#set text(size: 11pt)
#pagebreak()
= Appendix
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 3.] Descriptive statistics, factor loadings—completely standardized lambda X \(λ#sub[x]\)#super[b], and explained variance on each item \(#emph[R]#super[2]\)\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[]], [#strong[\(λ#sub[x]\)#super[b]]], [#strong[#emph[R]#super[2]]], [#strong[#emph[t] value]], [#strong[Mean]], [#strong[SD]], [#strong[Skew\.]], [#strong[Kurt\.]]),
table.hline(stroke: 0.5pt),
[#emph[Overall brand equity]], [], [], [], [], [], [], [],
[It makes sense to use Airbnb instead of any other brand, even if they are the same], [\.85], [\.72], [56\.58], [5\.04], [1\.86], [−\.74], [−\.50],
[Even if another brand has the same features as Airbnb, I would prefer to use Airbnb], [\.72], [\.52], [29\.18], [4\.41], [2\.04], [−\.24], [−1\.21],
[If there is another brand as good as Airbnb, I prefer to use Airbnb], [\.88], [\.77], [67\.81], [5\.21], [1\.92], [−\.89], [−\.32],
[If another brand is not different from Airbnb in any way, it seems smarter to use Airbnb], [\.86], [\.74], [60\.42], [5\.31], [1\.78], [−1\.04], [\.15],
[#emph[Functional brand image]], [], [], [], [], [], [], [],
[Airbnb is reliable], [\.92], [\.85], [107\.55], [5\.71], [1\.50], [−1\.34], [1\.29],
[Airbnb is credible], [\.93], [\.87], [124\.52], [5\.77], [1\.50], [−1\.40], [1\.44],
[I trust Airbnb], [\.94], [\.89], [142\.79], [5\.69], [1\.55], [−1\.37], [1\.28],
[#emph[Hedonic brand image]], [], [], [], [], [], [], [],
[Airbnb is attractive], [\.90], [\.82], [84\.71], [5\.67], [1\.55], [−1\.28], [1\.05],
[Airbnb is desirable], [\.84], [\.71], [54\.19], [5\.23], [1\.78], [−\.86], [−\.28],
[Airbnb is strong in character], [\.92], [\.86], [102\.09], [5\.48], [1\.61], [−1\.04], [\.32],
[Airbnb is strong in personality], [\.90], [\.81], [81\.00], [5\.41], [1\.62], [−\.97], [\.23],
[#emph[COBRAs: consumption]], [], [], [], [], [], [], [],
[I read posts related to Airbnb on social media], [\.86], [\.75], [57\.29], [3\.80], [2\.04], [\.05], [−1\.25],
[I read fan page\(s\) related to Airbnb on social networking sites], [\.86], [\.74], [56\.16], [3\.79], [2\.11], [\.05], [−1\.39],
[I watch pictures\/graphics related to Airbnb], [\.77], [\.59], [34\.75], [3\.99], [1\.98], [−\.02], [−1\.14],
[I follow blogs related to Airbnb], [\.69], [\.47], [24\.74], [2\.76], [1\.97], [\.82], [−\.65],
[I follow Airbnb on social networking sites], [\.87], [\.76], [60\.32], [3\.60], [2\.03], [\.17], [−1\.25],
[#emph[COBRAs: contribution]], [], [], [], [], [], [], [],
[I comment on videos related to Airbnb], [\.82], [\.68], [48\.04], [2\.54], [1\.92], [\.97], [−\.35],
[I comment on posts related to Airbnb], [\.89], [\.80], [77\.64], [2\.44], [1\.85], [1\.07], [−\.07],
[I comment on pictures\/graphics related to Airbnb], [\.85], [\.72], [56\.42], [2\.62], [1\.96], [\.97], [−\.35],
[I share Airbnb\-related posts], [\.89], [\.79], [74\.47], [3\.36], [2\.15], [\.40], [−1\.26],
[I “Like” pictures\/graphics related to Airbnb], [\.71], [\.50], [27\.56], [3\.34], [2\.09], [\.40], [−1\.18],
[I “Like” posts related to Airbnb], [\.75], [\.57], [33\.39], [2\.21], [1\.77], [1\.34], [\.66],
[#emph[COBRAs: creation]], [], [], [], [], [], [], [],
[I initiate posts related to Airbnb on blogs], [\.82], [\.68], [48\.99], [2\.21], [1\.77], [1\.34], [\.66],
[I initiate posts related to Airbnb on social networking sites], [\.88], [\.78], [75\.03], [2\.34], [1\.83], [1\.20], [\.19],
[I post pictures\/graphics related to Airbnb], [\.88], [\.78], [74\.11], [2\.29], [1\.81], [1\.25], [\.32],
[I post videos that show Airbnb], [\.85], [\.73], [59\.03], [2\.28], [1\.80], [1\.24], [\.31],
[I write posts related to Airbnb on forums], [\.90], [\.81], [85\.33], [2\.29], [1\.79], [1\.22], [\.28],
[I write reviews related to Airbnb], [\.87], [\.75], [65\.18], [2\.15], [1\.74], [1\.40], [\.81],
table.hline(stroke: 0.8pt),
)]
]
#v(12pt)

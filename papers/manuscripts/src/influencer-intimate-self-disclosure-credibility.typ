#set document(title: "Influencer marketing effectiveness: giving competence, receiving credibility", author: ("Fernanda Polli Leite", "Nicolas Pontes", "Bruno Schivinski"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Leite, Pontes and Schivinski \(2024\), open access \(CC BY 4\.0\) #h(1fr) Journal of Travel & Tourism Marketing] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Influencer marketing effectiveness: giving competence, receiving credibility]]
#v(0.8em)
#text(size: 12pt)[Fernanda Polli Leite, Nicolas Pontes, Bruno Schivinski]
#v(0.2em)
#text(size: 10pt, style: "italic")[The University of Queensland\; RMIT University \(affiliations at the time of publication\)]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Leite, F\. P\., Pontes, N\., & Schivinski, B\. (2024). Influencer marketing effectiveness: giving competence, receiving credibility. #emph[Journal of Travel & Tourism Marketing, 41]\(3\), 307–321. #link("https://doi.org/10.1080/10548408.2024.2317748")[https:\/\/doi.org\/10\.1080\/10548408\.2024\.2317748]
  #v(0.9em)
  Open access article distributed under the terms of the Creative Commons Attribution 4\.0 International License \(http:\/\/creativecommons\.org\/licenses\/by\/4\.0\/\)\. © 2024 The Author\(s\)\. Originally published by Informa UK Limited, trading as Taylor & Francis Group, in Journal of Travel & Tourism Marketing, 41\(3\), 307–321, #link("https://doi.org/10.1080/10548408.2024.2317748")[https:\/\/doi.org\/10\.1080\/10548408\.2024\.2317748]\. Changes made: the text has been re\-typeset\; content is unchanged\.
  #v(0.9em)
  This version reproduces the content of the published open access article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published open access text under CC BY 4\.0\; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/influencer-intimate-self-disclosure-credibility.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Influencer marketing effectiveness: giving competence, receiving credibility]]
#v(0.6em)
#par(first-line-indent: 0em)[Fernanda Polli Leite#super[a]\*, Nicolas Pontes#super[a] and Bruno Schivinski#super[b]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[a]Business School, University of Queensland, St Lucia, QLD, Australia\; #super[b]School of Media and Communication, RMIT University, Melbourne, VIC, Australia]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Fernanda Polli Leite, Business School, University of Queensland, Level 4, Colin Clark Building \(\#39\), St Lucia, QLD 4072, Australia]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() Travel influencers often disclose personal details in their social media recommendations\. However, previous research has not explained how such content impacts influencer evaluations\. This study explores how intimate self\-disclosure in influencer recommendations affects perceptions of credibility\. An experimental study demonstrates that recommendations containing intimate \(vs\. without intimate\) content diminish perceptions of the travel influencer’s credibility\. The congruence between the influencer’s content and expertise plays a mediating role, with intimate content being perceived as incongruent with their expertise, thereby reducing credibility\. Competence need fulfillment moderates this effect such that influencers’ credibility is enhanced through content\-expertise congruence as participants feel more competent\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Travel influencer\; intimate self\-disclosure\; congruence\; source credibility\; competence\; need fulfillment\; self\-determination theory\; elaboration likelihood model\; influencer marketing effectiveness\; social media]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Article history: received 21 November 2023\; revised 23 January 2024\; accepted 6 February 2024\; published online 16 February 2024\.]]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Travel marketers have increasingly recognized the potential of partnering with social media influencers for message amplification and precise targeting\. Influencers, in turn, are attracted to the travel and tourism sector due to the appeal of travel incentives and the opportunity to align their personal brand with desirable travel and tourism brands \(Schivinski et al\., 2020\)\. A recent study \(American Express, 2023\) revealed that 75% of consumers felt inspired by social media to travel to a specific destination\. Furthermore, 46% of Gen Z and Millennials said their booking decisions are heavily influenced by travel content on Instagram \(Influencer Marketing Hub, 2023\)\. Indeed, past research in travel and tourism has shown that social media influencers significantly impact travel preferences \(e\.g\. J\. Ma & Li, 2022\; Manthiou et al\., 2024\)\. Despite the notable prominence and practical importance of this phenomenon, there remains a noticeable dearth of research exploring the realm of travel and tourism influencer marketing, especially in terms of understanding how consumers perceive the communication of travel influencers and what factors contribute to the effectiveness of influencer messages\.]

One strategy within influencer marketing communication involves influencers sharing personal and intimate content on social media\. This form of communication, in which individuals share private information about themselves, is known as self\-disclosure \(Altman & Taylor, 1973\)\. Self\-disclosure is inherent in genuine travel reviews and recommendations \(K\. Lee et al\., 2022\)\. This approach has been demonstrated to cultivate stronger relationships with their audience \(e\.g\. Chen et al\., 2021\; Leite & Baptista, 2022b\; E\. S\-T\. Wang & Hu, 2021\)\. However, the effectiveness of influencers’ persuasive communication also relies on perceptions that they are credible sources of advice to their followers \(Djafarova & Rushworth, 2017\; Hernández\-Méndez & Baute\-Díaz, 2023\), raising concerns about using intimate content to enhance credibility\. Considering that credible recommendations are crucial elements in influencer travel information \(Choi et al\., 2021\; Manthiou et al\., 2024\), initiating a discourse on the effective use of intimacy in influencers’ social media content can be challenging\.

While influencers’ self\-disclosure can sometimes be detrimental to their positive evaluations \(AlRabiah et al\., 2022\; Johnson et al\., 2022\; Leite et al\., 2022\), previous research indicates that self\-disclosure can enhance perceptions of credibility through relationship\-related factors such as parasocial interactions \(e\.g\. Penttinen et al\., 2022\)\. This means that credibility can be bolstered through relationship\-related factors \(Baxter et al\., 2022\)\. The rationale is that self\-disclosure can enhance relational ties between the discloser and those who receive the self\-disclosure \(Altman & Taylor, 1973\)\. However, a notable concern arises from the reliance on influencers’ capacity to cultivate strong connections with their audience\. Regrettably, not all influencers can maintain active reciprocity with their followers \(Leite & Baptista, 2022b\), making it difficult to establish relationships that resemble dyadic relationships\. This suggests that the relationships between influencers and their audience do not always follow the typical progression of dyadic relationships, where individuals initially share superficial information and gradually reveal more in\-depth details about themselves as the relationship develops \(Altman & Taylor, 1973\)\. In the influencer\-follower interaction, more intimate information about the influencer can become easily accessible in early encounters with their audience\. Based on this issue, it remains unclear how influencers’ intimate self\-disclosure can enhance perceptions of credibility without relying entirely on their abilities to create relational bonds with their followers\.

Despite some previous studies on self\-disclosure in travel settings \(e\.g\. Cai et al\., 2024\; Li et al\., 2023\; H\. Lin et al\., 2019\; Lu et al\., 2023\), self\-disclosure in travel influencer marketing remains understudied\. To fill this gap in the literature, the current study evaluates how influencers’ intimate self\-disclosure can enhance perceptions of credibility through the ability to create content that is relevant to their followers\. We address a main research question in line with this aim: How can congruence and competence help influencers manage perceptions of credibility when embedding intimate information in their social media recommendations? Specifically, we introduce and test a conceptual model that incorporates intimate self\-disclosure, perceived content\-expertise congruence, competence need fulfillment, and perceived credibility, responding to the calls for more research on the effectiveness of travel and tourism influencer marketing \(Gretzel, 2018\; Schivinski et al\., 2020\)\. We define influencers’ content – expertise congruence as the extent to which the content shared by an influencer aligns with the expertise they are known for on social media, whereas competence need fulfillment is understood as the extent to which individuals feel a sense of mastery, achievement, and effectiveness in their activities \(Reis et al\., 2000\; Ryan & Deci, 2020\)\. Building on these relationships, we investigate whether influencers’ content\-expertise congruence serves as the mechanism that explains the impact of intimacy on perceived credibility\. Additionally, we examine whether perceptions of an influencer’s credibility are contingent on the degree to which consumers experience a strong sense of competence when viewing the influencer\.

Shedding light on the impact of self\-disclosure by travel influencers, we contribute to the theoretical backgrounds of Self\-determination Theory \(Deci & Ryan, 2000\) and the Elaboration Likelihood Model \(Petty & Cacioppo, 1986\) by introducing competence need fulfillment as an important variable in reducing the negative effects of intimate self\-disclosure\. In this regard, we introduce an alternative perspective to the research landscape surrounding influencer self\-disclosure, which has predominantly emphasized on the relationship\-related outcomes of self\-disclosure \(e\.g\. J\. Kim & Song, 2016\; Leite & Baptista, 2022b\)\. We also address the concerns raised in previous studies regarding the drawbacks of self\-disclosure \(AlRabiah et al\., 2022\; Johnson et al\., 2022\; Leite et al\., 2022\)\. Our contribution presents empirical evidence that elucidates strategies for mitigating potential credibility damage caused by incongruent self\-disclosures\.

= Theoretical background
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== The importance of perceived credibility in influencer marketing
#par(first-line-indent: 0em)[Influencer marketing has emerged as a highly influential and effective marketing technique, enabling brands to connect with consumers at a deeper level through personalized and interactive content \(Shankar et al\., 2021\)\. Research in this field has increasingly demonstrated the power of influencers in marketing communications efforts\. Recent studies have even shown the power of influencers over traditional celebrity endorsements \(see Boerman, 2020\; Djafarova & Rushworth, 2017\; Evans et al\., 2017\; Schouten et al\., 2020\)\. As an illustration, Schouten et al\. \(2020\) discovered that influencer endorsements resulted in greater trustworthiness compared to celebrity endorsements\. This trust can be built from influencers’ knowledge and expertise related to a specific field of knowledge \(Djafarova & Rushworth, 2017\)\. Thus, being perceived as a trustful source of information is what makes influencer marketing a powerful resource for brand managers \(De Veirman et al\., 2017\; Djafarova & Rushworth, 2017\; Uzunoğlu & Misci Kip, 2014\)\.]

Source credibility is often leveraged to enhance the efficiency of endorsements \(Ohanian, 1990\)\. The construct of source credibility is constituted by three fundamental dimensions i\.e\. firstly, attractiveness, which pertains to the perceived physical appeal of an endorser\; secondly, trustworthiness, which is associated with characteristics such as honesty and the level of trust consumers place in an endorser\; and thirdly, expertise, which concerns the extent to which an endorser is regarded as having legitimate knowledge, experience, and skills relevant to the product or service being promoted \(Ohanian, 1990\)\. Following that, people generally perceive information from dependable sources to be more trustworthy than other forms of information \(Chung & Cho, 2017\)\; the benefits of source credibility have been explored extensively over the years\. With the rise of influencer marketing, research has shown that influencer credibility perceptions play a significant role in generating favorable outcomes for influencers, including positive attitudes toward them and favorable word\-of\-mouth \(Taillon et al\., 2020\)\. Previous research has also demonstrated the benefits of influencers’ credibility for the brands they partner with, such as enhanced consumers’ purchase intentions \(Leite & Baptista, 2022a\; Schouten et al\., 2020\; Sokolova & Kefi, 2020\; Weismueller et al\., 2020\), positive attitude toward the promoted brand \(Munnukka et al\., 2019\), followers’ trust towards branded posts generated by influencers \(Lou & Yuan, 2019\), increased brand satisfaction, brand image, brand trust \(Leite & Baptista, 2022a\; Wiedmann & von Mettenheim, 2020\), and self\-brand connections \(Leite & Baptista, 2022b\)\.

The interactive and personalized communication that influencers establish with their followers plays a vital role in driving positive marketing outcomes \(Breves et al\., 2019\)\. Interactive platforms have allowed influencers to share more than ever, offering managers an excellent opportunity to benefit from this personalized and influential content \(Leite & Baptista, 2022a\)\. Frequently, influencers employ self\-disclosure as a communication strategy, demonstrating their concern for how they are perceived as reliable sources of information and advice by their followers \(Bickart et al\., 2015\)\. However, the literature examining the extent to which self\-disclosure influences perceptions of source credibility is still an under\-studied area\. Therefore, understanding how influencers can communicate with their followers more effectively is key to ensuring more positive outcomes for the influencers’ credibility\.

== The consequences of influencers’ self\-disclosure
#par(first-line-indent: 0em)[Researchers have extensively explored self\-disclosure using various approaches to investigate this topic \(e\.g\. J\. Kim & Song, 2016\; R\. Lin & Utz, 2017\; Omarzu, 2000\; Wheeless & Grotz, 1976\)\. In the current study, we place particular emphasis on the intimate aspect of self\-disclosure, as travel influencers frequently share significant aspects of their private lives with their followers\. This includes divulging personal struggles like depression, details about their relationships, and expressing emotions such as anger, sadness, and distress\. While some provide only superficial information about their personal lives, others appear to be open books to their followers\. This way, travel influencers’ intimate self\-disclosure happens when influencers reveal different levels of intimacy such as self\-disclosing factual \(personal information and facts about oneself\), emotional \(feelings and emotions\), and cognitive \(private thoughts and opinions\) information about themselves \(Leite & Baptista, 2022b\; Morton, 1978\), which can range from surface\-level to central details about their lives \(Altman & Taylor, 1973\)\. In this study, self\-disclosure intimacy is specified by the extent to which influencers share intimate, personal, or private information on social media \(Bazarova, 2012\)\.]

Past research in influencer marketing has mainly concentrated on the relational outcomes of self\-disclosure\. Studies have shown that when influencers reveal personal content about themselves, people can feel that they are being open about their lives and see them as more relatable and approachable\. These studies have shown a positive link between self\-disclosure and relationship\-related variables such as followers’ attachment to the internet celebrity \(Chen et al\., 2021\), feelings of parasocial relationships towards the influencer \(Chung & Cho, 2017\; M\. Kim & J\. Kim, 2020\; Leite & Baptista, 2022a, 2022b\; Penttinen et al\., 2022\), and parasocial interactions with the internet celebrity \(J\. Kim & Song, 2016\; E\. S\-T\. Wang & Hu, 2021\)\. This phenomenon is also observed in the travel marketing context, where studies have shown that the intimate self\-disclosure of travel media figures enhances the parasocial relationship between audiences and them \(Lu et al\., 2023\)\. Self\-disclosure helps reinforce social connections between influencers and their audience, as consumers often feel valued when influencers share intimate details about themselves \(Leite & Baptista, 2022a\)\. While prior studies have made significant progress in assessing the impact of self\-disclosure on relational aspects, less is understood about what happens when travel influencers include intimate content in their social media recommendations and how this affects perceptions of credibility\.

When evaluating the influence of self\-disclosure on credibility, results among the few existing studies vary\. For example, AlRabiah et al\. \(2022\) have demonstrated that increasing the breadth and depth of social media self\-disclosure was viewed as inappropriate, reducing trust in the influencer\. Johnson et al\. \(2022\) found that including self\-disclosure in a recommendation generated less trustworthiness but did not yield significant differences in the influencer’s expertise, both aspects of credibility\. Leite et al\. \(2022\) found that high levels of self\-disclosure reduced perceptions of the influencer’s credibility\. These studies generally contribute to the understanding that influencers’ self\-disclosure can negatively affect perceptions of credibility\. However, Penttinen et al\. \(2022\) demonstrated that the inclusion of self\-disclosure in online reviews did not directly impact source credibility\. Instead, this effect was found to be positively mediated by parasocial interactions\. Leite et al\. \(2022\), for instance, found that, when appropriate, self\-disclosure can increase perceptions of relatedness and, subsequently, credibility\. These studies expand upon previous research, demonstrating how self\-disclosure enhances credibility by considering relationship\-related factors\. However, a key question remains: how can influencers’ intimate self\-disclosure boost credibility without relying solely on strong connections with followers? To address this, we introduce two crucial factors: content\-expertise congruence and competence\-related need fulfillment\. These factors are relevant as they are somewhat reliant on influencers’ abilities to create and deliver online content\. Therefore, we expect that influencers’ self\-disclosure affects their credibility not only through audience connection but also by shaping how the audience assesses their content\.

== The main effect of intimate self\-disclosure on perceptions of credibility
#par(first-line-indent: 0em)[Considering that sensitive information frequently encompasses personal vulnerabilities \(Omarzu, 2000\), we anticipate that intimate self\-disclosure can be detrimental within the context of social media recommendations\. This happens because revealing intimate content embedded in social media recommendations can reveal an unappealing side of the influencer, which can be interpreted as a weakness or sign of powerlessness\. It is important to note that social media influencers often present a curated image of themselves, and intimate self\-disclosure can disrupt this image, potentially harming their credibility\. The literature has demonstrated that the effectiveness of an influencer’s persuasive communication relies on their perceived credibility as a trustworthy source of advice \(Djafarova & Rushworth, 2017\)\. Therefore, sharing sensitive content can diminish perceptions of the influencer’s cognitive abilities to endorse products and services on social media \(Leite et al\., 2022\)\. In essence, including intimate content in recommendations may lead the audience to doubt their ability to effectively endorse products and services, a crucial aspect of their role as influencers\. Drawing on the preceding discussion, we hypothesize the following:]

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1\.] Social media recommendations, which include intimate content \(as opposed to those without intimate content\) lead to fewer perceptions of influencers’ credibility\.]]
== The mediating role of congruence between influencers’ content and expertise
#par(first-line-indent: 0em)[Influencer marketing has explored congruence mainly from the perspective of whether endorsers are congruent with the products they promote \(De Cicco et al\., 2020\; D\. Y\. Kim & Kim, 2020\; Martínez\-López et al\., 2020\; Park & Lin, 2020\; Schouten et al\., 2020\)\. For example, the benefits of congruence between an influencer and a sponsored product include a positive attitude towards the advertised product \(Breves et al\., 2019\; D\. Y\. Kim & Kim, 2020\), increased willingness to seek out additional information regarding the product \(Martínez\-López et al\., 2020\), positive attitudes toward the influencer and intention to continue to follow the influencer \(De Cicco et al\., 2020\), increased trust \(Martínez\-López et al\., 2020\), and increased perceptions of the influencer’s credibility \(Breves et al\., 2019\; De Cicco et al\., 2020\; Park & Lin, 2020\)\. In travel and tourism marketing, the congruence between influencers and consumers and between influencers and destinations is an important determinant of positive visit intentions toward the endorsed destinations \(X\. Xu & Pratt, 2018\)\.]

In the current study, we examine a form of congruence that has not been previously explored, which we refer to as “influencers’ content\-expertise congruence\.” Influencers are known as content creators, which makes them notorious in a field of expertise they have established a career in, such as travel, beauty, food, fitness, and parenting\. This way, influencers often provide their followers with knowledge on the niche of their expertise in the form of tutorials–, tips–, and reviews – related content\. We define influencers’ content – expertise congruence as the extent to which the content shared by an influencer aligns with the field of knowledge over which they have been able to develop a career and are known \(Micallef et al\., 2024\; Zhang et al\., 2017\)\.

We argue that the congruence between their content and expertise can explain the adverse impact of intimate self\-disclosure on influencers’ credibility\. While traditional celebrities have become influential mainly through traditional media channels, such as television, influencers have built their influence by producing social media content\. In general, influencers expand their reach by crafting personalized content grounded in their expertise within a specific field \(Jun & Yi, 2020\)\. By positioning themselves as representatives of specific areas of interest \(Schouten et al\., 2020\), influencers establish a strong link between their image and content\-sharing practices \(Burgoon, 2016\; De Cicco et al\., 2020\), shaping their identity in followers’ minds \(Tafesse & Wood, 2021\)\. Hence, in an environment where influencers are known by their domain of interest, followers may expect influencers to deliver content related to that area of knowledge\.

Research on teacher self\-disclosure and its impact on credibility may provide insight into this matter\. Klebig et al\. \(2016\) found that the relevance of teacher self\-disclosure positively correlated with perceived professor competence\. When teachers linked their self\-disclosures to course material, such as using personal examples to illustrate concepts, students viewed them as more competent\. This finding underscores the importance of congruence between a professor’s self\-disclosure and their course material in shaping perceptions of their competence\. In this light, when influencers’ recommendations include content perceived as too distant from their main domain of interest, it contradicts followers’ expectations of relevant content\. For example, consumers may react negatively towards an influencer that includes personal content in their recommendations because revealing oneself intimately may not be seen as congruent with the influencer’s expertise\. This means that the negative influence of intimate self\-disclosure on influencers’ credibility is determined by how relevant such content included in social media recommendations is to the influencer’s expertise\. More formally,

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2\.] Social media recommendations, which include intimate content \(as opposed to those without intimate content\) diminish perceptions of credibility due to the perceived incongruence between influencers’ content and expertise\.]]
== The moderating role of competence need fulfillment
#par(first-line-indent: 0em)[Self\-determination Theory \(Deci & Ryan, 2000\; Reis et al\., 2000\) focuses on innate and enduring human motivations for learning and development\. To enhance these motivations, it is essential to consider specific fundamental psychological needs that are unique in their universality, innateness, and enduring characteristics \(Deci & Ryan, 2000\; Reis et al\., 2000\; Ryan & Deci, 2020\)\. The inherent psychological need for competence is fulfilled by environments that afford challenges and growth opportunities where people can have the feeling of mastery, achievement, and effectiveness in their activities \(Reis et al\., 2000\; Ryan & Deci, 2020\)\. For example, consumers fulfill their competence needs by perceiving an influencer’s content as informative \(Ki et al\., 2020\)\. Building on this principle, we understand that influencers have the potential to assist individuals in achieving their intrinsic objectives and satisfy their basic human needs, especially in fulfilling their followers’ competence needs\. Industry research indicates that a primary driving force behind consumers’ decision to follow influencers is the desire to acquire new knowledge\. This is closely followed by the pursuit of updates on current events, discovering new brands and products, seeking motivation or challenges, staying informed on professional news, and engaging in activities, such as following workout routines \(Global Web Index, 2020\)\. For instance, followers expect creators to produce more “how\-to” tutorials\. This underscores the significance of generating content that enriches consumers’ knowledge\.]

Previous research on basic psychological needs has traditionally concentrated on individual well\-being \(e\.g\. Deci & Ryan, 2000\) and relational aspects \(e\.g\. La Guardia et al\., 2000\; Thomson, 2006\) as the outcomes of fulfilling one’s basic needs\. For example, Thomson \(2006\) employed the theory of self\-determination to advance the understanding of whether celebrity brands that fulfill consumer basic needs influence the intensity of attachment to a celebrity\. This research demonstrates that celebrities who do not suppress individuals’ feelings of competence tend to encourage stronger consumer attachments towards the celebrity \(Thomson, 2006\)\. Recently, within the scope of influencer marketing, Ki et al\. \(2020\) supported the findings from Thomson \(2006\) by showing that social media influencers who can encourage feelings of competence also foster the development of attachment bonds from followers towards them\.

The current study argues that competence can be a relevant factor in mitigating the adverse effects of influencers’ intimate self\-disclosure\. Based on this understanding, we propose that individuals who feel a strong sense of competence when seeing, hearing, or thinking about the influencer are more likely to view the influencer’s intimate content as relevant and aligned with their expertise, potentially enhancing their credibility in the eyes of the audience\.

The rationale for this effect is based on the Elaboration Likelihood Model \(ELM\) \(Petty & Cacioppo, 1986\), a key theory in social psychology that explains the processing of information in persuasive communication\. ELM distinguishes between two persuasion routes i\.e\. the central route, where individuals carefully consider relevant arguments, and the peripheral route, where they rely on environmental cues\. The ELM suggests that in high elaboration likelihood \(motivated individuals\), people take the central route, engaging in deep thinking, prioritizing argument quality when a message is personally relevant, and investing cognitive effort in analysis\. In low elaboration likelihood \(less motivated individuals\), people rely on heuristic cues in the peripheral route to form their perceptions, lacking the motivation or ability for in\-depth processing\. Hence, when motivation and\/or cognitive capacity decrease, peripheral cues gain more importance in persuasion \(Petty & Cacioppo, 1986\)\.

In line with the ELM, our argument revolves around the idea that individuals who feel highly competent when engaging with an influencer tend to rely more on the influencer’s content that aligns with their competence needs\. They see the influencer as a promoter of effectiveness and achievement\. Consequently, these individuals are more likely to follow a central route \(Petty & Cacioppo, 1986\) when evaluating the influencer’s recommendations, focusing on the core message \(i\.e\. informative travel content\), while paying less attention to peripheral elements like personal stories\. Their strong sense of competence drives them to process information that satisfies their feelings of mastery, accomplishment, and effectiveness \(Reis et al\., 2000\; Ryan & Deci, 2020\), thus engaging in a detailed analysis of travel advice through the central route\. In contrast, those with lower competence are more inclined to be influenced by peripheral cues, such as personal stories\. Given this, as individuals who experience a stronger competence are focused on processing the informative travel content \(i\.e\. central content\), they will perceive the content as more congruent with the influencer’s expertise assigning less significance to intimate content \(i\.e\. a peripheral cue\)\. This shift in attentional focus can be explained through the ELM as a preference for the central processing route, where individuals prioritize the core message \(i\.e\. travel advice\) over peripheral, intimate content\.

To summarize, perceptions of an influencer’s credibility depend on how individuals feel a sense of competence when seeing, hearing, or thinking about the influencer\. If individuals feel a strong sense of competence, more intimate self\-disclosure leads to greater perceptions that such content is relevant to the expertise of the influencer \(see Figure 1 for the conceptual model\)\. Taken together, we present the following hypothesis:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3\.] The detrimental impact of intimate content on perceived congruence will be less pronounced among individuals who experience a higher \(as opposed to lower\) sense of competence fulfillment\.]]
#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Conceptual model\.]]
#v(0.6em)
= Methodology
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Sample
#par(first-line-indent: 0em)[The study sample was sourced from the Amazon Mechanical Turk \(MTurk\) platform and participants were compensated with a nominal payment\. In line with past studies on MTurk \(Kees et al\., 2017\; Penttinen et al\., 2022\; Pontes & Williams, 2021\), we followed participant recruitment best practices: \(1\) location in the U\.S\.\; \(2\) at least 97% HIT approval rate\; \(3\) have a number of HITs approved higher than zero\. After excluding one duplicated Internet Protocol \(IP\) address, three participants who were not social media users, and 13 people who were unable to remember the name of the influencer used in the scenario, the sample we used in our analysis included 212 participants \(60\.4% females\; mean age: 36\.46, SD \= 11\.14\)\. Following previous research \(De Cicco et al\., 2020\), we ensured that the participants were active social media users\. Participants’ social media usage is as follows: 85\.4% reported being frequent social media users, spending a minimum of 4 hours per week\; 84\.4% reported using social media in the 6 hours preceding their response to the survey\. The most used platforms were YouTube \(82\.5%\), Facebook \(82\.1%\) and Instagram \(76\.4%\)\.]

== Design and procedure
#par(first-line-indent: 0em)[The study employed a two\-cell between‐subjects experimental design \(intimate vs\. without intimate content\) with a continuous variable \(competence need fulfillment\)\. Intimacy was manipulated at two levels: travel recommendations with intimate versus without intimate content\. Travel recommendations without intimate content mainly focus on the influencer’s travel preferences, providing advice on interacting with locals and suggesting the best places to visit\. In contrast, travel recommendations with intimate content center on deepening the intimacy of the influencer’s travel preferences\. This involves disclosing romantic involvements during a trip and sharing how the recommended destination holds special personal memories \(Leite et al\., 2022\; X\. Ma et al\., 2016\)\.]

Initially, participants were presented with an influencer’s profile and asked to imagine following them on Instagram\. Subsequently, they were instructed to envision encountering a series of the influencer’s social media posts on Instagram\. Participants were then randomly assigned to one of two experimental scenarios, with both scenarios containing similar text about travel recommendations\. The variations between the scenarios involved the presence or absence of intimate content\. Additional details regarding these manipulations can be found in the Appendix\.

== Measures
#par(first-line-indent: 0em)[After viewing the manipulations, participants responded to the influencer’s credibility scale from Ohanian \(1990\), consisting of fifteen 7\-point semantic differential scales\. The scale quantifies participants’ perceptions of the influencer’s credibility by evaluating their perceived attractiveness, trustworthiness, and expertise\. We then asked participants about the congruence between the influencer’s content and her field of knowledge with two items adapted from Escalas and Bettman \(2017\), anchored by 1 \(not well at all\) and 5 \(extremely well\)\. Participants also answered to the competence need fulfillment scale adapted from Thomson \(2006\), comprising five items rated on a scale anchored by 1 \(strongly disagree\) and 7 \(strongly agree\) \(e\.g\. When I see, hear, or think about Sophia \. \. \. I feel very capable in what I do\)\. Additional details regarding these measurement scales can be found in the Appendix\.]

To check the success of the manipulation, we used a self\-disclosure intimacy scale adapted from Bazarova \(2012\)\. The measurement scale comprised three items \(α \= 0\.83\), each rated on a 7\-point semantic differential scale \(e\.g\. ranging from “non\-intimate” to “intimate,” “impersonal” to “personal”\)\. Using a 7\-point Likert scale, participants reported on two items whether they believed the manipulation scenario to be realistic \(Leite et al\., 2022\)\. Using the mid\-point of the scale \(4\) as a comparison value, one sample #emph[t]\-test results show that participants believed the scenario to be realistic or similar to a post\/profile they encountered previously on social media \(#emph[M] \= 4\.89, SD \= 1\.47, #emph[t]\(211\) \= 8\.86, #emph[p] \< 0\.001\)\. Finally, participants responded to questions regarding their demographic profile and social media use\.

= Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Manipulation check
#par(first-line-indent: 0em)[The results of an independent t\-test indicated that the social media recommendations containing intimate self\-disclosure received significantly higher ratings than those without such disclosures \(M#sub[intimate] \= 5\.96, SD \= 1\.34 versus M#sub[nonintimate] \= 3\.78, SD \= 1\.50, #emph[t]\(210\) \= −11\.11, #emph[p] \< 0\.001\)\. Levene’s test assumed that the variances between the groups were equal, F\(1,210\) \= 3\.62, #emph[p] \> 0\.05 \(N#sub[intimate] \= 104, N#sub[nonintimate] \= 108\)\. These results confirmed that the manipulation used in the study worked as planned\.]

Furthermore, we conducted an independent #emph[t]\-test to confirm that our independent variable did not influence the fulfillment of the competence need\. The results demonstrated that perceptions of competence did not differ between the scenarios \(M#sub[intimate] \= 4\.30, SD \= 1\.56 versus M#sub[nonintimate] \= 4\.54, SD \= 1\.54, #emph[t]\(210\) \= 1\.11, #emph[p] \= 0\.27\)\. Levene’s test assumes that the variances between the groups were equal, F\(1,210\) \= 0\.43, #emph[p] \> 0\.05 \(N#sub[intimate] \= 104, N#sub[nonintimate] \= 108\)\.

== Source credibility
#par(first-line-indent: 0em)[A one\-way ANOVA revealed statistically significant main effects of intimate self\-disclosure on the influencer’s credibility such that the posts containing intimate content resulted in lower ratings of the influencer’s credibility in comparison with posts that do not include intimate self\-disclosure \(M#sub[intimate] \= 4\.54, SD \= 1\.34 versus M#sub[nonintimate] \= 5\.14, SD \= 0\.95\; F\(1, 210\) \= 13\.88, #emph[p] \< 0\.001, η#sub[p]#super[2] \= 0\.06\)\. This result supports Hypothesis 1\.]

== The role of congruence
#par(first-line-indent: 0em)[A one\-way ANOVA revealed statistically significant main effects of intimate self\-disclosure on the influencer’s content – expertise congruence, such that the posts embedding intimate content were evaluated as less congruent with the influencer’s expertise than the posts that do not include intimate self\-disclosure \(M#sub[intimate] \= 2\.63, SD \= 1\.27 versus M#sub[nonintimate] \= 3\.63, SD \= 0\.91\; F\(1, 210\) \= 43\.54, #emph[p] \< 0\.001, η#sub[p]#super[2] \= 0\.17\)\.]

More importantly, we then examined whether perceived congruence between influencers’ content and expertise mediated the impact of posts containing intimate self\-disclosure on the influencer’s credibility\. The study employed a mediation analysis using PROCESS Model 4 \(Hayes, 2018\; using 5,000 bootstrap samples\) with social media posts including intimate content \(without intimate \= 0, intimate \= 1\) as the independent factor, perceived congruence between influencers’ content and expertise as the mediator, and consumers’ perceptions of influencers’ credibility as the dependent variable\.

Intimate \(vs\. without intimate\) self\-disclosure decreased perceptions of congruence between influencers’ content and expertise \(#emph[b] \= −1\.00, SE \= 0\.15, #emph[t]\(210\) \= −6\.59, #emph[p] \< 0\.001\)\. The impact of intimate content on consumers’ views of influencers’ credibility was mediated by the influencer’s content\-expertise congruence \(#emph[b] \= −0\.79\; SE \= 0\.13\; 95% CI: \[−1\.07, −0\.54\]\)\. This finding is supportive of Hypothesis 2\.

== Competence need fulfillment
#par(first-line-indent: 0em)[As we aimed to offer insights into how influencers can maintain their credibility when sharing intimate information in social media recommendations, our findings provide new insights on how to mitigate these negative effects\. Hypothesis 3 proposed that competence need fulfillment attenuates the negative impact of intimate content on perceived congruence between influencers’ content and expertise\. To test this hypothesis, we conducted a moderated mediation analysis \(using PROCESS Model 7 by Hayes, 2018 with 5,000 bootstrap samples\) with social media posts including intimate content \(without intimate \= 0, intimate \= 1\) as the independent factor, perceived congruence between influencers’ content and expertise as the mediator, consumers’ perceptions of influencers’ credibility as the dependent variable, and competence need fulfillment as the moderator\.]

Results demonstrated that all direct effects on congruence were statistically significant\. Specifically, the model \(F \(3,208\) \= 45\.43, #emph[p] \< 0\.001, #emph[R]#super[2] \= 0\.39\) revealed that intimate \(vs\. without intimate\) content decreased evaluations of congruence \(#emph[b] \= −1\.72, SE \= 0\.39, #emph[t]\(208\) \= −4\.35, #emph[p] \< 0\.001\), whereas higher \(vs\. lower\) competence increased evaluations of congruence between influencers’ content and expertise \(#emph[b] \= 0\.26, SE \= 0\.05, #emph[t]\(208\) \= 4\.50, #emph[p] \< 0\.001\)\. The two\-way interaction between intimacy and competence was significant \(#emph[b] \= 0\.18, SE \= 0\.08, #emph[t] \(208\) \= 2\.15, #emph[p] \= 0\.03\)\.

Analysis of the conditional effect of intimate content at each level of competence need fulfillment demonstrated that the effect of intimacy on congruence is statistically significant and negative for all levels of competence \(low#sub[–1SD]: #emph[b] \= −1\.20, SE \= 0\.18, #emph[t]\(208\) \= −6\.48, #emph[p] \< 0\.001\; medium#sub[M]: #emph[b] \= −0\.91, SE \= 0\.13, #emph[t]\(208\) \= −7\.01, #emph[p] \< 0\.001\; high#sub[\+1SD]: #emph[b] \= −0\.63, SE \= 0\.18, #emph[t]\(208\) \= −3\.42, #emph[p] \< 0\.001\)\. However, as the level of competence need fulfillment increases, the negative impact of intimacy on congruence becomes smaller\. This result is consistent with the prediction that competence needs fulfillment lessens the negative effect of intimacy on perceived congruence between influencers’ content and expertise\. This interaction is shown in Figure 2\.

#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 2\. The effect of intimate content and competence need fulfillment on perceived congruence between the influencer’s content and expertise\.]]
#v(0.6em)
Finally, results show that the influence of intimate content on credibility through congruence is attenuated as competence need fulfillment increases from low \(ind\.#emph[b]#sub[–1SD] \= −0\.95\; 95% CI: \[−1\.33, −0\.61\]\) to higher levels of competence \(ind\.#emph[b]#sub[\+1SD]: \= −0\.50\; 95% CI: \[−0\.79, −0\.22\]\)\. The direct effect of intimate content on credibility was non\-significant \(#emph[b] \= 0\.20, SE \= 0\.11, #emph[t]\(209\) \= 1\.77, #emph[p] \> 0\.05\)\. The index of moderated mediation did not include zero \(index \= 0\.14, SE \= 0\.07, 95% CI: \[0\.0006, 0\.2986\]\)\. These findings support Hypothesis 3 \(see Figure 3\)\.

#figure(image("build/fig3.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 3\. Moderated mediation analysis of the impact of intimate content and competence need fulfillment on the influencer’s credibility via the influencer’s content\-expertise congruence\.]]
#v(0.6em)
= Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The current study investigated what happens when travel influencers include intimate content in their recommendations\. Our findings reveal that embedding intimate content on social media recommendations can jeopardize perceptions of influencers’ credibility because consumers perceive such content as not congruent or relevant to the expertise of the influencer\. This means that including intimate content in recommendations does not always contribute to forming positive evaluations\. When the content was solely focused on the influencer’s travel preferences and tips \(i\.e\. providing advice on interacting with locals and suggesting the best places to visit\), such content was perceived as more congruent with the influencer’s expertise\. However, when such preferences and tips included more intimate information \(i\.e\. disclosing romantic involvements during a trip and sharing how the recommended destination holds special personal memories\), such content was perceived as less congruent with the influencer’s expertise, damaging perceptions of the influencer’s credibility\. This implies that consumers are more receptive to social media content that is both relevant and adds to the expertise of the influencer\.]

In addressing our primary research question, we discovered that content congruence plays a vital role in shaping perceptions of credibility, especially when consumers perceive that the influencer fulfills their competence needs\. Our findings indicate that exposure to travel recommendations featuring intimate self\-disclosure enhances influencer credibility through congruence, but primarily for those with a high sense of competence fulfillment\. In summary, these findings emphasize the importance of both content\-expertise congruence, and the fulfillment of competence needs in elucidating how self\-disclosure impacts credibility\. The findings highlight that influencers’ intimate self\-disclosure can boost perceptions of credibility by creating relevant content for their followers, rather than relying solely on the establishment of strong follower relationships\.

== Theoretical implications
#par(first-line-indent: 0em)[Our research holds significant theoretical implications for both influencer and travel marketing research\. In response to the call made by earlier travel research \(J\. Xu et al\., 2023\; Zhou et al\., 2021\), our study emphasizes the importance of investigating effective communication strategies among recommenders, particularly focusing on influencers\. While there has been considerable interest in investigating the impact of self\-disclosure as a communication strategy \(e\.g\. AlRabiah et al\., 2022\; Johnson et al\., 2022\; Leite et al\., 2022\; Lu et al\., 2023\; Penttinen et al\., 2022\), previous research has provided only limited insights into how influencers can effectively harness intimacy to establish credibility with their followers\. This is particularly important in tourism and travel research, where literature on self\-disclosure is scarce \(Li et al\., 2023\; H\. Lin et al\., 2019\; Lu et al\., 2023\)\. Considering followers’ appreciation for influencers’ personal experiences and travel preferences \(J\. Xu et al\., 2023\; Zhou et al\., 2021\), our research extends beyond previous findings to examine the factors influencing how intimate self\-disclosure by travel influencers impacts perceptions of credibility\.]

Earlier research in travel and tourism marketing emphasizes the significance of congruence between influencers and consumers, as well as between influencers and destinations, as antecedents of positive visit intentions toward the endorsed destinations \(X\. Xu & Pratt, 2018\)\. Our study contributes to this field by being the first to evaluate influencers’ congruence between their content and expertise\. Our findings emphasize the importance of aligning an influencer’s content with their area of expertise as a key factor in shaping how credible they are perceived to be\. We evaluate the role of influencers’ content – expertise congruence as a variable closely related to the aspects that make influencer marketing unique\. In other words, the idea that influencers are recognized for the expertise they have cultivated in their careers can lead followers to expect content that is pertinent to that area of knowledge\. Our findings offer empirical evidence highlighting the significance of influencers sharing personal information that is relevant to their followers to enhance their credibility\. While developing strong ties with followers is important for influencers’ credibility, as emphasized in previous studies \(e\.g\. Penttinen et al\., 2022\), not all influencers can sustain active reciprocity with their followers \(Leite & Baptista, 2022b\), making it challenging to establish and nurture strong, progressive relationships with their audience\. In this regard, we demonstrate that congruence between influencers’ content and their field of expertise is critical for the effectiveness of travel influencers’ communication strategies\.

Furthermore, past studies offer few insights into the boundary conditions that affect how consumers perceive the inclusion of self\-disclosure in social media recommendations \(e\.g\. AlRabiah et al\., 2022\)\. In view of this, we contribute to the literature by evaluating one important boundary condition to this effect: competence need fulfillment, a variable capable of reducing the negative effects of intimate self\-disclosure\. Drawing on the Self\-determination Theory \(Deci & Ryan, 2000\; Reis et al\., 2000\) and the Elaboration Likelihood Model \(Petty & Cacioppo, 1986\), as well as studies assessing the advantages of media figures fulfilling individuals’ psychological needs \(Ki et al\., 2020\; Thomson, 2006\), we offer a unique interaction mechanism of competence need fulfillment and self\-disclosure to demonstrate that influencers’ intimate self\-disclosure can bolster perceptions of credibility without relying solely on their capacity to forge relational bonds with their followers\. This finding is relevant, given that it is somewhat reliant on influencers’ abilities to create and deliver online content\. Therefore, our research fills a notable gap in the current literature by showing that influencers’ self\-disclosure affects their credibility by shaping how the audience assesses their content\.

== Managerial implications
#par(first-line-indent: 0em)[What happens when travel influencers include intimate and personal content in their social media recommendations? Are influencers perceived as more or less credible when they include personal content in their travel recommendations? These questions may arise for both marketers and influencers looking to deliver messages that will resonate positively among their audience\.]

While the inclusion of intimate self\-disclosure in travel recommendations may lead to lower perceptions of the influencer’s credibility, our study reveals that influencers can mitigate this detrimental effect by creating content closely related to the influencer’s area of expertise\. This is particularly important for individuals who experience a strong sense of competence when engaging with the influencer\. These individuals are more likely to focus on the influencer’s core message – informative travel content – processing information that aligns with their feelings of mastery, accomplishment, and effectiveness \(Ryan & Deci, 2020\)\. Therefore, we suggest that social media marketers should use the fulfillment of followers’ competence needs in strategic ways, focusing on growth\-oriented environments that make people feel capable and skilled\. Through simple yet effective changes, travel influencers can continuously meet their followers’ needs for growth\. Various opportunities arise by recognizing that followers who feel competent tend to respond more positively to influencers\. In our study, a sense of competence among social media users leads them to perceive influencer content as more relevant, thereby enhancing perceptions of credibility\. Building on this, one effective approach for travel influencers is to create informative and educational content that empowers followers to acquire new skills or gain knowledge in their areas of interest\. This demonstrates the influencer’s commitment to their personal growth\. In particular, travel influencers can enhance their credibility and relevance by incorporating challenges, quizzes, and contests that encourage their audience to share their experiences and expertise related to promoted products or services\. This strategy helps users showcase their competence, especially in providing comprehensive travel guides and tips, detailed itineraries, cost breakdowns, safety advice, and more\. By consistently offering informative content, influencers can effectively meet their followers’ competence needs \(Ki et al\., 2020\), ensuring that their content remains relevant and aligns with their expertise\. This approach offers fresh insights into how influencers and marketers in the travel and tourism field can more effectively incorporate personal and intimate stories into their content\.

== Limitations and future research
#par(first-line-indent: 0em)[The current study has provided valuable insights into mitigating the adverse impact of influencers’ intimate self\-disclosure on their perceived credibility, but it does have some limitations\. In line with previous research \(e\.g\. De Jans et al\., 2020\; De Veirman & Hudders, 2019\; De Veirman et al\., 2017\), we employed a fictitious influencer in this study to examine the effects of the variables of interest while controlling for prior influencer knowledge and eliminating potential interference from extraneous variables\. Using a fictitious influencer and a hypothetical scenario rather than a real\-life context may have constrained the external validity of the study\. Nevertheless, scenario\-based studies are valuable for enhancing internal validity by allowing a level of control that is often unattainable through other methods \(Pontes & Williams, 2021\)\. To bolster the internal validity and relevance of the manipulation stimuli, we followed the approach proposed by De Veirman et al\. \(2017\) by crafting a fictitious influencer’s profile biography that closely resembled that of a real influencer\. For broader generalizability, future research could investigate the effects of influencers’ self\-disclosure on consumers’ perceptions of influencer credibility, both for familiar and unfamiliar influencers\. Consumers’ responses regarding what they consider congruent content may differ when encountering a first\-time influencer compared to a familiar one \(Rains & Brunner, 2018\; Utz, 2015\)\.]

Consistent with Nah \(2022\), our current research aimed to ensure that the only distinction between the manipulations was the presence or absence of intimate self\-disclosure\. As a result, the word count of the text utilized in the manipulations differed across conditions\. While this approach may present a limitation, it was essential to create the necessary contrast between scenarios with and without intimacy\. It is worth noting that this manipulation method aligns with recent studies that have similarly varied the length of self\-disclosure manipulations \(e\.g\. Huaman‐Ramirez et al\., 2021\; S\. S\. Lee & Johnson, 2021\; Penttinen et al\., 2022\), particularly within the field of tourism research \(Li et al\., 2023\)\.

Finally, our choice to depict a female influencer is based on several considerations\. First and foremost, women tend to engage in more natural and intimate self\-disclosure, making it well\-aligned with this portrayal \(Caltabiano & Smithson, 1983\)\. Women have been observed to self\-disclose more intimately than men on various social media platforms \(Y\. C\. Wang et al\., 2016\)\. Secondly, the influencer market is predominantly composed of women \(Hudders & De Jans, 2021\), and a substantial portion of Instagram’s global \(51\.4%\) and U\.S\. \(57\.9%\) users are female \(Statista, 2021a, 2021b\)\. Therefore, it is more appropriate to do our analysis with a female influencer\. Nonetheless, future research could delve into the impact of influencer gender on the effects identified in this study, particularly in the context of same\-sex and opposite\-sex influencers \(Baxter et al\., 2022\; Hudders et al\., 2020\)\.

= Disclosure statement
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[No potential conflict of interest was reported by the authors\.]

= ORCID
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Fernanda Polli Leite https:\/\/orcid\.org\/0000\-0002\-2857\-5987]

Nicolas Pontes https:\/\/orcid\.org\/0000\-0002\-7391\-0908

Bruno Schivinski https:\/\/orcid\.org\/0000\-0002\-4095\-1922

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
AlRabiah, S\., Marder, B\., Marshall, D\., & Angell, R\. \(2022\)\. Too much information: An examination of the effects of social self\-disclosure embedded within influencer eWOM campaigns\. #emph[Journal of Business Research], #emph[152], 93–105\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2022\.07\.029

Altman, I\., & Taylor, D\. A\. \(1973\)\. #emph[Social penetration: The development of interpersonal relationships]\. Holt, Rinehart, & Winston\.

American Express\. \(2023\)\. #emph[2023 Global Travel Trends Report]\. Retrieved November 6, 2023, from https:\/\/www\.americanexpress\.com\/en\-us\/travel\/discover\/get\-inspired\/global\-travel\-trends

Baxter, B\., Czarnecka, B\., Schivinski, B\., & Massaro, M\. R\. \(2022\)\. Masculine men do not like feminine wording: The effectiveness of gendered wording in health promotion leaflets in the UK\. #emph[Public Library of Science ONE], #emph[17]\(10\), e0273927\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0273927

Bazarova, N\. \(2012\)\. Public intimacy: Disclosure interpretation and social judgments on Facebook\. #emph[Journal of Communication], #emph[62]\(5\), 815–832\. https:\/\/doi\.org\/10\.1111\/j\.1460\-2466\.2012\.01664\.x

Bickart, B\., Kim, S\., Pai, S\., & Brunel, F\. \(2015\)\. How social media influencers build a brand following by sharing secrets\. In S\. Fournier, M\. Breazeale, & J\. Avery \(Eds\.\), #emph[Strong Brands, Strong relationships] \(pp\. 172–184\)\. Routledge\.

Boerman, S\. \(2020\)\. The effects of the standardized Instagram disclosure for micro\- and meso\-influencers\. #emph[Computers in Human Behavior], #emph[103], 199–207\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2019\.09\.015

Breves, P\., Liebers, N\., Abt, M\., & Kunze, A\. \(2019\)\. The perceived fit between Instagram influencers and the endorsed brand\. #emph[Journal of Advertising Research], #emph[59]\(4\), 440–454\. https:\/\/doi\.org\/10\.2501\/jar\-2019\-030

Burgoon, J\. \(2016\)\. Expectancy violations theory\. In C\. Berger & M\. Roloff \(Eds\.\), #emph[The international encyclopedia of interpersonal communication] \(1st ed\., pp\. 1–9\)\. John Wiley & Sons, Inc\. https:\/\/doi\.org\/10\.1002\/9781118540190\.wbeic102

Cai, R\., Wang, Y\. C\., & Sun, J\. \(2024\)\. Customers’ intention to compliment and complain via AI\-enabled platforms: A self\-disclosure perspective\. #emph[International Journal of Hospitality Management], #emph[116], 103628\. https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2023\.103628

Caltabiano, M\., & Smithson, M\. \(1983\)\. Variables affecting the perception of self\-disclosure appropriateness\. #emph[The Journal of Social Psychology], #emph[120]\(1\), 119–128\. https:\/\/doi\.org\/10\.1080\/00224545\.1983\.9712017

Chen, T\. Y\., Yeh, T\. L\., & Lee, F\. Y\. \(2021\)\. The impact of internet celebrity characteristics on followers’ impulse purchase behavior: The mediation of attachment and parasocial interaction\. #emph[Journal of Research in Interactive Marketing], #emph[15]\(3\), 483–501\. https:\/\/doi\.org\/10\.1108\/jrim\-09\-2020\-0183

Choi, Y\., Lee, J\., & Choe, Y\. \(2021\)\. Online travel information filtering: Role of commercial cues in trust and distrust mechanisms\. #emph[Journal of Travel & Tourism Marketing], #emph[38]\(7\), 710–724\. https:\/\/doi\.org\/10\.1080\/10548408\.2021\.1985037

Chung, S\., & Cho, H\. \(2017\)\. Fostering parasocial relationships with celebrities on social media: Implications for celebrity endorsement\. #emph[Psychology & Marketing], #emph[34]\(4\), 481–495\. https:\/\/doi\.org\/10\.1002\/mar\.21001

De Cicco, R\., Iacobucci, S\., & Pagliaro, S\. \(2020\)\. The effect of influencer–product fit on advertising recognition and the role of an enhanced disclosure in increasing sponsorship transparency\. #emph[International Journal of Advertising], #emph[40]\(5\), 733–759\. https:\/\/doi\.org\/10\.1080\/02650487\.2020\.1801198

Deci, E\., & Ryan, R\. \(2000\)\. The “what” and “why” of goal pursuits: Human needs and the self\-determination of behavior\. #emph[Psychological Inquiry], #emph[11]\(4\), 227–268\. https:\/\/doi\.org\/10\.1207\/s15327965pli1104\_01

De Jans, S\., Van de Sompel, D\., De Veirman, M\., & Hudders, L\. \(2020\)\. \#sponsored! How the recognition of sponsoring on Instagram posts affects adolescents’ brand evaluations through source evaluations\. #emph[Computers in Human Behavior], #emph[109], 106342\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2020\.106342

De Veirman, M\., Cauberghe, V\., & Hudders, L\. \(2017\)\. Marketing through Instagram influencers: The impact of number of followers and product divergence on brand attitude\. #emph[International Journal of Advertising], #emph[36]\(5\), 798–828\. https:\/\/doi\.org\/10\.1080\/02650487\.2017\.1348035

De Veirman, M\., & Hudders, L\. \(2019\)\. Disclosing sponsored Instagram posts: The role of material connection with the brand and message\-sidedness when disclosing covert advertising\. #emph[International Journal of Advertising], #emph[39]\(1\), 94–130\. https:\/\/doi\.org\/10\.1080\/02650487\.2019\.1575108

Djafarova, E\., & Rushworth, C\. \(2017\)\. Exploring the credibility of online celebrities’ Instagram profiles in influencing the purchase decisions of young female users\. #emph[Computers in Human Behavior], #emph[68], 1–7\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2016\.11\.009

Escalas, J\., & Bettman, J\. \(2017\)\. Connecting with celebrities: How consumers appropriate celebrity meanings for a sense of belonging\. #emph[Journal of Advertising], #emph[46]\(2\), 297–308\. https:\/\/doi\.org\/10\.1080\/00913367\.2016\.1274925

Evans, N\., Phua, J\., Lim, J\., & Jun, H\. \(2017\)\. Disclosing Instagram influencer advertising: The effects of disclosure language on advertising recognition, attitudes, and behavioral intent\. #emph[Journal of Interactive Advertising], #emph[17]\(2\), 138–149\. https:\/\/doi\.org\/10\.1080\/15252019\.2017\.1366885

Global Web Index\. \(2020\) \. #emph[The age of influence]\. Global Web Index and Influencer\.com\.

Gretzel, U\. \(2018\)\. Influencer marketing in travel and tourism\. In M\. Sigala & U\. Gretzel \(Eds\.\), #emph[Advances in social media for travel, tourism and hospitality] \(pp\. 147–156\)\. Routledge\. https:\/\/doi\.org\/10\.4324\/9781315565736

Hayes, A\. \(2018\)\. #emph[Introduction to mediation, moderation, and conditional process analysis: A regression\-based approach] \(2nd ed\.\)\. Guilford Press\.

Hernández\-Méndez, J\., & Baute\-Díaz, N\. \(2023\)\. Influencer marketing in the promotion of tourist destinations: Mega, macro and micro\-influencers\. #emph[Current Issues in Tourism], 1–11\. https:\/\/doi\.org\/10\.1080\/13683500\.2023\.2214354

Huaman‐Ramirez, R\., Lunardo, R\., & Vasquez‐Parraga, A\. \(2021\)\. How brand self‐disclosure helps brands create intimacy with customers: The role of information valence and anthropomorphism\. #emph[Psychology & Marketing], #emph[39]\(2\), 460–477\. https:\/\/doi\.org\/10\.1002\/mar\.21609

Hudders, L\., & De Jans, S\. \(2021\)\. Gender effects in influencer marketing: An experimental study on the efficacy of endorsements by same\- vs\. other\-gender social media influencers on instagram\. #emph[International Journal of Advertising], #emph[41]\(1\), 128–149\. https:\/\/doi\.org\/10\.1080\/02650487\.2021\.1997455

Hudders, L\., De Jans, S\., & De Veirman, M\. \(2020\)\. The commercialization of social media stars: a literature review and conceptual framework on the strategic use of social media influencers\. #emph[International Journal of Advertising], #emph[40]\(3\), 327–375\. https:\/\/doi\.org\/10\.1080\/02650487\.2020\.1836925

Influencer Marketing Hub\. \(2023\)\. #emph[The state of influencer marketing 2023]\. Retrieved November 6, 2023, from https:\/\/influencermarketinghub\.com\/ebooks\/Influencer\_Marketing\_Benchmark\_Report\_2023\.pdf

Johnson, B\. K\., Bradshaw, A\. S\., Davis, J\., Diegue, V\., Frost, L\., Hinds, J\., Lin, T\., Mizell, C\., Quintana, D\., & Wang, R\. \(2022\)\. Credible influencers: Sponsored YouTube personalities and effects of warranting cues\. #emph[Journal of Media Psychology], #emph[34] \(4\), 236–248\. https:\/\/doi\.org\/10\.1027\/1864\-1105\/a000310

Jun, S\., & Yi, J\. \(2020\)\. What makes followers loyal? The role of influencer interactivity in building influencer brand equity\. #emph[Journal of Product & Brand Management], #emph[29]\(6\), 803–814\. https:\/\/doi\.org\/10\.1108\/jpbm\-02\-2019\-2280

Kees, J\., Berry, C\., Burton, S\., & Sheehan, K\. \(2017\)\. An analysis of data quality: Professional panels, student subject pools, and Amazon’s mechanical Turk\. #emph[Journal of Advertising], #emph[46]\(1\), 141–155\. https:\/\/doi\.org\/10\.1080\/00913367\.2016\.1269304

Ki, C\., Cuevas, L\., Chong, S\., & Lim, H\. \(2020\)\. Influencer marketing: Social media influencers as human brands attaching to followers and yielding positive marketing results by fulfilling needs\. #emph[Journal of Retailing and Consumer Services], #emph[55], 102133\. https:\/\/doi\.org\/10\.1016\/j\.jretconser\.2020\.102133

Kim, D\. Y\., & Kim, H\. Y\. \(2020\)\. Influencer advertising on social media: The multiple inference model on influencer\-product congruence and sponsorship disclosure\. #emph[Journal of Business Research]\. In press\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2020\.02\.02\.0

Kim, M\., & Kim, J\. \(2020\)\. How does a celebrity make fans happy? Interaction between celebrities and fans in the social media context\. #emph[Computers in Human Behavior], #emph[111], 106419\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2020\.106419

Kim, J\., & Song, H\. \(2016\)\. Celebrity’s self\-disclosure on twitter and parasocial relationships: A mediating role of social presence\. #emph[Computers in Human Behavior], #emph[62], 570–577\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2016\.03\.083

Klebig, B\., Goldonowicz, J\., Mendes, E\., Miller, A\., & Katt, J\. \(2016\)\. The combined effects of instructor communicative behaviors, instructor credibility, and student personality traits on incivility in the college classroom\. #emph[Communication Research Reports], #emph[33]\(2\), 152–158\. https:\/\/doi\.org\/10\.1080\/08824096\.2016\.1154837

La Guardia, J\., Ryan, R\., Couchman, C\., & Deci, E\. \(2000\)\. Within\-person variation in security of attachment: A self\-determination theory perspective on attachment, need fulfillment, and well\-being\. #emph[Journal of Personality and Social Psychology], #emph[79]\(3\), 367–384\. https:\/\/doi\.org\/10\.1037\/0022\-3514\.79\.3\.367

Lee, K\., Ham, J\., Cantoni, L\., & Koo, C\. \(2022\)\. Identifying the nature of authentic and fake reviews in restaurant context\. #emph[Journal of Travel & Tourism Marketing], #emph[39]\(3\), 353–369\. https:\/\/doi\.org\/10\.1080\/10548408\.2022\.2089955

Lee, S\. S\., & Johnson, B\. K\. \(2021\)\. Are they being authentic? The effects of self\-disclosure and message sidedness on sponsored post effectiveness\. #emph[International Journal of Advertising], #emph[41]\(1\), 30–53\. https:\/\/doi\.org\/10\.1080\/02650487\.2021\.1986257

Leite, F\., & Baptista, P\. \(2022a\)\. The effects of social media influencers’ self\-disclosure on behavioral intentions: The role of source credibility, parasocial relationships, and brand trust\. #emph[Journal of Marketing Theory & Practice], #emph[30]\(3\), 295–311\. https:\/\/doi\.org\/10\.1080\/10696679\.2021\.1935275

Leite, F\., & Baptista, P\. \(2022b\)\. Influencers’ intimate self\-disclosure and its impact on consumers’ self\-brand connections: Scale development, validation, and application\. #emph[Journal of Research in Interactive Marketing], #emph[16]\(3\), 420–437\. https:\/\/doi\.org\/10\.1108\/JRIM\-05\-2020\-0111

Leite, F\., Pontes, N\., & Baptista, P\. \(2022\)\. Oops, I’ve overshared! When social media influencers’ self\-disclosure damage perceptions of source credibility\. #emph[Computers in Human Behavior], #emph[133], 107274\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2022\.107274

Lin, R\., & Utz, S\. \(2017\)\. Self\-disclosure on SNS: Do disclosure intimacy and narrativity influence interpersonal closeness and social attraction? #emph[Computers in Human Behavior], #emph[70], 426–436\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2017\.01\.012

Lin, H\., Zhang, M\., Gursoy, D\., & Fu, X\. \(2019\)\. Impact of tourist\-to\-tourist interaction on tourism experience: The mediating role of cohesion and intimacy\. #emph[Annals of Tourism Research], #emph[76], 153–167\. https:\/\/doi\.org\/10\.1016\/j\.annals\.2019\.03\.009

Li, H\., Wang, Q\., Li, G\., & Cai, D\. \(2023\)\. Do looks matter for hosts on the peer\-to\-peer sharing accommodation market? #emph[Annals of Tourism Research], #emph[98], 103510\. https:\/\/doi\.org\/10\.1016\/j\.annals\.2022\.103510

Lou, C\., & Yuan, S\. \(2019\)\. Influencer marketing: How message value and credibility affect consumer trust of branded content on social media\. #emph[Journal of Interactive Advertising], #emph[19]\(1\), 58–73\. https:\/\/doi\.org\/10\.1080\/15252019\.2018\.1533501

Lu, Y\., Liu, X\., Hu, Y\., & Zhu, C\. \(2023\)\. Influence of livestreamers’ intimate self\-disclosure on tourist responses: The lens of parasocial interaction theory\. #emph[Journal of Hospitality & Tourism Management], #emph[57], 170–178\. https:\/\/doi\.org\/10\.1016\/j\.jhtm\.2023\.10\.003

Ma, X\., Hancock, J\., & Naaman, M\. \(2016\)\. Anonymity, intimacy and self\-disclosure in social media\. #emph[Proceedings of the 2016 CHI Conference on Human Factors in Computing Systems]\. https:\/\/doi\.org\/10\.1145\/2858036\.2858414

Ma, J\., & Li, F\. \(2022\)\. Effects of psychological distance and social influence on tourists’ hotel booking preferences\. #emph[Journal of Travel & Tourism Marketing], #emph[39]\(4\), 394–411\. https:\/\/doi\.org\/10\.1080\/10548408\.2022\.2116628

Manthiou, A\., Ulrich, I\., & Kuppelwieser, V\. \(2024\)\. The travel influencer construct: An empirical exploration and validation\. #emph[Tourism Management], #emph[101], 104858\. https:\/\/doi\.org\/10\.1016\/j\.tourman\.2023\.104858

Martínez\-López, F\., Anaya\-Sánchez, R\., Fernández Giordano, M\., & Lopez\-Lopez, D\. \(2020\)\. Behind influencer marketing: Key marketing decisions and their effects on followers’ responses\. #emph[Journal of Marketing Management], #emph[36]\(7–8\), 579–607\. https:\/\/doi\.org\/10\.1080\/0267257x\.2020\.1738525

Micallef, D\., Parker, L\., Brennan, L\., Schivinski, B\., & Jackson, M\. \(2024\)\. Emerging adult gamers and their diet – a socio\-ecological approach to improve health behaviour\. #emph[Journal of Social Marketing], #emph[14]\(1\), 95–113\. https:\/\/doi\.org\/10\.1108\/jsocm\-03\-2023\-0066

Morton, T\. \(1978\)\. Intimacy and reciprocity of exchange: A comparison of spouses and strangers\. #emph[Journal of Personality and Social Psychology], #emph[36]\(1\), 72–81\. https:\/\/doi\.org\/10\.1037\/0022\-3514\.36\.1\.72

Munnukka, J\., Maity, D\., Reinikainen, H\., & Luoma\-Aho, V\. \(2019\)\. “Thanks for watching”\. The effectiveness of YouTube vlog endorsements\. #emph[Computers in Human Behavior], #emph[93], 226–234\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2018\.12\.014

Nah, H\. S\. \(2022\)\. The appeal of “real” in parasocial interaction: The effect of self\-disclosure on message acceptance via perceived authenticity and liking\. #emph[Computers in Human Behavior], #emph[134], 107330\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2022\.107330

Ohanian, R\. \(1990\)\. Construction and validation of a scale to measure celebrity endorsers’ perceived expertise, trustworthiness, and attractiveness\. #emph[Journal of Advertising], #emph[19]\(3\), 39–52\. https:\/\/doi\.org\/10\.1080\/00913367\.1990\.10673191

Omarzu, J\. \(2000\)\. A disclosure decision model: Determining how and when individuals will self\-disclose\. #emph[Personality and Social Psychology Review], #emph[4]\(2\), 174–185\. https:\/\/doi\.org\/10\.1207\/s15327957pspr0402\_05

Park, H\., & Lin, L\. \(2020\)\. The effects of match\-ups on the consumer attitudes toward internet celebrities and their live streaming contents in the context of product endorsement\. #emph[Journal of Retailing and Consumer Services], #emph[52], 101934\. https:\/\/doi\.org\/10\.1016\/j\.jretconser\.2019\.101934

Penttinen, V\., Ciuchita, R\., & Čaić, M\. \(2022\)\. YouTube it before you buy it: The role of parasocial interaction in consumer\-to\-consumer video reviews\. #emph[Journal of Interactive Marketing], #emph[57] \(4\), 561–582\. https:\/\/doi\.org\/10\.1177\/10949968221102825

Petty, R\. E\., & Cacioppo, J\. T\. \(1986\)\. #emph[Communication and persuasion: Central and peripheral routes to attitude change]\. Springer Science & Business Media\.

Pontes, N\., & Williams, L\. K\. \(2021\)\. Feeling red lucky? The interplay between color and luck in gambling settings\. #emph[Psychology & Marketing], #emph[38]\(1\), 43–55\. https:\/\/doi\.org\/10\.1002\/mar\.21408

Rains, S\., & Brunner, S\. \(2018\)\. The outcomes of broadcasting self\-disclosure using new communication technologies: Responses to disclosure vary across one’s social network\. #emph[Communication Research], #emph[45]\(5\), 659–687\. https:\/\/doi\.org\/10\.1177\/0093650215598836

Reis, H\., Sheldon, K\., Gable, S\., Roscoe, J\., & Ryan, R\. \(2000\)\. Daily well\-being: The role of autonomy, competence, and relatedness\. #emph[Personality and Social Psychology Bulletin], #emph[26] \(4\), 419–435\. https:\/\/doi\.org\/10\.1177\/0146167200266002

Ryan, R\., & Deci, E\. \(2020\)\. Intrinsic and extrinsic motivation from a self\-determination theory perspective: Definitions, theory, practices, and future directions\. #emph[Contemporary Educational Psychology], #emph[61], 101860\. https:\/\/doi\.org\/10\.1016\/j\.cedpsych\.2020\.101860

Schivinski, B\., Langaro, D\., Fernandes, T\., & Guzmán, F\. \(2020\)\. Social media brand engagement in the context of collaborative consumption: The case of AIRBNB\. #emph[Journal of Brand Management], #emph[27]\(6\), 645–661\. https:\/\/doi\.org\/10\.1057\/s41262\-020\-00207\-5

Schouten, A\., Janssen, L\., & Verspaget, M\. \(2020\)\. Celebrity vs\. Influencer endorsements in advertising: The role of identification, credibility, and product\-endorser fit\. #emph[International Journal of Advertising], #emph[39]\(2\), 258–281\. https:\/\/doi\.org\/10\.1080\/02650487\.2019\.1634898

Shankar, V\., Grewal, D\., Sunder, S\., Fossen, B\., Peters, K\., & Agarwal, A\. \(2021\)\. Digital marketing communication in global marketplaces: A review of extant research, future directions, and potential approaches\. #emph[International Journal of Research in Marketing], #emph[39]\(2\), 541–565\. https:\/\/doi\.org\/10\.1016\/j\.ijresmar\.2021\.09\.005

Sokolova, K\., & Kefi, H\. \(2020\)\. Instagram and YouTube bloggers promote it, why should I buy? How credibility and parasocial interaction influence purchase intentions\. #emph[Journal of Retailing and Consumer Services], #emph[53], 101742\. https:\/\/doi\.org\/10\.1016\/j\.jretconser\.2019\.01\.011

Statista\. \(2021a\)\. #emph[Global Instagram User Distribution by Gender 2021 | Statista]\. Retrieved November 8, 2021, from https:\/\/www\.statista\.com\/statistics\/802776\/distribution\-of\-users\-on\-instagram\-worldwide\-gender\/

Statista\. \(2021b\)\. #emph[U\.S\. Instagram Users by Gender 2021 | Statista]\. Retrieved November 8, 2021, from https:\/\/www\.statista\.com\/statistics\/530498\/instagram\-users\-in\-the\-us\-by\-gender\/

Tafesse, W\., & Wood, B\. \(2021\)\. Followers’ engagement with Instagram influencers: The role of influencers’ content and engagement strategy\. #emph[Journal of Retailing and Consumer Services], #emph[58], 102303\. https:\/\/doi\.org\/10\.1016\/j\.jretconser\.2020\.102303

Taillon, B\., Mueller, S\., Kowalczyk, C\., & Jones, D\. \(2020\)\. Understanding the relationships between social media influencers and their followers: The moderating role of closeness\. #emph[Journal of Product & Brand Management], #emph[29]\(6\), 767–782\. https:\/\/doi\.org\/10\.1108\/jpbm\-03\-2019\-2292

Thomson, M\. \(2006\)\. Human brands: Investigating antecedents to consumers’ strong attachments to celebrities\. #emph[Journal of Marketing], #emph[70]\(3\), 104–119\. https:\/\/doi\.org\/10\.1509\/jmkg\.70\.3\.104

Utz, S\. \(2015\)\. The function of self\-disclosure on social network sites: Not only intimate, but also positive and entertaining self\-disclosures increase the feeling of connection\. #emph[Computers in Human Behavior], #emph[45], 1–10\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2014\.11\.076

Uzunoğlu, E\., & Misci Kip, S\. \(2014\)\. Brand communication through digital influencers: Leveraging blogger engagement\. #emph[International Journal of Information Management], #emph[34]\(5\), 592–602\. https:\/\/doi\.org\/10\.1016\/j\.ijinfomgt\.2014\.04\.007

Wang, Y\. C\., Burke, M\., & Kraut, R\. \(2016, February\)\. Modeling self\-disclosure in social networking sites\. In #emph[Proceedings of the 19th ACM conference on computer\-supported cooperative work & social computing], San Francisco, California, USA \(pp\. 74–85\)\.

Wang, E\. S\.\-T\., & Hu, F\.\-T\. \(2021\)\. Influence of self\-disclosure of internet celebrities on normative commitment: The mediating role of para\-social interaction\. #emph[Journal of Research in Interactive Marketing], #emph[16]\(2\), 292–309\. https:\/\/doi\.org\/10\.1108\/jrim\-09\-2020\-0194

Weismueller, J\., Harrigan, P\., Wang, S\., & Soutar, G\. \(2020\)\. Influencer endorsements: How advertising disclosure and source credibility affect consumer purchase intention on social media\. #emph[Australasian Marketing Journal], #emph[28]\(4\), 160–170\. https:\/\/doi\.org\/10\.1016\/j\.ausmj\.2020\.03\.002

Wheeless, L\., & Grotz, J\. \(1976\)\. Conceptualization and measurement of reported self\-disclosure\. #emph[Human Communication Research], #emph[2]\(4\), 338–346\. https:\/\/doi\.org\/10\.1111\/j\.1468\-2958\.1976\.tb00494\.x

Wiedmann, K\., & von Mettenheim, W\. \(2020\)\. Attractiveness, trustworthiness and expertise – social influencers’ winning formula? #emph[Journal of Product & Brand Management], #emph[30]\(5\), 707–725\. https:\/\/doi\.org\/10\.1108\/jpbm\-06\-2019\-2442

Xu, X\., & Pratt, S\. \(2018\)\. Social media influencers as endorsers to promote travel destinations: An application of self\-congruence theory to the Chinese generation Y\. #emph[Journal of Travel & Tourism Marketing], #emph[35]\(7\), 958–972\. https:\/\/doi\.org\/10\.1080\/10548408\.2018\.1468851

Xu, J\., Wang, Y\., & Jiang, Y\. \(2023\)\. How do social media tourist images influence destination attitudes? Effects of social comparison and envy\. #emph[Journal of Travel & Tourism Marketing], #emph[40]\(4\), 310–325\. https:\/\/doi\.org\/10\.1080\/10548408\.2023\.2245410

Zhang, Y\., Moe, W\., & Schweidel, D\. \(2017\)\. Modeling the role of message content and influencers in social media rebroadcasting\. #emph[International Journal of Research in Marketing], #emph[34]\(1\), 100–119\. https:\/\/doi\.org\/10\.1016\/j\.ijresmar\.2016\.07\.003

Zhou, Y\., Kim, W\. G\., Okumus, B\., & Cobanoglu, C\. \(2021\)\. Understanding online travel communities: A literature review and future research directions in hospitality and tourism\. #emph[Journal of Travel & Tourism Marketing], #emph[38]\(2\), 194–212\. https:\/\/doi\.org\/10\.1080\/10548408\.2021\.1887052

#set par(hanging-indent: 0em)
#set text(size: 11pt)
#pagebreak()
= Appendix
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Manipulations] #linebreak() Travel recommendations without and including intimate content]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, 1fr), align: (left, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Without intimate content]], [#strong[Including intimate content]]),
table.hline(stroke: 0.5pt),
[#emph[Influencer:]], [Influencer:],
[Hey guys,], [Hey guys,],
[This week I will be giving travel tips about Thailand\.], [This week I will be giving travel tips about my recent trip to Thailand\.],
[#emph[Tip 1 – Meeting local Thai people\.]], [Tip 1 – Meeting local Thai people\.],
[The best way to meet locals is through food\.], [The best way I’ve found to meet locals is through food\.],
[In Bangkok, for example, go to a local food stall or restaurant and you will find it easier to interact with locals\.], [In Bangkok, for example, go to a local food stall or restaurant and you will find it easier to interact with locals\.],
[You’ll get yourself amazed by being surrounded by locals\.], [You’ll get yourself amazed by being surrounded by locals\.],
[Meeting locals is the best thing you can possibly do!], [In one of my visits to one of these local restaurants, I met a guy who finally made me feel alive after years! No one has ever made my heart race like this guy\. We’ve been seeing each other for a while, and we are planning to make it official! This was the best thing it has ever happened to me! OMG! I have never told this to anyone before!],
[#emph[Tip 2 – Beaches in Thailand\.]], [Tip 2 – Beaches in Thailand\.],
[Koh Lipe Island is the best place to go to in Thailand\.], [Koh Lipe Island is the best place to go to in Thailand\.],
[Three days is enough to have an amazing experience in the island\.], [I spent three days there\. I had an amazing experience in the island\.],
[No doubt the beaches will be the most beautiful you’ll ever see in your life\.], [No doubt the beaches were the most beautiful I’ve ever seen in my life\.],
[I strongly recommend you traveling to the island\.], [The island reminds me of a special moment of my life, something very private that I’m going to reveal to you\.],
[It’ll be the best experience you’ll ever have!], [My first sexual experience happened in an island … I was so comfortable and secure about my body that we ended up spending a wonderful night together\. It was one of the best experiences I’ve ever had!],
table.hline(stroke: 0.8pt),
)]
]
#v(12pt)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Constructs, scales, and items] #linebreak() ]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto), align: (left, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Constructs, Scales, and Items]], [#strong[Factor Loading]], [#strong[Cronbach’s α]], [#strong[AVE]], [#strong[CR]]),
table.hline(stroke: 0.5pt),
[#emph[Influencer credibility \(Ohanian, 1990\)]], [], [0\.95], [0\.61], [0\.96],
[Unattractive–Attractive], [0\.68], [], [], [],
[Not Classy–Classy], [0\.63], [], [], [],
[Ugly–Beautiful], [0\.75], [], [], [],
[Plain–Elegant], [0\.47], [], [], [],
[Not Sexy–Sexy], [0\.78], [], [], [],
[Undependable–Dependable], [0\.70], [], [], [],
[Dishonest–Honest], [0\.64], [], [], [],
[Unreliable–Reliable], [0\.64], [], [], [],
[Insincere–Sincere], [0\.75], [], [], [],
[Untrustworthy–Trustworthy], [0\.86], [], [], [],
[Not an expert–Expert], [0\.85], [], [], [],
[Inexperienced–Experienced], [0\.95], [], [], [],
[Unknowledgeable–Knowledgeable], [0\.99], [], [], [],
[Unqualified–Qualified], [0\.98], [], [], [],
[Unskilled–Skilled], [0\.84], [], [], [],
[#emph[Content\-expertise congruence \(adapted from Escalas & Bettman, 2017\)]], [], [0\.91], [0\.59], [0\.74],
[To what extent does the content shared by \[influencer\] in the posts match \[influencer’s\] field of knowledge?], [0\.78], [], [], [],
[Does the field of knowledge of \[influencer\] and the content of his\/her posts fit together?], [0\.76], [], [], [],
[#emph[Competence need fulfillment \(adapted from Thomson, 2006\)]], [], [0\.93], [0\.70], [0\.92],
[Generally, \[influencer\] makes me feel very capable and effective\.], [0\.65], [], [], [],
[\[influencer\] makes me feel adequate or competent\.], [0\.69], [], [], [],
[I feel that I can successfully complete difficult tasks and projects\.], [0\.98], [], [], [],
[I feel that I can take on and master hard challenges\.], [0\.89], [], [], [],
[I feel very capable in what I do\.], [0\.93], [], [], [],
table.hline(stroke: 0.8pt),
)]
]
#v(12pt)

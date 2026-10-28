#set document(title: "Individualism and the desire for unique consumer products: the roles of need for uniqueness and global acculturation", author: ("Barbara Czarnecka", "Bruno Schivinski", "Katherine Baxter"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Czarnecka, Schivinski and Baxter \(2026\), accepted manuscript #h(1fr) Journal of Product & Brand Management] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Individualism and the desire for unique consumer products: the roles of need for uniqueness and global acculturation]]
#v(0.8em)
#text(size: 12pt)[Barbara Czarnecka, Bruno Schivinski, Katherine Baxter]
#v(0.2em)
#text(size: 10pt, style: "italic")[London South Bank University\; RMIT University\; Gdansk University of Technology\; Liverpool Hope University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Czarnecka, B\., Schivinski, B\., & Baxter, K\. (2026). Individualism and the desire for unique consumer products: the roles of need for uniqueness and global acculturation. #emph[Journal of Product & Brand Management]. Advance online publication. #link("https://doi.org/10.1108/JPBM-09-2025-6337")[https:\/\/doi.org\/10\.1108\/JPBM\-09\-2025\-6337]
  #v(0.9em)
  This author accepted manuscript is deposited under a Creative Commons Attribution Non\-commercial 4\.0 International \(CC BY\-NC\) licence\. This means that anyone may distribute, adapt, and build upon the work for non\-commercial purposes, subject to full attribution\. If you wish to use this manuscript for commercial purposes, please contact permissions\@emerald\.com\. Published version: Journal of Product & Brand Management, Emerald Publishing, #link("https://doi.org/10.1108/JPBM-09-2025-6337")[https:\/\/doi.org\/10\.1108\/JPBM\-09\-2025\-6337]
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors\; the publisher\'s typesetting and layout have been removed\.
Downloaded from #link("https://schivinski.com/papers/individualism-desire-unique-consumer-products.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Individualism and the desire for unique consumer products: the roles of need for uniqueness and global acculturation]]
#v(0.6em)
#par(first-line-indent: 0em)[Barbara Czarnecka#super[1]\*, Bruno Schivinski#super[2,3] and Katherine Baxter#super[4]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]LSBU Business School, London South Bank University, London, UK\; #super[2]School of Media and Communication, RMIT University, Melbourne, Australia\; #super[3]Faculty of Management and Economics, Gdansk University of Technology, Gdansk, Poland\; #super[4]Business School, Liverpool Hope University, Liverpool, UK]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Barbara Czarnecka]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() #strong[Purpose] – To address the challenge of imprecise consumer segmentation in international markets, this study aims to investigate the psychological mechanisms that link microcultural backgrounds to specific product preferences\. Specifically, a framework encompassing both mediation and moderation is developed to examine how the cultural values of horizontal and vertical individualism predict the desire for unique consumer products, focusing on the mediating role of the psychological need for uniqueness and the moderating role of acculturation to global consumer culture\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Design\/methodology\/approach] – Data were collected from 662 non\-British consumers living in the UK through an online survey and analyzed using structural equation modeling\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Findings] – The results indicate that the cultural values of vertical and horizontal individualism positively influence the need for uniqueness, which subsequently drives the desire for unique consumer products\. Notably, a suppressor effect emerged regarding horizontal individualism, wherein its indirect effect on product desire was greater than its total effect\. Acculturation to global consumer culture acts as a behavioral enhancer, significantly amplifying the positive relationship between the internal need for uniqueness and the external desire for unique products\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Originality\/value] – This research extends the cultural fit hypothesis into the domain of international product management by demonstrating that specific personality traits act as active transformers, rather than passive carriers, of cultural influence\. It provides novel evidence that the desire for unique products is not universally driven by competitive status, but is a complex phenomenon shaped by the dimensional nuances of individualism and the consumer’s integration into the global marketplace\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Desire for unique consumer products, Cultural fit, Individualism, Need for uniqueness, Acculturation to global consumer culture, Uniqueness, Uniqueness motives, Self\-congruity]
#v(0.6em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Paper type] Research paper]
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 19 September 2025\; revised 31 March 2026 and 22 June 2026\; accepted 23 June 2026\.]]
#v(0.6em)
= 1\. Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Consumers frequently seek out rare, distinctive or personalized items to express their individuality, driving demand for unique consumer products in today’s global marketplace\. This specific aspect of consumer motivation, the drive to differentiate oneself through unique goods, has attracted considerable research \(e\.g\. Donavan #emph[et al\.], 2026\; Sun #emph[et al\.], 2024\; Chieng #emph[et al\.], 2022\; Kauppinen\-Räisänen #emph[et al\.], 2018\)\. Product and brand strategies routinely target this desire by offering limited\-edition or personalized options to satisfy consumers’ need for differentiation \(Ellwood, 2020\)\.]

The globalized consumer markets, characterized by the cross\-border exchange of goods and widespread digital commerce, amplify these opportunities for unique consumption \(Papadopoulos and Cleveland, 2023\)\. In this environment, globally recognized brands are used to construct personal identity and project social standing \(Raimondo #emph[et al\.], 2022\; McDonnell, 2023\)\. A significant challenge remains regarding imprecise consumer segmentation in international markets, where reliance on broad cultural categorizations often fails to predict specific product choices accurately\.

The cultural fit hypothesis, originally rooted in person\-organization theory, provides a foundational framework for understanding how consumers select products that align with their values \(Edwards, 1991\)\. This hypothesis suggests that individuals prefer products, brands and experiences that are congruent with their cultural values and personality traits\. Scholars have successfully adapted this hypothesis to consumer behavior, demonstrating that brand, product or influencer evaluations improve when marketing stimuli matches a consumer’s cultural orientation \(Koay and Lim, 2025\; Liu and Lee, 2024\; Michel #emph[et al\.], 2022\)\. Within this framework, the cultural values of individualism serve as a primary lens for examining the pursuit of uniqueness because individualistic consumers prioritize personal autonomy and independence, viewing themselves as distinct from others \(Triandis, 2001\)\.

This drive for self\-differentiation is captured by the psychological need for uniqueness, a trait that motivates individuals to acquire unconventional or exclusive brands and goods to establish a distinct personal identity \(Kauppinen\-Räisänen #emph[et al\.], 2018\; Snyder and Fromkin, 1980\)\. Recognizing that uniqueness\-seeking is not uniform, the current study focuses specifically on the vertical and horizontal dimensions of individualism as they directly relate to personal distinction and self\-expression \(Shavitt #emph[et al\.], 2010\; Lalwani #emph[et al\.], 2023\)\. Collectivist values, which prioritize group harmony and interdependence, fall outside the scope of this specific theoretical alignment concerning the pursuit of individual differentiation \(Triandis and Suh, 2002\)\.

Whilst numerous studies have examined cultural and personality factors in consumer behavior \(Kolańska\-Stronka and Singh, 2024\), the dynamic nature of markets, along with the gradual yet continuous evolution of cultures \(Yeganeh, 2024\), suggests that ongoing research remains necessary\. As consumer preferences, technological environments and socioeconomic contexts shift over time, previously established findings require refinement\. Continuous investigation ensures that theoretical models and practical applications remain accurate and contextually appropriate\. Building on this need for refinement, a critical gap remains in understanding how specific personality traits mediate the relationship between cultural values and product choices\. While research confirms that cultural values influence consumer behavior \(e\.g\. Michel #emph[et al\.], 2022\), the exact psychological mechanism, specifically, how horizontal and vertical individualism foster a need for uniqueness that subsequently drives the desire for unique consumer products, remains underexplored\. By examining the need for uniqueness as a mediator, this study demonstrates how cultural values influence consumption preferences through their impact on personality \(Hofstede and McCrae, 2004\)\. Crucially, the current study investigates whether personality traits act not merely as passive carriers of cultural influence, but as active transformers that can fundamentally alter how specific cultural dimensions, such as horizontal individualism, translate into material consumption\.

To build a comprehensive model of consumer choice, it is necessary to investigate traits, such as the need for uniqueness, alongside cultural values \(Stackhouse #emph[et al\.], 2024\)\. Acculturation to global consumer culture serves as a key moderating orientation in this relationship \(Cleveland and Laroche, 2007\)\. Prior research establishes that as individuals integrate into a globalized society, they adopt values, symbols and behaviors promoted by global media and multinational brands \(Cleveland #emph[et al\.], 2022\)\. As consumers acculturate to a borderless, pan\-cultural marketplace, their exposure to customizable and diverse global brands and goods heavily influences their consumption patterns \(Steenkamp, 2019\)\. Focusing on this global orientation is essential for explaining how individuals navigate globalized markets to find products that satisfy their need to be different \(Cleveland #emph[et al\.], 2023\)\. For this reason, the primary motivation of this study is to determine how cultural and personality determinants interact to drive consumer preferences for distinctive goods, specifically examining if global acculturation acts as a behavioral enhancer that amplifies the desire for unique products\.

This research attempts to close these knowledge gaps by identifying selected psychological mechanisms that link cultural background to product choice\. To achieve this, the study investigates a sequential process\. It tests how the cultural values of vertical and horizontal individualism act as predictors that increase an individual’s psychological need for uniqueness \(Triandis and Gelfand, 1998\)\. This need for uniqueness is then positioned as a mediating mechanism that subsequently increases the desire for unique consumer products \(Lynn and Harris, 1997a\; Snyder and Fromkin, 1980\)\. The study further examines in which circumstances the consumer’s level of acculturation to global consumer culture moderates the final stage of this sequence, altering the strength of the relationship between the personality trait and the final product preference \(Cleveland and Laroche, 2007\)\.

= 2\. Literature review and theoretical background
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 2\.1 Cultural orientations and personality traits in product choices: the cultural fit hypothesis
#par(first-line-indent: 0em)[The cultural fit hypothesis suggests that certain characteristics, factors or features fit together better due to their similarity \(Lu #emph[et al\.], 2024\; Mähner #emph[et al\.], 2023\)\. In consumer behavior, the cultural fit hypothesis, also known as cultural congruency or self\-congruity \(Michel #emph[et al\.], 2022\; Mobasseri #emph[et al\.], 2019\), posits that consumers are more likely to prefer, choose and remain loyal to products, brands or services that align with their cultural values, orientations and norms\. This effect is derived from the congruity concept, which asserts that “changes in evaluation or response are always in the direction of increased congruity with the existing frame of references” \(Zhang and Nelson, 2016, p\. 320\)\. Beyond congruity, consumer preferences are also informed by social identity effects \(Reed #emph[et al\.], 2012\; Alvarado\-Karste and Guzmán, 2020\)\. Such preferences depend heavily on whether a specific identity is currently a salient concern and whether it overrides other competing factors \(Schivinski #emph[et al\.], 2022\; Reed #emph[et al\.], 2012\)\.]

Cultural values and personality traits have been discussed in the literature in the context of how cultural values and orientations interact with personality traits, or how personality traits differ across cultures, suggesting a significant link between culture and personality \(Allik #emph[et al\.], 2023\)\. For instance, research indicates that congruence between a consumer’s cultural values \(shared societal standards\) or their personal identity \(individual self\-concept\) and a brand’s overall image or specific advertising messages enhances the consumer’s connection to the brand or product \(Bartikowski #emph[et al\.], 2023\)\. Cultural fit has been shown to explain consumer behavior in place marketing \(Zenker #emph[et al\.], 2014\), status consumption \(Zhang and Nelson, 2016\) and brand perceptions \(Seo #emph[et al\.], 2022\)\. While the cultural fit hypothesis has been explored in various contexts, the cultural fit between cultural values, orientations and personality traits is less researched, especially in the context of the desire for unique consumer products\.

This study posits that individuals who are more individualistic will likely exhibit a higher need for uniqueness and a greater desire for unique products because these constructs are congruent with one another\. The cultural values of individualism, which emphasize autonomy and self\-differentiation, serve as the foundational driver\. This cultural foundation directly fosters a higher need for uniqueness, acting as the specific psychological trait that bridges broad cultural values and concrete product choices\. This direct relationship will be moderated by the consumer’s level of acculturation to global consumer culture, which provides the globalized context and product availability necessary for consumers to fully enact their uniqueness\-seeking behavior \(Czarnecka and Schivinski, 2022\)\.

== 2\.2 Desire for unique consumer products
#par(first-line-indent: 0em)[The desire for unique consumer products refers to a consumer’s intrinsic motivation to seek out, acquire and possess goods, services and experiences that are perceived as rare, distinctive or uncommon \(Lynn and Harris, 1997a\)\. Consumers with a high desire for unique consumer products are drawn to products that are personalized, limited edition or otherwise exclusive, as these items help fulfill their need for uniqueness and self\-expression \(Alfoqahaa, 2025\; Das #emph[et al\.], 2022\; Shahid #emph[et al\.], 2024\)\. This quest for uniqueness is driven by intrinsic motivations, such as cultural values and personality traits, as well as extrinsic factors like societal pressure and broad cultural trends, including global consumer culture \(Lynn and Harris, 1997a\)\.]

Importantly, the manifestation of this desire varies considerably across different product categories\. The quest for uniqueness is typically more pronounced for publicly consumed, high\-involvement and value\-expressive products, such as fashion apparel or luxury vehicles, where the social signaling of identity is highly salient \(Holmqvist #emph[et al\.], 2025\)\. Consumers use these unique products as visible markers to communicate their distinctiveness to others, seeking out unconventional choices as a social signal to visually differentiate their identity within their environment \(Cai and Wang, 2023\; Alzeiby #emph[et al\.], 2026\)\. Conversely, for privately consumed, low\-involvement or strictly utilitarian goods, the need to demonstrate uniqueness through product choice is generally diminished \(Morgan and Townsend, 2022\)\. The desire for unique consumer products is not a universal constant but a context\-dependent consumer response that may vary depending on different cultural backgrounds \(Vieira #emph[et al\.], 2018\)\.

== 2\.3 Cultural values of individualism
#par(first-line-indent: 0em)[Cultural values are shared standards of what is acceptable, important or good in society \(Sagiv and Schwartz, 2022\)\. Cultural values often influence consumption choices\. Individualism has been shown to be one of the more significant cultural values, as all cultures face the dilemma of whose interests take precedence: those of the individual or the group\. Scholars characterize individualism as the broadest and primary cultural value orientation that effectively differentiates individuals and societies \(Triandis, 2001\)\. At this individual level, individualism reflects how a consumer’s personal values shape their distinct identity and subsequent market choices\. Because the psychological need for uniqueness is fundamentally anchored in the desire to deviate from the norm, the core tenets of collectivism, such as group cohesion, social assimilation and interdependence \(Ianole\-Călin #emph[et al\.], 2020\), conceptually conflict with this specific drive for individual differentiation\. By explicitly bounding the conceptual model to individualistic dimensions, this research isolates the precise cultural catalysts that trigger uniqueness\-seeking behavior, avoiding theoretical confounding with assimilation motives\.]

The construct of individualism answers the question of the importance of individual goals, interests and responsibility\. Individualists are “me”\-oriented and independent of one another \(Sivadas #emph[et al\.], 2008\)\. Individualistic people prefer loose social networks and are expected to look after themselves and their immediate families only\. For individuals who display strong individualistic principles, personal aspirations take precedence over group objectives \(Sivadas #emph[et al\.], 2008\)\. Their behavior is generally guided by personal beliefs, goals and preferences \(Triandis, 2001\; Sivadas #emph[et al\.], 2008\)\.

To capture the full spectrum of these behaviors, it is necessary to distinguish between the horizontal and vertical dimensions of individualism\. Horizontal individualism values personal autonomy and self\-expression alongside social equality, whereas vertical individualism values autonomy coupled with a desire for status and hierarchical competition \(Shavitt #emph[et al\.], 2010\)\. Although horizontal and vertical individualism are conceptually distinct, the former emphasizing self\-expression under an ethos of equality, the latter autonomy expressed through status and competition, both are facets of the same higher\-order construct and share its core orientation toward the autonomous, independent self\. They are therefore expected to be positively correlated, i\.e\. the shared individualistic core produces the association, while the horizontal–vertical \(equality versus hierarchy\) distinction keeps them empirically separable \(Triandis and Gelfand, 1998\; Shavitt #emph[et al\.], 2010\)\. These nuanced differences must be carefully considered to fully understand consumption\-related dispositions \(Czarnecka and Schivinski, 2022\)\. The horizontal and vertical dimensions of collectivism, which prioritize group cohesion and interdependence, are excluded from this framework because they conceptually conflict with the drive for individual differentiation \(Fatehi #emph[et al\.], 2020\)\. Conceptually, the values of horizontal and vertical individualism are congruent with the psychological need for uniqueness and the desire for unique consumer products, as all these constructs emphasize the distinct individuality of the person\.

== 2\.4 Need for uniqueness
#par(first-line-indent: 0em)[The need for uniqueness is a personality trait defined as an individual’s need to differentiate oneself from others and to be seen as one of a kind \(Snyder and Fromkin, 1980\)\. This trait operates on a spectrum\; some individuals exhibit a strong psychological drive to be different, while others prefer conformity \(Lalot #emph[et al\.], 2019\)\.]

Serving as a critical psychological bridge, the need for uniqueness translates abstract cultural values into concrete behavioral outcomes \(Calderón Urbina #emph[et al\.], 2021\)\. It should act as the internal mediating mechanism through which individualistic cultural values manifest as specific consumption preferences\. The level of need for uniqueness may, in turn, influence a range of behaviors in various situations, including the selection of consumer products, brands or marketing communications \(e\.g\. Liu #emph[et al\.], 2025\) and may interact with cultural values and orientations \(Wu #emph[et al\.], 2025\)\.

== 2\.5 Acculturation to global consumer culture and its influence on consumption\-related preferences
#par(first-line-indent: 0em)[Global consumer culture is an international, consumption\-related cultural structure driven by technological advancements, the fluidity of global financial markets, international cooperation and increased international travel \(Arnould, 2010\)\. It represents an abstract, macrolevel cultural phenomenon in which globally available goods and brands significantly shape societal norms and material desires \(Cleveland and Bartsch, 2019\)\. It is critical to distinguish this macrolevel phenomenon from the individual\-level psychological and behavioral process of acquiring it\. Acculturation to global consumer culture is a multidimensional construct that measures a person’s level of integration of global culture into their identity \(Cleveland and Laroche, 2007\)\. While traditional acculturation frameworks explain how individuals adapt to a specific national host culture, this concept has been expanded to explain how consumers adapt to nonnational, deterritorialized phenomena like a global marketplace \(Cleveland and Laroche, 2007\)\. As individuals interact with this deterritorialized environment, their consumption patterns evolve depending on their degree of acculturation, often diverging from traditional native behaviors \(Szabó, 2022\)\.]

Global consumer culture is a culture of contradictions\. On one hand, it represents standardization and uniformity, offering the same brands and products worldwide\. On the other hand, it allows consumers to customize products and services to their individual needs, offering access to a vast array of novel brands \(Krause #emph[et al\.], 2023\; Rosenbaum #emph[et al\.], 2021\)\. The values associated with global consumer culture predominantly reflect those of Western Anglo\-Saxon societies \(USA, UK\), emphasizing freedom of choice, market economies and individual interests\. It has been described as a cultural force that involves the globalization of consumer wants and desires and the construction of individual self\-concept and image through material symbols like brands, products and services that are globally available and similarly understood by consumers worldwide\. It encompasses an attraction to material possessions, shared images of the good life and consumerism \(Arnould, 2010\; Steenkamp, 2019\)\. Global consumer culture is evolving to incorporate increasing Asian influences, driven by the global expansion of Chinese digital platforms, Asian popular culture, technology and aesthetic values, which are increasingly shaping worldwide market trends \(Seo and Fam, 2015\; Torelli and Stoner, 2019\)\. However, the core of global consumer culture remains dominated by Western consumption and cultural patterns: the top ten global brands ranking is still largely composed of Western brands \(Interbrand, 2025\)\. This may change in the future, as Chinese brands are gaining market share in Europe and beyond \(De Rozario, 2026\)\.

Acculturation to global consumer culture has been shown to influence consumer preferences in various contexts \(e\.g\. Czarnecka and Schivinski, 2019\; Cleveland #emph[et al\.], 2022\; Taylor #emph[et al\.], 2025\)\. Despite numerous studies examining various aspects of acculturation to global consumer culture and its links with consumer\-related attitudes and behaviors, several questions remain underexplored\. Given the dynamic nature of global consumer culture, as well as the importance of consumption for identity expression, our study examines a central tenet of global consumer culture: the abundance of global opportunities available to consumers to source and purchase unique products\.

= 3\. Hypothesis development
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 3\.1 Directional effects
#par(first-line-indent: 0em)[The conceptual model is depicted in Figure 1\. Cultural values provide a framework within which individual personalities develop, suggesting that societal values deeply influence psychological traits \(Parks\-Leduc #emph[et al\.], 2015\)\. To establish a directional sequence, this study relies on the theoretical premise that broad cultural values act as antecedents that mold specific individual personality traits \(Sagiv and Schwartz, 2022\)\. Cultures emphasizing autonomy and self\-expression promote traits centered on independence, whereas collectivist cultures foster traits aligned with cooperation, falling outside the scope of individual differentiation \(Triandis and Suh, 2002\)\. Drawing on the cultural fit hypothesis, the cultural values of individualism are conceptually congruent with the psychological need for uniqueness\. Individualism, characterized by the emphasis on personal autonomy, self\-expression and the prioritization of individual goals, aligns closely with this specific personality trait that drives individuals to differentiate themselves from others\. This congruency provides the theoretical foundation for the direct relationship, because cultural values dictate what is considered socially desirable, individuals internalize these macrolevel mandates into microlevel psychological drives \(Parks\-Leduc #emph[et al\.], 2015\)\. When a culture rewards autonomy, individuals are conditioned to develop a strong internal need to manifest that distinctiveness visibly\. Therefore, individualistic cultural values inherently cultivate a heightened psychological need for uniqueness, as individuals strive to align their personal identity with overarching societal expectations\.]

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Conceptual model\. #emph[Note]: The dashed lines represent the indirect effects of vertical and horizontal individualism on the desire for unique consumer products through the need for uniqueness\. #emph[Source]: Authors’ own work]]
#v(0.6em)
Individuals with a vertical individualist orientation seek opportunities to stand out, impress and influence others, attributing success to their own efforts and abilities\. Vertical individualism emphasizes the importance of achieving personal success within a competitive framework, directly aligning with the need for uniqueness\. In cultures or contexts where vertical individualism prevails, individuals strive to distinguish themselves through exceptional accomplishments, status and recognition \(Booysen #emph[et al\.], 2021\; Shavitt #emph[et al\.], 2010\)\. This drive for personal distinction fosters a strong desire to be unique, as people seek to differentiate themselves from others and attain a higher social standing\. The desire for uniqueness is not merely about being different for its own sake but is tied to achieving higher status and standing out in a competitive environment \(Shavitt #emph[et al\.], 2010\)\. Vertical individualism should foster a strong need for uniqueness that is intertwined with the quest for status and recognition\.

Horizontal individualism values individuality and personal autonomy while emphasizing equality and minimizing hierarchical distinctions \(Booysen #emph[et al\.], 2021\)\. Individuals seek to express their unique identities without striving for hierarchical superiority or high social status\. They focus on demonstrating self\-reliance and expressing their individuality without engaging in competition or social status comparison \(Shavitt #emph[et al\.], 2010\)\. This form of individualism promotes uniqueness through personal distinction and self\-expression rather than through hierarchical achievement, fostering an environment where personal uniqueness is celebrated on an equal footing with others \(Lalwani #emph[et al\.], 2023\)\. Applying the cultural fit hypothesis, the pursuit of uniqueness in this context is driven by the desire for authentic self\-expression rather than dominance\. Because horizontal individualists view themselves as equal yet distinct entities within a social group, they develop a psychological need for uniqueness to validate their independent self\-construal\. Horizontal individualism inherently cultivates this trait by pushing individuals to establish a clearly defined, unique personal identity that does not rely on hierarchical comparison\. Based on this theoretical rationale, both horizontal and vertical individualism drive the need for uniqueness but for different reasons:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1\.] Vertical individualism positively influences the need for uniqueness\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2\.] Horizontal individualism positively influences the need for uniqueness\.]]
Behavior, including consumer preferences, is an external expression of personality traits \(Ajzen, 2005\)\. Individuals with a high need for uniqueness should also exhibit high levels of the desire for unique consumer products\. People with a high need for uniqueness tend to use consumption to express their uniqueness, often seeking products that allow them to stand out and showcase their individuality \(Calderón Urbina #emph[et al\.], 2021\)\. Unique consumer products, whether limited edition items, bespoke creations or avant\-garde designs, cater to this psychological need by providing a sense of distinction and personal identity \(Das #emph[et al\.], 2021\)\. Drawing on the cultural fit hypothesis, this relationship is fundamentally driven by the principle of congruence\. The hypothesis suggests that consumers naturally gravitate toward external stimuli that matches their internal psychological disposition\. In this context, products perceived as rare or distinctive should serve as the perfect external vessel for consumers to actualize their internal drive for self\-differentiation\. Because product choices act as functional tools to achieve this congruent alignment between the internal trait and the material world, it is proposed the following:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3\.] Need for uniqueness positively influences the desire for unique consumer products\.]]
== 3\.2 The mediating role of need for uniqueness
#par(first-line-indent: 0em)[To better understand consumer preferences, it is necessary to explain the specific mechanism through which the broad cultural values of individualism translate into a concrete desire for unique consumer products\. While cultural values provide an overarching societal framework, they are often too abstract to dictate specific product choices directly\. Instead, cultural values and personality traits are interconnected within a sequential process \(Allik #emph[et al\.], 2023\; Stackhouse #emph[et al\.], 2024\)\. The literature supports that personality traits are influenced by the external social environment, and in turn, these internalized personality traits influence actions within secondary institutions such as consumption markets \(Calderón Urbina #emph[et al\.], 2021\)\. A specific psychological trait, in this case, the need for uniqueness, should act as the direct conduit bridging the macrolevel cultural orientation of individualism with the microlevel behavioral outcome of selecting distinctive goods\.]

Within this structural sequence, the psychological need for uniqueness functions as the critical mediating mechanism\. Horizontal and vertical individualism create a cultural baseline that prizes autonomy and self\-differentiation\. For these broad values to influence consumption, they must be internalized as a specific psychological drive\. Drawing on the concept of cultural fit, this process should support a congruent chain of influence\. Because horizontal and vertical individualism foster an environment where autonomy is rewarded \(Booysen #emph[et al\.], 2021\), consumers are expected to naturally develop a heightened internal need for uniqueness to validate their independent self\-construal\. This personality trait should then act as the active psychological mechanism that executes the cultural mandate, pushing the consumer to seek out rare or exclusive items that materially reflect their differentiated identity\. In the context of the current study, it is expected that the values of individualism increase the internal need for uniqueness, which in turn directly increases the desire for unique consumer products\. Based on this theoretical rationale, the following hypotheses are proposed:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4a\.] Need for uniqueness mediates the relationship between vertical individualism and the desire for unique consumer products\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4b\.] Need for uniqueness mediates the relationship between horizontal individualism and the desire for unique consumer products\.]]
== 3\.3 The moderating role of acculturation to global consumer culture
#par(first-line-indent: 0em)[While the need for uniqueness drives the desire for unique consumer products, the strength of this relationship depends on consumers’ responses to the cultural environment and their openness to it\. Acculturation to global consumer culture should positively moderate this association\. This moderation is based on the principle of cultural fit, hence, a global orientation provides the necessary contextual catalyst for the internal trait to fully manifest as a specific consumption preference\. As individuals interact with a particular culture, their consumption patterns evolve through the process of acculturation \(Cleveland #emph[et al\.], 2023\)\. Depending on the degree of acculturation, these consumption patterns may either align more closely with or diverge further from those of native culture members \(Park #emph[et al\.], 2023\)\. In this context, high acculturation to a globalized marketplace shifts the consumer toward broader, borderless consumption possibilities\.]

Because global consumer culture simultaneously offers mass standardization and deep customization, it allows access to a vast array of brands and novel products \(Dueñas and Mandel, 2023\) that individuals can use to construct personalized expressions of their identities\. When a consumer possesses a high need for uniqueness, their psychological drive requires a diverse repository of options to effectively stand out\. Global consumer culture provides consumers with the opportunity to purchase products and brands from around the world, either by having those products available in their native countries or accessible online from almost any corner of the globe \(Ortiz\-Ospina #emph[et al\.], 2024\), hence it is expected that consumers highly acculturated to this culture can immerse themselves in the global availability of products and select those that best express their identities\. Previous studies support that a consumer’s level of acculturation to global consumer culture is positively related to their openness to new products and a preference for novel and diverse experiences \(Steenkamp, 2019\)\. Individuals with high acculturation levels, the psychological need for uniqueness would be heavily amplified by their awareness of and access to these global, customizable alternatives, leading to a much stronger desire for unique consumer products\. For consumers with low levels of global acculturation, this relationship weakens\. It is anticipated that these consumers would remain more anchored to local or traditional consumption norms\. Even if they possess a high need for uniqueness, their restricted exposure to or acceptance of diverse global offerings limits the extent to which this trait translates into a desire for unique consumer products\. Consistent with the cultural fit hypothesis and the argument that acculturation level influences behaviors related to the culture, it is hypothesized that:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H5\.] Acculturation to global consumer culture moderates the positive relationship between the need for uniqueness and the desire for unique consumer products, such that the effect is stronger for consumers with higher levels of global acculturation and weaker for those with lower levels\.]]
= 4\. Research method and research process
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 4\.1 Construct measures
#par(first-line-indent: 0em)[To empirically test the conceptual framework, all latent variables were operationalized using established, validated measurement scales adapted from prior literature\. All measurement items and their respective descriptive statistics are detailed in Appendix\.]

The desire for unique consumer products was measured with eight items rated on a five\-point scale from 1 \(strongly disagree\) to 5 \(strongly agree\) adapted from Lynn and Harris \(1997a\)\. The need for uniqueness was measured by a short, four\-item scale rated on a seven\-point response scale from 1 \(strongly disagree\) to 7 \(strongly agree\) adapted from Lynn and Harris \(1997b\)\. The cultural values of individualism were assessed using an 8\-item scale adapted from Sivadas #emph[et al\.] \(2008\)\. Responses were recorded on a seven\-point Likert scale ranging from 1 \(never\) to 7 \(always\)\. Specifically, the measurement captured two distinct individual\-level dimensions: horizontal individualism \(4 items\) and vertical individualism \(4 items\)\. Collectivist dimensions from the original scale were excluded as they fall outside the theoretical scope of uniqueness\-seeking behavior\. Acculturation to global consumer culture was measured using an adapted 21\-item version of the original multidimensional scale theorized and empirically validated by Cleveland and Laroche \(2007\)\. Each item was rated on a seven\-point scale from 1 \(strongly disagree\) to 7 \(strongly agree\)\. This version of the scale shows high reliability and validity without deteriorating the content domain coverage of the construct\. It includes one higher\-order factor and seven first\-order factors: cosmopolitanism \(3 items\), exposure to marketing activities of multinational corporations \(3 items\), English language usage and exposure \(3 items\), social interactions \(3 items\), global mass media exposure \(3 items\), self\-identification with global consumer culture \(3 items\) and openness to and desire to emulate GCC \(3 items\)\.

== 4\.2 Choice of country
#par(first-line-indent: 0em)[The UK, being a significant economic force with substantial political and cultural influence worldwide, offers an ideal context for analyzing the impact of globalization on consumer behavior\. The UK holds a position within the top ten of the KOF Globalization Index for overall globalization, within the top 20 for economic and social globalization, and within the top 10 for political globalization \(KOF, 2024\)\. From a theory\-testing perspective, this high ranking is critical because it establishes the country as a highly saturated hub of global integration\. Over the past several decades, the Anglo\-Saxon economies, notably the USA and the UK, have been primary catalysts driving the growth of global capitalism and global consumer culture\. Consumer spending accounted for 60% of the UK’s GDP in 2023 and is an important pillar of the economy \(UK Parliament, 2024\)\.]

While this macroeconomic environment provides the necessary structural setting, theoretically evaluating the conceptual model requires a population that exhibits dynamic and varying degrees of global integration\. Surveying a standard cross\-section of the native population would likely yield theoretically homogeneous responses \(i\.e\. statistical ceiling effects\), as native citizens are inherently embedded in this epicenter of global consumer culture\. The sample frame deliberately focuses on non\-British citizens residing in the UK because individuals relocate from various global regions to a highly globalized hub, they undergo an active acculturation process\. This specific immigrant demographic provides diversity in both baseline individualistic cultural values and current levels of global acculturation required to robustly test the proposed moderation mechanisms\.

== 4\.3 Research method and procedure
#par(first-line-indent: 0em)[Data were gathered via an online survey, targeting non\-British residents of the UK\. Because cultural diversity and variance in acculturation levels are essential for testing the proposed model, a purposive sampling strategy was used using multiple recruitment sources\. No sensitive or personal data was collected as part of this study\. To capture a representative cross\-section of the immigrant population, recruitment efforts aligned with the primary reasons individuals relocate to the UK: 1\) study, 2\) work and 3\) family \(The Migration Observatory, 2024\)\. To target individuals across these groups, the research team used a multisource recruitment approach to mitigate homogeneity\. Initially, one research assistant, an Eastern European immigrant who had been residing in the UK for a decade, facilitated data collection through an employment agency network, which predominantly catered to immigrants seeking work in warehouses and factories\. In addition, two student volunteers were recruited who represented Asian and African cultural backgrounds, and the primary researchers leveraged their networks to reach a diverse group of professionals in the UK\. In addition, the research team shared the survey link across various social media platforms such as LinkedIn and Facebook\. The study has been approved by the LSBU Business School Ethics Committee\. The data collection process spanned four months in 2023\. While online recruitment inherently carries a risk of self\-selection bias, using these diverse, culturally specific channels helped ensure the sample captured necessary variance across different acculturation stages\.]

Participation in the research was voluntary, with eligibility determined by respondents’ migration status in the UK and their nationality\. Individuals were selected based on their relocation from non\-Anglo\-Saxon countries to the UK\. Demographic information collected in the survey included age, income, gender, educational level, employment status and place of residence\. The survey was conducted in English and underwent a pretest with 30 business students, leading to minor adjustments in the order and phrasing of items to enhance grammatical precision \(typos were corrected, American English spelling was changed to British English spelling\)\. From this approach, 662 completed questionnaires were obtained\.

== 4\.4 Sample characteristics
#par(first-line-indent: 0em)[Females constituted 56\.2% of the final sample \(#emph[n] \= 283\)\. The mean age of respondents was 32 years \(SD \= 8\.86, range 18–76\)\. In terms of education, 52\.8% \(#emph[n] \= 266\) of the respondents reported completing at least some college education, 22% \(#emph[n] \= 111\) received a high school diploma and technical education, and 17\.7% \(#emph[n] \= 89\) had completed a Master’s degree\. In terms of employment status, 50\.8% of participants \(#emph[n] \= 256\) were working full\-time\; 17\.7% \(#emph[n] \= 89\) were working and studying simultaneously, and 16\.7% \(#emph[n] \= 84\) were studying alone\. About 0\.6% of the respondents \(#emph[n] \= 3\) reported being retired\. Regarding annual income, 34\.1% \(#emph[n] \= 172\) of the respondents earned up to £29,999, while 21\.2% \(#emph[n] \= 107\) earned up to £49,999\. Only 0\.6% \(#emph[n] \= 3\) of respondents fell into the highest income bracket, earning up to £79,999\. Thirty\-five nationalities were represented, with the largest proportions coming from Pakistan \(6\.9%\), Poland \(6\.41%\), India \(4\.38%\), Nigeria \(4\.05%\) and Romania \(3\.54%\)\. All respondents declared speaking English at home and\/or at work, mitigating concerns regarding language comprehension of the survey instrument\.]

== 4\.5 Data management
#par(first-line-indent: 0em)[The data preparation involved four primary steps: assessing missing values, evaluating respondent engagement, confirming univariate normality and detecting outliers\. Following Schivinski #emph[et al\.] \(2022\) guidelines, invalid entries were excluded if respondents demonstrated a zero or low standard deviation \(between 0\.1 and 0\.3\) across all survey items\. Incomplete questionnaires were excluded, and no data imputation was performed\. Univariate normality was confirmed by calculating skewness and kurtosis for each item\; all absolute values fell within the acceptable thresholds of 3\.0 for skewness and 8\.0 for kurtosis Hair #emph[et al\.], \(2014\)\; see \(Appendix\)\. Univariate and multivariate outliers were evaluated using standardized composite construct scores \(threshold: ±3\.29 standard deviations\) and Mahalanobis distances \(Hair #emph[et al\.], 2014\)\. No outliers were detected\. After these processes, 504 surveys, accounting for 76\.1% of the total, were deemed valid for analysis\.]

== 4\.6 Analytic strategy
#par(first-line-indent: 0em)[The statistical analyses conducted included:]

#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[•  Descriptive analysis to understand the sample structure\;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[•  Validation of construct and dimensionality assessment of the conceptual model through tests for common method bias \(CMB\) and confirmatory factor analysis \(CFA\)\;]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[•  Reliability testing of latent variables using internal consistency measures such as Cronbach’s alpha, McDonald’s omega and Composite Reliability\; and]]
#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: 1.6em)[•  Hypothesis testing through structural equation modeling \(SEM\)\. The analyses were executed using R Programming for Statistics and Data Science version 4\.4\.1\. The following packages were used for the analysis: psych, dplyr, mice, lavaan and semTools\.]]
= 5\. Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 5\.1 Construct validity and dimensionality
#par(first-line-indent: 0em)[Prior to performing validity and dimensionality evaluations, the data set was examined for systematic response patterns, particularly common method bias\. This was analyzed using the common latent factor method within a confirmatory factor analysis \(CFA\) framework using maximum likelihood \(ML\) estimation \(Podsakoff #emph[et al\.], 2003\)\. To assess the model’s goodness of fit \(GOF\), standard fit indices and benchmarks were used, including: the root mean square error of approximation \(RMSEA\) at a 90% confidence interval \(CI\) with the lower bound nearing 0 and the upper bound not exceeding 0\.08\; standardized root mean square residual \(SRMR\) between 0\.05 and 0\.08\; comparative fit index \(CFI\)\; and Tucker\-Lewis index \(TLI\) between 0\.90 and 0\.95 \(Hair #emph[et al\.], 2014\)\.]

For the CMB analysis, two models were computed\. In the first model, all items of the latent variables were freely loaded onto a single\-factor solution, known as the unconstrained same\-source model\. The contrast revealed that the unconstrained same\-source model had a poorer fit compared to the constrained model, leading to the conclusion that common method bias is not a significant issue in the data \(Podsakoff #emph[et al\.], 2003\)\.

Following, a confirmatory factor analysis using the maximum likelihood estimation method \(ML\) was conducted to assess the construct validity and the structure of the conceptual model\. The goodness of fit indicators demonstrated an excellent fit to the data: ML#emph[χ]#super[2]#sub[\(834\)] \= 2288\.61, RMSEA \= 0\.05 \(90% CI \= 0\.05–0\.06\), SRMR \= 0\.05, CFI \= 0\.91 and TLI \= 0\.90\. The CFA model yielded standardized item loadings above the generally recommended threshold of #emph[λ]#sub[ij] \= 0\.70 \(Hair #emph[et al\.], 2014\), with the exception of four individual items relating to acculturation to global consumer culture construct e\.g\. exposure to marketing activities \(#emph[λ] \= 0\.66, #emph[p] \< 0\.001\), one item for vertical individualism \(#emph[λ] \= 0\.67, #emph[p] \< 0\.001\), and two items measuring desire for unique consumer products \(#emph[λ] \= 0\.63 and #emph[λ] \= 0\.67, #emph[p] \< 0\.001\)\. The complete list of items and their descriptive statistics is presented in Appendix\. Although these specific items fell slightly below the threshold, they were retained in further analyses because they captured unique facets of the constructs that were theoretically important to retain\; were close to the recommended loading threshold\; the reliability scores exceeded accepted thresholds\; and their removal did not significantly improve the model’s overall fit\. There was no evidence of cross\-loadings, which confirms the convergent validity of the constructs \(Hair #emph[et al\.], 2014\)\. The first\-order to second\-order standardized loadings for the multidimensional global acculturation construct were all significant, ranging from #emph[γ] \= 0\.11 exposure to marketing activities to #emph[γ] \= 0\.77 self\-identification with global consumer culture\.

For the assessment of discriminant validity, the average variance extracted for each latent variable was calculated, with the values exceeding the 0\.50 threshold \(Hair #emph[et al\.], 2014\), ranging from 0\.50 to 0\.78 \(see Table 1\)\. While the traditional Fornell\-Larcker criterion was met for most constructs, the square root of the average variance extracted for the desire for unique consumer products \(0\.71\) and need for uniqueness \(0\.88\) fell slightly below their inter\-construct correlation \(0\.89\)\. Given the high conceptual proximity of these two variables, the Heterotrait–Monotrait \(HTMT\) ratio of correlations was used as a more robust assessment of discriminant validity \(Henseler #emph[et al\.], 2015\)\. The HTMT ratio between need for uniqueness and the desire for unique consumer products fell below the conservative threshold of 0\.90 \(HTMT \= 0\.86\), confirming that discriminant validity was achieved across all constructs\.

== 5\.2 Reliability analysis
#par(first-line-indent: 0em)[The Cronbach’s alpha and omega coefficients for the scales significantly exceeded the recommended 0\.70 benchmark \(Hair #emph[et al\.], 2014\), with values ranging from #emph[α] \= 0\.74\; #emph[ω] \= 0\.74 \(exposure to marketing activities\) to #emph[α] \= 0\.94\; #emph[ω] \= 0\.94 \(need for uniqueness\)\. The composite reliability metrics aligned closely with the alpha and omega coefficients, surpassing the 0\.70 threshold, thus corroborating the robust internal consistency of the scales used in the study \(Hair #emph[et al\.], 2014\)\. The outcomes of the CFA, alongside measures of construct reliability and validity, are detailed in Table 1\.]

== 5\.3 Structural equation modelling
#par(first-line-indent: 0em)[To verify the directional hypotheses, the latent variables were specified in a single structural equation model \(SEM\)\. The control variables \(i\.e\. gender and education\) were regressed on desire for unique consumer products\. Need for uniqueness was specified to indirectly influence \(mediate\) the direct effects of vertical and horizontal individualism on the desire for unique consumer products\. Acculturation to global consumer culture was calculated as a second\-order factor consisting of cosmopolitanism, exposure to marketing activities, English language usage and exposure, social interactions, global mass media exposure, openness to and desire to emulate global consumer culture and self\-identification with global consumer culture\. To mitigate the estimation complexities and convergence issues associated with latent interactions involving second\-order constructs \(Marsh #emph[et al\.], 2004\), the moderating effect was evaluated using a composite approach\. The first\-order dimensions of acculturation to global consumer culture were aggregated into a higher\-order composite score\. This score was then used to compute the interaction term with the need for uniqueness construct to test the moderation within the structural model\. The computations were based on the maximum likelihood estimation method \(ML\)\. The results of the SEM indicate a good fit to the data as evidenced by the following goodness\-of\-fit values: ML#emph[χ]#super[2]#sub[\(806\)] \= 3092\.44, CFI \= 0\.90, TLI \= 0\.90 and RMSEA \= 0\.06 \(90% CI \[0\.06–0\.07\]\)\. The calculations are based on 5000 bootstrap draws\.]

In terms of direct effects, vertical individualism positively predicted the consumers’ need for uniqueness, supporting #emph[H1] \(#emph[β] \= 0\.61\; #emph[p] \< 0\.001\)\. Horizontal individualism positively impacted the consumers’ need for uniqueness, supporting #emph[H2] \(#emph[β] \= 0\.27\; #emph[p] \< 0\.001\)\. Need for uniqueness positively influenced the consumers’ desire for unique consumer products, confirming #emph[H3] \(#emph[β] \= 0\.89\; #emph[p] \< 0\.001\)\. Regarding the control variables, consumers’ gender predicts the desire for unique consumer products \(#emph[β]#sub[\(ref:1 \= female\)] \= 0\.18\; #emph[p] \= 0\.003\), whereas education had no influence on it \(#emph[p] \= 0\.31\)\.

Hypothesis #emph[H4a] verified the mediating role of need for uniqueness on the positive relationship between vertical individualism and desire for unique consumer products\. The calculations indicate statistically significant indirect effects \(#emph[indirect β] \= 0\.54\; #emph[p] \< 0\.001\), whereas the direct effect on the desire for unique consumer products was nonsignificant \(#emph[p] \= 0\.13\)\. Need for uniqueness thus accounts for the influence of vertical individualism on product desire, indicating indirect\-only, i\.e\. full mediation\. Hypothesis #emph[H4b] tested for the mediating role of need for uniqueness on the positive relationship between horizontal individualism and desire for unique consumer products\. The computations supported #emph[H4b] indicating statistically significant indirect effects \(#emph[indirect β] \= 0\.24\; #emph[p] \< 0\.001\) and the direct effect nonsignificant \(#emph[p] \= 0\.26\), again consistent with full \(indirect\-only\) mediation\. Total effects and 95% confidence interval ranges are reported in Table 2\.

Regarding the role of acculturation to global consumer culture on the positive and direct influence of need for uniqueness on desire for unique consumer products, the computations indicated that changes of acculturation to global consumer culture intensity moderate the primary relationship \(#emph[unstandardized β] \= 0\.09\; #emph[p] \= 0\.04\), therefore supporting #emph[H5]\. See Table 2 for the direct effect of acculturation to global consumer culture on desire for unique consumer products\.

#page(flipped: true)[
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Reliability and validity scores of the conceptual model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 7.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Construct]], [#strong[α]], [#strong[ω]], [#strong[CR]], [#strong[AVE]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]], [#strong[8]], [#strong[9]], [#strong[10]], [#strong[11]]),
table.hline(stroke: 0.5pt),
[1\. Vertical individualism], [0\.87], [0\.89], [0\.87], [0\.62], [#emph[0\.79]], [0\.57], [0\.72], [0\.70], [0\.37], [0\.07], [0\.26], [0\.48], [0\.48], [0\.42], [0\.43],
[2\. Horizontal individualism], [0\.87], [0\.90], [0\.86], [0\.61], [0\.60\*\*\*], [#emph[0\.78]], [0\.56], [0\.51], [0\.41], [0\.11], [0\.42], [0\.56], [0\.35], [0\.39], [0\.23],
[3\. Need for uniqueness], [0\.94], [0\.94], [0\.93], [0\.78], [0\.75\*\*\*], [0\.59\*\*\*], [#emph[0\.88]], [0\.86], [0\.50], [0\.08], [0\.40], [0\.55], [0\.49], [0\.54], [0\.58],
[4\. Desire for unique consumer products], [0\.90], [0\.92], [0\.89], [0\.51], [0\.81\*\*\*], [0\.57\*\*\*], [0\.89\*\*\*], [#emph[0\.71]], [0\.44], [0\.19], [0\.32], [0\.41], [0\.50], [0\.59], [0\.6],
[5\. Cosmopolitanism], [0\.87], [0\.88], [0\.87], [0\.70], [0\.38\*\*\*], [0\.43\*\*\*], [0\.51\*\*\*], [0\.49\*\*\*], [#emph[0\.84]], [0\.03], [0\.41], [0\.62], [0\.43], [0\.34], [0\.32],
[6\. Exposure to marketing activities], [0\.74], [0\.74], [0\.75], [0\.50], [0\.10], [0\.13\*], [0\.12\*], [0\.17\*\*], [−0\.03], [#emph[0\.71]], [0\.04], [0\.08], [0\.15], [0\.23], [0\.36],
[7\. English language usage and exposure], [0\.78], [0\.78], [0\.77], [0\.53], [0\.27\*\*\*], [0\.44\*\*\*], [0\.41\*\*\*], [0\.36\*\*\*], [0\.42\*\*\*], [−0\.11], [#emph[0\.73]], [0\.45], [0\.48], [0\.26], [0\.15],
[8\. Social interactions], [0\.83], [0\.85], [0\.83], [0\.64], [0\.55\*\*\*], [0\.59\*\*\*], [0\.62\*\*\*], [0\.62\*\*\*], [0\.64\*\*\*], [−0\.05], [0\.47\*\*\*], [#emph[0\.80]], [0\.45], [0\.28], [0\.23],
[9\. Global mass media exposure], [0\.83], [0\.84], [0\.82], [0\.61], [0\.52\*\*\*], [0\.38\*\*\*], [0\.52\*\*\*], [0\.59\*\*\*], [0\.47\*\*\*], [0\.16\*\*], [0\.52\*\*\*], [0\.55\*\*\*], [#emph[0\.78]], [0\.47], [0\.54],
[10\. Openness to and desire to emulate GCC], [0\.78], [0\.80], [0\.82], [0\.61], [0\.50\*\*\*], [0\.42\*\*\*], [0\.58\*\*\*], [0\.66\*\*\*], [0\.35\*\*\*], [0\.21\*\*], [0\.30\*\*\*], [0\.42\*\*\*], [0\.47\*\*\*], [#emph[0\.78]], [0\.65],
[11\. Self\-identification with GCC], [0\.83], [0\.85], [0\.85], [0\.66], [0\.49\*\*\*], [0\.27\*\*\*], [0\.59\*\*\*], [0\.66\*\*\*], [0\.30\*\*\*], [0\.39\*\*\*], [0\.13\*], [0\.34\*\*\*], [0\.52\*\*\*], [0\.59\*\*\*], [#emph[0\.81]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note\(s\)]: The diagonal values \(in Italic\) represent the square root of the average variance extracted \(AVE\)\. Values below the diagonal are the standardized Pearson correlations\. Values above the diagonal represent the Heterotrait–monotrait \(HTMT\) ratio of correlations\. CR \= composite reliability\. AVE \= average variance extracted\. ML#emph[χ]#super[2]#sub[\(834\)] \= 2288\.61, CFI \= 0\.91, TLI \= 0\.90 and RMSEA \= 0\.05 \(90% CI \[0\.05–0\.06\]\)\; #emph[n] \= 504\. #super[\*]#emph[p] \< 0\.05, #super[\*\*]#emph[p] \< 0\.01, #super[\*\*\*]#emph[p] \< 0\.001\. #emph[Source\(s\)]: Authors’ own work]
]
#v(12pt)
]
#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 2.] Standardized and unstandardized structural coefficients of the conceptual model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto), align: (left, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Path structure]], [#strong[β]], [#strong[95% CI]], [#strong[#emph[t]\-value]], [#strong[#emph[p]\-value]]),
table.hline(stroke: 0.5pt),
[H1\. Vertical individualism → need for uniqueness], [0\.61], [], [10\.49], [\<0\.001],
[H2\. Horizontal individualism → need for uniqueness], [0\.27], [], [4\.31], [\<0\.001],
[H3\. Need for uniqueness → desire for unique consumer products], [0\.89], [], [21\.17], [\<0\.001],
[#emph[Control variables]], [], [], [], [],
[Gender \(ref: 1 \= female\) → desire for unique consumer products], [0\.18], [], [2\.93], [0\.003],
[Education → desire for unique consumer products], [0\.07], [], [1\.01], [0\.31],
[#emph[Mediation analysis: indirect effects via need for uniqueness \(specific indirect std\. β\)]], [], [], [], [],
[H4a\. Vertical individualism → need for uniqueness → desire for unique consumer products], [0\.54], [0\.34–0\.72], [9\.71], [\<0\.001],
[H4b\. Horizontal individualism → need for uniqueness → desire for unique consumer products], [0\.24], [0\.05–0\.36], [4\.27], [\<0\.001],
[#emph[Direct effects \(controlling for the mediator\)]], [], [], [], [],
[Vertical individualism → desire for unique consumer products], [0\.09], [−0\.01–0\.16], [1\.52], [0\.13],
[Horizontal individualism → desire for unique consumer products], [−0\.08], [−0\.12–0\.05], [−1\.13], [0\.26],
[#emph[Total effects \(direct and indirect effects\)]], [], [], [], [],
[Vertical individualism → desire for unique consumer products], [0\.63], [0\.47–0\.77], [10\.81], [\<0\.001],
[Horizontal individualism → desire for unique consumer products], [0\.16], [0\.02–0\.35], [2\.26], [0\.02],
[#emph[Moderation analysis \(unst\. β\)]], [], [], [], [],
[H5\. Need for uniqueness → desire for unique consumer products | AGCC], [0\.09], [0\.02–0\.21], [2\.02], [0\.04],
[#emph[Direct effect derived from the moderation analysis \(unst\. β\)]], [], [], [], [],
[AGCC → desire for unique consumer products], [0\.39], [0\.17–0\.61], [4\.60], [\<0\.001],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note\(s\)]: ML#emph[χ]#super[2]#sub[\(806\)] \= 3092\.44, CFI \= 0\.90, TLI \= 0\.90, and RMSEA \= 0\.06 \(90% CI \[0\.06–0\.07\]\)\; AGCC \= Acculturation to global consumer culture\. #emph[n] \= 504\. Number of bootstrap draws \= 5000\. Std\. β for paths, control variables, indirect, direct and total effects\; unst\. β for the moderation analysis\. #emph[Source\(s\)]: Authors’ own work]
]
#v(12pt)
#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 2\. The moderating effect of acculturation to global consumer culture \(AGCC\) on the relationship between need for uniqueness and the desire for unique consumer products\. #emph[Note]: Interaction effect \(unst\. β \= 0\.09\; #emph[p] \= 0\.04\)\; redrawn from the published plot\. #emph[Source]: Authors’ own work]]
#v(0.6em)
= 6\. Discussion and conclusion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 6\.1 Theoretical implications
#par(first-line-indent: 0em)[This study advances the product and brand management literature by identifying specific psychological and cultural mechanisms that drive consumer preferences for unique products\. By integrating cultural values, personality traits and global orientations into a single framework, this research generates knowledge that bridges the gap between abstract macrocultural backgrounds and microlevel product preferences\.]

A critical insight from this study is the nuanced way different dimensions of individualism operate\. Statistically, the results reveal a suppressor effect regarding horizontal individualism \(i\.e\. its indirect effect on the desire for unique consumer products is greater than its total effect\)\. While future empirical investigations should further isolate the boundary conditions of this specific suppression effect, the current study establishes that when this cultural value is routed through the psychological need for uniqueness, it becomes a strong positive behavioral driver\. This theoretically aligns with the dimensional distinctions of individualism outlined by the literature \(Shavitt #emph[et al\.], 2010\)\. It suggests that horizontal individualists do not consume unique products to establish dominance, but strictly to validate their authentic self\-construal\. Conversely, vertical individualism naturally aligns with competitive status\-seeking \(Booysen #emph[et al\.], 2021\), meaning its influence on unique product desire is strong both directly and indirectly\. Theoretically, this establishes that personality traits are not just carriers of cultural influence, but active transformers of it, making the need for uniqueness an important construct for understanding how nonhierarchical cultural values translate into material consumption\.

The findings reveal how globalization acts as a catalyst for these psychological traits\. Specifically, for consumers with high levels of global acculturation, the positive relationship between the need for uniqueness and the desire for unique products is markedly steeper\. While individuals with low global acculturation exhibit only a moderate increase in their preference for unique goods as their internal need rises, globally oriented consumers experience a pronounced surge in this desire \(see Figure 2\)\. This amplification occurs because global consumer culture provides vast access to novel and customizable brands\; therefore, highly acculturated consumers are equipped with the material repository required to effectively enact their differentiation needs\. This corroborates acculturation theory within a deterritorialized context \(Cleveland and Laroche, 2007\), confirming that as consumers integrate into a macrolevel global culture, their behaviors converge with global influences\.

Finally, this study extends the cultural fit hypothesis, traditionally rooted in organizational behavior, into the domain of international product management\. The findings corroborate that consumers actively seek out products that are conceptually congruent with their internalized cultural identities\. Aligning with foundational social identity research \(Reed #emph[et al\.], 2012\), this study demonstrates that this congruence is not an automatic response\; rather, identity\-driven consumption requires the specific cultural identity to be salient\. Specifically, while the literature on cultural fit has predominantly focused on person\-organization alignment, this research advances the paradigm by demonstrating that congruence operates equally powerfully in a consumer behavior context\. This expands the boundary of congruity concepts \(Zhang and Nelson, 2016\), proving that the cultural fit hypothesis is a robust, predictive framework for product\-level preferences when accounting for identity salience\. Ultimately, this research provides evidence that the desire for unique products is a complex, culturally bound phenomenon shaped by specific dimensions of individualism and heavily contingent on consumer’s integration into the global marketplace\.

== 6\.2 Managerial implications
#par(first-line-indent: 0em)[This study provides actionable frameworks for marketing managers by demonstrating that the concept of cultural fit extends beyond broad national boundaries, deeply influencing specific personality traits and subsequent product choices\. For this reason, brands can expand beyond limited socio\-demographic targeting and implement a highly precise psychographic segmentation strategy based on the alignment of a consumer’s cultural values, traits and acculturation\. While international marketers have long recognized the baseline effectiveness of cultural adaptation \(Hornikx #emph[et al\.], 2026\), this research illustrates exactly how that adaptation should be executed\. Specifically, the current study suggests that brand managers should distinctively cater to the vertical versus horizontal dimension of individualism, as both route through the psychological need for uniqueness differently\. For instance, vertical individualism is inherently competitive\. Managers of premium or luxury brands \(e\.g\. Rolex or limited\-edition fashion capsules\) must position their rare products as tools for status elevation\. Advertising to these segments should emphasize exclusivity, prestige and hierarchical superiority, capitalizing on the consumer’s need for uniqueness as a vehicle for social dominance\. Conversely, because horizontal individualists reject hierarchy, they will naturally suppress the desire for unique products unless the offering is explicitly framed around authentic self\-expression\. Brands targeting horizontal individualists must pivot away from status appeals\. Instead, they should use mass\-customization platforms, such as the “Nike By You” program or Converse’s design\-your\-own interfaces, allowing consumers to fulfill their need for uniqueness as a celebration of equal\-but\-distinct personal identity \(Hornikx #emph[et al\.], 2026\)\.]

Furthermore, the moderating role of acculturation to global consumer culture requires a strategic shift in how global product launches are managed\. The current study demonstrates that global orientation acts as a behavioral enhancer\; consumers highly acculturated to the global marketplace experience a pronounced surge in their desire for unique products\. In practice, this means multinational corporations could deploy their most diverse, customizable and unconventional product lines in highly cosmopolitan, globally integrated markets where consumers possess the global awareness to appreciate them\. In markets with low global acculturation, marketing highly unconventional products will yield diminishing returns, even if the local culture is individualistic\. In these locally anchored segments, managers should focus on traditional cultural congruity rather than global novelty\. Ultimately, successful segmentation requires combining an individual’s cultural value structure, their internal need to stand out, and their level of integration into the global consumer matrix\.

== 6\.3 Limitations and future research
#par(first-line-indent: 0em)[Self\-administered, online survey and questionnaire instruments are ubiquitous in consumer behavior research, but they have many limitations \(Hulland #emph[et al\.], 2018\)\. First, the current study is cross\-sectional and hence cannot establish a cause\-and\-effect relationship or examine behavior over a period of time \(Rindfleisch #emph[et al\.], 2008\)\.]

A critical limitation concerns the sample frame, which consists exclusively of non\-British citizens residing in the UK\. While steps were taken to ensure a diverse respondent pool, this specific demographic presents a unique conceptual boundary condition\. Immigrant populations are simultaneously navigating local acculturation to their host country alongside acculturation to global consumer culture\. This dual acculturative process may distinctly influence their psychological need for uniqueness and product desires in ways that native populations do not experience\. Generalizing these findings to nonmigrant consumers requires caution, and future research should replicate this framework among native populations in their home countries to isolate the effects of global acculturation from host\-country acculturation\. In addition, the survey relied on self\-selection, which could potentially introduce another bias \(Khazaal #emph[et al\.], 2014\)\.

Future research on the consumption of unique products and its cultural and personality antecedents could benefit from exploring how other cultural values interact with consumer preference for unique products across different cultural groups or how religious beliefs interact with values to influence consumer preferences\. Another area of interest would be to examine the interaction of cultural values at the individual and national level and how they interact with the environment and the individual\. A more nuanced approach to cultural fit by focusing on examining different types of fit, such as perceptual fit or conceptual fit, would also deepen the knowledge about the impact of fit on consumer behaviors and preferences\.

This study focused exclusively on horizontal and vertical individualism due to their theoretical alignment with uniqueness\-seeking, leaving collectivism unexplored\. Given that the sample comprises an immigrant population navigating multiple cultural spheres, the exclusion of collectivism represents a conceptual limitation\. Future research should investigate how horizontal and vertical collectivism might interact with the psychological need for uniqueness\. While this study evaluated the general desire for unique products, the manifestation of this desire inherently varies depending on the context of the purchase \(Kauppinen\-Räisänen #emph[et al\.], 2018\)\. Future research should empirically differentiate product categories to examine whether the observed psychological pathways hold equally true for publicly consumed, value\-expressive products versus privately consumed, utilitarian goods\.

= Author contribution
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Dr Czarnecka has contributed to the following aspects of the project: conceptualization, data curation, methodology, writing\. Dr Schivinski has contributed to the following aspects of the project: conceptualization, methodology, formal analysis, writing\. Dr Baxter has contributed to the following aspects of the project: conceptualization, data curation, writing\.]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Ajzen, I\. \(2005\), #emph[Attitudes, Personality and Behavior], McGraw\-Hill International \(UK\) Ltd, Maidenhead\.

Alfoqahaa, S\. \(2025\), “A moderated model of the relationship between consumers’ need for uniqueness and purchase intention of luxury fashion brands”, #emph[Future Business Journal], Vol\. 11 No\. 1, p\. 269, doi: 10\.1186\/s43093\-025\-00692\-7\.

Allik, J\., Realo, A\. and McCrae, R\.R\. \(2023\), “Conceptual and methodological issues in the study of the personality\-and\-culture relationship”, #emph[Frontiers in Psychology], Vol\. 14, doi: 10\.3389\/fpsyg\.2023\.1077851\.

Alvarado\-Karste, D\. and Guzmán, F\. \(2020\), “The effect of brand identity\-cognitive style fit and social influence on consumer\-based brand equity”, #emph[Journal of Product & Brand Management], Vol\. 29 No\. 7, pp\. 971\-984, doi: 10\.1108\/JPBM\-06\-2019\-2419\.

Alzeiby, E\.A\., Sahore, N\., Galgotia, D\. and Szabó\-Szentgróti, E\. \(2026\), “Consumption patterns in urban sophisticate branding\. A qualitative perspective on its psychological foundations”, #emph[Acta Psychologica], Vol\. 262, p\. 106049, doi: 10\.1016\/j\.actpsy\.2025\.106049\.

Arnould, E\.J\. \(2010\), “Wiley international encyclopedia of marketing”, in Sheth, J\. and Malhotra, N\. \(Eds\), #emph[Wiley International Encyclopedia of Marketing], John Wiley & Sons, Ltd\.

Bartikowski, B\., Richard, M\.\-O\. and Gierl, H\. \(2023\), “Fit or misfit of culture in marketing communication? Development of the culture\-ladenness fit index”, #emph[Journal of Business Research], Vol\. 167, p\. 114191, doi: 10\.1016\/j\.jbusres\.2023\.114191\.

Booysen, F\., Guvuriro, S\. and Campher, C\. \(2021\), “Horizontal and vertical individualism and collectivism and preferences for altruism: a social discounting study”, #emph[Personality and Individual Differences], Vol\. 178, p\. 110856, doi: 10\.1016\/j\.paid\.2021\.110856\.

Cai, Y\. and Wang, X\. \(2023\), “Perceived unfairness increases desire for unique products: the role of need for social status”, #emph[Psychology & Marketing], Vol\. 40 No\. 3, pp\. 469\-483, doi: 10\.1002\/mar\.21751\.

Calderón Urbina, S\.D\., Stamatogiannakis, A\. and Goncalves, D\. \(2021\), “Consumers’ choices between products with different uniqueness duration”, #emph[European Journal of Marketing], Vol\. 55 No\. 13, pp\. 148\-176, doi: 10\.1108\/EJM\-01\-2020\-0050\.

Chieng, F\., Sharma, P\., Kingshott, R\.P\. and Roy, R\. \(2022\), “Interactive effects of self\-congruity and need for uniqueness on brand loyalty via brand experience and brand attachment”, #emph[Journal of Product & Brand Management], Vol\. 31 No\. 6, pp\. 870\-885, doi: 10\.1108\/JPBM\-12\-2020\-3260\.

Cleveland, M\. and Bartsch, F\. \(2019\), “Global consumer culture: epistemology and ontology”, #emph[International Marketing Review], Vol\. 36 No\. 4, pp\. 556\-580, doi: 10\.1108\/IMR\-10\-2018\-0287\.

Cleveland, M\., Iyer, R\. and Babin, B\.J\. \(2023\), “Social media usage, materialism and psychological well\-being among immigrant consumers”, #emph[Journal of Business Research], Vol\. 155, p\. 113419, doi: 10\.1016\/j\.jbusres\.2022\.113419\.

Cleveland, M\. and Laroche, M\. \(2007\), “Acculturation to the global consumer culture: scale development and research paradigm”, #emph[Journal of Business Research], Vol\. 60 No\. 3, pp\. 249\-259, doi: 10\.1016\/j\.jbusres\.2006\.11\.006\.

Cleveland, M\., Papadopoulos, N\. and Laroche, M\. \(2022\), “Global consumer culture and national identity as drivers of materialism: an international study of convergence and divergence”, #emph[International Marketing Review], Vol\. 39 No\. 2, pp\. 207\-241, doi: 10\.1108\/IMR\-02\-2021\-0097\.

Czarnecka, B\. and Schivinski, B\. \(2019\), “Do consumers acculturated to global consumer culture buy more impulsively? The moderating role of attitudes towards and beliefs about advertising”, #emph[Journal of Global Marketing], Vol\. 32 No\. 4, pp\. 219\-238, doi: 10\.1080\/08911762\.2019\.1600094\.

Czarnecka, B\. and Schivinski, B\. \(2022\), “Individualism\/collectivism and perceived consumer effectiveness: the moderating role of global–local identities in a post\-transitional european economy”, #emph[Journal of Consumer Behaviour], Vol\. 21 No\. 2, pp\. 180\-196, doi: 10\.1002\/cb\.1988\.

Das, M\., Habib, M\., Saha, V\. and Jebarajakirthy, C\. \(2021\), “Bandwagon vs snob luxuries: targeting consumers based on uniqueness dominance”, #emph[Journal of Retailing and Consumer Services], Vol\. 61, p\. 102582, doi: 10\.1016\/j\.jretconser\.2021\.102582\.

Das, M\., Saha, V\. and Balaji, M\.S\. \(2022\), “Standing out’ and ‘fitting in’: understanding inspiration value of masstige in an emerging market context”, #emph[Journal of Product & Brand Management], Vol\. 31 No\. 4, pp\. 521\-535, doi: 10\.1108\/JPBM\-12\-2020\-3260\.

De Rozario, M\. \(2026\), “Chinese brands gain as Europe car sales rise”, #emph[Reuters], 27 May, available at: www\.reuters\.com\/

Donavan, D\.T\., Carlson, B\.D\. and Janda, S\. \(2026\), “Brand love and oppositional hate: the roles of identity, authenticity, and uniqueness”, #emph[Journal of Consumer Marketing], Vol\. 43 No\. 2, pp\. 209\-227, doi: 10\.1108\/JCM\-01\-2025\-7474\.

Dueñas, M\. and Mandel, A\. \(2023\), “The structure of global cultural networks: evidence from the diffusion of music videos”, #emph[Plos One], Vol\. 18 No\. 11, p\. e0294149, doi: 10\.1371\/journal\.pone\.0294149\.

Edwards, J\.R\. \(1991\), “Person\-job fit: a conceptual integration, literature review and methodological critique”, #emph[International Review of Industrial\/Organizational Psychology], Vol\. 6, pp\. 283\-357\.

Ellwood, M\. \(2020\), “It’s not marketing\. These 18 products are truly limited editions”, available at: www\.bloomberg\.com\/news\/articles\/2020\-10\-01\/truly\-limited\-edition\-clothing\-home\-goods\-food\-and\-drink?embedded\-checkout\=true \(accessed 22 June 2026\)\.

Fatehi, K\., Priestley, J\.L\. and Taasoobshirazi, G\. \(2020\), “The expanded view of individualism and collectivism: one, two, or four dimensions?”, #emph[International Journal of Cross Cultural Management], Vol\. 20 No\. 1, pp\. 7\-24, doi: 10\.1177\/1470595820913077\.

Hair, J\.F\., Black, W\.C\., Babin, B\.J\. and Anderson, R\.E\. \(2014\), #emph[Multivariate Data Analysis], 7th ed\. Pearson Education, Upper Saddle River, NJ\.

Henseler, J\., Ringle, C\.M\. and Sarstedt, M\. \(2015\), “A new criterion for assessing discriminant validity in variance\-based structural equation modeling”, #emph[Journal of the Academy of Marketing Science], Vol\. 43 No\. 1, pp\. 115\-135, doi: 10\.1007\/s11747\-014\-0403\-8\.

Hofstede, G\. and McCrae, R\.R\. \(2004\), “Personality and culture revisited: linking traits and dimensions of culture”, #emph[Cross\-Cultural Research], Vol\. 38 No\. 1, pp\. 52\-88, doi: 10\.1177\/1069397103259443\.

Holmqvist, J\., Berger, C\., de Keyser, A\. and Verleye, K\. \(2025\), “Luxury in the circular economy: an engagement journey perspective”, #emph[Journal of Consumer Behaviour], Vol\. 24 No\. 3, pp\. 1486\-1497, doi: 10\.1002\/cb\.2460\.

Hornikx, J\., Janssen, A\. and O’Keefe, D\.J\. \(2026\), “Cultural value adaptation in advertising is effective, but not dependable: a meta\-analysis of 25years of experimental research”, #emph[International Journal of Business Communication], Vol\. 63 No\. 2, pp\. 407\-431, doi: 10\.1177\/23294884231199088\.

Hulland, J\., Baumgartner, H\. and Smith, K\.M\. \(2018\), “Marketing survey research best practices: evidence and recommendations from a review of JAMS articles”, #emph[Journal of the Academy of Marketing Science], Vol\. 46 No\. 1, pp\. 92\-108, doi: 10\.1007\/s11747\-017\-0532\-y\.

Ianole\-Călin, R\., Francioni, B\., Masili, G\., Druică, E\. and Goschin, Z\. \(2020\), “A cross\-cultural analysis of how individualism and collectivism impact collaborative consumption”, #emph[Resources, Conservation and Recycling], Vol\. 157, p\. 104762, doi: 10\.1016\/j\.resconrec\.2020\.104762\.

Interbrand \(2025\), “Best global brands 2025”, available at: https:\/\/interbrand\.com\/best\-global\-brands\/global\/ \(accessed 24 July 2024\)\.

Kauppinen\-Räisänen, H\., Björk, P\., Lönnström, A\. and Jauffret, M\.\-N\. \(2018\), “How consumers’ need for uniqueness, self\-monitoring, and social identity affect their choices when luxury brands visually shout versus whisper”, #emph[Journal of Business Research], Vol\. 84, pp\. 72\-81, doi: 10\.1016\/j\.jbusres\.2017\.11\.012\.

Khazaal, Y\., van Singer, M\., Chatton, A\., Achab, S\., Zullino, D\., Rothen, S\., Khan, R\., Billieux, J\. and Thorens, G\. \(2014\), “Does self\-selection affect samples’ representativeness in online surveys? An investigation in online video game research”, #emph[Journal of Medical Internet Research], Vol\. 16 No\. 7, p\. e164, doi: 10\.2196\/jmir\.2759\.

Koay, K\.Y\. and Lim, W\.M\. \(2025\), “Congruence effects in social media influencer marketing: the moderating role of wishful identification in online impulse buying intentions”, #emph[Journal of Product & Brand Management], Vol\. 34 No\. 3, pp\. 265\-278, doi: 10\.1108\/JPBM\-09\-2023\-4709\.

KOF \(2024\), “KOF globalisation index”, available at: https:\/\/kof\.ethz\.ch\/en\/forecasts\-and\-indicators\/indicators\/kof\-globalisation\-index\.html \(accessed 24 July 2024\)\.

Kolańska\-Stronka, M\. and Singh, B\. \(2024\), “Five decades of self\-congruity in consumer behaviour research: a systematic review and future research agenda”, #emph[International Journal of Consumer Studies], Vol\. 48 No\. 1, doi: 10\.1111\/ijcs\.12983\.

Krause, F\., Görgen, J\., de Bellis, E\., Franke, N\., Burghartz, P\., Klanner, I\.\-M\. and Häubl, G\. \(2023\), “One\-of\-a\-kind products: leveraging strict uniqueness in mass customization”, #emph[International Journal of Research in Marketing], Vol\. 40 No\. 4, pp\. 823\-840, doi: 10\.1016\/j\.ijresmar\.2023\.04\.002\.

Lalot, F\., Cantarella, M\., Zerhouni, O\., Joly, E\., Quiamzade, A\., Falomir\-Pichastor, J\.M\., Desrichard, O\. and Bègue, L\. \(2019\), “Assessing private and public need for uniqueness: validation of French versions of the need for uniqueness \(NfU\) and self\-attributed need for uniqueness \(SANU\) scales”, #emph[Journal of Personality Assessment], Vol\. 101 No\. 3, pp\. 294\-304, doi: 10\.1080\/00223891\.2017\.1394867\.

Lalwani, A\.K\., Lee, H\., Shrum, L\.J\. and Viswanathan, M\. \(2023\), “Men engage in self\-deceptive enhancement, whereas women engage in impression management”, #emph[Psychology & Marketing], Vol\. 40 No\. 7, pp\. 1405\-1416, doi: 10\.1002\/mar\.21805\.

Liu, F\. and Lee, Y\.\-H\. \(2024\), “Virtually authentic: examining the match\-up hypothesis between human vs virtual influencers and product types”, #emph[Journal of Product & Brand Management], Vol\. 33 No\. 2, pp\. 287\-299, doi: 10\.1108\/JPBM\-03\-2023\-4418\.

Liu, X\., Yao, Q\., Yang, D\. and Jiang, X\. \(2025\), “It feels special: how nonalignable attributes enhance product evaluation”, #emph[Journal of Product & Brand Management], Vol\. 34 No\. 4, pp\. 516\-529, doi: 10\.1108\/JPBM\-09\-2024\-5493\.

Lu, R\., Chatman, J\.A\., Goldberg, A\. and Srivastava, S\.B\. \(2024\), “Two\-sided cultural fit: the differing behavioral consequences of cultural congruence based on values versus perceptions”, #emph[Organization Science], Vol\. 35 No\. 1, pp\. 71\-91, doi: 10\.1287\/orsc\.2023\.1659\.

Lynn, M\. and Harris, J\. \(1997a\), “The desire for unique consumer products: a new individual differences scale”, #emph[Psychology and Marketing], Vol\. 14 No\. 6, pp\. 601\-616, doi: 10\.1002\/\(SICI\)1520\-6793\(199709\)14:6\<601::AID\-MAR5\>3\.0\.CO\;2\-B\.

Lynn, M\. and Harris, J\. \(1997b\), “Individual differences in the pursuit of self\-uniqueness through consumption”, #emph[Journal of Applied Social Psychology], Vol\. 27 No\. 21, pp\. 1861\-1883, doi: 10\.1111\/j\.1559\-1816\.1997\.tb01629\.x\.

Mähner, P\.M\., Zogaj, A\. and Tscheulin, D\.K\. \(2023\), “Linking self\-congruence and functional congruence to mobile health apps”, #emph[Journal of Services Marketing], Vol\. 37 No\. 3, pp\. 287\-299, doi: 10\.1108\/JSM\-06\-2021\-0215\.

Marsh, H\.W\., Wen, Z\. and Hau, K\.\-T\. \(2004\), “Structural equation models of latent interactions: evaluation of alternative estimation strategies and indicator construction”, #emph[Psychological Methods], Vol\. 9 No\. 3, pp\. 275\-300, doi: 10\.1037\/1082\-989X\.9\.3\.275\.

McDonnell, T\.E\. \(2023\), “Cultural objects, material culture, and materiality”, #emph[Annual Review of Sociology], Vol\. 49 No\. 1, pp\. 195\-220, doi: 10\.1146\/annurev\-soc\-031021\-041439\.

Michel, G\., Torelli, C\.J\., Fleck, N\. and Hubert, B\. \(2022\), “Self\-brand values congruity and incongruity: their impacts on self\-expansion and consumers’ responses to brands”, #emph[Journal of Business Research], Vol\. 142, pp\. 301\-316, doi: 10\.1016\/j\.jbusres\.2021\.12\.032\.

Mobasseri, S\., Goldberg, A\. and Srivastava, S\.B\. \(2019\), “What is cultural fit?”, in Abrutyn, S\. \(Ed\.\), #emph[The Oxford Handbook of Cognitive Sociology], Oxford University Press, New York, NY, p\. 305\.

Morgan, C\. and Townsend, C\. \(2022\), “Why the drive: the utilitarian and hedonic benefits of self\-expression through consumption”, #emph[Current Opinion in Psychology], Vol\. 46, p\. 101320, doi: 10\.1016\/j\.copsyc\.2022\.101320\.

Ortiz\-Ospina, E\., Beltekian, D\. and Roser, M\. \(2024\), “Trade and globalization”, available at: https:\/\/ourworldindata\.org\/trade\-and\-globalization \(accessed 24 July 2024\)\.

Papadopoulos, N\. and Cleveland, M\. \(2023\), “An international and cross\-cultural perspective on ‘the wired consumer’: the digital divide and device difference dilemmas”, #emph[Journal of Business Research], Vol\. 156, p\. 113473, doi: 10\.1016\/j\.jbusres\.2022\.113473\.

Park, J\., Joshanloo, M\. and Utsugi, A\. \(2023\), “Acculturation attitudes and adaptation among South korean residents in Japan: the mediating role of coping strategies”, #emph[International Journal of Intercultural Relations], Vol\. 94, p\. 101799, doi: 10\.1016\/j\.ijintrel\.2023\.101799\.

Parks\-Leduc, L\., Feldman, G\. and Bardi, A\. \(2015\), “Personality traits and personal values”, #emph[Personality and Social Psychology Review], Vol\. 19 No\. 1, pp\. 3\-29, doi: 10\.1177\/1088868314538548\.

Podsakoff, P\.M\., MacKenzie, S\.B\., Lee, J\.\-Y\. and Podsakoff, N\.P\. \(2003\), “Common method biases in behavioral research: a critical review of the literature and recommended remedies”, #emph[Journal of Applied Psychology], Vol\. 88 No\. 5, pp\. 879\-903, doi: 10\.1037\/0021\-9010\.88\.5\.879\.

Raimondo, M\.A\., Cardamone, E\., Miceli, G\. and “Nino” and Bagozzi, R\.P\. \(2022\), “Consumers’ identity signaling towards social groups: the effects of dissociative desire on brand prominence preferences”, #emph[Psychology & Marketing], Vol\. 39 No\. 10, pp\. 1964\-1978, doi: 10\.1002\/mar\.21711\.

Reed, A\., Forehand, M\.R\., Puntoni, S\. and Warlop, L\. \(2012\), “Identity\-based consumer behavior”, #emph[International Journal of Research in Marketing], Vol\. 29 No\. 4, pp\. 310\-321, doi: 10\.1016\/j\.ijresmar\.2012\.08\.002\.

Rindfleisch, A\., Malter, A\.J\., Ganesan, S\. and Moorman, C\. \(2008\), “Cross\-sectional versus longitudinal survey research: concepts, findings, and guidelines”, #emph[Journal of Marketing Research], Vol\. 45 No\. 3, pp\. 261\-279, doi: 10\.1509\/jmkr\.45\.3\.261\.

Rosenbaum, M\.S\., Ramirez, G\.C\., Campbell, J\. and Klaus, P\. \(2021\), “The product is me: hyper\-personalized consumer goods as unconventional luxury”, #emph[Journal of Business Research], Vol\. 129, pp\. 446\-454, doi: 10\.1016\/j\.jbusres\.2019\.05\.017\.

Sagiv, L\. and Schwartz, S\.H\. \(2022\), “Personal values across cultures”, #emph[Annual Review of Psychology], Vol\. 73 No\. 1, pp\. 517\-546, doi: 10\.1146\/annurev\-psych\-020821\-125100\.

Schivinski, B\., Pontes, N\., Czarnecka, B\., Mao, W\., de Vita, J\. and Stavropoulos, V\. \(2022\), “Effects of social media brand\-related content on fashion products buying behaviour – a moderated mediation model”, #emph[Journal of Product & Brand Management], Vol\. 31 No\. 7, pp\. 1047\-1062, doi: 10\.1108\/JPBM\-05\-2021\-3468\.

Seo, Y\. and Fam, K\.\-S\. \(2015\), “Researching asian consumer culture in the global marketplace”, #emph[Qualitative Market Research: An International Journal], Vol\. 18 No\. 4, pp\. 386\-390, doi: 10\.1108\/QMR\-05\-2015\-0048\.

Seo, Y\., Septianto, F\. and Ko, E\. \(2022\), “The role of cultural congruence in the art infusion effect”, #emph[Journal of Consumer Psychology], Vol\. 32 No\. 4, pp\. 634\-651, doi: 10\.1002\/jcpy\.1248\.

Shahid, S\., Adil, M\., Sadiq, M\. and Dash, G\. \(2024\), “Why do consumers consume masstige products? A cross\-cultural investigation through the lens of self\-determination theory”, #emph[Journal of Retailing and Consumer Services], Vol\. 76, p\. 103607, doi: 10\.1016\/j\.jretconser\.2023\.103607\.

Shavitt, S\., Torelli, C\.J\. and Riemer, H\. \(2010\), “Horizontal and vertical individualism and collectivism”, in Gelfand, M\. J\., Chiu, C\.\-Y\. and Hong, Y\.\-Y\. \(Eds\), #emph[Advances in Culture and Psychology], Oxford University Press, New York, NY, Vol\. 1, pp\. 309\-350\.

Sivadas, E\., Bruvold, N\.T\. and Nelson, M\.R\. \(2008\), “A reduced version of the horizontal and vertical individualism and collectivism scale: a four\-country assessment”, #emph[Journal of Business Research], Vol\. 61 No\. 3, pp\. 201\-210, doi: 10\.1016\/j\.jbusres\.2007\.06\.016\.

Snyder, C\.R\. and Fromkin, H\.L\. \(1980\), #emph[Uniqueness: The Human Pursuit of Difference], Plenum, New York, NY\.

Stackhouse, M\., Rickley, M\., Liu, Y\. and Taras, V\. \(2024\), “Homogeneity, heterogeneity, or independence? A multilevel exploration of big five personality traits and cultural values in 40 nations”, #emph[Personality and Individual Differences], Vol\. 230, p\. 112795, doi: 10\.1016\/j\.paid\.2024\.112795\.

Steenkamp, J\.\-B\. \(2019\), “Global versus local consumer culture: theory, measurement, and future research directions”, #emph[Journal of International Marketing], Vol\. 27 No\. 1, pp\. 1\-19, doi: 10\.1177\/1069031X18811289\.

Sun, Z\., Zhou, H\., Yang, T\., Wang, K\. and Hou, Y\. \(2024\), “Unique consumption: the impact of busy mindset on preference for angular versus circular shapes”, #emph[Journal of Product & Brand Management], Vol\. 33 No\. 3, pp\. 357\-369, doi: 10\.1108\/JPBM\-02\-2023\-4366\.

Szabó, Á\. \(2022\), “Addressing the causes of the causes: why we need to integrate social determinants into acculturation theory”, #emph[International Journal of Intercultural Relations], Vol\. 91, pp\. 318\-322, doi: 10\.1016\/j\.ijintrel\.2022\.01\.014\.

Taylor, C\.R\., Rajabi, M\., Rathee, S\. and Zamani, S\. \(2025\), “The impact of self\-identification with global consumer culture on eWOM generation: a test of global consumer culture theory”, #emph[Journal of Marketing Communications], Vol\. 31 No\. 2, pp\. 204\-230, doi: 10\.1080\/13527266\.2023\.2227646\.

The Migration Observatory \(2024\), “Migrants in the UK: an overview”, available at: https:\/\/migrationobservatory\.ox\.ac\.uk\/resources\/briefings\/migrants\-in\-the\-uk\-an\-overview\/ \(accessed 24 July 2024\)\.

Torelli, C\.J\. and Stoner, J\.L\. \(2019\), “Global consumer culture: consequences for consumer research”, #emph[International Marketing Review], Vol\. 36 No\. 4, pp\. 587\-592, doi: 10\.1108\/IMR\-11\-2018\-0316\.

Triandis, H\.C\. \(2001\), “Individualism\-collectivism and personality”, #emph[Journal of Personality], Vol\. 69 No\. 6, pp\. 907\-924, doi: 10\.1111\/1467\-6494\.696169\.

Triandis, H\.C\. and Gelfand, M\.J\. \(1998\), “Converging measurement of horizontal and vertical individualism and collectivism”, #emph[Journal of Personality and Social Psychology], Vol\. 74 No\. 1, pp\. 118\-128, doi: 10\.1037\/0022\-3514\.74\.1\.118\.

Triandis, H\.C\. and Suh, E\.M\. \(2002\), “Cultural influences on personality”, #emph[Annual Review of Psychology], Vol\. 53 No\. 1, pp\. 133\-160, doi: 10\.1146\/annurev\.psych\.53\.100901\.135200\.

UK Parliament \(2024\), “Components of GDP: key economic indicators”, available at: https:\/\/commonslibrary\.parliament\.uk\/research\-briefings\/sn02787\/ \(accessed 24 July 2024\)\.

Vieira, V\., Santini, F\.O\. and Araujo, C\.F\. \(2018\), “A meta\-analytic review of hedonic and utilitarian shopping values”, #emph[Journal of Consumer Marketing], Vol\. 35 No\. 4, pp\. 426\-437, doi: 10\.1108\/JCM\-08\-2016\-1914\.

Wu, Y\., Wu, J\. and Cai, Y\. \(2025\), “Conform to local: how local vs global brand positioning increases consumer conformity”, #emph[Journal of Product & Brand Management], Vol\. 34 No\. 4, pp\. 500\-515, doi: 10\.1108\/JPBM\-01\-2024\-4936\.

Yeganeh, H\. \(2024\), “Conceptualizing the patterns of change in cultural values: the paradoxical effects of modernization, demographics, and globalization”, #emph[Social Sciences], Vol\. 13 No\. 9, p\. 439, doi: 10\.3390\/socsci13090439\.

Zenker, S\., Gollan, T\. and van Quaquebeke, N\. \(2014\), “Using polynomial regression analysis and response surface methodology to make a stronger case for value congruence in place marketing”, #emph[Psychology & Marketing], Vol\. 31 No\. 3, pp\. 184\-202, doi: 10\.1002\/mar\.20686\.

Zhang, J\. and Nelson, M\.R\. \(2016\), “The effects of vertical individualism on status consumer orientations and behaviors”, #emph[Psychology & Marketing], Vol\. 33 No\. 5, pp\. 318\-330, doi: 10\.1002\/mar\.20877\.

= Further reading
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
Ogihara, Y\. \(2023\), “Popular names are given less frequently to babies in individualistic countries: further validation of unique names as an indicator of individualism”, #emph[Current Research in Behavioral Sciences], Vol\. 4, p\. 100094, doi: 10\.1016\/j\.crbeha\.2022\.100094\.

#pagebreak()
= Appendix
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A1.] Descriptive statistics: factor loading, mean and standard deviation \(SD\), skewness \(Sk\), kurtosis \(kur\)]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Measurements]], [#strong[\(λ#sub[x]\)#super[b]]], [#strong[Mean]], [#strong[SD]], [#strong[Sk\.]], [#strong[Kur\.]]),
table.hline(stroke: 0.5pt),
[#emph[AGCC – Cosmopolitanism]], [], [], [], [], [],
[I am interested in learning more about people who live in other countries], [0\.85], [3\.98], [0\.74], [−0\.45], [0\.40],
[I like to learn about other ways of life], [0\.85], [4\.04], [0\.69], [−0\.41], [0\.58],
[I enjoy being with people from other countries to learn about their views and approaches], [0\.81], [3\.99], [0\.76], [−0\.46], [0\.32],
[#emph[AGCC – Exposure to marketing activities]], [], [], [], [], [],
[In my city, there are many billboards, and advertising signs for foreign and global products], [0\.66], [3\.71], [0\.94], [−0\.90], [0\.63],
[It is quite common to see ads for foreign or global products in local media], [0\.73], [3\.71], [0\.81], [−0\.88], [1\.08],
[When I read a newspaper, I come across many advertisements for foreign or global products], [0\.72], [3\.89], [0\.80], [−1\.16], [2\.24],
[#emph[AGCC – English language usage and exposure]], [], [], [], [], [],
[I feel very comfortable speaking in English], [0\.83], [3\.77], [0\.95], [−0\.36], [−0\.54],
[I often speak English with family or friends], [0\.64], [3\.74], [0\.97], [−0\.75], [0\.28],
[I speak English regularly], [0\.72], [4\.25], [0\.63], [−0\.63], [1\.18],
[#emph[AGCC – Social interactions]], [], [], [], [], [],
[I prefer spending my vacations outside of the country that I live in], [0\.56], [3\.69], [0\.88], [−0\.12], [−0\.44],
[Visiting foreign countries is one of my favourite things], [0\.91], [3\.80], [1\.02], [−0\.43], [−0\.70],
[I often think about going to different countries and doing some travelling], [0\.89], [3\.92], [1\.00], [−0\.76], [−0\.08],
[#emph[AGCC – Global mass media exposure]], [], [], [], [], [],
[I enjoy watching Hollywood films at the theatre], [0\.72], [3\.70], [0\.90], [−0\.44], [0\.11],
[I enjoy watching Hollywood movies that are in English], [0\.87], [3\.67], [0\.89], [−0\.22], [−0\.37],
[Some of my favourite actors\/actresses are from Hollywood], [0\.76], [3\.58], [0\.89], [−0\.13], [−0\.20],
[#emph[AGCC – Openness to and desire to emulate GCC]], [], [], [], [], [],
[I think people my age are basically the same around the world\. For example, a 20\-something in Nigeria is basically the same as a 20\-something in the USA, Germany, or anywhere else], [0\.66], [2\.30], [0\.97], [0\.34], [−0\.36],
[I think that my lifestyle is almost the same as those of my age group in other countries], [0\.83], [2\.61], [0\.92], [0\.06], [−0\.52],
[I think my lifestyle is almost the same as those of people of my social class in other countries], [0\.84], [2\.80], [0\.99], [0\.00], [−0\.64],
[#emph[AGCC – Self\-identification with global consumer culture]], [], [], [], [], [],
[The way that I dress is influenced by the advertising activities of foreign or global companies], [0\.85], [2\.98], [1\.10], [−0\.18], [−0\.86],
[Advertising by foreign or global brands has a strong influence on my clothing choices], [0\.89], [2\.95], [1\.13], [−0\.24], [−0\.91],
[I pay attention to the fashions worn by people in my age\-group that live in other countries], [0\.70], [2\.70], [1\.16], [0\.16], [−0\.91],
[#emph[Need for uniqueness]], [], [], [], [], [],
[I prefer being different from other people], [0\.91], [3\.61], [1\.24], [−0\.98], [−0\.22],
[Being distinctive is important to me], [0\.90], [3\.54], [1\.20], [−0\.82], [−0\.53],
[I intentionally do things to make myself different from those around me], [0\.88], [3\.25], [1\.37], [−0\.49], [−1\.23],
[I have a need for uniqueness], [0\.85], [3\.42], [1\.24], [−0\.69], [−0\.83],
[#emph[Desire for unique consumer products]], [], [], [], [], [],
[I am very attracted to rare objects], [0\.76], [3\.65], [0\.97], [−1\.18], [0\.46],
[I tend to be a fashion leader rather than follower], [0\.78], [2\.90], [1\.37], [−0\.22], [−1\.56],
[I am more likely to buy a product if it is scarce], [0\.70], [3\.26], [1\.09], [−0\.67], [−1\.09],
[I would prefer to have things custom\-made than to have them ready\-made], [0\.63], [3\.96], [1\.05], [−1\.27], [0\.96],
[I enjoy having things that others do not], [0\.78], [3\.77], [1\.10], [−1\.05], [0\.19],
[I often order custom features on the products I buy], [0\.71], [2\.61], [1\.31], [0\.11], [−1\.59],
[I like to try new products and services before others do], [0\.70], [3\.00], [1\.32], [−0\.30], [−1\.45],
[I enjoy shopping at stores that carry merchandise which is different and unusual], [0\.67], [4\.05], [0\.85], [−1\.54], [2\.95],
[#emph[Vertical individualism]], [], [], [], [], [],
[It is important that I do my job better than others], [0\.84], [3\.43], [1\.21], [−0\.55], [−1\.01],
[Winning is everything], [0\.83], [2\.63], [1\.40], [0\.16], [−1\.58],
[Competition is the law of nature], [0\.67], [3\.34], [1\.19], [−0\.68], [−0\.90],
[When another person does better than I do, I get tense and aroused], [0\.82], [2\.91], [1\.34], [−0\.05], [−1\.48],
[#emph[Horizontal individualism]], [], [], [], [], [],
[I often do “my own thing”], [0\.84], [3\.78], [0\.99], [−0\.60], [−0\.30],
[I rely on myself most of the time\; I rarely rely on others], [0\.73], [3\.90], [0\.86], [−0\.49], [−0\.26],
[My personal identity, independent of others, is very important to me], [0\.81], [3\.74], [0\.99], [−0\.51], [−0\.38],
[I’d rather depend on myself than others], [0\.75], [3\.93], [0\.82], [−0\.36], [−0\.38],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Source\(s\)]: Authors’ own work]
]
#v(12pt)
= About the authors
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[#text(size: 10pt)[Dr Barbara Czarnecka is Associate Professor of Marketing at London South Bank University, UK\. Her research interests focus on various aspects of multicultural marketplaces and consumer behaviour\. Barbara Czarnecka is the corresponding author\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Dr Bruno Schivinski is affiliated with the Faculty of Management and Economics at Gdansk University of Technology, Poland\. His interests include various aspects of consumer behaviour\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Dr Katherine Baxter is Senior Lecturer in Marketing at Liverpool Hope University, UK\. Her research interests lie in the areas of marketing communications and sustainability\. This includes exploring the evolving field of digital communication, focusing on website and social media communications and the potential of emerging technologies in marketing strategies\. Baxter is particularly interested in how these areas can be used to promote sustainable practices\.]]


#set document(title: "Individualism\/collectivism and perceived consumer effectiveness: The moderating role of global–local identities in a post\-transitional European economy", author: ("Barbara Czarnecka", "Bruno Schivinski"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Czarnecka and Schivinski \(2022\), accepted manuscript #h(1fr) Journal of Consumer Behaviour] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[Individualism\/collectivism and perceived consumer effectiveness: The moderating role of global–local identities in a post\-transitional European economy]]
#v(0.8em)
#text(size: 12pt)[Barbara Czarnecka, Bruno Schivinski]
#v(0.2em)
#text(size: 10pt, style: "italic")[London South Bank University\; RMIT University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Czarnecka, B\., & Schivinski, B\. (2022). Individualism\/collectivism and perceived consumer effectiveness: The moderating role of global–local identities in a post\-transitional European economy. #emph[Journal of Consumer Behaviour, 21]\(2\), 180–196. #link("https://doi.org/10.1002/cb.1988")[https:\/\/doi.org\/10\.1002\/cb\.1988]
  #v(0.9em)
  This is the peer reviewed version of the following article: Czarnecka, B\., & Schivinski, B\. \(2022\)\. Individualism\/collectivism and perceived consumer effectiveness: The moderating role of global–local identities in a post\-transitional European economy\. Journal of Consumer Behaviour, 21\(2\), 180–196, which has been published in final form at #link("https://doi.org/10.1002/cb.1988")[https:\/\/doi.org\/10\.1002\/cb\.1988]\. This article may be used for non\-commercial purposes in accordance with Wiley Terms and Conditions for Use of Self\-Archived Versions\.
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors\; the publisher\'s typesetting and layout have been removed and Figures 1–3 redrawn\.
Downloaded from #link("https://schivinski.com/papers/individualism-collectivism-perceived-consumer-effectiveness.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[Individualism\/collectivism and perceived consumer effectiveness: The moderating role of global–local identities in a post\-transitional European economy]]
#v(0.6em)
#par(first-line-indent: 0em)[Barbara Czarnecka#super[1]\* and Bruno Schivinski#super[2]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]London South Bank Business School, London South Bank University, London, UK\; #super[2]School of Media and Communication, RMIT University, Melbourne, Victoria, Australia]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Barbara Czarnecka]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() What explains why some consumers believe their individual consumption choices impact the natural environment, social issues, and employee well\-being and others do not? This study examines the moderating role of global and local social identities on the relations between cultural values of vertical and horizontal individualism and collectivism, and perceived consumer effectiveness\. Data were collected from 432 respondents in Poland\. Individuals who report high values of vertical individualism and high vertical collectivism believe their individual purchase decisions impact the natural environment, social and community issues and employee welfare\. It is the acceptance of responsibility for oneself \(vertical individualism\) and others \(vertical collectivism\) that explains why some people believe their consumption choices affect wider societal and environmental issues\. Global identity strengthens this for vertical individualists, and local identity strengthens this for vertical collectivists\. We provide evidence that the conceptual distinction between horizontal and vertical orientations of individualism and collectivism matters when explaining perceived consumer effectiveness\. The study confirms that global and local social identities are meaningful variables in the context of perceived consumer effectiveness\. The concept of value congruence explains the hypothesised relations only partially\. The study contributes to the literature on consumer behaviour in the context of the post\-transitional economy of Poland\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] collectivism, global–local identity, individualism, perceived consumer effectiveness]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 21 January 2021\; revised 4 August 2021\; accepted 30 August 2021\.]]
#v(0.6em)
= 1 Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[More than 20 years ago, Wilk \(1998\) argued that ‘consumption is a key mediator of the environmental impact of the human population on the planet’ \(p\. 314\)\. Almost 30 years later, in the face of an environmental crisis, researchers and policymakers argue that solving environmental problems is a complex issue that must be viewed in multiple contexts including individual consumption \(Wiedmann et al\., 2020\)\. Efforts to increase consumer awareness about the impact their individual consumption choices have on the natural environment, social issues and employee welfare will remain important to policymakers, researchers, businesses and consumer activists for years to come \(Bolton, 2020\; United Nations, 2019\)\. Consequently, research to delineate factors that affect sustainable consumption choices remains as essential today as it was over two decades ago\.]

While some individuals make thoughtful consumption decisions and believe their individual actions matter, others do not \(Chen, 2020\; Gao, Zhao, et al\., 2020\)\. The belief that one\'s consumption choices have an impact on environmental resource problems, social issues and employee welfare has been conceptualised as perceived consumer effectiveness \(PCE\; Ellen et al\., 1991\)\. Individuals who believe that their consumption behaviour impacts the environment, employee and social issues are more likely to consider and choose products that are sustainable \(Antonetti & Maklan, 2014\)\.

Some of the factors that influence sustainable consumption behaviour are cultural values and social identities \(e\.g\., Kuanr et al\., 2020\; Sharma et al\., 2020\; Udall et al\., 2020\)\. Whilst research in the area of values, identities and beliefs in a wide range of consumption contexts, including pro\-environmental consumption has a long and rich history, the dynamic nature of sociocultural environment necessitates continued research to monitor changes in consumer behaviour \(Ashraf et al\., 2020\; Perreault, 2012\; Thøgersen & Ölander, 2002\), especially in contexts that have been relatively under\-researched\.

Researchers and practitioners try to predict consumer behaviour based on cultural values of the consumers\. Often, they argue that consumers who hold certain values should be more likely to behave in a certain way \(Shavitt & Cho, 2016\)\. Hence, the current study draws on the value congruence concept to investigate whether individuals who hold specific values and identities are more likely to report beliefs that are congruent with those values and identities\. In short, value congruence is the extent to which a person\'s values are congruent, or fit, with their behaviours or beliefs \(Kristof, 1996\; Zhang & Bloemer, 2008\)\. If this is the case, businesses, advertisers and consumer activists could employ value congruence to segment the market with more certainty that people holding certain values and identities are more likely to hold certain beliefs or exhibit certain behaviours\. Specifically, we study how the values of horizontal\/vertical individualism and collectivism, and global and social identities are related to PCE\.

The construct of horizontal\/vertical individualism–collectivism describes the nature of the relationship between individuals and groups that is most influential in a society \(Singelis et al\., 1995\)\. Both horizontal and vertical individualism emphasise and individual\'s goals over the needs of other individuals or groups: vertical individualism stresses inequality and competition between individuals, while horizontal individualism stresses the uniqueness of individuals\. For collectivists, group goals are more important than individual interests, but vertical collectivists recognise hierarchy between individuals within groups where individuals are supposed to be responsible for the wellbeing of a group\. Horizontal collectivists ‘see themselves as being similar to others \(e\.g\., one person, one vote\) and emphasise common goals with others, interdependence, and sociability’ \(Triandis & Gelfand, 1998, p\. 119\)\. We examine values of individualism and collectivism because of the reported upward changes in levels of individualism across the globe, which have been linked to socioeconomic development hence suggesting that such values are relevant in the context of economic activity of consumers including individual consumption \(Santos et al\., 2017\)\. Further, we employ the horizontal\/vertical measures because of suggested nuances in types of individualism and collectivism, and because these measures more explicitly differentiate between the different hierarchies and relationships between individuals and groups\. Therefore, these conceptual distinctions may be important for theoretical and practical reasons \(Fatehi et al\., 2020\; Shavitt et al\., 2011\)\.

Social identities, defined as an individual\'s perception that one belongs to certain social groups and derives values from group membership \(Tajfel, 1972\), have also been found to be significantly influential on a person\'s behaviour \(Mutum et al\., 2021\; Wei et al\., 2020\)\. Different types of social identities exist, including local and global social identities \(Tu et al\., 2012\)\. Local identity is a feeling of belonging to one\'s local community, identification with local habits, customs, beliefs and values of life\. Global identity is an identification with a lifestyle which is considered global, and a strong feeling of belonging to the entire world \(Tu et al\., 2012\)\.

Over the years, researchers have documented the role of PCE in sustainable consumption choices \(Antonetti & Maklan, 2014\)\; however, research is concentrated on specific markets, leaving scattered understanding on post\-transitional markets \(Culiberg, 2015\; Zralek & Burgiel, 2020\)\. Exploring the interactions between values, identities and consumer beliefs in a context of a post\-transitional economy is important because such economies are very young consumer cultures and not much is reported in academic literature about the behaviour of such consumers in the context of sustainable consumption\. Research suggests the cultural settings in which one is raised and socialised may influence one\'s consumption behaviour \(Buenstorf & Cordes, 2008\; Singh et al\., 2003\)\.

Consequently, this study focuses on understanding in which circumstances cultural values of horizontal and vertical individualism and collectivism influence consumer\'s PCE in a selected post\-transitional economy\. Based on evidence that social identities influence consumer behaviour, we further examine the moderating role of global and local identities \(Udall et al\., 2020\)\. These two questions address the issue of whether we can rely on the assumption of congruence between values and identities to explain and predict the level of PCE\. In order to address the research questions, pen\-and\-paper questionnaire was used to collect data from Polish consumers\.

This study contributes to the literature in the following ways\. First, we provide further evidence that conceptual distinction between horizontal and vertical orientations of individualism and collectivism matters when explaining PCE\. Second, our study confirms that global and local social identities are impactful variables in the context of PCE\. Third, we provide evidence that the concept of value congruence explains the hypothesised relations only partially\. Fourth, our study contributes to the literature on consumer behaviour in the understudied context of post\-transitional economies, specifically in the context of Poland\.

= 2 Conceptual framework and literature review
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 2\.1 Perceived consumer effectiveness
#par(first-line-indent: 0em)[PCE, often referred to as consumer self\-efficacy, is a belief that one\'s consumption choices have an impact on the natural environment, social issues and employee welfare \(Ellen et al\., 1991\; Kang et al\., 2013\)\. Consumer self\-efficacy has been demonstrated to be an important driver of pro\-environmental behaviour, that is, when consumers believe their actions matter, they are more likely to perform the action \(e\.g\., White et al\., 2019\)\. Studies that examined PCE demonstrate that the construct is positively associated with pro\-environmental consumption intentions and behaviours in a wide range of product categories, country markets and consumer groups \(see Table 1 for an overview of recent studies that examined PCE\)\. For example, Alzubaidi et al\. \(2020\), in the context of Saudi Arabia, found that PCE significantly and positively related to intentions to purchase environmentally friendly products\. Yarimoglu and Binboga \(2019\) demonstrated that PCE was the strongest predictor of environmentally conscious consumer behaviour amongst Turkish consumers\. Elsewhere, PCE was a strong predictor of actual consumer behaviours in South Korea \(Wesley et al\., 2012\), India \(Kautish et al\., 2019\) and amongst young consumers in the United States \(Heo & Muralidharan, 2019\)\. Taken together, these findings suggest that PCE plays an important role in sustainable consumption, and that individuals who have strong belief that their consumption choices have an impact on natural, social and employee welfare are more likely to engage in sustainable consumption\. However, despite the increased recent focus of researchers on this construct, some contexts have been neglected, specifically certain country markets such as Poland have not been researched\.]

#page(flipped: true)[
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 1.] Recent literature \(published since 2020\) examining the role of PCE in a variety of consumption contexts]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 7.5pt)[#table(columns: (auto, 1fr, 1fr, auto, auto, 2fr), align: (left, left, left, right, left, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Study]], [#strong[Research context]], [#strong[Method]], [#strong[Sample size]], [#strong[Country]], [#strong[Key findings]]),
table.hline(stroke: 0.5pt),
[Al\-Swidi and Saleh \(2021\)], [Determinants of green purchasing behaviour], [Online survey, convenience sampling, student sample], [251], [Qatar], [PCE is positively associated with self\-reported green purchasing behaviour\.],
[Alzubaidi et al\. \(2020\)], [Factors affecting pro\-environmental behaviours], [Online survey, convenience and snowballing], [611], [Saudi Arabia], [PCE was positively associated with behavioural intentions, but the association was weak\.],
[Asadi et al\. \(2021\)], [Intentions to use electric vehicles], [Online survey, purposive and convenience sampling], [177], [Malaysia], [PCE is a strong antecedent to personal norms\.],
[Burhanudin et al\. \(2021\)], [Banking services], [Survey experiment, mall intercept survey], [313], [Indonesia], [Guilt about bank’s activities is associated with higher PCE\. PCE is positively associated with attitude towards green banking\. PCE is associated with increased negative word of mouth about banking projects that disregard natural environment\. PCE is not directly related to intention to use green banking services, but it does affect the intention via negative word of mouth\.],
[Ettinger et al\. \(2021\)], [Effectiveness of corporate social responsibility communications], [Online survey experiment], [601], [Germany, Austria, Switzerland], [PCE mediates the relationship between type of CSR communication and attitudes towards hotels’ CSR communication\.],
[Taufique and Islam \(2021\)], [Antecedents of green consumer behaviour], [Online survey, convenience sampling, student sample], [206], [Bangladesh], [PCE has a direct positive influence on self\-reported green consumer behaviour\.],
[Alsaad et al\. \(2020\)], [Religiosity and ethical purchase intentions], [E\-mail survey, student sample], [149], [Saudi Arabia], [Religiosity and idealism are positively associated with PCE\. PCE mediates the effect of religiosity and moral obligation on ethical purchase intention\.],
[Arias and Trujillo \(2020\)], [Self\-reported recycling behaviour], [Face\-to\-face survey], [1286], [Colombia], [PCE is positively associated with the use of reusable shopping bags\. PCE does not directly affect recycling behaviour but indirectly via the reported use of reusable bags\.],
[Brusselaers et al\. \(2020\)], [Drivers of eco\-certified wood consumption], [Survey, student sample], [274], [Belgium], [PCE does not drive eco\-certified wood consumption\.],
[Escario et al\. \(2020\)], [Recycling and reusing behaviour], [Face\-to\-face survey], [2487], [Spain], [PCE is positively associated with self\-reported recycling, reusing and refusing behaviours\.],
[Gautam \(2020\)], [Sustainable tourism and development], [Face\-to\-face survey, mall intercept], [227], [India \(tourists in India\)], [PCE was the most important determinant of purchase intentions\.],
[Garg and Pandey \(2020\)], [Sustainable tourism], [Survey, convenience sample], [275], [India], [PCE is positively associated with intentions to adopt sustainable tourism practices\.],
[Hosta and Zabkar \(2020\)], [Environmentally\/socially responsible consumer behaviour], [Online survey, web\-based national panel study], [426], [developed Central European country], [PCE has a positive influence on willingness to behave in environmentally and socially responsible way\.],
[Nguyen and Pervan \(2020\)], [Perceptions of corporate social responsibility \(CSR\) and trust], [Pen\-and\-paper survey\; mall\-intercept], [407], [China], [PCE mediated the relationship between perceived retailer’s CSR and consumer trust\.],
[Palacios\-González and Chamorro\-Mera \(2020\)], [Market segmentation study], [Face\-to\-face and online survey, convenience sampling], [415], [Spain], [Consumers differ in their level of PCE\.],
[Park and Lin \(2020\)], [Antecedents of purchase of recycled and upcycled fashion], [Survey], [2017], [Korea], [PCE positively associated with intention to purchase consumer recycled and upcycled products\.],
[Si et al\. \(2020\)], [Dockless bike sharing], [Online survey, purposive sampling], [633], [China], [PCE positively associated with willingness to participate in bike\-sharing scheme\.],
[Wang, Ali, et al\. \(2020\)], [Biogas technology adoption], [Survey, purposive sampling], [191], [Pakistan], [PCE is positively related with consumers’ personal norms\.],
[Waris and Hameed \(2020\)], [Intentions to purchase environmentally friendly household appliances], [Face\-to\-face survey, mall intercept convenience quota sample], [440], [Pakistan], [PCE was found to be an important antecedent of consumers’ purchase intention\.],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Abbreviation: PCE, perceived consumer effectiveness\.]
]
#v(12pt)
]
== 2\.2 Cultural values
#par(first-line-indent: 0em)[Cultural values are important drivers of consumer behaviour \(Sharma & Jha, 2017\)\. A value is ‘an enduring belief that a specific mode of conduct or end\-state of existence is personally or socially preferable to an opposite or converse mode of conduct or end\-state of existence’ \(Rokeach, 1973, p\. 5\)\. Amongst values that may be relevant in examining PCE are values of individualism and collectivism\. Individualism and collectivism have been researched in multiple contexts of consumer behaviour, such as consumer ethics \(Culiberg, 2015\), valuation of objects \(Gjersoe et al\., 2014\) or environmentally motivated consumption reduction \(Lasarov et al\., 2019\), to name a few\. However, as values may change over time \(Santos et al\., 2017\) and the social world is dynamic, the need to examine and monitor consumers\' values is important to establish trends and changes \(Inglehart, 2020\)\.]

The construct of individualism–collectivism focuses on the character of the relationships between individuals and groups that are dominant in a society\. Specifically, it distinguishes between two issues: \(1\) whose interests and needs are more important, those of the individual or those of the collective\; and \(2\) who bears the responsibility for individual success and behaviour \(Sivadas et al\., 2008\)\. For individuals who hold individualistic values, personal interests and goals are more important than group interests\. Such individuals are driven by personal goals and ambitions rather than group preferences \(Oyserman et al\., 2002\)\. Collectivists prioritise in\-group interests and goals over those of the individual \(Oyserman et al\., 2002\; Sivadas et al\., 2008\)\. Collectivists are driven by social norms, group expectations and group hierarchy \(Sivadas et al\., 2008\)\.

The polarity of the dichotomous individualism–collectivism dimension did not account for the multifaceted nature of the different types of individualism and collectivism\. Scholars argued that there are many varieties of individualism and collectivism, and the conceptual distinctions between those varieties may have important practical implications \(Triandis & Gelfand, 1998\)\. Accordingly, an extended typology including horizontal and vertical dimensions of individualism and collectivism was proposed \(Singelis et al\., 1995\)\. This typology widened the original conceptual dichotomy by introducing four dimensions: horizontal individualism \(HI\), vertical individualism \(VI\), horizontal collectivism \(HC\) and vertical collectivism \(VC\; Triandis & Gelfand, 1998\)\. These categories of individualism–collectivism classify cultures and individuals according to their readiness to recognise and accept social hierarchies \(Shavitt & Cho, 2016\)\. Individuals who hold vertical values believe that societies are structurally hierarchical with members of society accepting inequality and acknowledging the importance of social rank\. Those who hold horizontal values believe that societies are structurally egalitarian with members recognising interdependence and equal status for all \(Nelson & Shavitt, 2002\)\.

This conceptual distinction between horizontal and vertical individualism–collectivism is crucial for uncovering new cultural patterns or explaining phenomena not anticipated by the more general individualism–collectivism dimension \(Díaz\-Loving et al\., 2018\; Shavitt et al\., 2011\)\. The nature of the constructs suggests that they may relate in different ways to the propensity for people to believe that their individual purchasing decisions are a solution to the environmental, employee and social problems\.

Past research which focused on examining the relations between values of horizontal\/vertical individualism and collectivism, and social identities is limited to few studies\. Specifically, studies that measured the vertical\-horizontal types of individualism and collectivism and related them to PCE or similar concepts are limited to Cho et al\. \(2013\), and Ali et al\. \(2019\)\. Vertical individualism was positively related to PCE \(Cho et al\., 2013\)\; and acted as a positive moderator of motivations to purchase green cars \(Ali et al\., 2019\)\. Horizontal collectivism was also positively associated with PCE \(Cho et al\., 2013\), and moderated motivations for green purchases \(Ali et al\., 2019\)\. Ali et al\. \(2019\) also found that horizontal collectivism was a statistically significant positive moderator of the relationship between PCE and purchase intention\. Amongst Chinese individuals, researchers measured perceived intractability of climate change that focuses on one\'s belief that one\'s actions can have an impact on climate change prevention \(Xiang et al\., 2019\)\. The authors reported that respondents with a high score on the individualism dimension believed that their individual actions did not have a positive impact on climate change\; collectivists however believed that their actions mattered more\. However, Xiang et al\.\'s study did not report scores for each distinct dimension of vertical\/horizontal individualism \(despite claiming to measure those four types\), hence there is no evidence which type of individualism was more or less related to low levels of belief in one\'s actions\' impact on climate change\.

Given the argued importance of the more nuanced constructs of vertical and horizontal individualism and collectivism, and the limited number and scope of studies that linked these cultural dimensions to PCE, we therefore measure these constructs with a view to explore if such distinctions will lead to different outcomes in a post\-transitional economy of Poland\.

== 2\.3 Global–local identities
#par(first-line-indent: 0em)[Social identity is a person\'s perception of belonging to a social category or group \(Stets & Burke, 2000\)\. Social identity theory posits that the groups which individuals feel they belong to are an important source of social norms, values and knowledge about acceptable behaviours \(Tajfel, 1978\)\. Social identities are important predictors of behaviour in numerous contexts, including sustainable or environmentally conscious consumer behaviour \(Bonaiuto et al\., 1996\; Milfont et al\., 2020\)\. For example, social identity was relevant for promoting health behaviour \(Stevens et al\., 2017\)\; sustainable consumption behaviour \(Bartels & Reinders, 2016\; Udall et al\., 2020\; White et al\., 2019\) and for increasing effectiveness of communication \(Guan & So, 2016\) to name a few\.]

Tu et al\. \(2012\), drawing on social identity theory research, proposed that individuals have global and local identities\. That is, they identify to different extent with global or local communities\. Global identity is a feeling of belonging to the global community and identification with a global lifestyle\. Local identity means that individuals feel they belong to their local community and identify with local habits, customs and beliefs \(Tu et al\., 2012\)\. Zhang and Khare \(2009\) found that identifying consumers\' identity as primarily global or local was an important factor in understanding consumers\' attitudes towards global versus local products\. Expanding on this, we propose that global and local identities may also be relevant in understanding a consumer\'s PCE in the context of sustainable consumption because environmental and social challanges affect both local and global environments \(Fielding & Hornsey, 2016\)\.

== 2\.4 Congruence between values, identities and consumption beliefs
#par(first-line-indent: 0em)[Researchers remain interested in the effects of similarity as a construct to explain and predict various outcomes \(Zhang & Bloemer, 2008\)\. The concept of congruency or fit belongs to a broader category of cognitive\-consistency theories \(Simon & Holyoak, 2002\; Zajonc, 1960\)\. These theories suggest that individuals strive for consistency between their values, beliefs and behaviours because inconsistency provokes states of discomfort and tension\. Broadly speaking, congruency \(or fit\) is ‘the degree to which the needs, demands, goals, objectives and\/or structure of one component are consistent with the needs, demands, goals, objectives and\/or structure of another component’ \(Nadler & Tushman, 1980, p\. 40\)\. Amongst the different types of congruence \(e\.g\., perceptual, cultural, conceptual\), we draw on the construct of conceptual congruence to explain the relations between values, identities and PCE\. Conceptual congruence is a ‘relatedness of conceptual attributes’ \(Kuo & Rice, 2015, p\. 78\)\. The components that Nadler and Tushman \(1980\) mention may relate to a number of variables, including values, identities and beliefs\. This study draws on conceptual congruence, arguing that values which are conceptually more congruent with selected beliefs are more likely to be positively associated with those beliefs\. The concept of congruence in the context of values, identities and beliefs about one\'s behaviour suggest that certain values should lead to certain beliefs about one\'s behaviours because those values are conceptually congruent with the said beliefs\.]

The concept of congruency has been explored in a number of contexts: person\-organisation fit \(Edwards & Cable, 2009\), values\-service brands congruence \(Zhang & Bloemer, 2008\), congruence in communications \(Hong & Zinkhan, 1995\) or branding \(Martin & Stewart, 2001\; Torelli et al\., 2012\)\. For example, the conceptual congruency between different aspects of public service announcements led to more favourable attitude towards an advertisement \(Wang, Fu, & Wu, 2020\)\. Congruence between consumer\'s values and brand symbolism led to more favourable taste perceptions of food brands \(Paasovaara et al\., 2012\)\. Namely, consumers who held hedonic values as primary ones, evaluated a brand with hedonistic symbolism more favourably than a brand with conventional\/traditional symbolism\.

== 2\.5 Hypotheses
#par(first-line-indent: 0em)[People who hold individualistic values prioritise individual interests over the interests of their groups\. Vertical individualists believe in their own individual responsibility: success is attributed to the individual self \(Shavitt & Cho, 2016\; Triandis & Gelfand, 1998\)\. Such individuals will be therefore more likely to agree that their individual choices have consequences for the natural environment, society and employees, because values of vertical individualism are conceptually congruent with PCE\.]

Drawing on the value congruence concept, we propose that individuals who hold VI values believe that they are responsible for their own success \(Singelis et al\., 1995\), and therefore should believe in the importance and impact of their own individual consumption actions:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1A\.] Vertical individualism \(VI\) is positively associated with PCE\.]]
Horizontal individualists value expressing one\'s uniqueness and establishing one\'s capability to be successfully self\-reliant, but this is not linked to competition, social comparison and achievement \(Shavitt et al\., 2011\)\. Horizontal individualists ‘do their own thing’ because they see themselves as different and independent from others\. They value personal interests and goals over those of groups, and they believe in their uniqueness\. Values of horizontal individualism are also conceptually more congruent with PCE because for such individuals, focus is on individual actions \(Singelis et al\., 1995\)\. Such individuals may also be more likely to believe that their individual consumption choices matter, and hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1B\.] Horizontal individualism \(HI\) is positively associated with PCE\.]]
Vertical collectivists believe that their individual goals and interests are less important than group goals and interests, but they believe in hierarchy\. For such individuals, carrying out their duties and obligations towards the group takes precedence over fulfilling individual goals\. This preference for group interests suggests that such individuals value conformity\; hence they willingly submit to the authority of other people in their groups \(Singelis et al\., 1995\)\. Such beliefs may lead to a dispersion of individual responsibility, or even giving it up and delegating it to those higher in the hierarchy, hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2A\.] Vertical collectivism is negatively associated with PCE\.]]
Whilst horizontal collectivists also believe that their individual goals and interests are less important than group goals and interests, they perceive themselves as similar to others and do not believe in hierarchy between individuals and groups\. They emphasise benevolence, egalitarianism, common goals and shared social responsibility \(Shavitt et al\., 2011\)\. Such values of collective purpose and responsibility may subdue the freedom of individual expression and responsibility amongst horizontal collectivists\. This consequently may lead to a situation where individual responsibility is dispersed amongst group members \(Shavitt et al\., 2011\), hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2B\.] Horizontal collectivism \(HC\) is negatively associated with PCE\.]]
Individualism and collectivism are values that describe a person\'s or group\'s relationship to others \(Singelis et al\., 1995\)\. Social identities are constructs which also describe how a person views their relationship with the outside world\. Social identities are important constructs in explaining and predicting pro\-environmental behaviours \(Fritsche et al\., 2018\)\. Brieger \(2019\) proposed that a person\'s perception of being a member of a group influences the preference for a healthy and pleasant environment for the members of the respective group, that is, the greater the person\'s identification with their community, nation and world is, the more willing they are to make economic sacrifices for environmental protection\.

Drawing on social identity theory and value congruence, we argue that social identity will influence the relationship between values of vertical\/horizontal individualism and collectivism and PCE\. Global identity is more relevant to and congruent with individualistic consumers who may be more likely to identify with out\-groups rather than collectivistic consumers who are in\-group oriented\. For example, Wei et al\. \(2020\) examined the effectiveness of global versus local scope of cause\-related marketing in the context of individualism and PCE\. The authors found that PCE differed between the global versus local condition, and depended on the level of individualism and collectivism\. Specifically, PCE was overall higher for those who held individualistic values, than those who held collectivistic values, and this was the case for both global and local scope\. However, local scope yielded higher scores of PCE than global scope, for collectivistic consumers\. This suggests that local\-scope communication is more effective for collectivistic consumers, whilst for individualistic consumers, both scopes lead to high PCE\. Ng and Basu \(2019\) found that global identity was related to increased pro\-environmental behaviours and was driven by a sense of strong personal responsibility\. Individualists do not feel strongly connected to their groups such as families, relations or geographic district \(Capozza et al\., 2000\), and may be more likely to identify with outgroups\; hence, global identification will strengthen the association between values of individualism and PCE:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3\.] Global identity positively moderates the relationship between vertical individualism and PCE \(H3A\)\; and horizontal individualism and PCE \(H3B\)\.]]
As mentioned, local identity is conceptually more congruent with collectivistic values because collectivists perceive themselves in terms of the groups they belong to, such as family or local community \(Capozza et al\., 2000\)\. Local identity is the strength of one\'s connection to local community, traditions, groups and events \(Tu et al\., 2012\) and therefore it is more congruent with collectivistic values of belonging to one\'s group and community\. Strong local identity will weaken the negative link between collectivism and PCE\. Hence, collectivistic consumers with strong local identity will have higher PCE than collectivistic consumers with low local identity because the strength of local identity will increase their belief that their consumption choices will impact environment, employee welfare and community because they may relate it more to their local community, hence:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4\.] Local identity weakens the negative relationship between vertical collectivism and PCE \(H4A\)\; and horizontal collectivism and PCE \(H4B\)\.]]
#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Conceptual model]]
#v(0.6em)
== 2\.6 Control variables
#par(first-line-indent: 0em)[For model estimations, the conceptual framework controlled for consumer\'s age and income—two important consumer segmentation bases\. The selection of the control variables was grounded in past research, which demonstrated that values and global and local social identities vary by consumers\' age and may also be affected by income \(Czarnecka & Schivinski, 2019\; Gaines et al\., 1997\; Gao, Mittal, & Zhang, 2020\; Park & Lin, 2020\; Schwartz & Rubel, 2005\)\. The conceptual model is presented in Figure 1\.]

= 3 Methodology
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 3\.1 Country justification
#par(first-line-indent: 0em)[Poland is a unique economy in the sense that it has become a developed economy as of September 2018\. Previously, Poland had been rated as an emerging economy, one that has been developing at a fast pace \(WBJ, 2018\)\. Poland is the first Central and Eastern European economy to be upgraded to a developed economy status \(Radu, 2018\)\. The Polish economy has been growing steadily and the role of consumption has been increasing\. Polish consumers have shown a great rate of acceptance of Western\/global shopping habits\. For example, in the 1990s, shopping malls\/centres were a rarity, as opposed to the 2010s when the number of shopping centres increased from 295 in 2008, to 351 in 2012 \(Knap, 2013\), to 430 in 2017 \(Savills, 2017\)\. Yet, consumer research has not kept up with the pace of changes and considering the size of the population of Poland \(about 38 million\), it is important to examine the antecedents of important Polish consumer beliefs\. Poland offers a suitable context to examine how cultural values of individualism and collectivism relate to PCE, and how this relation is affected by global–local identities because it is a society open to global influences but has a relatively young consumer culture \(Kramarczyk & Alemany Oliver, 2020\) with strong national\/local orientation\. Moreover, it is an understudied country despite its significance and contribution to the EU and global economy, and size of the population \(Export\.gov, 2019\)\.]

== 3\.2 Measures and survey
#par(first-line-indent: 0em)[Individualism–collectivism values were assessed with a scale of 14 items measuring four dimensions of individualism\/collectivism at the individual level: horizontal collectivism \(four items\), vertical collectivism \(four items\), horizontal individualism \(three items\) and vertical individualism \(three items\; Sivadas et al\., 2008\)\. The items were rated on a 7\-point Likert scale ranging from 1 \(never\) to 7 \(always\)\. PCE was measured with four items adapted from Roberts \(1996\) and Kang et al\. \(2013\) on a seven\-point scale from 1 \(strongly disagree\) to 7 \(strongly agree\)\. Global and local identities were measured with a scale proposed by Tu et al\. \(2012\)\. Global identity and local identity were measured by four items each, rated on a 5\-point scale ranging from 1 \(strongly disagree\) to 5 \(strongly agree\)\. The survey captured the consumers\' age, income, gender, level of education, employment status and place\/location of residence\.]

To ensure correct translation of the items a back\-translation from English to Polish process was employed \(Brislin, 1970\)\. Two experts in the field checked both English and Polish surveys and reported on the accuracy of the translations\. The survey was tested with 20 students in Poland\. Minor changes to the order and wording of items were made after the pre\-test to ensure grammatical accuracy\.

== 3\.3 Multi\-step sampling
#par(first-line-indent: 0em)[We employed a stratified sampling procedure to produce variation on three key factors, that is, age, income and location\. Data were collected via mall intercept in 18 randomly selected locations in Poland\. We used an official government register with a list of all places in Poland \(KNMIOF, 2015\)\. To ensure heterogeneity of the data, the list was used to randomly select two large cities, two towns and two villages\. Before visiting these locations, Internet search to identify if these places had a local shop or hosted a local market or had other locations where individuals could be publicly approached \(GP surgery, school, local authority office\) was conducted\. These six locations were then visited, and the mall intercept survey conducted\. Two trained interviewees travelled to these locations together and approached potential respondents and invited them to complete the pen\-and\-paper survey\. This procedure was repeated three times\; hence 18 locations were visited in order to achieve satisfactory sample size\. This sampling approach generated 432 completed questionnaires\.]

Females represented 55\.09% \(#emph[n] \= 238\) of the sample, the observed mean age was 31\.71 \(#emph[SD] \= 10\.17\), the median education level was university degree \(59\.3%\; #emph[n] \= 256\), and 308 \(71\.3%\) respondents declared to be employed \(full or part time\)\. There was an even spread of respondents from rural areas, small towns, and large cities across the sample\. The characteristics of the final sample closely match the typical consumer demographics in Poland \(GUS Central Statistical Office, 2016\)\.

== 3\.4 Data analysis
#par(first-line-indent: 0em)[Data analysis included procedures to ensure the robustness of the estimations\. First, the dataset was verified for possible rejection of invalid and incomplete questionnaires\. For rejecting invalid entries, we calculated the standard deviation of all items included in the survey to \(i\) detect whether consumers rated all the questions with only one anchor \(e\.g\., by choosing the same scale\-point throughout the whole survey\; such endorsing behaviour yields a #emph[SD]#sub[items] \= 0\; and \(ii\) detect very low engagement into the task through an indication of #emph[SD]#sub[items] ranging from 0\.1 to 0\.3 \(Schivinski et al\., 2021\)\. Incomplete questionnaires were also rejected to avoid the imputation of data\.]

Second, to check for univariate normality of the data, none of the questionnaire items had absolute values of skewness \>3\.0 and kurtosis \>8\.0 \(Hair et al\., 2010\)\. The final sample resulted in 432 \(92\.9%\) valid surveys eligible for analyses\. All the reported computations were executed using R system for statistical computing Version 3\.6\.2 ‘Dark and Stormy Night’ using the packages psych \(Procedures for Psychological, Psychometric, and Personality Research Version 1\.9\.12\; Revelle, 2015\), and lavaan \(Latent Variable Analysis Version 0\.6\-5\; Rosseel, 2012\)\.

= 4 Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== 4\.1 Construct validity and dimensionality
#par(first-line-indent: 0em)[The following model fit indices were used to examine the goodness of fit of the structural models, hence, root mean square error of approximation \(RMSEA\) \[≤0\.08\], RMSEA 90% confidence interval \(CI\) with the lower limit close to 0 and the upper limit less than or equal to 0\.08\; Comparative Fit Index \(CFI\)\; and Tucker\-Lewis Fit Index \(TLI\) \[≥0\.90\] \(Hair et al\., 2010\)\.]

Prior to the validity and dimensionality tests, the data were verified against systematic response patterns, that is, common method bias \(CMB\)\. CMB was tested by implementing the common latent factor method using the confirmatory factor analysis \(CFA\) approach and the maximum likelihood estimation method \(ML\; Podsakoff et al\., 2003\)\. To implement the common latent factor method, the items of all latent variables \(factors\) were stipulated to freely load into a single factor solution \(i\.e\., unconstrained same\-source model\)\. The unconstrained same\-source model yielded the following results: ML#sub[unconstrained] #emph[χ]#super[2] \= 6086\.15\; CFI \= 0\.19\; TLI \= 0\.12\; RMSEA \= 0\.21 \[90% CI: 0\.20–0\.21\]\. The unconstrained model was subsequently contrasted to a constrained model where the factor loadings were restricted to zero \(ML#sub[constrained] #emph[χ]#super[2] #sub[\(325\)] \= 5667\.37\; CFI \= 0\.21\; TLI \= 0\.14\; RMSEA \= 0\.18 \[90% CI: 0\.18–0\.19\]\)\. The model fit of the unconstrained same\-source model was worse than the constrained model\. Therefore, the results indicated no issues regarding CMB in the data \(Podsakoff et al\., 2003\)\.

Construct validity and dimensionality of the conceptual model were examined by computing a CFA using the robust maximum likelihood estimation method \(MLR\)\. The CFA yielded the following results: MLR #emph[χ]#super[2] #sub[\(278\)] \= 749\.17\; CFI \= 0\.94\; TLI \= 0\.93\; RMSEA \= 0\.06 \[90% CI: 0\.06–0\.07\]\. These results evidence the excellent fit of the conceptual model to the data\.

All the standardised loadings estimates were statistically significant and greater than #emph[λ] \= 0\.59\. There was no evidence of cross\-loading across the items \(the full description of descriptive statistics can be found at Table A1\)\. The tests evidence convergent validity \(Hair et al\., 2010\)\.

In terms of discriminant validity, the average variance extracted \(AVE\) was calculated for each latent variable\. They ranged from 0\.50 to 0\.79 and were equal or above the acceptable threshold of 0\.50 \(Bagozzi & Yi, 1988\)\. Finally, the square roots of the AVE scores were higher than the correlations across the factors\. The abovementioned tests support discriminant validity \(Hair et al\., 2010\)\.

== 4\.2 Reliability analysis
#par(first-line-indent: 0em)[The scales\' internal consistency was evaluated using Cronbach\'s alpha and composite reliability \(CR\)\. The alpha and CR values were well above the recommended 0\.70 threshold \(Hair et al\., 2010\) ranging from 0\.80 to 0\.94, therefore evidencing the internal consistency of all the scales used in the study\. Table B1 summarises the reliability, validity and CFA tests\.]

== 4\.3 Hypothesis testing
#par(first-line-indent: 0em)[To test the hypotheses, we implemented path and moderation analysis with structural equation modelling \(SEM\)\. The estimator method was MLR\. The goodness of fit GOF values for the directional model MLR #emph[χ]#super[2] #sub[\(383\)] \= 3177\.22, CFI \= 0\.91, TLI \= 0\.90, RMSEA \= 0\.06 \[90% C\.I\. 0\.06–0\.08\]\. In terms of control variables, age and income were regressed on PCE\. The calculations indicated that consumer age was found to positively influence PCE \(#emph[β] \= 0\.11\; #emph[t]\-value \= 2\.40\; #emph[p]\-value \= \.01\)\. No effect was identified for the influence of income on PCE \(#emph[p]\-value \= \.83\)\.]

The first set of directional hypotheses posited that vertical individualism positively influences PCE \(H1A\)\. The calculations supported the directional relationship \(#emph[β] \= 0\.17\; #emph[t]\-value \= 2\.86\; #emph[p]\-value \= \.01\)\. H1B anticipated that horizontal individualism is positively associated with PCE\. The calculations did not support the relationship \(#emph[p]\-value \= \.55\)\. The second set of directional hypotheses posited a negative association between vertical collectivism and PCE \(H2A\)\. This relationship was not supported based on the analysis \(#emph[β] \= 0\.32, #emph[t]\-value \= 4\.66\; #emph[p]\-value \>\.001\) as the association was positive\. Finally, H2B anticipated horizontal collectivism to be negatively associated with PCE\. The results did not support this hypothesis \(#emph[p]\-value \= \.28\)\.

In terms of moderation analysis, the interaction terms were computed as composite scoring combining the items from the respective underlying latent variables \(Rosseel, 2012\)\. The calculations were based on 5000 bootstrapping samples\.

The first interaction \(H3A\) anticipated that global identity should positively moderate the relationship between vertical individualism and PCE\. Hypothesis H3A was supported \(#emph[β] \= 0\.07\; #emph[t]\-value \= 1\.65\; #emph[p]\-value \= \.09\), as indeed changes in the levels of global identity enhanced the positive influence of vertical individualism on PCE \(see Figure 1\)\. Lastly, H4A postulated that local identity would weaken the relationship between vertical collectivism and PCE\. Whilst local identity moderates the relationship between vertical collectivism and PCE \(see Figures 2 and 3\), it does not do so in the hypothesised direction, leading to the rejection of H4A \(#emph[β] \= 0\.23\; #emph[t]\-value \= 4\.76\; #emph[p]\-value \>\.001\)\. Table 2 summarises the hypothesis tests and provides additional statistics\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Standardised structural coefficients of the conceptual model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Path]], [#strong[β]], [#strong[#emph[t]\-value]], [#strong[#emph[p]\-value]]),
table.hline(stroke: 0.5pt),
[#emph[Direct effects]], [], [], [],
[H1A\. Vertical individualism → perceived consumer effectiveness], [0\.17], [2\.86], [\.01],
[H1B\. Horizontal individualism → perceived consumer effectiveness], [0\.03], [0\.58], [\.55],
[H2A\. Vertical collectivism → perceived consumer effectiveness], [0\.32], [4\.66], [\.001],
[H2B\. Horizontal collectivism → perceived consumer effectiveness], [0\.07], [1\.06], [\.28],
[#emph[Control variables]], [], [], [],
[Age → perceived consumer effectiveness], [0\.11], [2\.40], [\.01],
[Income → perceived consumer effectiveness], [0\.01], [0\.20], [\.83],
[#emph[Moderation analysis]], [], [], [],
[H3A\. Vertical individualism → perceived consumer effectiveness | global identity], [0\.07], [1\.65], [\.09],
[H4A\. Vertical collectivism → perceived consumer effectiveness | local identity], [0\.23], [4\.76], [\.001],
[#emph[Direct effects derived from the moderation analysis]], [], [], [],
[Global identity → perceived consumer effectiveness], [0\.16], [3\.17], [\.001],
[Local identity → perceived consumer effectiveness], [0\.04], [0\.87], [\.38],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]: MLR #emph[χ]#super[2]#sub[\(383\)] \= 3177\.22, CFI \= 0\.91, TLI \= 0\.90, RMSEA \= 0\.06 \[90% C\.I\. 0\.06–0\.08\]\; #emph[n] \= 432\.]
]
#v(12pt)
#figure(image("build/fig2.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figures 2 and 3\. The moderating role of global identity for vertical individualism \(Figure 2, left\) and of local identity for vertical collectivism \(Figure 3, right\)\. Redrawn from the published figures\.]]
#v(0.6em)
= 5 Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Building on the concept of value congruence, we examined the assumption that the conceptual congruence between individual cultural values of vertical\/horizontal individualism and collectivism and PCE belief leads to higher levels of that belief\. In addition, we tested the moderating effect of global and local social identities to examine if congruence between values and identities influences the basic relationships\.]

The findings demonstrated that vertical individualists \(those who believe in their own individual responsibility, and competition\) are more likely to believe that their purchases matter for the environment, community and employee welfare\. This relationship was strengthened by the higher level of global identity\. In this case, the proposed congruence was supported\. Similarly, vertical collectivists also believe that their purchases matter, and this is even stronger when local identity increases, but these findings were in opposition to the postulated hypotheses\. The findings suggest that vertical individualists and vertical collectivists both believe their purchases matter, but they may hold these beliefs for different reasons\. Vertical individualists may think it is important to make considered purchases because they believe in the power of their own individual actions, and vertical collectivists may hold these beliefs because of the impact their individual purchases have on their groups\. However, this interpretation requires further examination, by for example exploring motives behind those beliefs\.

Even though the results provide limited support for the proposition that value congruence explains the relationship between values, social identities and beliefs, the findings are not at odds with previous research\. Studies that examined the relations between vertical\/horizontal individualism and collectivism and PCE, or broader sustainable consumption behaviour, produced inconclusive findings\. Cho et al\. \(2013\) found that vertical individualism was positively related to PCE amongst consumers in the United States and South Korea, but contrary to the current findings, Cho et al\. \(2013\) found it was horizontal collectivism not vertical collectivism that was positively associated with PCE\. Ali et al\. \(2019\) found that vertical individualism and vertical collectivism play a positive moderating role in motivations for purchasing green cars amongst Chinese and German consumers\. However, the authors found that horizontal collectivism too is important\. These inconclusive findings suggest that both dimensions of individualism and collectivism are positively related to PCE but both individualists and collectivists hold such beliefs for different reasons\.

Moreover, the study\'s findings confirm that social identity can act as an amplifier, hence provides support to assertions that social identities are important in explaining, predicting and possibly influencing sustainable consumer behaviours and intentions \(White et al\., 2019\)\. The positive relationship between individuals\' level of vertical individualism and PCE is positively moderated by global identity, and the positive relationship between vertical collectivism and PCE is positively moderated by local identity\. This suggests that the stronger the global or local identity is, the stronger the effect of values on PCE is, confirming the significance of social identity and its impact on beliefs of consumer self\-efficacy\.

== 5\.1 Theoretical contributions
#par(first-line-indent: 0em)[Theoretically, this study offers the following contributions\. First, it provides context\-specific evidence from an understudied market that supports the notion that the conceptual distinction between vertical and horizontal values of the individualism–collectivism dimension matters in explaining consumer behaviour \(Cho et al\., 2013\; Czarnecka et al\., 2020\; Fatehi et al\., 2020\; Shavitt & Cho, 2016\)\. The current study suggests that it is the vertical versus horizontal distinction that plays a role in explaining consumers\' level of PCE in the studied sample\. The level of PCE is related to a person\'s preference for social hierarchies between individuals amongst other individuals, and between individuals within groups\. Those individuals who believe that success is an individual achievement \(attributed only to the individual\), and those who believe they must sacrifice their own interests for the benefit of the group \(hence, their own individual action is important for the benefit of the group\) are more likely to believe their individual actions matter in the context of consumption\'s impact on the environment, employee welfare and social issues\. It also suggests that both individualists and collectivists exhibit PCE but they may hold these beliefs for different reasons—vertical individualism because of personal gain, and vertical collectivism because of benefit for the group\. Moreover, the study confirms the importance of social identities as a factor that influences PCE\.]

Second, the results of the study suggest that the conceptual value congruence proposition only partially explains the relationships between variables\. Specifically, vertical individualism and global identity lead to increase of PCE, and local identity increases PCE for vertical collectivists\. Perhaps, the congruency here should be defined by responsibility rather than orientation between individualism and collectivism\. The finding of the importance of vertical orientation for the higher level of PCE suggests that consumers who accept inequality and social hierarchies between individuals, or hierarchies between individuals in groups perceive themselves as more responsible\. They believe their actions matter\. As horizontal individualists and collectivists prefer more egalitarian relations amongst people, they may not necessarily perceive their individual actions being important and rather may think their actions may matter only if others perform those actions too\.

However, when findings of this study are taken into consideration in the wider context of past studies which examined the association between the specified variables, the lack of repeatable and conclusive patterns across the discussed studies is an important finding itself \(Laws, 2016\; Maxwell et al\., 2015\)\. It suggests that such relationships exist for some individuals only, but not for others regardless of the level of individualism and collectivism and their types, or may depend on the methodology applied \(e\.g\., the way questionnaire questions are presented, or sample size\)\.

== 5\.2 Practical implications
#par(first-line-indent: 0em)[The current study may be of use to both commercial marketers who promote green products, and to social marketers and consumer organisations who work to raise awareness about sustainable consumer behaviour\. The findings suggest that companies offering green products or sustainable products should consider the cultural values of horizontal and vertical individualism and collectivism and global–local identities of consumers when creating marketing strategies\. Because PCE is higher for consumers who hold vertical individualistic and vertical collectivistic values, companies should focus primarily on this group as such consumers should respond the most favourably to products and brands that are positioned as environmentally and socially responsible\. Considering the current study in the context of results of past studies, practitioners can be confident that especially vertical individualists who have global identity will be more likely to believe that their individual consumption matters for environmental, social and employee welfare\. Although our study also showed that vertical collectivists with local identity believe their consumption actions matter, this is not widely confirmed by previous studies, and may be only specific to the context we studied\. As no positive association was found between horizontal individualism and horizontal collectivism tendencies and PCE, further research could focus on how to increase PCE of such consumers\.]

Some researchers advocate for social identity\-based motivation strategies to influence behaviour \(Nurra & Oyserman, 2018\), and hence the current research findings are potentially useful to those practitioners who wish to employ an identity\-based motivation approach in their segmentation, targeting and communication strategies \(Costa\-Pinto et al\., 2014\)\. The results suggest that employing global and local identity strategies may be effective in strengthening PCE in Polish consumers\. However, this proposition requires further investigation into the effectiveness of such identity\-based efforts\.

== 5\.3 Limitations and future research
#par(first-line-indent: 0em)[Although this study adds to the current literature on PCE by providing new insights regarding antecedents and moderators, the findings must be considered within certain limitations\. The cross\-sectional design of this study limits the strength of causal inferences that can be drawn from the data\. Cross\-sectional surveys measure individuals\' perceptions of variables rather than the actual causal processes that occur between them \(Woodside, 2011\)\. The sampling approach focused on reaching respondents who represent variance in the level of the studied variables, and although systematic process was followed to ensure a wide range of individuals were surveyed, the study did not employ simple random sampling strategy, which would allow for generalisations\.]

Future research could follow several directions\. First, we propose that this study should be replicated in other national contexts to establish whether these patterns can be found elsewhere and further examine the reasons behind such variations between studies regarding the associations of horizontal\/vertical values and PCE\. Second, examining the differences in PCE levels between the different types of individualism and collectivism would shed light on which values are associated with higher levels of PCE beyond merely stating positive or negative associations between those variables\. Third, it is important to monitor PCE longitudinally since its intensity may change over the consumer\'s life cycle\. Forth, future studies could examine other possible value antecedents of PCE\. Fifth, it would be worthwhile to examine how PCE relates to product categories\. Do consumers consider the environmental and societal consequences of their purchases when they buy certain products but ignore it when they buy others? Moreover, experimental studies to test how consumers would respond to marketing communications featuring environmentally friendly products and emphasising vertical individualism values or vertical collectivism values \(vs\. horizontal\) and global or local identity would establish if such manipulations result in differences in effectiveness depending on the consumer\'s values \(e\.g\., Lee & Haley, 2020\)\. Lastly, we recommend that a meta\-analysis of studies, which focused on individualism and collectivism \(including vertical and horizontal individualism–collectivism\) and PCE would clarify controversies arising from apparently conflicting studies\.

= Acknowledgments
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[We thank the anonymous reviewers for their constructive comments on our manuscript\.]

= Conflict of interest
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The authors declare no conflict of interest\.]

= Data availability statement
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Data files are available upon request from the authors of the study\.]

= ORCID
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Barbara Czarnecka https:\/\/orcid\.org\/0000\-0002\-8314\-1727]

Bruno Schivinski https:\/\/orcid\.org\/0000\-0002\-4095\-1922

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Ali, A\., Xiaoling, G\., Ali, A\., Sherwani, M\., & Muneeb, F\. M\. \(2019\)\. Customer motivations for sustainable consumption: Investigating the drivers of purchase behavior for a green\-luxury car\. #emph[Business Strategy and the Environment], #emph[28]\(5\), 833–846\. https:\/\/doi\.org\/10\.1002\/bse\.2284

Alsaad, A\., Saif\-Alyousfi, A\. Y\. H\., & Elrehail, H\. \(2020\)\. Religiosity, idealism, and ethical consumption: The mediating effect of perceived customer effectiveness and moral obligation\. #emph[Journal of Social Marketing], #emph[11]\(1\), 25–43\. https:\/\/doi\.org\/10\.1108\/JSOCM\-07\-2020\-0116

Al\-Swidi, A\., & Saleh, R\. M\. \(2021\)\. How green our future would be? An investigation of the determinants of green purchasing behavior of young citizens in a developing country\. #emph[Environment, Development and Sustainability], #emph[23], 1–33\. https:\/\/doi\.org\/10\.1007\/s10668\-020\-01220\-z

Alzubaidi, H\., Slade, E\. L\., & Dwivedi, Y\. K\. \(2020\)\. Examining antecedents of consumers\' pro\-environmental behaviours: TPB extended with materialism and innovativeness\. #emph[Journal of Business Research], #emph[122]\(1\), 685–699\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2020\.01\.017

Antonetti, P\., & Maklan, S\. \(2014\)\. Feelings that make a difference: How guilt and pride convince consumers of the effectiveness of sustainable consumption choices\. #emph[Journal of Business Ethics], #emph[124]\(1\), 117–134\. https:\/\/doi\.org\/10\.1007\/s10551\-013\-1841\-9

Arias, C\., & Trujillo, C\. A\. \(2020\)\. Perceived consumer effectiveness as a trigger of behavioral spillover effects: A path towards recycling\. #emph[Sustainability], #emph[12]\(11\), 4348\. https:\/\/doi\.org\/10\.3390\/su12114348

Asadi, S\., Nilashi, M\., Samad, S\., Abdullah, R\., Mahmoud, M\., Alkinani, M\. H\., & Yadegaridehkordi, E\. \(2021\)\. Factors impacting consumers\' intention toward adoption of electric vehicles in Malaysia\. #emph[Journal of Cleaner Production], #emph[282], 124474\. https:\/\/doi\.org\/10\.1016\/j\.jclepro\.2020\.124474

Ashraf, M\. S\., Hou, F\., Kim, W\. G\., Ahmad, W\., & Ashraf, R\. U\. \(2020\)\. Modeling tourists\' visiting intentions toward ecofriendly destinations: Implications for sustainable tourism operators\. #emph[Business Strategy and the Environment], #emph[29]\(1\), 54–71\. https:\/\/doi\.org\/10\.1002\/bse\.2350

Bagozzi, R\. P\., & Yi, Y\. \(1988\)\. On the evaluation of structural equation models\. #emph[Journal of the Academy of Marketing Science], #emph[16]\(1\), 74–94\. https:\/\/doi\.org\/10\.1007\/BF02723327

Bartels, J\., & Reinders, M\. J\. \(2016\)\. Consuming apart, together: The role of multiple identities in sustainable behaviour\. #emph[International Journal of Consumer Studies], #emph[40]\(4\), 444–452\. https:\/\/doi\.org\/10\.1111\/ijcs\.12269

Bolton, R\. N\. \(2020\)\. The long view on the responsibilities of business and marketers\. #emph[Journal of Macromarketing], #emph[40]\(3\), 332–335\. https:\/\/doi\.org\/10\.1177\/0276146720926641

Bonaiuto, M\., Breakwell, G\. M\., & Cano, I\. \(1996\)\. Identity processes and environmental threat: The effects of nationalism and local identity upon perception of beach pollution\. #emph[Journal of Community & Applied Social Psychology], #emph[6]\(3\), 157–175\. https:\/\/doi\.org\/10\.1002\/\(SICI\)1099\-1298\(199608\)6:3\<157::AID\-CASP367\>3\.0\.CO\;2\-W

Brieger, S\. A\. \(2019\)\. Social identity and environmental concern: The importance of contextual effects\. #emph[Environment and Behavior], #emph[51]\(7\), 828–855\. https:\/\/doi\.org\/10\.1177\/0013916518756988

Brislin, R\. W\. \(1970\)\. Back\-translation for cross\-cultural research\. #emph[Journal of Cross\-Cultural Psychology], #emph[1]\(3\), 185–216\. https:\/\/doi\.org\/10\.1177\/135910457000100301

Brusselaers, J\., Verbeke, W\., Mettepenningen, E\., & Buysse, J\. \(2020\)\. Unravelling the true drivers for eco\-certified wood consumption by introducing scarcity\. #emph[Forest Policy and Economics], #emph[111], 102026\. https:\/\/doi\.org\/10\.1016\/j\.forpol\.2019\.102026

Buenstorf, G\., & Cordes, C\. \(2008\)\. Can sustainable consumption be learned? A model of cultural evolution\. #emph[Ecological Economics], #emph[67]\(4\), 646–657\. https:\/\/doi\.org\/10\.1016\/j\.ecolecon\.2008\.01\.028

Burhanudin, B\., Ronny, R\., & Sihotang, E\. T\. \(2021\)\. Consumer guilt and green banking services\. #emph[International Journal of Consumer Studies], #emph[45]\(1\), 38–53\. https:\/\/doi\.org\/10\.1111\/ijcs\.12602

Capozza, D\., Voci, A\., & Licciardello, O\. \(2000\)\. Individualism, collectivism and social identity theory\. In D\. Capozza & R\. Brown \(Eds\.\), #emph[Social identity processes: Trends in theory and research] \(pp\. 62–80\)\. Sage Publications\. https:\/\/doi\.org\/10\.4135\/9781446218617\.n5

Chen, M\.\-F\. \(2020\)\. The impacts of perceived moral obligation and sustainability self\-identity on sustainability development: A theory of planned behavior purchase intention model of sustainability\-labelled coffee and the moderating effect of climate change scepticism\. #emph[Business Strategy and the Environment], #emph[29], 1–14\. https:\/\/doi\.org\/10\.1002\/bse\.2510

Cho, Y\. N\., Thyroff, A\., Rapert, M\. I\., Park, S\. Y\., & Lee, H\. J\. \(2013\)\. To be or not to be green: Exploring individualism and collectivism as antecedents of environmental behavior\. #emph[Journal of Business Research], #emph[66]\(8\), 1052–1059\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2012\.08\.020

Costa\-Pinto, D\., Herter, M\. M\., Rossi, P\., & Borges, A\. \(2014\)\. Going green for self or for others? Gender and identity salience effects on sustainable consumption\. #emph[International Journal of Consumer Studies], #emph[38]\(5\), 540–549\. https:\/\/doi\.org\/10\.1111\/ijcs\.12114

Culiberg, B\. \(2015\)\. The role of moral philosophies and value orientations in consumer ethics: A post\-transitional European country perspective\. #emph[Journal of Consumer Policy], #emph[38]\(3\), 211–228\. https:\/\/doi\.org\/10\.1007\/s10603\-015\-9295\-3

Czarnecka, B\., & Schivinski, B\. \(2019\)\. Do consumers acculturated to global consumer culture buy more impulsively? The moderating role of attitudes towards and beliefs about advertising\. #emph[Journal of Global Marketing], #emph[32]\(4\), 219–238\. https:\/\/doi\.org\/10\.1080\/08911762\.2019\.1600094

Czarnecka, B\., Schivinski, B\., & Keles, S\. \(2020\)\. How values of individualism and collectivism influence impulsive buying and money budgeting: The mediating role of acculturation to global consumer culture\. #emph[Journal of Consumer Behaviour], #emph[19], 505–522\. https:\/\/doi\.org\/10\.1002\/cb\.1833

Díaz\-Loving, R\., Cruz\-Torres, C\. E\., Armenta\-Huarte, C\., & Reyes\-Ruiz, N\. E\. \(2018\)\. Variations in horizontal and vertical individualismcollectivism in four regions of Mexico\/Variaciones en el individualismo\-colectivismo horizontal y vertical en cuatro regiones de México\. #emph[Revista de Psicología Social], #emph[33]\(2\), 329–356\. https:\/\/doi\.org\/10\.1080\/02134748\.2018\.1435217

Edwards, J\. R\., & Cable, D\. M\. \(2009\)\. The value of value congruence\. #emph[Journal of Applied Psychology], #emph[94]\(3\), 654–677\. https:\/\/doi\.org\/10\.1037\/a0014891

Ellen, P\., Wiener, J\., & Cobb\-Walgren, C\. \(1991\)\. The role of perceived consumer effectiveness in motivating environmentally conscious behaviors\. #emph[Journal of Public Policy & Marketing], #emph[10]\(2\), 102–117 Retrieved from http:\/\/www\.jstor\.org\/stable\/30000238

Escario, J\. J\., Rodriguez\-Sanchez, C\., & Casalo, L\. V\. \(2020\)\. The influence of environmental attitudes and perceived effectiveness on recycling, reducing, and reusing packaging materials in Spain\. #emph[Waste Management], #emph[113], 251–260\. https:\/\/doi\.org\/10\.1016\/j\.wasman\.2020\.05\.043

Ettinger, A\., Grabner\-Kräuter, S\., Okazaki, S\., & Terlutter, R\. \(2021\)\. The desirability of CSR communication versus greenhushing in the hospitality industry: The customers\' perspective\. #emph[Journal of Travel Research], #emph[60]\(3\), 618–638\. https:\/\/doi\.org\/10\.1177\/0047287520930087

Export\.gov\. \(2019\)\. Poland—Market overview\. Retrieved from https:\/\/www\.export\.gov\/article?series\=a0pt0000000PAuiAAG&type\=Country\_Commercial\_\_kav\.

Fatehi, K\., Priestley, J\. L\., & Taasoobshirazi, G\. \(2020\)\. The expanded view of individualism and collectivism: One, two, or four dimensions? #emph[International Journal of Cross Cultural Management], #emph[20]\(1\), 7–24\. https:\/\/doi\.org\/10\.1177\/1470595820913077

Fielding, K\. S\., & Hornsey, M\. J\. \(2016\)\. A social identity analysis of climate change and environmental attitudes and behaviors: Insights and opportunities\. #emph[Frontiers in Psychology], #emph[7], 121\. https:\/\/doi\.org\/10\.3389\/fpsyg\.2016\.00121

Fritsche, I\., Barth, M\., Jugert, P\., Masson, T\., & Reese, G\. \(2018\)\. A social sdentity model of pro\-environmental action \(SIMPEA\)\. #emph[Psychological Review], #emph[125]\(2\), 245–269\. https:\/\/doi\.org\/10\.1037\/rev0000090

Gaines, S\. O\., Jr\., Marelich, W\. D\., Bledsoe, K\. L\., Steers, W\. N\., Henderson, M\. C\., Granrose, C\. S\., … Yum, N\. \(1997\)\. Links between race\/ethnicity and cultural values as mediated by racial\/ethnic identity and moderated by gender\. #emph[Journal of Personality and Social Psychology], #emph[72]\(6\), 1460–1476\. https:\/\/doi\.org\/10\.1037\/\/0022\-3514\.72\.6\.1460

Gao, H\., Mittal, V\., & Zhang, Y\. \(2020\)\. The differential effect of local–global identity among males and females: The case of price sensitivity\. #emph[Journal of Marketing Research], #emph[57]\(1\), 173–191\. https:\/\/doi\.org\/10\.1177\/0022243719889028

Gao, J\., Zhao, J\., Wang, J\., & Wang, J\. \(2020\)\. The influence mechanism of environmental anxiety on pro\-environmental behaviour: The role of self\-discrepancy\. #emph[International Journal of Consumer Studies], #emph[45], 54–64\. https:\/\/doi\.org\/10\.1111\/ijcs\.12604

Garg, P\., & Pandey, A\. \(2020\)\. Towards sustainable tourism: An empirical investigation\. #emph[Foresight], #emph[23]\(2\), 188–200\. https:\/\/doi\.org\/10\.1108\/FS\-04\-2020\-0042

Gautam, V\. \(2020\)\. Examining environmental friendly behaviors of tourists towards sustainable development\. #emph[Journal of Environmental Management], #emph[276], 111292\. https:\/\/doi\.org\/10\.1016\/j\.jenvman\.2020\.111292

Gjersoe, N\. L\., Newman, G\. E\., Chituc, V\., & Hood, B\. \(2014\)\. Individualism and the extended\-self: Cross\-cultural differences in the valuation of authentic objects\. #emph[PLoS One], #emph[9]\(3\), e90787\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0090787

Guan, M\., & So, J\. \(2016\)\. Influence of social identity on self\-efficacy beliefs through perceived social support: A social identity theory perspective\. #emph[Communication Studies], #emph[67]\(5\), 588–604\. https:\/\/doi\.org\/10\.1080\/10510974\.2016\.1239645

GUS Central Statistical Office\. \(2016\)\. Structure of the population by 2016\. Retrieved from https:\/\/stat\.gov\.pl\/en\/topics\/population\/population\/structure\-of\-the\-population\-by\-2016,7,1\.html\.

Hair, J\. F\., Jr\., Black, W\. C\., Babin, B\. J\., & Anderson, R\. E\. \(2010\)\. #emph[Multivariate data analysis: A global perspective] \(7th ed\.\)\. Pearson Prentice Hall\.

Heo, J\., & Muralidharan, S\. \(2019\)\. What triggers young millennials to purchase eco\-friendly products? The interrelationships among knowledge, perceived consumer effectiveness, and environmental concern\. #emph[Journal of Marketing Communications], #emph[25]\(4\), 421–437\. https:\/\/doi\.org\/10\.1080\/13527266\.2017\.1303623

Hong, J\. W\., & Zinkhan, G\. M\. \(1995\)\. Self\-concept and advertising effectiveness: The influence of congruency, conspicuousness, and response mode\. #emph[Psychology & Marketing], #emph[12], 53–77\. https:\/\/doi\.org\/10\.1002\/mar\.4220120105

Hosta, M\., & Zabkar, V\. \(2020\)\. Antecedents of environmentally and socially responsible sustainable consumer behavior\. #emph[Journal of Business Ethics], #emph[171], 273–293\. https:\/\/doi\.org\/10\.1007\/s10551\-019\-04416\-0

Inglehart, R\. \(2020\)\. #emph[Modernization and postmodernization: Cultural, economic, and political change in 43 societies]\. Princeton University Press\.

Kang, J\., Liu, C\., & Kim, S\. H\. \(2013\)\. Environmentally sustainable textile and apparel consumption: The role of consumer knowledge, perceived consumer effectiveness and perceived personal relevance\. #emph[International Journal of Consumer Studies], #emph[37]\(4\), 442–452\. https:\/\/doi\.org\/10\.1111\/ijcs\.12013

Kautish, P\., Paul, J\., & Sharma, R\. \(2019\)\. The moderating influence of environmental consciousness and recycling intentions on green purchase behavior\. #emph[Journal of Cleaner Production], #emph[228], 1425–1436\. https:\/\/doi\.org\/10\.1016\/j\.jclepro\.2019\.04\.389

Knap, R\. \(2013\)\. #emph[Centra handlowe – rynek, konsument i kariera]\. Retrieved from ue\.poznan\.pl\/www\/data\/upload\/image\/zo\/Knap2\.pdf\.

KNMIOF\. \(2015\)\. Wykaz urzędowych nazw miejscowosci i ich częsci \[List of official names of places and their parts\]\. Retrieved from http:\/\/knmiof\.mswia\.gov\.pl\/kn\/baza\-nazw\-miejscowosci\/10466,Wykazurzedowych\-nazw\-miejscowosci\-i\-ich\-czesci\.html\.

Kramarczyk, J\., & Alemany Oliver, M\. \(2020\)\. Accumulative vs\. appreciative expressions of materialism: Revising materialism in light of polish simplifiers and new materialism\. #emph[Journal of Business Ethics]\. https:\/\/doi\.org\/10\.1007\/s10551\-020\-04628\-9

Kristof, A\. L\. \(1996\)\. Person\-organization fit: An integrative review of its conceptualizations, measurement, and implications\. #emph[Personnel Psychology], #emph[49], 1–49\. https:\/\/doi\.org\/10\.1111\/j\.1744\-6570\.1996\.tb01790\.x

Kuanr, A\., Israel, D\., Pradhan, D\., & Roy Chaudhuri, H\. \(2020\)\. Can we anti\-consume our way to sustainability? Finding answers at the intersection of cultural values\. #emph[Journal of Consumer Behaviour], #emph[20]\(5\), 1051–1064\. https:\/\/doi\.org\/10\.1002\/cb\.1914

Kuo, A\., & Rice, D\. H\. \(2015\)\. The impact of perceptual congruence on the effectiveness of cause\-related marketing campaigns\. #emph[Journal of Consumer Psychology], #emph[25]\(1\), 78–88\. https:\/\/doi\.org\/10\.1016\/j\.jcps\.2014\.06\.002

Lasarov, W\., Mai, R\., de Frutos, N\. G\., Egea, J\. M\. O\., & Hoffmann, S\. \(2019\)\. Counter\-arguing as barriers to environmentally motivated consumption reduction: A multi\-country study\. #emph[International Journal of Research in Marketing], #emph[36]\(2\), 281–305\. https:\/\/doi\.org\/10\.1016\/j\.ijresmar\.2018\.11\.005

Laws, K\. R\. \(2016\)\. Psychology, replication & beyond\. #emph[BMC Psychology], #emph[4], 30\. https:\/\/doi\.org\/10\.1186\/s40359\-016\-0135\-2

Lee, Y\. J\., & Haley, E\. \(2020\)\. How do generational differences drive response to social\-issue ads?: The effect of value orientations across generations in the US\. #emph[Journal of Advertising Research], #emph[60]\(3\), 271–289\. https:\/\/doi\.org\/10\.2501\/JAR\-2019\-013

Martin, I\. M\., & Stewart, D\. W\. \(2001\)\. The differential impact of goal congruency on attitudes, intentions, and the transfer of brand equity\. #emph[Journal of Marketing Research], #emph[38]\(4\), 471–484\. https:\/\/doi\.org\/10\.1509\/jmkr\.38\.4\.471\.18912

Maxwell, S\. E\., Lau, M\. Y\., & Howard, G\. S\. \(2015\)\. Is psychology suffering from a replication crisis? What does “failure to replicate” really mean? #emph[American Psychologist], #emph[70]\(6\), 487–498\. https:\/\/doi\.org\/10\.1037\/a0039400

Milfont, T\. L\., Osborne, D\., Yogeeswaran, K\., & Sibley, C\. G\. \(2020\)\. The role of national identity in collective pro\-environmental action\. #emph[Journal of Environmental Psychology], #emph[72], 101522\. https:\/\/doi\.org\/10\.1016\/j\.jenvp\.2020\.101522

Mutum, D\. S\., Ghazali, E\. M\., & Wei\-Pin, W\. \(2021\)\. Parallel mediation effect of consumption values and the moderation effect of innovative\-ness, in predicting the influence of identity on green purchasing behavior\. #emph[Journal of Consumer Behaviour], #emph[20], 827–844\. https:\/\/doi\.org\/10\.1002\/cb\.1913

Nadler, D\., & Tushman, M\. \(1980\)\. A diagnostic model for organizational behavior\. In J\. R\. Hackman, et al\. \(Eds\.\), #emph[Perspectives on behavior in organizations] \(pp\. 83–100\)\. McGraw Hill\.

Nelson, M\. R\., & Shavitt, S\. \(2002\)\. Horizontal and vertical individualism and achievement values: A multimethod examination of Denmark and the United States\. #emph[Journal of Cross\-Cultural Psychology], #emph[33]\(5\), 439–458\. https:\/\/doi\.org\/10\.1177\/0022022102033005001

Ng, S\., & Basu, S\. \(2019\)\. Global identity and preference for environmentally friendly products: The role of personal responsibility\. #emph[Journal of Cross\-Cultural Psychology], #emph[50]\(8\), 919–936\. https:\/\/doi\.org\/10\.1177\/0022022119873432

Nguyen, N\., & Pervan, S\. \(2020\)\. Retailer corporate social responsibility and consumer citizenship behavior: The mediating roles of perceived consumer effectiveness and consumer trust\. #emph[Journal of Retailing and Consumer Services], #emph[55], 102082\. https:\/\/doi\.org\/10\.1016\/j\.jretconser\.2020\.102082

Nurra, C\., & Oyserman, D\. \(2018\)\. From future self to current action: An identity\-based motivation perspective\. #emph[Self and Identity], #emph[17]\(3\), 343–364\. https:\/\/doi\.org\/10\.1080\/15298868\.2017\.1375003

Oyserman, D\., Coon, H\. M\., & Kemmelmeier, M\. \(2002\)\. Rethinking individualism and collectivism: Evaluation of theoretical assumptions and meta\-analyses\. #emph[Psychological Bulletin], #emph[128]\(1\), 3–72\. https:\/\/doi\.org\/10\.1037\/0033\-2909\.128\.1\.3

Paasovaara, R\., Luomala, H\. T\., Pohjanheimo, T\., & Sandell, M\. \(2012\)\. Understanding consumers\' brand\-induced food taste perception: A comparison of ‘brand familiarity’–and ‘consumer value–brand symbolism \(in\) congruity’–accounts\. #emph[Journal of Consumer Behaviour], #emph[11], 11–20\. https:\/\/doi\.org\/10\.1002\/cb\.356

Palacios\-González, M\. M\., & Chamorro\-Mera, A\. \(2020\)\. Analysis of socially responsible consumption: A segmentation of Spanish consumers\. #emph[Sustainability], #emph[12]\(20\), 8418\. https:\/\/doi\.org\/10\.3390\/su12208418

Park, H\. J\., & Lin, L\. M\. \(2020\)\. Exploring attitude–behavior gap in sustainable consumption: Comparison of recycled and upcycled fashion products\. #emph[Journal of Business Research], #emph[117], 623–628\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2018\.08\.025

Perreault, C\. \(2012\)\. The pace of cultural evolution\. #emph[PLoS One], #emph[7]\(9\), e45150\. https:\/\/doi\.org\/10\.1371\/journal\.pone\.0045150

Podsakoff, P\. M\., MacKenzie, S\. B\., Lee, J\.\-Y\., & Podsakoff, N\. P\. \(2003\)\. Common method biases in behavioral research: A critical review of the literature and recommended remedies\. #emph[Journal of Applied Psychology], #emph[88]\(5\), 879–903\. https:\/\/doi\.org\/10\.1037\/0021\-9010\.88\.5\.879

Radu, S\. \(2018\)\. Poland graduates to developed status\. Retrieved from https:\/\/www\.usnews\.com\/news\/best\-countries\/articles\/2018\-10\-02\/poland\-reclassified\-as\-a\-developed\-economy\-by\-the\-ftse

Revelle, W\. \(2015\)\. Package “psych”—Procedures for psychological, psychometric and personality research, 1–358 Retrieved from http:\/\/personality\-project\.org\/r\/psych\-manual\.pdf

Roberts, J\. A\. \(1996\)\. Green consumers in the 1990s: Profile and implications for advertising\. #emph[Journal of Business Research], #emph[36], 217–231\. https:\/\/doi\.org\/10\.1016\/0148\-2963\(95\)00150\-6

Rokeach, M\. \(1973\)\. #emph[The nature of human values]\. Free Press\.

Rosseel, Y\. \(2012\)\. Lavaan: An R package for structural equation modeling\. #emph[Journal of Statistical Software], #emph[48]\(2\), 1–36\. https:\/\/doi\.org\/10\.18637\/jss\.v048\.i02

Santos, H\. C\., Varnum, M\. E\., & Grossmann, I\. \(2017\)\. Global increases in individualism\. #emph[Psychological Science], #emph[28]\(9\), 1228–1239\. https:\/\/doi\.org\/10\.1177\/0956797617700622

Savills\. \(2017\)\. Social shopping centres\. Retail market in Poland Retrieved from http:\/\/pdf\.euro\.savills\.co\.uk\/poland\/retail\/social\-shopping\-centres\-2017\-online\.pdf

Schivinski, B\., Muntinga, D\. G\., Pontes, H\. M\., & Lukasik, P\. \(2021\)\. Influencing COBRAs: The effects of brand equity on the consumer\'s propensity to engage with brand\-related content on social media\. #emph[Journal of Strategic Marketing], #emph[29]\(1\), 1–23\. https:\/\/doi\.org\/10\.1080\/0965254X\.2019\.1572641

Schwartz, S\. H\., & Rubel, T\. \(2005\)\. Sex differences in value priorities: Cross\-cultural and multimethod studies\. #emph[Journal of Personality and Social Psychology], #emph[89]\(6\), 1010–1028\. https:\/\/doi\.org\/10\.1037\/0022\-3514\.89\.6\.1010

Sharma, N\., Saha, R\., Sreedharan, V\. R\., & Paul, J\. \(2020\)\. Relating the role of green self\-concepts and identity on green purchasing behaviour: An empirical analysis\. #emph[Business Strategy & the Environment], #emph[29], 3203–3219\. https:\/\/doi\.org\/10\.1002\/bse\.2567

Sharma, R\., & Jha, M\. \(2017\)\. Values influencing sustainable consumption behaviour: Exploring the contextual relationship\. #emph[Journal of Business Research], #emph[76], 77–88\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2017\.03\.010

Shavitt, S\., & Cho, H\. \(2016\)\. Culture and consumer behavior: The role of horizontal and vertical cultural factors\. #emph[Current Opinion in Psychology], #emph[8], 149–154\. https:\/\/doi\.org\/10\.1016\/j\.copsyc\.2015\.11\.007

Shavitt, S\., Torelli, C\. J\., & Riemer, H\. \(2011\)\. Horizontal and vertical individualism and collectivism: Implications for understanding psychological processes\. In M\. J\. Gelfand, C\.\-y\. Chiu, & Y\.\-y\. Hong \(Eds\.\), #emph[Advances in culture and psychology] \(Vol\. 1, pp\. 309–350\)\. Oxford University Press\.

Si, H\., Shi, J\.\-g\., Tang, D\., Wu, G\., & Lan, J\. \(2020\)\. Understanding intention and behavior toward sustainable usage of bike sharing by extending the theory of planned behavior\. #emph[Resources, Conservation and Recycling], #emph[152], 104513\. https:\/\/doi\.org\/10\.1016\/j\.resconrec\.2019\.104513

Simon, D\., & Holyoak, K\. J\. \(2002\)\. Structural dynamics of cognition: From consistency theories to constraint satisfaction\. #emph[Personality and Social Psychology Review], #emph[6]\(4\), 283–294\. https:\/\/doi\.org\/10\.1207\/S15327957PSPR0604\_03

Singelis, T\. M\., Triandis, H\. C\., Bhawuk, D\. P\. S\., & Gelfand, M\. J\. \(1995\)\. Horizontal and vertical dimensions of individualism and collectivism: A theoretical and measurement refinement\. #emph[Cross\-Cultural Research], #emph[29]\(3\), 240–275\. https:\/\/doi\.org\/10\.1177\/106939719502900302

Singh, N\., Kwon, I\. W\., & Pereira, A\. \(2003\)\. Cross\-cultural consumer socialization: An exploratory study of socialization influences across three ethnic groups\. #emph[Psychology & Marketing], #emph[20]\(10\), 867–881\. https:\/\/doi\.org\/10\.1002\/mar\.10100

Sivadas, E\., Bruvold, N\. T\., & Nelson, M\. R\. \(2008\)\. A reduced version of the horizontal and vertical individualism and collectivism scale: A four\-country assessment\. #emph[Journal of Business Research], #emph[61]\(3\), 201–210\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2007\.06\.016

Stets, J\., & Burke, P\. \(2000\)\. Identity theory and social identity theory\. #emph[Social Psychology Quarterly], #emph[63]\(3\), 224–237 Retrieved from http:\/\/www\.jstor\.org\/stable\/2695870

Stevens, M\., Rees, T\., Coffee, P\., Steffens, N\. K\., Haslam, S\. A\., & Polman, R\. \(2017\)\. A social identity approach to understanding and promoting physical activity\. #emph[Sports Medicine], #emph[47]\(10\), 1911–1918\. https:\/\/doi\.org\/10\.1007\/s40279\-017\-0720\-4

Tajfel, H\. \(1972\)\. Social categorization\. English manuscript of ‘La catégorisation sociale’\. In S\. Moscovici \(Ed\.\), #emph[Introduction à la psychologie sociale] \(Vol\. 1, pp\. 272–302\)\. Larousse\.

Tajfel, H\. \(1978\)\. Social categorization, social identity and social comparison\. In H\. Tajfel \(Ed\.\), #emph[Differentiation between social groups] \(pp\. 61–76\)\. Academic Press\.

Taufique, K\. M\. R\., & Islam, S\. \(2021\)\. Green marketing in emerging Asia: Antecedents of green consumer behavior among younger millennials\. #emph[Journal of Asia Business Studies], #emph[15], 541–558\. https:\/\/doi\.org\/10\.1108\/JABS\-03\-2020\-0094

Thøgersen, J\., & Ölander, F\. \(2002\)\. Human values and the emergence of a sustainable consumption pattern: A panel study\. #emph[Journal of Economic Psychology], #emph[23]\(5\), 605–630\. https:\/\/doi\.org\/10\.1016\/S0167\-4870\(02\)00120\-4

Torelli, C\. J\., Özsomer, A\., Carvalho, S\. W\., Keh, H\. T\., & Maehle, N\. \(2012\)\. Brand concepts as representations of human values: Do cultural congruity and compatibility between values matter? #emph[Journal of Marketing], #emph[76]\(4\), 92–108\. https:\/\/doi\.org\/10\.1509\/jm\.10\.0400

Triandis, H\. C\., & Gelfand, M\. J\. \(1998\)\. Converging measurement of horizontal and vertical individualism and collectivism\. #emph[Journal of Personality and Social Psychology], #emph[74]\(1\), 118–128\.

Tu, L\., Khare, A\., & Zhang, Y\. \(2012\)\. A short 8\-item scale for measuring consumers\' local–global identity\. #emph[International Journal of Research in Marketing], #emph[29]\(1\), 35–42\. https:\/\/doi\.org\/10\.1016\/j\.ijresmar\.2011\.07\.003

Udall, A\. M\., de Groot, J\. I\., de Jong, S\. B\., & Shankar, A\. \(2020\)\. How do I see myself? A systematic review of identities in pro\-environmental behaviour research\. #emph[Journal of Consumer Behaviour], #emph[19]\(2\), 108–141\. https:\/\/doi\.org\/10\.1002\/cb\.1798

United Nations\. \(2019\)\. Sustainable Development Goal 12: Ensure sustainable consumption and production patterns\. Retrieved from https:\/\/sustainabledevelopment\.un\.org\/sdg12

Wang, H\., Fu, H\., & Wu, Y\. \(2020\)\. To gain face or not to lose face: The effect of face message frame on response to public service advertisements\. #emph[International Journal of Advertising], #emph[39], 1301–1321\. https:\/\/doi\.org\/10\.1080\/02650487\.2020\.1763090

Wang, Z\., Ali, S\., Akbar, A\., & Rasool, F\. \(2020\)\. Determining the influencing factors of biogas technology adoption intention in Pakistan: The moderating role of social media\. #emph[International Journal of Environmental Research and Public Health], #emph[17]\(7\), 2311\. https:\/\/doi\.org\/10\.3390\/ijerph17072311

Waris, I\., & Hameed, I\. \(2020\)\. Promoting environmentally sustainable consumption behavior: An empirical evaluation of purchase intention of energy\-efficient appliances\. #emph[Energy Efficiency], #emph[13]\(8\), 1653–1664\. https:\/\/doi\.org\/10\.1007\/s12053\-020\-09901\-4

WBJ\. \(2018\)\. Bloomberg: Poland is the 4th biggest emerging market\. Retrieved from http:\/\/wbj\.pl\/bloomberg\-poland\-is\-the\-4th\-biggest\-emerging\-market\/\.

Wei, S\., Ang, T\., & Liou, R\. S\. \(2020\)\. Does the global vs\. local scope matter? Contingencies of cause\-related marketing in a developed market\. #emph[Journal of Business Research], #emph[108], 201–212\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.11\.018

Wesley, S\. C\., Lee, M\. Y\., & Kim, E\. Y\. \(2012\)\. The role of perceived consumer effectiveness and motivational attitude on socially responsible purchasing behavior in South Korea\. #emph[Journal of Global Marketing], #emph[25]\(1\), 29–44\. https:\/\/doi\.org\/10\.1080\/08911762\.2012\.697383

White, K\., Habib, R\., & Hardisty, D\. J\. \(2019\)\. How to SHIFT consumer behaviors to be more sustainable: A literature review and guiding framework\. #emph[Journal of Marketing], #emph[83]\(3\), 22–49\. https:\/\/doi\.org\/10\.1177\/0022242919825649

Wiedmann, T\., Lenzen, M\., Keyßer, L\. T\., & Steinberger, J\. K\. \(2020\)\. Scientists\' warning on #emph[affluence]\. #emph[Nature Communications], #emph[11]\(1\), 1–10\. https:\/\/doi\.org\/10\.1038\/s41467\-020\-16941\-y

Wilk, R\. \(1998\)\. Emulation, imitation, and global consumerism\. #emph[Organization & Environment], #emph[11]\(3\), 314–333\. https:\/\/doi\.org\/10\.1177\/0921810698113003

Woodside, A\. G\. \(2011\)\. Responding to the severe limitations of cross\-sectional surveys: Commenting on Rong and Wilkinson\'s perspectives\. #emph[Australasian Marketing Journal], #emph[19]\(3\), 153–156\. https:\/\/doi\.org\/10\.1016\/j\.ausmj\.2011\.04\.004

Xiang, P\., Zhang, H\., Geng, L\., Zhou, K\., & Wu, Y\. \(2019\)\. Individualist–collectivist differences in climate change inaction: The role of perceived intractability\. #emph[Frontiers in Psychology], #emph[10], 187\. https:\/\/doi\.org\/10\.3389\/fpsyg\.2019\.00187

Yarimoglu, E\., & Binboga, G\. \(2019\)\. Understanding sustainable consumption in an emerging country: The antecedents and consequences of the ecologically conscious consumer behavior model\. #emph[Business Strategy and the Environment], #emph[28]\(4\), 642–651\. https:\/\/doi\.org\/10\.1002\/bse\.2270

Zajonc, R\. B\. \(1960\)\. The concepts of balance, congruity, and dissonance\. #emph[Public Opinion Quarterly], #emph[24]\(2\), 280–296\. https:\/\/doi\.org\/10\.1086\/266949

Zhang, J\., & Bloemer, J\. M\. M\. \(2008\)\. The impact of value congruence on consumer\-service brand relationships\. #emph[Journal of Service Research], #emph[11]\(2\), 161–178\. https:\/\/doi\.org\/10\.1177\/1094670508322561

Zhang, Y\., & Khare, A\. \(2009\)\. The impact of accessible identities on the evaluation of global versus local products\. #emph[Journal of Consumer Research], #emph[36], 524–537\. https:\/\/doi\.org\/10\.1086\/598794

Zralek, J\., & Burgiel, A\. \(2020\)\. Prospects for a sustainable future: Mapping sustainable behaviors according to consumer perceptions\. #emph[Review of Business], #emph[40]\(1\), 35–50\.

= About the authors
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[#text(size: 10pt)[Barbara Czarnecka is associate professor of marketing at London South Bank University, UK\. Her research interests focus on culture, consumer behaviour and communication\. Dr\. Czarnecka\'s latest work can be found in PLOS ONE, Journal of Consumer Behaviour, Journal of Global Marketing and Cross\-Cultural Research\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Bruno Schivinski is senior lecturer in advertising at RMIT University, Australia\. He consults for online service providers, websites and scientific institutions such as the Polish Ministry of Science and Higher Education \(MNiSW\) and the National Science Centre \(NCN\) in Poland\. Dr\. Schivinski\'s latest work can be found in the Journal of Business Research, Journal of Advertising Research, Industrial Marketing Management and Journal of Clinical Medicine\.]]

#pagebreak()
= Appendix A
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A1.] Descriptive statistics, factor loadings \(completely standardised lambda X\), explained variance on each item \(R²\)]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto), align: (left, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Measurements]], [#strong[\(λ#sub[x]\)]], [#strong[#emph[R]#super[2]]], [#strong[Mean \(SD\)]]),
table.hline(stroke: 0.5pt),
[#emph[Vertical individualism \(Sivadas et al\., 2008\)]], [], [], [],
[I enjoy working in situations involving competition with others\.], [0\.83], [0\.69], [4\.63 \(1\.84\)],
[Competition is the law of nature\.], [0\.90], [0\.81], [4\.24 \(1\.70\)],
[Without competition it is not possible to have a good society\.], [0\.92], [0\.84], [4\.31 \(1\.64\)],
[#emph[Horizontal individualism \(Sivadas et al\., 2008\)]], [], [], [],
[I enjoy being unique and different from others in many ways\.], [0\.83], [0\.68], [4\.34 \(1\.64\)],
[I often ‘do my own thing’\.], [0\.87], [0\.75], [4\.24 \(1\.75\)],
[I am a unique individual\.], [0\.86], [0\.74], [4\.36 \(1\.72\)],
[#emph[Vertical collectivism \(Sivadas et al\., 2008\)]], [], [], [],
[I would do what would please my family, even if I detested that activity\.], [0\.88], [0\.77], [5\.00 \(1\.62\)],
[I usually sacrifice my self\-interest for the benefit of my group\.], [0\.82], [0\.68], [4\.91 \(1\.52\)],
[Children should feel honoured if their parents receive a distinguished award\.], [0\.60], [0\.37], [4\.83 \(1\.55\)],
[I would sacrifice an activity that I enjoy very much if my family did not approve of it\.], [0\.59], [0\.35], [4\.71 \(1\.59\)],
[#emph[Horizontal collectivism \(Sivadas et al\., 2008\)]], [], [], [],
[My happiness depends very much on the happiness of those around me\.], [0\.67], [0\.45], [5\.21 \(1\.42\)],
[The well\-being of my coworkers is important to me\.], [0\.80], [0\.65], [4\.93 \(1\.46\)],
[If a co\-worker gets a prize, I would feel proud\.], [0\.73], [0\.53], [5\.01 \(1\.42\)],
[I feel good when I cooperate with others\.], [0\.63], [0\.40], [5\.18 \(1\.48\)],
[#emph[Global identity \(Tu et al\., 2012\)]], [], [], [],
[My heart mostly belongs to the whole world\.], [0\.91], [0\.83], [3\.47 \(1\.77\)],
[I believe people should be made more aware of how connected we are to the rest of the world\.], [0\.90], [0\.81], [3\.46 \(1\.66\)],
[I identify that I am a global citizen\.], [0\.89], [0\.79], [3\.45 \(1\.57\)],
[I care about knowing global events\.], [0\.82], [0\.69], [3\.27 \(1\.65\)],
[#emph[Local identity \(Tu et al\., 2012\)]], [], [], [],
[My heart mostly belongs to my local community\.], [0\.86], [0\.74], [4\.29 \(1\.58\)],
[I respect my local traditions\.], [0\.87], [0\.75], [4\.08 \(1\.62\)],
[I identify that I am a local citizen\.], [0\.93], [0\.87], [4\.48 \(1\.56\)],
[I care about knowing local events\.], [0\.91], [0\.83], [3\.95 \(1\.72\)],
[#emph[Perceived consumer effectiveness \(Kang et al\., 2013\)]], [], [], [],
[What I purchase as a consumer has an effect on the nation’s environmental problems\.], [0\.77], [0\.60], [5\.55 \(1\.72\)],
[Each consumer’s behaviour can have an effect on how companies treat their employees\.], [0\.86], [0\.74], [5\.06 \(1\.59\)],
[Since one consumer cannot have any effect on how companies behave towards the community, it does not make any difference what I do\. \(reverse scored\)], [0\.86], [0\.75], [5\.34 \(1\.43\)],
[Each consumer can have a positive effect on society by purchasing products sold by socially responsible companies\.], [0\.87], [0\.77], [5\.34 \(1\.34\)],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Values, identities: item anchored from 1 \= strongly disagree to 5 \= strongly agree \(as printed\)\. Perceived consumer effectiveness: item anchored from 1 \= strongly disagree to 7 \= strongly agree\. The source of each scale is given in brackets after the construct name\.]
]
#v(12pt)
= Appendix B
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table B1.] Correlation matrix of the effects of the multifactorial CFA models]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Construct]], [#strong[α]], [#strong[CR]], [#strong[AVE]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]], [#strong[7]]),
table.hline(stroke: 0.5pt),
[1\. Vertical individualism], [0\.91], [0\.91], [0\.78], [#emph[0\.88]], [], [], [], [], [], [],
[2\. Horizontal individualism], [0\.89], [0\.88], [0\.72], [0\.24], [#emph[0\.85]], [], [], [], [], [],
[3\. Vertical collectivism], [0\.82], [0\.81], [0\.53], [0\.22], [0\.19], [#emph[0\.73]], [], [], [], [],
[4\. Horizontal collectivism], [0\.81], [0\.80], [0\.50], [0\.28], [0\.42], [0\.35], [#emph[0\.71]], [], [], [],
[5\. Global identity], [0\.89], [0\.93], [0\.77], [0\.24], [0\.13], [0\.22], [0\.21], [#emph[0\.88]], [], [],
[6\. Local identity], [0\.94], [0\.94], [0\.79], [0\.03], [0\.15], [0\.17], [0\.09], [0\.16], [#emph[0\.89]], [],
[7\. Perceived consumer effectiveness], [0\.91], [0\.90], [0\.70], [0\.23], [0\.09], [0\.25], [0\.19], [0\.21], [0\.07], [#emph[0\.84]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]: The square root of the average variance extracted values appears in italics\. α \= Cronbach\'s alpha, CR \= composite reliability \(Jöreskog\'s Rhô\), AVE \= average variance extracted \(Rhô vc\)\; MLR #emph[χ]#super[2]#sub[\(278\)] \= 749\.17, CFI \= 0\.94, TLI \= 0\.93, RMSEA \= 0\.06 \[90% C\.I\. 0\.06–0\.07\]\; #emph[n] \= 432\.]
]
#v(12pt)

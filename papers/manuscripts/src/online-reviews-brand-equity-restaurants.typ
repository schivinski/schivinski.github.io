#set document(title: "The effect of online reviews on consumer\-based brand equity: Case\-study of the Polish restaurant sector", author: ("Magdalena Brzozowska-Woś", "Bruno Schivinski"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Brzozowska\-Woś and Schivinski \(2019\), open access \(CC BY\-NC\-ND 3\.0\) #h(1fr) Central European Management Journal] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[The effect of online reviews on consumer\-based brand equity: Case\-study of the Polish restaurant sector]]
#v(0.8em)
#text(size: 12pt)[Magdalena Brzozowska\-Woś, Bruno Schivinski]
#v(0.2em)
#text(size: 10pt, style: "italic")[Gdansk University of Technology\; RMIT University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Brzozowska\-Woś, M\., & Schivinski, B\. (2019). The effect of online reviews on consumer\-based brand equity: Case\-study of the Polish restaurant sector. #emph[Central European Management Journal, 27]\(3\), 2–27. #link("https://doi.org/10.7206/cemj.2658-0845.1")[https:\/\/doi.org\/10\.7206\/cemj\.2658\-0845\.1]
  #v(0.9em)
  Open access article distributed under the terms of the Creative Commons Attribution\-NonCommercial\-NoDerivs 3\.0 license \(https:\/\/creativecommons\.org\/licenses\/by\-nc\-nd\/3\.0\/\)\. Originally published in Central European Management Journal, 27\(3\), 2–27 \(2019\), #link("https://doi.org/10.7206/cemj.2658-0845.1")[https:\/\/doi.org\/10\.7206\/cemj\.2658\-0845\.1]\. The text has been re\-typeset without changes to its content\; the authors\' email addresses have been left out\.
  #v(0.9em)
  This version reproduces the content of the published open access article\; it differs only in formatting and pagination, and the authors\' email addresses have been left out\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published open access article \(CC BY\-NC\-ND 3\.0\)\; the publisher\'s typesetting and layout have been removed and Figure 1 redrawn\.
Downloaded from #link("https://schivinski.com/papers/online-reviews-brand-equity-restaurants.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[The Effect of Online Reviews on Consumer\-Based Brand Equity: Case\-Study of the Polish Restaurant Sector]]
#v(0.6em)
#par(first-line-indent: 0em)[Magdalena Brzozowska\-Woś#super[1] and Bruno Schivinski#super[2]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[1]Department of Marketing, Faculty of Management and Economics, Gdansk University of Technology, Gdańsk, Poland \(https:\/\/orcid\.org\/0000\-0002\-8433\-0685\)\; #super[2]School of Media and Communication, RMIT University, Melbourne, Victoria, Australia \(https:\/\/orcid\.org\/0000\-0002\-4095\-1922\)]]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() #strong[Purpose:] This paper focuses on the effects of positive and negative online reviews \(eWOM\) on the metrics of consumer\-based brand equity \(CBBE\) in the context of the Polish restaurant sector\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Methodology:] The dedicated online survey was completed by 777 consumers, which we then analyzed with structural equation modeling\. Each catering outlet was to allow to order meals online\. We used descriptive analysis, confirmatory factor analysis, and path analysis to test the hypotheses\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Findings:] The findings suggest that positive online reviews affect each CBBE variable in the online catering outlet’s context\. In the case of known catering establishment’s offering in the option of placing orders via online platforms, negative eWOM only affects the perceived quality and brand loyalty\. However, it does not change brand awareness and brand association\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Implications:] This paper contributes to the body of literature on eWOM, which to date offers very little understanding of the topic of positive and negative online reviews and CBBE dimensions\. Moreover, in terms of practical and managerial applications, this study can be used to delineate strategy in terms of management of eWOM to optimize brand strategies\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] consumer\-based brand equity, eWOM, restaurant sector]
#v(0.6em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[JEL:] M310, M370]
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Submitted 9 August 2019\; accepted 30 September 2019\. English\-language editing of the article was financed under Agreement 672\/P\-DUN\/2019 with funds from the Ministry of Science and Higher Education allocated to the popularization of science\.]]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The exponential growth of social media and use of applications on smart\-devices lead consumers to easily share their post\-purchase evaluation of any products or services online\. This type of behavior is known in the marketing literature as online reviews or electronic word\-of\-mouth \(eWOM\; Zhang et al\., 2010\)\. For several years, a number of scholars focused on measuring the effect of eWOM on different areas, such as restaurants \(Oliveira and Casais, 2019\; Zhang et al\., 2017\), hotels \(Litvin, Goldsmith and Pan, 2018\), product sales \(Li, Wu and Mai, 2019\; Yang, Park and Hu, 2018\), purchase intention \(Kunja and GVRK, 2018\), customer value \(Hanaysha, 2018\), and loyalty \(Sijoria, Mukherjee and Datta, 2019\)\. In a similar matter, the literature also approaches consumers’ judgment of reviews \(e\.g\., Yoon et al\., 2019\; Gvili and Levy, 2018\)\. Although the amount of empirical research on the topic of measuring the effect of online reviews is substantial in the marketing literature, thus far researchers have neglected the study of the influence of online reviews from both perspectives – positive and negative – on the consumer’s perceptions of brands\.]

Research results indicate that consumers show more positive attitudes and behavioral intentions concerning positive online reviews, especially in the context of low information load \(Zhang and Hanks, 2018\)\. Positive online reviews significantly influence the online reputation of the firm \(Banerjee, Bhattacharyya and Bose, 2017\) and build trust for the company \(DeAndrea et al\., 2018\)\. Positive eWOM drives positive attitude towards the product \(Tata, Prashar and Gupta, 2019\) and – in the services context – is known for raising the number of orders \(Zhang et al\., 2019\), enhancing sales and revenue \(Xiao, Zhang and Fu, 2019\; Nieto\-Garcia et al\., 2019\; Craig, Greene and Versaci, 2015\)\. On the other hand, negative online customers’ reviews increase the perceived risk of inferior product or service quality \(Bhandari and Rodgers, 2018\; Lee, Rodgers, and Kim, 2009\), lower the credibility and equity of the brand \(El\-Baz, Elseidi and El\-Maniaway, 2018\; Yu et al\., 2018\), consequently reducing the volume of sales \(Zhang et al\., 2019\; Clemons, 2019\; Craig, Greene and Versaci, 2015\)\.

However, in a typical environment, reviews are not polarized and tend to be mixed, with both positive and negative comments available to consumers \(Xiang et al\., 2017\; Chong et al\., 2016\)\. The current study differentiates from and has additional explanatory power over previous studies, as it investigates the impact of online reviews when both positive and negative comments are available to consumers\. Also, for the robustness of findings and impact of business application, the investigation focuses on local and family\-owned restaurants, which do not have established brands and use online meal delivery platforms for food orders\. In terms of branding, consumer\-based brand equity \(CBBE\) is the core marketing variable to capture the consumer’s perceptions of brands \(Aaker, 1991\; Keller, 2016\), as it is an intangible asset that generates value through four established branding components, that is, brand awareness, brand associations, perceived quality, and brand loyalty \(Aaker, 1991\)\. Nevertheless, the understanding and correct management of CBBE is a small\-business necessity, as it is directly related to an organization’s revenue \(Foroudi et al\., 2018\; Narteh, 2018\; Christodoulides and de Chernatony, 2010\), whereas its correct management is used to formulate strategies that improve the competitiveness of a company \(Keller, 2016\)\.

The current study was conducted with consumers who regularly use online platforms to offer meals\. Hence, if local and family\-owned restaurants desire to grow their brand recognition and value, it is essential to understand the impact of reviews on online meal delivery platforms will have on the consumer’s perceptions of the restaurant brand, in the context which consumers have little or no previous knowledge about or experiences associated with the restaurant \(Yu et al\., 2018\; Kim et al\., 2015\)\.

We analyzed consumers’ perceptions for their structural relations\. They provide empirical evidence that confirms the simultaneous impact of positive and negative eWOM on the dimensions of consumer\-based brand equity\. We used the theory of stimulus\-organism\-response \(S\-O\-R\) proposed by Mehrabian and Russell \(1974\) to explain the research model\. Positive and negative online reviews generated by consumers create affective and cognitive reactions among consumers \(brand awareness, brand association, perceived quality, brand loyalty\)\.

= Theoretical Background
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Online Meal Delivery Platforms in Poland
#par(first-line-indent: 0em)[The food and restaurant sector has adapted to the changes engendered by new digital environments\. In 2019, the worldwide restaurant\-to\-consumer delivery segment stood at US\$80 million \(Statista, 2019a\)\. In the same period in Poland, it was US\$53\.65 million\. It is estimated that the sector’s annual growth rate of 24\.2% \(CAGR, 2019–2023\) will result in the market volume of US\$191 million in 2023 \(Statista, 2019b\)\. The same trend is occurring in other countries, independent of the development stages \(Statista, 2019a\)\. Convenience drives the strong growth in this market, while increasingly hectic work schedule, congested metropolitan cities, easy access to the Internet, and increase smartphone penetration impel growth in the online meal ordering market \(Restaurantdive, 2019\)\. On the Polish market, online platforms that offer the possibility of ordering meals are increasingly prevalent\. The most popular is Pyszne\.pl, which covers transactions and manages the delivery of food from over 6,500 restaurants across the country \(Pyszne\.pl, 2019\), and Pizzaportal\.pl with a coverage of more than 4,000 restaurants \(Pizzaportal\.pl, 2019\)\. At the beginning of 2019, almost 25 million people order food in Poland, and some estimate that in five years, nearly half of restaurant meals will be ordered online directly from the restaurant or through mediating services \(Portalspozywczy\.pl, 2019a\)\.]

Differently from the traditional model of food delivery offered directly by the restaurants, which is based on a combination of consumers’ knowledge and preference about the restaurant #emph[per se], online platforms for ordering meals do not rely on a physical establishment and mainly serve as mediators between restaurants and consumers \(Portalspozywczy\.pl, 2019b\)\. Hence, consumers face a wide choice of food that ranges from local and family\-owned restaurants to large restaurant chains\.

To facilitate consumers’ decision\-making process, online meal delivery platforms provide online comments systems for clients to share their post\-purchase evaluations \(He et al\., 2018\)\. This kind of online communication became one of the most critical information sources for consumers to reduce purchase risks \(Fagerstrøm et al\., 2016\; Kang and Namkung, 2019\)\. Moreover, online reviews are heavily used when consumers have no previous associations with the services in terms of usage and experience, but also when the service does not have an established brand \(Purnawirawan et al\., 2015\; Łukasik and Schivinski, 2014\)\; a typical situation faced by local and family\-owned restaurants that use online channels to reach a wider group of consumers\. Therefore, online meal delivery platforms create opportunities for development for local and family restaurants\. Still, they can also be a threat because online comments are not subject to companies’ control\. Consumers write reviews according to their feelings after shopping \(Schivinski and Dabrowski, 2016\; Li et al\., 2019\; Bilgihan, Seo and Choi, 2018\)\.

== Two Emotional Dimensions of the Electronic Word\-of\-Mouth
#par(first-line-indent: 0em)[Services offered by online meal delivery platforms have an immaterial character, which can affect the different perception of the quality of services offered by restaurants, bars, and consumers\. Consumers post their reviews after service, so the emotions and information they convey form the basis of perception of a given catering point by other potential customers, but the reviewers can also state valuable information for managers \(Geetha, Singha and Sinha, 2017\; Bilgihan, Seo and Choi, 2018\; Thelwall, 2019\)\. In the hospitality industry, as in all service industries, the flow of information in the form of word\-of\-mouth plays a significant role, especially during the customer purchase process \(Liu and Park, 2015\; Leong et al\., 2019\)\. Information in the form of text reviews and ratings from consumers impact the future interest of customers in catering services \(Xie, Zhanga and Zhang, 2014\; Zhao, Xu and Wang, 2019\; Matzler et al\., 2019\)\.]

According to the evolutionary approach, electronic word of mouth \(eWOM\) is perceived by marketers and academics as the next link of traditional word of mouth \(WOM\; Hennig\-Thurau et al\., 2004\; Leong et al\., 2019\)\. The development of internet technologies and social media has allowed users to share their experiences with products and services \(Brzozowska\-Woś and Schivinski, 2017\; Brzozowska\-Woś, 2018\; Ahmad, Ahmad and Bakar, 2018\)\. The opinions expressed by consumers online \(eWOM\) may be defined as “any positive or negative statement made by potential, actual, or former customers about a product or company, which is made available to a multitude of people and institutions via the Internet” \(Hennig\-Thurau et al\., 2004, p\. 39\)\. The emotional tone of these statements is essential, not only for companies that own brands but, above all, for other consumers\. In positive reviews, consumers focus on the characteristic attributes of gastronomic services \(Xiang et al\., 2015\; Serra\-Cantallops, Ramon\-Cardona and Salvi, 2018\; Bilgihan, Seo and Choi, 2018\)\. In turn, negative reviews focus on voicing the negative emotions associated with the provision of services, warning future consumers, and seeking explanations from the service provider \(Niu and Fan, 2018\; Zhao, Xu and Wang, 2019\)\.

In summary, positive comments relate to satisfaction and negative ones to dissatisfaction with the service provided \(Kim, Kim and Heo, 2016\; Berezina et al\., 2016\; Bilgihan, Seo and Choi, 2018\)\. Thus, eWOM has a more significant impact on consumer decision\-making processes than traditional promotion activity \(Trusov, Bucklin and Pauwels, 2009\; Ruiz\-Mafe, Chatzipanagiotou and Curras\-Perez, 2018\)\. Moreover, eWOM has become one of the most critical communication channels between the firm and the consumer, while marketing communication strategies have begun to take online review management into account \(Bruhn and Schnebelen, 2017\; Ettinger, Grabner\-Kräuter and Terlutter, 2018\)\.

== Consumer\-Based Brand Equity \(CBBE\)
#par(first-line-indent: 0em)[The emergence of the concept of brand equity and the beginning of research in this area in the hospitality sector resulted in changes in the brand concept \(Chatzipanagiotou, Christodoulides, and Veloutsou, 2019\; Cobb\-Walgren et al\., 1995\)\. Many authors in their research adopted the definition of consumer\-based brand equity proposed by Aaker \(1991\)\. According to Aaker, CBBE is a set of assets and liabilities related to a brand, its name, or symbol that add or subtract the value provided by a product or service to a company and its clients\. Thus, depending on what prevails, CBBE can be either positive or negative\. This result can be determined by comparing consumer reactions to brand marketing activities with similar marketing activities of a fictitiously named or unnamed version of a good or service\. Positive consumer\-based brand equity can increase a brand’s preferences \(Schivinski and Dabrowski, 2015\; Cobb\-Walgren et al\., 1995\) and influence its purchase \(Foroudi, 2018\; Godey et al\., 2016\; Cobb\-Walgren et al\.,1995\)\.]

Brand equity research employs both one\-dimensional \(Kamakura and Russell, 1993\; Farquhar et al\., 1991\) and a multi\-dimensional approach \(Yoo and Donthu, 2001\; Keller, 1993\; Rangaswamy et al\., 1993\; Aaker, 1991\)\. The current study is based on the four dimensions proposed by Aaker \(1991\): brand loyalty, brand awareness, perceived quality, brand association\. We exclude the fifth dimension from the CBBE – other proprietary assets like patents, trademarks, and channel relationships – as it does not refer to individual customers \(Christodoulides and Chernatony, 2010\)\.

In terms of the components of CBBE, #emph[brand awareness] shows in what light does a brand’s name appear in a consumer’s mind and how easily\; and whether it is formed by the performance of brand recognition and brand recall \(Keller, 1993\)\. These two components allow brand awareness to affect consumer purchase decisions at the recognition level and recall level since consumers tend to choose the product of which they are aware or which they have experienced \(Aaker, 1992\)\. Similarly, #emph[brand association] is held in a consumer’s memory and reflects the perception of a brand\. Hence, brand association happens when the firm creates a link between a firm’s goods and services and consumer memory \(Aaker, 1991\; Aaker and Keller, 1990\; Keller, 1993\)\. Brand association creates value for the customer by emphasizing the attributes that benefit the customer \(Aaker, 1991\; Keller, 1993\; Aaker and McLoughlin, 2010\)\. #emph[Perceived quality] is defined as “the consumer’s judgment about a product’s overall excellence or superiority” \(Zeithaml, 1988, p\. 3\)\. Furthermore, perceived quality is where the firm sets out its strategic plan to create a competitive advantage and provide a reason for the consumer to buy \(Aaker, 1991\; Sürücü et al\., 2019\)\. In other words, perceived quality means that the firm provides value to the customer\. Finally, #emph[brand loyalty] is a reflection of customer satisfaction, which makes this quality to be a vital asset to create value for both the firm and consumers \(Sürücü et al\., 2019\)\. A company can generate more profit through increased brand loyalty, while consumers gain a satisfactory experience through the firm’s strategic activity toward customer retention \(Aaker, 1991\; Ismail et al\., 2018\)\. Furthermore, brand loyalty generates value to the organization by reducing marketing costs and then by retaining current customers, instead of seeking to attract new customers with marketing activities, which is less costly \(Aaker, 1991\)\.

= Research Hypotheses
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Theory of Stimulus\-Organism\-Response
#par(first-line-indent: 0em)[We used the stimulus\-organism\-response model \(S\-O\-R\) proposed by Mehrabian and Russell \(1974\) to explain the relationships between the constructs analyzed in the study\. This model allows showing the influence of external \(social\) factors on consumers and the resulting behavior \(Kim and Johnson, 2016\)\. Positive and negative online reviews influence consumer perceptions and behavior by changing consumer attitudes toward the reviewed object \(Sher and Lee, 2009\; Lee et al\., 2008\; Lee, 2009\)\. Consumer perceptions link to consumer attitudes and tend to be affected by the quality of online reviews \(Chen and Chang, 2018\)\. Positive and negative online reviews \(S\) generated by consumers create affective and cognitive reactions – brand awareness, brand association, perceived quality, brand loyalty – among consumers \(O\) who use online meal delivery platforms\. In turn, these reactions in dimensions of CBBE affect consumer behavior \(R\)\. Previous research provided ample confirmation of the interaction between brand equity or its dimensions and consumers’ behavior\. Brand equity is a crucial variable that affects brand preferences, purchase intent, and the intention to recommend \(Álvarez\-García et al\., 2019\; Rambocas, Kirpalani and Simms, 2018\; Godey et al\., 2016\)\.]

== The Influence on Brand Awareness
#par(first-line-indent: 0em)[Brand awareness can increase online through popularity generated by eWOM \(Cui et al\., 2012\)\. For a new product, eWOM can very quickly spread new information among consumers via an online platform, as it is one of the most important and readily available information sources to consumers\. Thus, a high volume of online reviews increases product awareness \(Cui et al\., 2012\; Bruhn, Schoenmueller and Schäfer, 2012\)\.]

In the restaurant’s context, many researchers report the effects of eWOM on the restaurants’ online popularity\. Any eWOM information given as a recommendation on the online opinion platform improves online restaurant popularity\. EWOM information is especially attractive to tourists, as the Internet is one of the most important information sources for international customers\. Although the influence of eWOM can vary by individual or firm\-level targeting, positive online reviews can to some degree affect brand awareness positively \(Zhang et al\., 2010\)\. Hence, negative online reviews can probably have the opposite effect, which will negatively influence a restaurant’s brand awareness\. They justify why consumers are less prone to acquire knowledge about a brand when not positively viewed by peers \(Bruhn, Schoenmueller and Schäfer, 2012\)\. Based on these assumptions, we postulate two hypotheses:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1a\.] Positive online review \(eWOM\) positively influences brand awareness\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1b\.] Negative online review \(eWOM\) negatively influences brand awareness\.]]
== The Influence on Brand Associations
#par(first-line-indent: 0em)[In social media communication context, researchers report that brand associations positively affect consumers’ perception of brands\. In social media, consumers tend to consider the information from another individual as credible and trustworthy, so consumer perceptions are influenced by online information \(Pornpitakpan, 2004\; Schivinski and Dabrowski, 2016\)\. Moreover, researchers report that negative online reviews lead to brand dilution\; and, even if the consumer has a certain level of brand knowledge, the CBBE will still be affected \(Bambauer\-Sachse and Mangold, 2011\)\. Hence, we make two assumptions in the restaurant’s context, based on the effect of social media communication information and the impact of adverse online reviews\. What follows these assumptions is our postulate of two hypotheses:]

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2a\.] Positive online reviews \(eWOM\) positively influence brand association\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2b\.] Negative online reviews \(eWOM\) negatively influence brand association\.]]
== The Influence on Perceived Quality
#par(first-line-indent: 0em)[In previous studies, researchers sought the effect of eWOM on consumers’ product judgment in terms of quality\. Although they found no significant effect, scholarship still views eWOM as a potential factor in consumers’ product judgment \(Lee and Youn, 2009\; Xue and Phelps, 2004\)\.]

In the context of a restaurant, researchers report the relationship between positive and negative eWOM and restaurant attributes\. Restaurant characteristics like taste and service will generate either positive or negative eWOM, depending on the review’s quality, whereas a restaurant’s quality is purely a matter of consumer judgment \(Zhang, Zhang and Law, 2014\)\. Although scholarship only identifies the effect of perceived quality on eWOM, this finding makes researchers assume that positive and negative online reviews impact perceived quality\. Thus, we postulate two further hypotheses:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3a\.] Positive online reviews \(eWOM\) positively influence perceived quality\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3b\.] Negative online reviews \(eWOM\) negatively influence perceived quality\.]]
== The Influence on Brand Loyalty
#par(first-line-indent: 0em)[Many researchers report the influence of customer satisfaction on brand loyalty\. In the context of mobile social commerce, customer satisfaction will increase if a firm can fulfill consumer expectations\; hence, brand loyalty will grow along with the level of satisfaction \(Hew et al\., 2016\)\. A similar effect appears in the restaurant context, in which there is a healthy relationship between customer emotion, satisfaction, and loyalty\. Although the result may be influenced by individual personality scale, brand loyalty is changed by both customer satisfaction and positive or negative feeling\. Consequently, customers’ repurchasing behavior will form depending on the level of brand loyalty \(Lee, Back and Kim, 2009\)\.]

Moreover, previous research reports the influence of brand reputation on brand loyalty\. Brand reputation can be defined as the consumer’s perception of the brand name’s quality \(Aaker and Keller, 1990\)\. In the restaurant context, evidence suggests that an excellent or lousy reputation affects consumer loyalty to the brand, although brand reputation can be changed by WOM \(Han, Nguyen and Simkin, 2016\)\. Based on this relationship, positive eWOM should positively influence brand loyalty\. Furthermore, a recent study reports that customer loyalty is affected by customer satisfaction and perceived e\-service quality \(PeSQ\), whereas negative eWOM is negatively influenced by PeSQ \(Lin and Wang, 2015\)\. It means there is a negative relationship between negative eWOM and brand loyalty\. Although it is in the context of e\-commerce, we assume the effect is the same in the context of a restaurant\. Thus, negative eWOM should negatively affect a restaurant’s brand loyalty\. Based on these assumptions, we postulate two further hypotheses:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4a\.] Positive online reviews \(eWOM\) positively influence brand loyalty\.]]
#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H4b\.] Negative online reviews \(eWOM\) negatively influence brand loyalty\.]]
The conceptual model depicted in Figure 1 summarizes the hypotheses of the study\.

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. The effects of eWOM on CBBE\. #emph[Source]: own elaboration \(redrawn\)\.]]
#v(0.6em)
= Methodology
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Sample and Procedure
#par(first-line-indent: 0em)[The context of restaurants was used in this study to examine the impact of positive and negative online reviews on CBBE metrics\. They were restaurants in which consumers can place orders via the Internet\. However no particular brand was selected because the participants were from different places in Poland\. The measurement of CBBE would not be accurate unless the participant knows the selected brand’s name \(Christodoulides, Cadogan and Veloutsou, 2015\)\. Therefore, every respondent had to indicate the restaurant’s brand on their own by providing an answer to an open\-ended question\. The question was supposed to be the respondent’s first association with the brand, regardless of whether they liked the company or not\.]

This study is related to CBBE, so the primary source of data was the consumer\. Respondents were people who had access to the Internet, and who read and reviewed restaurants\. They also had to meet the requirement of placing orders online at catering outlets\. Moreover, we used sampling as the snowball method for this research\. The survey was pre\-tested on 30 students, drawn from a very similar sample\. There were no comments on the questionnaire\. The data in the primary study were collected online using the CAWI technique\. Respondents were recruited for the research through invitations sent via social media channels and email by the participants\. There were 12 items for measuring the CBBE\. Three items each for the four dimensions: brand awareness, brand association, perceived quality, and brand loyalty \(adopted from Christodoulides et al\., 2015\)\. Furthermore, six statements measured eWOM \(Goyette et al\., 2010\), three for positive and negative online reviews each \(Appendix A\)\. All items were measured on a seven\-point scale ranging from 1 \= “strongly disagree” to 7 \= “strongly agree\.”

A sample of 1,023 Polish consumers participated in the study\. Invalid and incomplete questionnaires were rejected, resulting in 777 valid completed questionnaires \(75\.9%\)\. Women represented 60\.2% of the respondents\. The age of the respondents ranged from 18 to 64 years old, with a median age of 18 to 24 years old \(66\.5%\)\. The education level of the sample ranged from primary school to higher education, with a median of a bachelor’s or engineering degree \(46\.5%\)\. The most numerous group were respondents who consumed online\-ordered meals several times a month \(30\.6%\)\. Moreover, the majority of respondents \(54\.7%\) checked online reviews and ratings before ordering a meal from a catering point, including 10\.9% of respondents who do it every time\.

= Data Analysis and Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Confirmatory Factor Analysis
#par(first-line-indent: 0em)[To validate the conceptual model we proposed, we included all independent and dependent latent variables in one multi\-factorial confirmatory model \(CFA\) in #emph[Mplus] 7\.2 software with a robust maximum\-likelihood estimation method \(MLR\)\. The MLR estimator was employed as the assumption of multivariate normality was violated\; rating scales tend to generate multidimensional data for skewness and kurtosis values \(Teman, 2012\; see Appendix A\)\. Composite reliability \(CR\) values ranged from 0\.77 to 0\.91\. These values exceeded the recommended 0\.70 threshold\. The factor determinacy \(FD\) coefficients for the six\-factor CFA model ranged from 0\.92 to 0\.96 and were above the desired threshold of 0\.80 \(Muthén and Muthén, 2012\)\. The CR and FD coefficients support the internal consistency of the sub\-scales \(Table 1\)\.]

All the loadings estimates were statistically significant and greater than 0\.64\. The #emph[t]\-values ranged from 18\.52 to 75\.41 \(#emph[p] \< 0\.001\), thus evidencing convergent validity \(Bagozzi and Yi, 1998\; Appendix A\)\. The average variance extracted \(AVE\) was calculated for each latent variable \(construct\)\. The AVE of the constructs showed values higher than the acceptable value of 0\.50 \(Bagozzi and Yi, 1998\)\. The AVEs for eWOM \(positive\) were 0\.58 and 0\.60 \(negative\)\; the AVEs for CBBE were 0\.59 \(brand awareness\), 0\.53 \(brand association\), 0\.78 \(perceived quality\), and 0\.72 \(brand loyalty\), thus confirming discriminant validity\. All square roots of the AVE scores were higher than the correlations across the factors\. The goodness of fit indices for the resulting structural model showed good fit with the data fit \(chi\-square test statistic\; χ#super[2]\), the comparative fit index \(CFI\), the Tucker–Lewis index \(TLI\), and the root mean square error of approximation \(RMSEA\)\. Table 1 presents the reliability and validity outcomes resulting from the CFA\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 1.] Reliability and validity scores of the conceptual model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Latent variables]], [#strong[CR]], [#strong[FD]], [#strong[AVE]], [#strong[1]], [#strong[2]], [#strong[3]], [#strong[4]], [#strong[5]], [#strong[6]]),
table.hline(stroke: 0.5pt),
[1\. Negative eWOM], [0\.80], [0\.92], [0\.58], [#emph[0\.76]], [\(−14\.50\)], [\(−6\.55\)], [\(−9\.16\)], [\(−14\.49\)], [\(−11\.00\)],
[2\. Positive eWOM], [0\.82], [0\.92], [0\.60], [−0\.63], [#emph[0\.77]], [\(12\.58\)], [\(18\.83\)], [\(22\.82\)], [\(18\.26\)],
[3\. Brand awareness], [0\.81], [0\.93], [0\.59], [−0\.29], [0\.52], [#emph[0\.77]], [\(15\.48\)], [\(12\.58\)], [\(9\.09\)],
[4\. Brand association], [0\.77], [0\.94], [0\.53], [−0\.44], [0\.69], [0\.64], [#emph[0\.73]], [\(25\.35\)], [\(16\.74\)],
[5\. Perceived quality], [0\.91], [0\.96], [0\.78], [−0\.56], [0\.70], [0\.52], [0\.70], [#emph[0\.88]], [\(24\.51\)],
[6\. Brand loyalty], [0\.88], [0\.95], [0\.72], [−0\.46], [0\.63], [0\.35], [0\.59], [0\.65], [#emph[0\.85]],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]: The square root of the average variance extracted values appears in italics\. #emph[t]\-values for correlations are reported in parenthesis\. CR \= composite reliability, FD \= factor determinacy, AVE \= average variance extracted\. MLR#emph[χ]#super[2]#sub[\(120\)] \= 548\.82, CFI \= 0\.93, TLI \= 0\.92, and RMSEA \= 0\.06 \(90% CI \[0\.06–0\.07\]\)\; #emph[n] \= 777\. #emph[Source]: own elaboration\.]
]
#v(12pt)
== Analysis of the Structural Model
#par(first-line-indent: 0em)[After conducting a CFA, we analyzed the structural model\. To test the hypotheses, we included all six latent variables in a structural model by reusing the #emph[Mplus] 7\.2 software and the MLR estimator\. The results of the SEM indicated that the six\-factor structural model had an appropriate fit to the data\. The goodness\-of\-fit \(GOF\) values of the structural model were as follows: MLRχ#super[2]#sub[\(120\)] \= 548\.82\; CFI \= 0\.93\; TLI \= 0\.91, and RMSEA \= 0\.06 \(90% CI \[0\.06–0\.07\]\)\.]

The path analysis confirmed six of the eight research hypotheses\. All hypotheses related to the impact of positive eWOM on CBBE were confirmed\. The relationship of positive eWOM to brand awareness restaurant’s brand was positive and significant in the sample \(H1a\. β \= 0\.39\; #emph[t\-value] \= 6\.50\; #emph[p] \< 0,001\), which supports H1a\. In support of H2a, H3a, and H4a, the paths between positive eWOM and next three CBBE’s dimensions \(brand associations, perceived quality, and brand loyalty\) were positive and significant \(brand associations β \= 0\.47\; #emph[t\-value] \= 7\.9\; #emph[p] \< 0\.001\; perceived quality β \= 0\.60\; #emph[t\-value] \= 8\.62\; p \< 0\.001\; brand loyalty β \= 0\.61\; #emph[t\-value] \= 8\.27\; p \< 0\.001\)\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Standardized structural coefficients of the conceptual model]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto), align: (left, right, right, right, left,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[HYPOTHESIS]], [#strong[β]], [#strong[#emph[t]\-value]], [#strong[#emph[p]\-value]], [#strong[Acceptance\/Rejection]]),
table.hline(stroke: 0.5pt),
[H1a\. Positive eWOM → Brand awareness], [0\.39], [6\.50], [0\.001], [Accepted],
[H2a\. Positive eWOM → Brand associations], [0\.47], [7\.90], [0\.001], [Accepted],
[H3a\. Positive eWOM → Perceived quality], [0\.60], [8\.62], [0\.001], [Accepted],
[H4a\. Positive eWOM → Brand loyalty], [0\.61], [8\.27], [0\.001], [Accepted],
[H1b\. Negative eWOM → Brand awareness], [0\.03], [0\.68], [0\.49], [Rejected],
[H2b\. Negative eWOM → Brand associations], [−0\.01], [−0\.15], [0\.87], [Rejected],
[H3b\. Negative eWOM → Perceived quality], [−0\.19], [−3\.22], [0\.001], [Accepted],
[H4b\. Negative eWOM → Brand loyalty], [−0\.10], [−1\.67], [0\.09], [Accepted],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[#emph[Note]: MLR#emph[χ]#super[2]#sub[\(120\)] \= 548\.82, CFI \= 0\.93, TLI \= 0\.91, and RMSEA \= 0\.06 \(90% CI \[0\.06–0\.07\]\)\; #emph[n] \= 777\. #emph[Source]: own elaboration\.]
]
#v(12pt)
Only two hypotheses related to the impact of negative eWOM on CBBE’s dimensions were confirmed\. There were no significant paths between negative eWOM and brand awareness of the restaurant’s brand or between brand associations\. Given these results, H1b and H2b were not supported\. For relationships from negative eWOM to perceived quality and brand loyalty, positive and weak paths coefficient \(perceived quality β \= \-0\.19\; #emph[t\-value] \= \-3\.22\; p \< 0\.001\; brand loyalty β \= \-0\.10\; #emph[t\-value] \= \-1\.67\; p \< 0\.1\) supported H3b, and H4b\. In both cases, there is a negative relationship between negative eWOM, perceived quality, and brand loyalty\.

= Discussion
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[It is now a trend that consumers share their evaluations, comments, or recommendations of a brand’s product or service on the online platform, which are known as online reviews\. Poles are more willing to give negative reviews about products of inferior quality than positive comments about products of good quality \(Bartosik\-Purgat, 2018\)\. Nevertheless, this trend causes a positive and negative effect on the restaurant’s brand\. This study contributes to the topic of catering outlets’ brand management, while the findings providing conceptual insight into how online reviews impact CBBE metrics\. The objective of this study was to identify the effects of both positive and negative online reviews \(eWOM\) on the metrics of consumer\-based brand equity \(CBBE\) in the Polish restaurant industry, in which restaurants are a primary context for the current study\. According to the results, positive online reviews are firmly influencing each CBBE variables: brand awareness, brand association, perceived quality, and brand loyalty\. On the other hand, negative online reviews do not have a significant relationship to brand awareness and brand association, but it has a relationship with perceived quality and brand loyalty\. Although negative online reviews are not as useful as positive online reviews, the results suggest that negative online reviews may diminish the reputation of the restaurant’s brand \(perceived quality and brand loyalty\)\.]

In the case of brand awareness, the results show that positive online reviews will increase a restaurant’s brand awareness\. On the other hand, negative online reviews will not affect them\. Brand awareness means how well and easily a consumer can recall the brand’s name \(Keller, 1993\)\. If a restaurant is recommended on an online platform, that restaurant awareness gains in popularity \(Zhang et al\., 2010\)\. It is because of the reputation created by the positive online review helps the customer recall the brand’s name\. Hence, the restaurant’s name will be memorable and recognizable when the consumer is looking for a good restaurant on the online platform\.

On the other hand, consumers tend to choose the product or brand that they know or have experienced \(Aaker, 1992\)\. We should remember that the respondents of the current study selected restaurants the know\. On the other hand, consumers looking for a catering outlet can immediately identify the restaurants with many positive recommendations and ignore those that have few or no positive online reviews\. It may explain the lack of impact of negative eWOM on brand awareness\.

For brand association, the results suggest that positive online reviews increase the level of brand association\. On the other hand, as in the case of brand awareness, negative online reviews will not influence brand association\. Brand association is a reflection of a consumer’s perception of a brand \(Keller, 1993\)\. As previous studies report, negative online reviews cause brand dilution \(Bambaurer\-Sachse and Mangold, 2011\), while social media communication positively influences consumer perception \(Pornpitakpan, 2004\; Schivinski and Dabrowski, 2016\), so the same effect should affect brand association in the restaurant context\. Thus, positive online reviews influence consumer perception of the catering outlet and cause an increase in a restaurant’s brand association, as consumers tend to believe online reviews from other consumers \(Gruen et al\., 2006\)\. Hence, positive online reviews influence a restaurant’s brand association\. Moreover, the results suggest that an increasing amount of positive online reviews will increase the perceived quality of products offered by restaurants\. In turn, the perceived quality of products will decrease as a result of the increase in the number of negative reviews online\. Another study in which researchers analyze the effect of quality attributed to restaurants on eWOM \(Zhang et al\., 2014\) shows that the impact of eWOM and perceived quality is a two\-way effect, which means that eWOM and perceived quality affect each other in the context of restaurants\. The attitude of consumers to the product can be changed by positive or negative reviews online \(Sher and Lee, 2009\; Lee et al\., 2008\; Lee, 2009\)\. Similarly, the quantity and quality of online reviews affect the consumer’s attitude toward restaurant attributes\.Therefore, as perceived quality refers to consumer’s judgment of a product’s overall attribute \(Zeithaml, 1988\), consumers’ view of restaurants’ characteristics is affected by positive and negative online reviews\. Although skepticism \(Sher and Lee, 2009\) and biased situations \(Sen and Lerman, 2007\) prevent attitude changes for particular consumers in an online review, positive and negative eWOM influences perceived quality at a specific degree\. After all, the effect of positive and negative online reviews on CBBE metrics is significant in the catering outlets’ context\.

As for brand loyalty, the results suggested that positive online reviews will increase consumer loyalty to the restaurant’s brand, whereas it will diminish with negative online reviews\. Since brand loyalty is a reflection of consumer satisfaction \(Aaker, 1992\), online reviews should indicate consumer’s satisfaction or dissatisfaction experienced in the restaurant\. The spread of online reviews affects brand reputation and loyalty \(Han et al\., 2016\)\. This happens because brand reputation is the consumer perception of the brand name’s quality \(Aaker and Keller, 1990\)\. As a result of reading online reviews, consumer perception of the brand changes either positively or negatively, depending on the emotional overtone of online reviews\. The Internet is one of the most important sources of information and consumers tend to think that the opinion of another consumer is trustworthy \(Lee, Rodgers and Kim, 2009\; Gruen et al\., 2006\; Zhang et al\., 2010\)\. Hence, the change in perception will either increase or diminish the level of loyalty to a restaurant’s brand\. Although a biased situation \(Sen and Lerman, 2007\) and skepticism \(Sher and Lee, 2009\) affect effectiveness, positive and negative online reviews still influence brand loyalty\.

= Academic and Practical Implications
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[This study identifies the effect of positive and negative online reviews on CEEB dimensions concerning the online food delivery industry as the literature gap\. There is very little understanding of the effect in these areas in scholarship\. Hence, we undertook a study to fill the gap\. The results of the investigation identified the impact of positive and negative online reviews on brand awareness, brand association, perceived quality, and brand loyalty\. Moreover, we discussed a detailed explanation for each effect between each independent and dependent variable\. As a result, the identified gap in the literature was slightly reduced\.]

In the context of a catering outlet, a restaurant’s manager must be aware of the effect of online reviews on CBBE\. Positive online reviews allow a restaurant to attract new customers and change the current customer’s perception of a restaurant, which increases brand association, brand awareness, perceived quality, and customer loyalty\. However, a negative online review has the effect opposite to the positive online review\. In this case, the search and alignment theory works for consumers \(Bambaurer\-Sachse and Mangold, 2011\)\. In reference to this theory, reading positive reviews and having their own experience allows consumers to form the right opinion about the restaurant\. Their opinion translates into trust for a catering point\. However, the appearance of contrary views – especially such that containing many detailed references to the customer service and offer – causes consumers to begin to question their convictions\. This is when the perception of a restaurant changes towards a negative one\; particularly evident in the areas of perceived quality and brand loyalty\.

Although previous studies report there is no significant effect of online review on a strong brand \(Ho\-Dac et al\., 2013\), restaurant marketers should take online review management into account while creating brand strategy\. Furthermore, the effect may enhance with the growing trend of checking online reviews in the future\. Even though some participants never check online reviews \(7\.9%\), 43\.8% still often checked online reviews before dining, while 10\.9% did so every time, and the remainder sometimes inspected the comments given to a restaurant\. These numbers suggest that the possibility of a consumer checking an online review is relatively high\. The Internet is one of essential sources of information, while consumers are seeking recommendations from online opinion platforms \(Lee, Rodgers and Kim, 2009\; Zhang et al\., 2010\)\.

Similarly to traditional WOM, eWOM plays a vital role in the organization of service\. One of the reasons is the intangibility of products, while another is the perceived risk \(Zeithaml, Parasuraman and Berry, 1985\; Zeithaml, 1981\; Berry, 1980\)\. Researchers demonstrated the existence of a positive impact of eWOM on consumer behavior\. The sender of the message is usually not associated with a service organization\. Hence, eWOM appears as a reliable source of information \(Silverman, 2001\), though extreme emotional intensity often characterizes this type of message\. Usually, online reviews are issued by consumers shortly after the service is completed\. In turn, eWOM recipients may approach such messages more rationally at the moment of contact \(Anderson, 1998\)\.

The results of the survey suggest that respondents tend to rely on the catering point recommendation from the online platform since they are frequently checking online reviews\. Although this forecast is based on a brief analysis, restaurant managers should begin preparations for a brand management strategy to counter the problem\.

= Conclusion and Limitations
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The starting point of this article was our observation of the growing popularity of online platforms that enable meal purchase and the increasing involvement of consumers in expressing online opinions of varying the emotional intensity\. Moreover, the purpose of this study was to identify the influence of negative and positive online reviews on brand awareness, brand association, perceived quality, and brand loyalty\. Moreover, this study indicates the impact of online reviews for restaurant marketers to adjust brand equity building strategy\.]

This research was conducted with quantitative research method with an online survey through social media\. In the survey, the scale for measuring the effect of a positive and negative review was adopted from Goyette et al\. \(2010\), while the scale for measuring CBBE was adopted from Christodoulides et al\. \(2015\)\. The findings confirmed six out of eight postulated hypotheses\.

Finally, the overall findings fit the predictions and explanations from the literature review\. Both positive and negative online reviews impact CBBE metrics by changing consumer perception of restaurants\. This phenomenon causes an increasing popularity of consumers’ checking online reviews before dining, and consumers tend to believe online reviews by other consumers \(Gruen et al\., 2006\)\. Restaurant managers and marketers must be aware of the effects of online reviews while creating a marketing communication strategy while also taking into account online reviews when creating brand equity building strategies\.

We used no random sampling in this study\. The sample structure does not correctly reflect the proportions of the population of Polish Internet users\. The people who participated in this survey did not represent the whole population\. It was also impossible to refer to the results of studies that determine the structure of Polish consumers who use online platforms that provide meals\. Moreover, the conceptual framework is only a fragment of reality\. Consumers are significantly influenced by more than just eWOM\. Thus, the result of the framework does not finalize the effect of positive and negative online reviews on CBBE metrics, although it helps to develop these areas in the future research\.

Furthermore, the scale of positive and negative eWOM may require further development\. Further research should determine whether respondents in their statements refer to brands that they like\. Emotions can affect respondents’ reception of positive and negative eWOM and its different impact on brand association, brand awareness, perceived quality, and brand loyalty\.

Finally, the effect of online review quantity and quality was generally discussed in the literature review\. Hence, further research should seek the effect of online review quantity and quality on CBBE metrics\.

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Aaker, D\.A\. \(1991\)\. #emph[Managing Brand Equity]\. New York: Maxweel Macmillan\-Canada\.

Aaker, D\.A\. \(1992\)\. The value of brand equity\. #emph[Journal of Business Strategy], #emph[13]\(4\), 27–32, http:\/\/dx\.doi\.org\/10\.1108\/eb039503\.

Aaker, D\.A\. and Keller, K\.L\. \(1990\)\. Consumer evaluations of brand extensions\. #emph[Journal of Market\-] #emph[ing], #emph[54]\(1\), 27–41, http:\/\/dx\.doi\.org\/10\.1177\/002224299005400102\.

Aaker, D\.A\. and McLoughlin, D\. \(2009\)\. #emph[Strategic market management: global perspectives]\. John Wiley & Sons\.

Ahmad, S\.Z\., Ahmad, N\. and Bakar, A\.R\.A\. \(2018\)\. Reflections of entrepreneurs of small and medium\-sized enterprises concerning the adoption of social media and its impact on performance outcomes: Evidence from the UAE\. #emph[Telematics and Informatics], #emph[35]\(1\), 6–17, https:\/\/doi\.org\/10\.1016\/j\.tele\.2017\.09\.006\.

Álvarez\-García, J\., del Carmen Cortés\-Domínguez, M\., del Río, M\.D\.L\.C\. and Simonetti, B\. \(2019\)\. Influence of brand equity on the behavioral attitudes of customers: Spanish Tourist Paradores\. #emph[Quality & Quantity], 1–27\.

Anderson, E\.W\. \(1998\)\. Customer satisfaction and word of mouth\. #emph[Journal of Service Research], #emph[1]\(1\), 5–17, http:\/\/dx\.doi\.org\/10\.1177\/109467059800100102\.

Bagozzi, R\.P\. and Yi, Y\. \(1988\)\. On the evaluation of structural equation models\. #emph[Journal of the] #emph[Academy of Marketing Science], #emph[16]\(1\), 74–94\.

Bambauer\-Sachse, S\. and Mangold, S\. \(2011\)\. Brand equity dilution through negative online word\-of\-mouth communication\. #emph[Journal of Retailing and Consumer Services], #emph[18]\(1\), 38–45, http:\/\/dx\.doi\.org\/10\.1016\/j\.jretconser\.2010\.09\.003\.

Banerjee, S\., Bhattacharyya, S\. and Bose, I\. \(2017\)\. Whose online reviews to trust? Understanding reviewer trustworthiness and its impact on business\. #emph[Decision Support Systems], #emph[96], 17–26, https:\/\/doi\.org\/10\.1016\/j\.dss\.2017\.01\.006\.

Bartosik\-Purgat, M\. \(2018\)\. International Contexts of Social Media and e\-WoM Communication in the Customer Decision\-Making Process\. #emph[Journal of Management and Business Administration\.] #emph[Central Europe], #emph[26]\(2\), 16–33, http:\/\/dx\.doi\.org\/10\.7206\/jmba\.ce\.2450\-7814\.226\.

Berezina, K\., Bilgihan, A\., Cobanoglu, C\. and Okumus, F\. \(2016\)\. Understanding satisfied and dissa tisfied hotel customers: text mining of online hotel reviews\. #emph[Journal of Hospitality Marketing] #emph[& Management], #emph[25]\(1\), 1–24, https:\/\/doi\.org\/10\.1080\/19368623\.2015\.983631\.

Berry, L\.L\. \(1980\)\. Services marketing is different\. #emph[Business], #emph[30]\(3\), 24–29\.

Bhandari, M\. and Rodgers, S\. \(2018\)\. What does the brand say? Effects of brand feedback to negative eWOM on brand trust and purchase intentions\. #emph[International Journal of Advertising], #emph[37]\(1\), 125–141, https:\/\/doi\.org\/10\.1080\/02650487\.2017\.1349030\.

Bilgihan, A\., Seo, S\. and Choi, J\. \(2018\)\. Identifying restaurant satisfiers and dissatisfiers: Suggestions from online reviews\. #emph[Journal of Hospitality Marketing & Management], #emph[27]\(5\), 601–625, https:\/\/doi\.org\/10\.1080\/19368623\.2018\.1396275\.

Bruhn, M\. and Schnebelen, S\. \(2017\)\. Integrated marketing communication–from an instrumental to a customer\-centric perspective\. #emph[European Journal of Marketing], #emph[51]\(3\), 464–489, https:\/\/doi\.org\/10\.1108\/EJM\-08\-2015\-0591\.

Bruhn, M\., Schoenmueller, V\. and Schäfer, D\.B\. \(2012\)\. Are social media replacing traditional media in terms of brand equity creation? #emph[Management Research Review], #emph[35]\(9\), 770–790, http:\/\/dx\.doi\.org\/10\.1108\/01409171211255948\.

Brzozowska\-Woś, M\. \(2018\)\. The effects of perceived risk, brand value, and brand trust on eWOM\. #emph[Handel Wewnętrzny], #emph[6], 95–109\.

Brzozowska\-Woś, M\. and Schivinski, B\. \(2017\)\. Zaufanie do marek jako mediator pomiędzy postrzeganym ryzykiem i skłonnością do elektronicznego word\-of\-mouth\. #emph[Handel Wewnętrzny], #emph[5], 72–81\.

Chatzipanagiotou, K\., Christodoulides, G\. and Veloutsou, C\. \(2019\)\. Managing the consumer\-based brand equity process: A cross\-cultural perspective\. #emph[International Business Review], #emph[28]\(2\), 328–343, https:\/\/doi\.org\/10\.1016\/j\.ibusrev\.2018\.10\.005\.

Chen, C\.C\. and Chang, Y\.C\. \(2018\)\. What drives purchase intention on Airbnb? Perspectives of consumer reviews, information quality, and media richness\. #emph[Telematics and Informatics], #emph[35]\(5\), 1512–1523, https:\/\/doi\.org\/10\.1016\/j\.tele\.2018\.03\.019\.

Cheung, C\. and Thadani, D\. \(2012\)\. The impact of electronic word\-of\-mouth communication: A litera ture analysis and integrative model\. #emph[Decision Support Systems], #emph[54]\(1\), https:\/\/doi\.org\/10\.1016\/j\.dss\.2012\.06\.008\.

Chong, A\.Y\.L\., Li, B\., Ngai, E\. W\., Ch’ng, E\. and Lee, F\. \(2016\)\. Predicting online product sales via online reviews, sentiments, and promotion strategies: A big data architecture and neural network approach\. #emph[International Journal of Operations & Production Management], #emph[36]\(4\), 358–383\.

Christodoulides, G\. and De Chernatony, L\. \(2010\)\. Consumer\-based brand equity conceptualization and measurement: A literature review\. #emph[International Journal of Research in Marketing], #emph[52]\(1\), 43–66, http:\/\/doi\.org\/10\.2501\/S1470785310201053\.

Christodoulides, G\., Cadogan, J\.W\. and Veloutsou, C\. \(2015\)\. Consumer\-based brand equity measu rement: lessons learned from an international study\. #emph[International Marketing Review], #emph[32]\(3\/4\), 307–328, http:\/\/dx\.doi\.org\/10\.1108\/IMR\-10\-2013\-0242\.

Clemons, E\.K\. \(2019\)\. Online Brand Ambassadors and Online Brand Assassins: Master the New Role of the Chief Perception Officer\. In: #emph[New Patterns of Power and Profit]\. Palgrave Macmillan, Cham\.

Cobb\-Walgren, C\.J\., Ruble, C\.A\. and Donthu, N\. \(1995\)\. Brand equity, brand preference, and purchase intent\. #emph[Journal of Advertising], #emph[24]\(3\), 25–40, https:\/\/doi\.org\/10\.1080\/00913367\.1995\.10673481\.

Craig, C\.S\., Greene, W\.H\. and Versaci, A\. \(2015\)\. E\-word of mouth: Early predictor of audience engagement: How pre\-release “e\-WOM” drives box\-office outcomes of movies\. #emph[Journal of Advertis] #emph[ing Research], #emph[55]\(1\), 62–72, https:\/\/doi\.org\/10\.2501 \/ JAR\-55\-1\-062\-072\.

Cui, G\., Lui, H\.K\. and Guo, X\. \(2012\)\. The effect of online consumer reviews on new product sales\. #emph[International Journal of Electronic Commerce], #emph[17]\(1\), 39–58, http:\/\/dx\.doi\.org\/10\.2753\/JEC1086\-4415170102\.

DeAndrea, D\.C\., Van Der Heide, B\., Vendemia, M\.A\. and Vang, M\.H\. \(2018\)\. How people evaluate online reviews\. #emph[Communication Research], #emph[45]\(5\), 719–736, https:\/\/doi\.org\/10\.1177%2F0093650215573862\.

El\-Baz, B\.E\.S\., Elseidi, R\.I\. and El\-Maniaway, A\.M\. \(2018\)\. Influence of Electronic Word of Mouth \(e\-WOM\) on Brand Credibility and Egyptian Consumers’ Purchase Intentions\. #emph[International] #emph[Journal of Online Marketing \(IJOM\)], #emph[8]\(4\), 1–14, https:\/\/doi\.org\/10\.4018 \/ IJOM\.2018100101\.

Ettinger, A\., Grabner\-Kräuter, S\. and Terlutter, R\. \(2018\)\. Online CSR communication in the hotel industry: Evidence from small hotels\. #emph[International Journal of Hospitality Management], #emph[68], 94–104, https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2017\.09\.002\.

Fagerstrøm, A\., Ghinea, G\. and Sydnes, L\. \(2016\)\. Understanding the Impact of Online Reviews on Customer Choice: A Probability Discounting Approach\. #emph[Psychology & Marketing], #emph[33]\(2\), 125–134, http:\/\/doi\.org\/10\.1002\/mar\.20859\.

Farquhar, P\.H\., Han, J\.Y\. and Ijiri, Y\. \(1991\)\. Recognizing and measuring brand assets\. #emph[Report number] #emph[91\-119\/Marketing Science Institute \(USA\)]\.

Foroudi, P\., Jin, Z\., Gupta, S\., Foroudi, M\.M\. and Kitchen, P\. J\. \(2018\)\. Perceptional components of brand equity: Configuring the Symmetrical and Asymmetrical Paths to brand loyalty and brand purchase intention\. #emph[Journal of Business Research], #emph[89], 462–474, http:\/\/doi\.org\/10\.1016\/j\.jbusres\.2018\.01\.031\.

Geetha, M\., Singha, P\. and Sinha, S\. \(2017\)\. Relationship between customer sentiment and online customer ratings for hotels\-An empirical analysis\. #emph[Tourism Management], #emph[61], 43–54, https:\/\/doi\.org\/10\.1016\/j\.tourman\.2016\.12\.022\.

Godey, B\., Manthiou, A\., Pederzoli, D\., Rokka, J\., Aiello, G\., Donvito, R\. and Singh, R\. \(2016\)\. Social media marketing efforts of luxury brands: Influence on brand equity and consumer behavior\. #emph[Journal of Business Research], #emph[69]\(12\), 5833–5841, https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2016\.04\.181\.

Goyette, I\., Ricard, L\., Bergeron, J\. and Marticotte, F\. \(2010\)\. e\-WOM Scale: word\-of\-mouth measure ment scale for e\-services context\. #emph[Canadian Journal of Administrative Sciences\/Revue Canadienne] #emph[des Sciences de l’Administration], #emph[27]\(1\), 5–23\.

Gruen, T\.W\., Osmonbekov, T\. and Czaplewski, A\.J\. \(2006\)\. eWOM: The impact of customer\-to\-customer online know\-how exchange on customer value and loyalty\. #emph[Journal of Business Research], #emph[59]\(4\), 449–456, http:\/\/dx\.doi\.org\/10\.1016\/j\.jbusres\.2005\.10\.004\.

Gvili, Y\. and Levy, S\. \(2018\)\. Consumer engagement with eWOM on social media: the role of social capital\. #emph[Online Information Review], #emph[42]\(4\), 482–505, https:\/\/doi\.org\/10\.1108\/OIR\-05\-2017\-0158\.

Han, S\.H\., Nguyen, B\. and Simkin, L\. \(2016\)\. The dynamic models of consumers’ symbolic needs: in the context of restaurant brands\. #emph[European Journal of Marketing], #emph[50]\(7\/8\), 1348–1376\.

Hanaysha, J\.R\. \(2018\)\. Customer retention and the mediating role of perceived value in retail industry\. #emph[World Journal of Entrepreneurship, Management and Sustainable Development], #emph[14]\(1\), 2–24, https:\/\/doi\.org\/10\.1108\/WJEMSD\-06\-2017\-0035\.

He, Z\., Han, G\., Cheng, T\.C\.E\., Fan, B\. and Dong, J\. \(2018\)\. Evolutionary food quality and location strategies for restaurants in competitive online\-to\-offline food ordering and delivery markets: An agent\-based approach\. #emph[International Journal of Production Economics], https:\/\/doi\.org\/10\.1016\/j\.ijpe\.2018\.05\.008\.

Hennig\-Thurau, T\., Gwinner, K\.P\., Walsh, G\. and Gremler, D\.D\. \(2004\)\. Electronic word\-of\-mouth via consumer\-opinion platforms: what motivates consumers to articulate themselves on the internet? #emph[Journal of Interactive Marketing], #emph[18]\(1\), 38–52, https:\/\/doi\.org\/10\.1002\/dir\.10073\.

Hew, J\.J\., Lee, V\.H\., Ooi, K\.B\. and Lin, B\. \(2016\)\. Mobile social commerce: The booster for brand loyalty?\. #emph[Computers in Human Behavior], #emph[59], 142–154, http:\/\/dx\.doi\.org\/10\.1016\/j\.chb\.2016\.01\.027\.

Ho\-Dac, N\.N\., Carson, S\.J\. and Moore, W\.L\. \(2013\)\. The effects of positive and negative online custo mer reviews: do brand strength and category maturity matter? #emph[Journal of Marketing], #emph[77]\(6\), 37–53, http:\/\/dx\.doi\.org\/10\.1509\/jm\.11\.0011\.

Ismail, T\.A\.T\., Muhammad, R\., Yusoff, N\.M\. and Shariff, M\.S\.M\. \(2018\)\. Hotel Brand and Food Quality in Malaysia\. #emph[Asian Journal of Quality of Life], #emph[3]\(10\), 51–59, https:\/\/doi\.org\/10\.21834\/ajqol\.v3i10\.98

Kamakura, W\.A\. and Russell, G\. \(1993\)\. Measuring brand value with scanner data\. #emph[Intern\. Journal] #emph[of Research in Marketing], #emph[10], 9–22\.

Kang, J\.W\. and Namkung, Y\. \(2019\)\. The information quality and source credibility matter in custo mers’ evaluation toward food O2O commerce\. #emph[International Journal of Hospitality Management], #emph[78], 189–198, https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2018\.10\.011\.

Keller, K\.L\. \(1993\)\. Conceptualizing, measuring, and managing customer\-based brand equity\. #emph[Journal] #emph[of Marketing], #emph[57]\(1\), 1–22, http:\/\/dx\.doi\.org\/10\.2307\/1252054\.

Keller, K\.L\. \(2016\)\. Reflections on customer\-based brand equity: perspectives, progress, and priori ties\. #emph[AMS Review], 1–16, http:\/\/doi\.org\/10\.1007\/s13162\-016\-0078\-z

Kim, A\.J\. and Johnson, K\.K\. \(2016\)\. Power of consumers using social media: Examining the influences of brand\-related user\-generated content on Facebook\. #emph[Computers in Human Behavior], #emph[58], 98–108, https:\/\/doi\.org\/10\.1016\/j\.chb\.2015\.12\.047\.

Kim, B\., Kim, S\. and Heo, C\.Y\. \(2016\)\. Analysis of satisfiers and dissatisfiers in online hotel reviews on social media\. International Journal of Contemporary Hospitality Management, #emph[28]\(9\), 1915–1936, https:\/\/doi\.org\/10\.1108\/IJCHM\-04\-2015\-0177\.

Kim, S\., Koh, Y\., Cha, J\. and Lee, S\. \(2015\)\. Effects of social media on firm value for US restaurant companies\. #emph[International Journal of Hospitality Management], #emph[49], 40–46, https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2015\.05\.006\.

Kunja, S\.R\. and GVRK, A\. \(2018\)\. Examining the effect of eWOM on the customer purchase intention through value co\-creation \(VCC\) in social networking sites \(SNSs\) A study of select Facebook fan pages of smartphone brands in India\. #emph[Management Research Review], https:\/\/doi\.org\/10\.1108\/MRR\-04\-2017\-0128\.

Lee, J\., Park, D\.H\. and Han, I\. \(2008\)\. The effect of negative online consumer reviews on product attitude: An information processing view\. #emph[Electronic Commerce Research and Applications], #emph[7]\(3\), 341–352, http:\/\/dx\.doi\.org\/10\.1016\/j\.elerap\.2007\.05\.004\.

Lee, M\. and Youn, S\. \(2009\)\. Electronic word of mouth \(eWOM\) How eWOM platforms influence consumer product judgement\. #emph[International Journal of Advertising], #emph[28]\(3\), 473–499\.

Lee, M\., Rodgers, S\. and Kim, M\. \(2009\)\. Effects of valence and extremity of eWOM on attitude toward the brand and website\. #emph[Journal of Current Issues & Research in Advertising], #emph[31]\(2\), 1–11, https:\/\/doi\.org\/10\.1080\/10641734\.2009\.10505262\.

Lee, S\.H\. \(2009\)\. How do online reviews affect purchasing intention?\. #emph[African Journal of Business] #emph[Management], #emph[3]\(10\), 576–581, https:\/\/doi\.org\/10\.5897\/AJBM09\.204\.

Lee, Y\.K\., Back, K\.J\. and Kim, J\.Y\. \(2009\)\. Family restaurant brand personality and its impact on customer’s emotion, satisfaction, and brand loyalty\. #emph[Journal of Hospitality & Tourism Research], #emph[33]\(3\), 305–328, http:\/\/dx\.doi\.org\/10\.1177\/1096348009338511\.

Leong, L\.Y\., Hew, T\.S\., Ooi, K\.B\. and Lin, B\. \(2019\)\. Do electronic word\-of\-mouth and elaboration likelihood model influence hotel booking? #emph[Journal of Computer Information Systems], #emph[59]\(2\), 146–160, https:\/\/doi\.org\/10\.1080\/08874417\.2017\.1320953\.

Li, H\., Zhang, Z\., Meng, F\. and Zhang, Z\. \(2019\)\. When you write review” matters: The interactive effect of prior online reviews and review temporal distance on consumers’ restaurant evaluation\. #emph[International Journal of Contemporary Hospitality Management], https:\/\/doi\.org\/10\.1108\/IJCHM\-01\-2018\-0058\.

Li, X\., Wu, C\. and Mai, F\. \(2019\)\. The effect of online reviews on product sales: A joint sentiment\-topic analysis\. #emph[Information & Management], #emph[56]\(2\), 172–184, https:\/\/doi\.org\/10\.1016\/j\.im\.2018\.04\.007\.

Lin, M\.J\. and Wang, W\.T\. \(2015\)\. Examining e\-commerce customer satisfaction and loyalty: an integrated quality\-risk\-value perspective\. #emph[Journal of Organizational Computing and Electronic] #emph[Commerce], #emph[25]\(4\), 379–401, http:\/\/dx\.doi\.org\/10\.1080\/10919392\.2015\.1089681\.

Litvin, S\.W\., Goldsmith, R\.E\. and Pan, B\. \(2018\)\. A retrospective view of electronic word\-of\-mouth in hospitality and tourism management\. #emph[International Journal of Contemporary Hospitality] #emph[Management], #emph[30]\(1\), 313–325, https:\/\/doi\.org\/10\.1108\/IJCHM\-08\-2016\-0461\.

Liu, Z\. and Park, S\. \(2015\)\. What makes a useful online review? Implication for travel product websites\. #emph[Tourism Management], #emph[47], 140–151, https:\/\/doi\.org\/10\.1016\/j\.tourman\.2014\.09\.020\.

Matzler, K\., Teichmann, K\., Strobl, A\. and Partel, M\. \(2019\)\. The effect of price on word of mouth: First time versus heavy repeat visitors\. #emph[Tourism Management], #emph[70], 453–459, https:\/\/doi\.org\/10\.1016\/j\.tourman\.2018\.09\.013\.

Mehrabian, A\. and Russell, J\.A\. \(1974\)\. #emph[An approach to environmental psychology]\. Cambridge: MIT Press\.

Muthén, L\.K\. and Muthén, B\.O\. \(2012\)\. #emph[Mplus user’s guide \(seventh edition\)\.] Los Angeles, CA: Muthén & Muthén\.

Narteh, B\. \(2018\)\. Brand equity and financial performance\. #emph[Marketing Intelligence & Planning], #emph[36]\(3\), 381–395, http:\/\/doi\.org\/10\.1108\/MIP\-05\-2017\-0098\.

Nieto\-Garcia, M\., Resce, G\., Ishizaka, A\., Occhiocupo, N\. and Viglia, G\. \(2019\)\. The dimensions of hotel customer ratings that boost RevPAR\. #emph[International Journal of Hospitality Management], #emph[77], 583–592, https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2018\.09\.002\.

Niu, R\.H\. and Fan, Y\. \(2018\)\. An exploratory study of online review management in hospitality services\. #emph[Journal of Service Theory and Practice], #emph[28]\(1\), 79–98, https:\/\/doi\.org\/10\.1108\/JSTP\-09\-2016\-0158\.

Oliveira, B\. and Casais, B\. \(2019\)\. The importance of user\-generated photos in restaurant selection\. #emph[Jour\-] #emph[nal of Hospitality and Tourism Technology], #emph[10]\(1\), 2–14, https:\/\/doi\.org\/10\.1108\/JHTT\-11\-2017\-0130\.

Pizzaportal\.pl \(2019\), available at: https:\/\/blog\.pizzaportal\.pl\/media\/ \(11\.04\.2019\)\.

Pornpitakpan, C\. \(2004\)\. The persuasiveness of source credibility: A critical review of five decades’ evidence\. #emph[Journal of Applied Social Psychology], #emph[34]\(2\), 243–281, http:\/\/dx\.doi\.org\/10\.1111\/j\.1559\-1816\.2004\.tb02547\.x\.

Portalspozywczy\.pl \(2019a\), available at: http:\/\/www\.portalspozywczy\.pl\/horeca\/wiadomosci\/polacy\-coraz \-chetniej\-zamawiaja\-jedzenie\-online\-raport,169946\.html \(11\.04\.2019\)\.

Portalspozywczy\.pl, \(2019b\), available at: http:\/\/www\.portalspozywczy\.pl\/horeca\/wiadomosci\/trend\-convenience\-na\-rynku\-dostaw\-jedzenia,160346\.html \(11\.04\.2019\)\.

Purnawirawan, N\., Eisend, M\., De Pelsmacker, P\. and Dens, N\. \(2015\)\. A Meta\-analytic Investigation of the Role of Valence in Online Reviews\. #emph[Journal of Interactive Marketing], #emph[31], 17–27\. http:\/\/doi\.org\/10\.1016\/j\.intmar\.2015\.05\.001\.

Pyszne\.pl \(2019\), available at: https:\/\/www\.pyszne\.pl\/en\/ \(11\.04\.2019\)\.

Rambocas, M\., Kirpalani, V\. M\., & Simms, E\. \(2018\)\. Brand equity and customer behavioral intentions: a mediated moderated model\. #emph[International Journal of Bank Marketing], #emph[36]\(1\), 19–40, https:\/\/doi\.org\/10\.1108\/IJBM\-09\-2016\-0139\.

Rangaswamy, A\., Burke, R\.R\. and Oliva, T\.A\. \(1993\)\. Brand equity and the extendibility of brand names\. #emph[International Journal of Research in Marketing], #emph[10]\(1\), 61–75, https:\/\/doi\.org\/10\.1016\/0167\-8116\(93\)90034\-V\.

Restaurantdive \(2019\)\. https:\/\/www\.restaurantdive\.com\/news\/why\-the\-delivery\-market\-will\-look\-different\-in\-5\-years\/546936\/ \(11\.04\.2019\)\.

Ruiz\-Mafe, C\., Chatzipanagiotou, K\. and Curras\-Perez, R\. \(2018\)\. The role of emotions and conflicting online reviews on consumers’ purchase Intentions\. #emph[Journal of Business Research], #emph[89], 336–344, https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2018\.01\.027\.

Schivinski, B\. and Dabrowski, D\. \(2015\)\. The impact of brand communication on brand equity through Facebook\. #emph[Journal of Research in Interactive Marketing], #emph[9]\(1\), 31–53, http:\/\/dx\.doi\.org\/10\.1108\/JRIM\-02\-2014\-0007\.

Schivinski, B\. and Dabrowski, D\. \(2016\)\. The effect of social media communication on consumer perceptions of brands\. #emph[Journal of Marketing Communications], #emph[22]\(2\), 189–214, http:\/\/dx\.doi\.org\/10\.1080\/13527266\.2013\.871323\.

Schivinski, B\. and Łukasik, P\. \(2014\)\. Rozwój badań nad kapitałem marki bazującym na konsumencie – przegląd literatury\. #emph[Marketing i Rynek], #emph[11], 74–80\.

Sen, S\. and Lerman, D\. \(2007\)\. Why are you telling me this? An examination into negative consumer reviews on the web\. #emph[Journal of interactive marketing], #emph[21]\(4\), 76–94, http:\/\/dx\.doi\.org\/10\.1002\/dir\.20090\.

Serra\-Cantallops, A\., Ramon\-Cardona, J\. and Salvi, F\. \(2018\)\. The impact of positive emotional experiences on eWOM generation and loyalty\. #emph[Spanish Journal of Marketing\-ESIC], #emph[22]\(2\), 142–162, https:\/\/doi\.org\/10\.1108\/SJME\-03\-2018\-0009\.

Sher, P\.J\. and Lee, S\.H\. \(2009\)\. Consumer skepticism and online reviews: An elaboration likelihood model perspective\. #emph[Social Behavior and Personality: an international journal], #emph[37]\(1\), 137–143, http:\/\/dx\.doi\.org\/10\.2224\/sbp\.2009\.37\.1\.137\.

Sijoria, C\., Mukherjee, S\. and Datta, B\. \(2019\)\. Impact of the antecedents of electronic word of mouth on consumer based brand equity: a study on the hotel industry\. #emph[Journal of Hospitality Marketing] #emph[& Management], #emph[28]\(1\), 1–27, https:\/\/doi\.org\/10\.1080\/19368623\.2018\.1497564\.

Silverman, G\. \(2001\)\. #emph[Secrets of Word\-of\-Mouth Marketing]\. New York, NY: AMACOM Books\.

Sparks, B\.A\. and Browning, V\. \(2011\)\. The impact of online reviews on hotel booking intentions and perception of trust\. #emph[Tourism Management], #emph[32]\(6\), 1310–1323, http:\/\/dx\.doi\.org\/10\.1016\/j\.tourman\.2010\.12\.011\.

Statista – The Statistics Portal \(2019a\), available at: https:\/\/www\.statista\.com\/outlook\/375\/100\/restaurant \-to\-consumer\-delivery\/worldwide \(10\.10\.2019\)\.

Statista – The Statistics Portal \(2019b\), available at: https:\/\/www\.statista\.com\/outlook\/374\/146\/online \-food\-delivery\/poland \(10\.10\.2019\)\. Sürücü, Ö\., Öztürk, Y\., Okumus, F\. and Bilgihan, A\. \(2019\)\. Brand awareness, image, physical quality and employee behavior as building blocks of customer\-based brand equity: Consequences in the hotel context\. #emph[Journal of Hospitality and Tourism Management], #emph[40], 114–124, https:\/\/doi\.org\/10\.1016\/j\.jhtm\.2019\.07\.002\.

Tata, S\.V\., Prashar, S\. and Gupta, S\. \(2019\)\. An examination of the role of review valence and review source in varying consumption contexts on purchase decision\. #emph[Journal of Retailing and Consu] #emph[mer Services], https:\/\/doi\.org\/10\.1016\/j\.jretconser\.2019\.01\.003

Teman, E\.D\. \(2012\)\. #emph[The performance of multiple imputation and full information maximum likelihood] #emph[for missing ordinal data in structural equation models]\. University of Northern Colorado\.

Thelwall, M\. \(2019\)\. #emph[Sentiment Analysis for Tourism\. In Big Data and Innovation in Tourism, Travel,] #emph[and Hospitality] \(pp\. 87–104\)\. Singapore: Springer\.

Trusov, M\., Bucklin, R\.E\. and Pauwels, K\. \(2009\)\. Effects of word\-of\-mouth versus traditional marketing: findings from an internet social networking site\. #emph[Journal of Marketing], #emph[73]\(5\), 90–102, http:\/\/dx\.doi\.org\/10\.1509\/jmkg\.73\.5\.90\.

Xiang, Z\., Du, Q\., Ma, Y\. and Fan, W\. \(2017\)\. A comparative analysis of major online review platforms: Implications for social media analytics in hospitality and tourism\. #emph[Tourism Management], #emph[58], 51–65, https:\/\/doi\.org\/10\.1016\/j\.tourman\.2016\.10\.001\.

Xiang, Z\., Schwartz, Z\., Gerdes Jr, J\.H\. and Uysal, M\. \(2015\)\. What can big data and text analytics tell us about hotel guest experience and satisfaction? #emph[International Journal of Hospitality Manage] #emph[ment], #emph[44], 120–130, https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2014\.10\.013\.

Xiao, L\., Zhang, Y\. and Fu, B\. \(2019\)\. Exploring the moderators and causal process of trust transfer in online\-to\-offline commerce\. #emph[Journal of Business Research], #emph[98], 214–226, https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2019\.01\.069\.

Xie, K\.L\., Zhang, Z\. and Zhang, Z\. \(2014\)\. The business value of online consumer reviews and manage ment response to hotel performance\. #emph[International Journal of Hospitality Management], #emph[43], 1–12, https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2014\.07\.007\.

Xue, F\. and Phelps, J\.E\. \(2004\)\. Internet\-facilitated consumer\-to\-consumer communication: The moderating role of receiver characteristics\. #emph[International Journal of Internet Marketing and] #emph[Advertising], #emph[1]\(2\), 121–136, http:\/\/dx\.doi\.org\/10\.1504\/IJIMA\.2004\.004016\.

Yang, Y\., Park, S\. and Hu, X\. \(2018\)\. Electronic word of mouth and hotel performance: A meta\-analysis\. #emph[Tourism Management], #emph[67], 248–260, https:\/\/doi\.org\/10\.1016\/j\.tourman\.2018\.01\.015\.

Yoo, B\. and Donthu, N\. \(2001\)\. Developing and validating a multidimensional consumer\-based brand equity scale\. #emph[Journal of Business Research], #emph[52]\(1\), 1–14, http:\/\/dx\.doi\.org\/10\.1016\/S0148\-2963\(99\)00098\-3\.

Yoon, Y\., Kim, A\. J\., Kim, J\. and Choi, J\. \(2019\)\. The effects of eWOM characteristics on consumer ratings: evidence from TripAdvisor\. com\. #emph[International Journal of Advertising], 1–20, https:\/\/doi\.org\/10\.1080\/02650487\.2018\.1541391\.

Yu, M\., Liu, F\., Lee, J\. and Soutar, G\. \(2018\)\. The influence of negative publicity on brand equity: attribution, image, attitude and purchase intention\. #emph[Journal of Product & Brand Management], #emph[27]\(4\), 440–451, https:\/\/doi\.org\/10\.1108\/JPBM\-01\-2017\-1396\.

Zeithaml, V\.A\. \(1988\)\. Consumer perceptions of price, quality, and value: a means\-end model and synthesis of evidence\. #emph[Journal of Marketing], #emph[52]\(3\), 2–22, http:\/\/dx\.doi\.org\/10\.2307\/1251446\.

Zeithaml, V\.A\., Parasuraman, A\. and Berry, L\.L\. \(1985\)\. Problems and strategies in services marketing\. #emph[Journal of Marketing], #emph[49]\(2\), 33–46, http:\/\/dx\.doi\.org\/10\.2307\/1251563\.

Zeithaml, V\.A\. \(1981\)\. How consumer evaluation processes differ between goods and services\. in Donnelly, J\.H\. and George, W\.R\. \(eds\)\. #emph[Marketing of Services]\. Chicago: American Marketing Association\.

Zhang, C\., Tian, Y\.X\., Fan, Z\.P\., Liu, Y\. and Fan, L\.W\. \(2019\)\. Product sales forecasting using macro economic indicators and online reviews: a method combining prospect theory and sentiment analysis\. #emph[Soft Computing], 1–14\.

Zhang, L\. and Hanks, L\. \(2018\)\. Online reviews: The effect of cosmopolitanism, incidental similarity, and dispersion on consumer attitudes toward ethnic restaurants\. #emph[International Journal of Hospi] #emph[tality Management], #emph[68], 115–123, https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2017\.10\.008\.

Zhang, T\., Abound Omran, B\. and Cobanoglu, C\. \(2017\)\. Generation Y’s positive and negative eWOM: use of social media and mobile technology\. #emph[International Journal of Contemporary Hospitality] #emph[Management], #emph[29]\(2\), 732–761, https:\/\/doi\.org\/10\.1108\/JHTT\-11\-2017\-0130\.

Zhang, Z\., Ye, Q\., Law, R\. and Li, Y\. \(2010\)\. The impact of e\-word\-of\-mouth on the online popularity of restaurants: A comparison of consumer reviews and editor reviews\. #emph[International Journal of] #emph[Hospitality Management], #emph[29]\(4\), 694–700, http:\/\/dx\.doi\.org\/10\.1016\/j\.ijhm\.2010\.02\.002\.

Zhang, Z\., Zhang, Z\. and Law, R\. \(2014\)\. Positive and negative word of mouth about restaurants: Exploring the asymmetric impact of the performance of attributes\. #emph[Asia Pacific Journal of Tourism] #emph[Research], #emph[19]\(2\), 162–180, http:\/\/dx\.doi\.org\/10\.1080\/10941665\.2012\.735680\.

Zhao, Y\., Xu, X\., and Wang, M\. \(2019\)\. Predicting overall customer satisfaction: big data evidence from hotel online textual reviews\. #emph[International Journal of Hospitality Management], #emph[76], 111–121, https:\/\/doi\.org\/10\.1016\/j\.ijhm\.2018\.03\.017\.

#pagebreak()
= Appendix
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table A.] Descriptive statistics for constructs and measurements]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Constructs and measurements]], [#strong[Loading]], [#strong[#emph[t]]], [#strong[Mean]], [#strong[SD]], [#strong[Skew\.]], [#strong[Kurt\.]], [#strong[#emph[R]#super[2]]]),
table.hline(stroke: 0.5pt),
[#emph[Positive eWOM \(adapted from Goyette et al\., 2010\)]], [], [], [], [], [], [], [],
[Many people recommend this restaurant online\.], [0\.77], [32\.44], [4\.78], [2\.02], [−0\.60], [−0\.89], [0\.59],
[People are proud to say to others that they are this restaurant’s customer\.], [0\.73], [29\.83], [4\.31], [1\.99], [−0\.27], [−1\.12], [0\.53],
[People have spoken favorably of this restaurant to others online\.], [0\.79], [33\.11], [5\.06], [1\.98], [−0\.83], [−0\.55], [0\.63],
[#emph[Negative eWOM \(adapted from Goyette et al\., 2010\)]], [], [], [], [], [], [], [],
[Many people don’t recommend this restaurant online\.], [0\.85], [39\.88], [2\.60], [1\.98], [0\.98], [−0\.34], [0\.73],
[People are not proud to say to others that they are this restaurant’s customer\.], [0\.68], [22\.84], [2\.92], [2\.03], [0\.67], [−0\.87], [0\.47],
[People have spoken unfavorably of this restaurant to others online\.], [0\.80], [30\.63], [2\.44], [1\.91], [1\.10], [−0\.10], [0\.64],
[#emph[Brand awareness \(adapted from Christodoulides et al\., 2015\)]], [], [], [], [], [], [], [],
[I have heard of this restaurant\.], [0\.66], [22\.42], [5\.23], [1\.73], [−0\.98], [0\.01], [0\.43],
[I am quite familiar with this restaurant\.], [0\.82], [36\.36], [5\.48], [1\.60], [−1\.16], [0\.56], [0\.68],
[I can recognize this restaurant among other restaurants\.], [0\.83], [37\.42], [5\.77], [1\.64], [−1\.48], [1\.35], [0\.70],
[#emph[Brand associations \(adapted from Christodoulides et al\., 2015\)]], [], [], [], [], [], [], [],
[This restaurant has strong associations\.], [0\.64], [18\.52], [5\.27], [1\.69], [−0\.93], [0\.03], [0\.41],
[This restaurant has favorable associations\.], [0\.80], [37\.96], [5\.39], [1\.75], [−1\.10], [0\.21], [0\.65],
[It is clear what this restaurant stands for \(e\.g\. image, values\)\.], [0\.74], [25\.87], [5\.53], [1\.68], [−1\.15], [0\.46], [0\.55],
[#emph[Perceived quality \(adapted from Christodoulides et al\., 2015\)]], [], [], [], [], [], [], [],
[This restaurant is good quality\.], [0\.89], [65\.69], [5\.46], [1\.80], [−1\.20], [0\.32], [0\.80],
[This restaurant has excellent features\.], [0\.86], [51\.98], [5\.11], [1\.75], [−0\.94], [−0\.13], [0\.75],
[Compared to other restaurants in its category, this restaurant is of very high quality\.], [0\.90], [69\.92], [5\.22], [1\.83], [−0\.96], [−0\.21], [0\.82],
[#emph[Brand loyalty \(adapted from Christodoulides et al\., 2015\)]], [], [], [], [], [], [], [],
[I feel loyal to this restaurant\.], [0\.86], [52\.41], [4\.36], [1\.94], [−0\.35], [−1\.02], [0\.75],
[This restaurant is my first choice\.], [0\.77], [34\.56], [4\.56], [1\.90], [−0\.49], [−0\.85], [0\.59],
[I am committed to this restaurant\.], [0\.91], [75\.41], [4\.47], [1\.93], [−0\.44], [−0\.91], [0\.82],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[Loading \= standardised factor loading\. #emph[Source]: own elaboration\.]
]
#v(12pt)

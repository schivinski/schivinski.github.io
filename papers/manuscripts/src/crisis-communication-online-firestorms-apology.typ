#set document(title: "In the eye of the \(fire\)storm: better safe or sorry? Crisis communication strategies for managing virality of online negative brand\-related content", author: ("Daniela Langaro", "Sandra Loureiro", "Bruno Schivinski", "Helder Neves"))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context { if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); Langaro et al\. \(2024\), accepted manuscript #h(1fr) Journal of Marketing Communications] },
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
#block[#set par(justify: false); #text(size: 19pt, weight: "bold", hyphenate: false)[In the eye of the \(fire\)storm: better safe or sorry? Crisis communication strategies for managing virality of online negative brand\-related content]]
#v(0.8em)
#text(size: 12pt)[Daniela Langaro, Sandra Loureiro, Bruno Schivinski, Helder Neves]
#v(0.2em)
#text(size: 10pt, style: "italic")[ISCTE – University Institute of Lisbon\; RMIT University]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  Langaro, D\., Loureiro, S\., Schivinski, B\., & Neves, H\. (2024). In the eye of the \(fire\)storm: better safe or sorry? Crisis communication strategies for managing virality of online negative brand\-related content. #emph[Journal of Marketing Communications, 30]\(3\), 301–317. #link("https://doi.org/10.1080/13527266.2022.2109056")[https:\/\/doi.org\/10\.1080\/13527266\.2022\.2109056]
  #v(0.9em)
  This is an Accepted Manuscript of an article published by Taylor & Francis in Journal of Marketing Communications on 13 August 2022, available online: #link("https://doi.org/10.1080/13527266.2022.2109056")[https:\/\/doi.org\/10\.1080\/13527266\.2022\.2109056]
  #v(0.9em)
  This is the authors\' accepted manuscript\. Its content is that of the published article\; it differs only in formatting and pagination\. Please cite the published version\.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[Re\-typeset from the published text by the authors\; the publisher\'s typesetting and layout have been removed and Figure 1 redrawn\.
Downloaded from #link("https://schivinski.com/papers/crisis-communication-online-firestorms-apology.html")[schivinski.com]]
#pagebreak()
#set par(first-line-indent: 1.2em)
#align(left)[#text(size: 15pt, weight: "bold", hyphenate: false)[In the eye of the \(fire\)storm: better safe or sorry? Crisis communication strategies for managing virality of online negative brand\-related content]]
#v(0.6em)
#par(first-line-indent: 0em)[Daniela Langaro#super[a]\*, Sandra Loureiro#super[a], Bruno Schivinski#super[b] and Helder Neves#super[a]]
#par(first-line-indent: 0em)[#text(size: 10pt, style: "italic")[#super[a]Business Research Unit, Instituto Universitário de Lisboa \(ISCTE\-IUL\), Lisboa, Portugal\; #super[b]RMIT University, Melbourne, VIC, Australia]]
#par(first-line-indent: 0em)[#text(size: 9pt)[\*Corresponding author: Daniela Langaro, Business Research Unit, Instituto Universitário de Lisboa \(ISCTE\-IUL\), Lisboa, Portugal]]
#v(0.8em)
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Abstract] #linebreak() Companies face a considerable number of online complaints on social media, with some escalating into major virality \(online firestorms\)\. Given the risks associated with reputation and sales, companies implement crisis response communication strategies to refrain audiences from forwarding content to others\. Despite the positive effects of such strategies, the mechanism that underpins the effects are not yet analyzed in the literature\. The current study proposes that in situations of potential online firestorms, brand attitude influences conative responses, including intentions to forward negative content to others\. An apology is the response strategy most often implemented, despite others being mentioned in the literature\. The current study evaluates how corrective actions compare with an apology in dealing with complaints, with the type of responses being proposed as a moderator of the effects of brand attitude\. Results show that brand attitudes following exposure to a crisis response strategy have significant effects on refraining intentions to forward negative e\-WOM\. An apology is the preferred option as a response strategy in general\. However, when specific triggers of complaint are analyzed, corrective actions and apology perform similarly\. Implications for theory and practice are discussed\.]
#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); #strong[Keywords:] Crisis management\; online firestorm\; SCCT\; situational crisis communication theory\; social media]
#v(0.6em)
#v(0.4em)
#par(first-line-indent: 0em)[#text(size: 9pt)[Received 10 February 2022\; accepted 30 July 2022\.]]
#v(0.6em)
= Introduction
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[Social media provides fertile ground for the spread of content virality given its absence of time and geographical barriers, interactive and dialogic nature, and accessibility \(Ott and Theunissen 2015\)\. Consequently, the effective use of social media has been increasingly associated with brands’ ability to motivate social media users to engage and share positive brand\-related content with their peers\. However, sometimes users end up getting involved in negative brand\-related content, complaining, supporting others in their complaints, or simply observing\.]

In recent years, many organizations have found themselves in situations where a sudden discharge of a considerable number of online complaints, or an online firestorm as termed by Pfeffer, Zorbach, and Carley \(2014\), has sparked controversy and even prompted calls for a boycott of the organization \(2017\; Petrescu et al\. 2020\)\. Due to the risks to brand reputation \(Petrescu et al\. 2020\; Kanso, Nelson, and Kitchen 2020\), profitability, and customer retention \(Kanso, Nelson, and Kitchen 2020\), previous studies focused on addressing the phenomena from the perspective of crisis communication management\. However, there is still a great lack of understanding of why, when, and how such online attacks occur, in which circumstances they are amplified and how they can be successfully mitigated\.

Drawing upon Situation Crisis Communication Theory \(SCCT\; Coombs 2007\), the current study evaluates brand attitudes as a mechanism that influences the effects of crisis response strategies on containing intentions to forward negative e\-WOM among the audience exposed to complaints from others in social media\. Response strategies used in social media are a type of brand communication applied to situations of crisis communication \(Coombs 2007\)\. In the literature on brand communications, brand attitude operates as an antecedent of various conative behaviors, once consumers are exposed to communication stimuli \(Pace, Balboni, and Gistri 2017\)\.

In the social media context, when the audience is impacted by complaints from others published on the brand page, their brand attitude is expected to be affected, and crisis response strategies implemented following a complaint are expected to counteract these effects\. Thus, it is proposed that the use of crisis response strategies following a complaint has positive effects on brand attitudes, comparing pre\-and post\-exposure to the response strategy\. Brand attitudes resulting from consumers being exposed to crisis response strategies are expected to influence conative responses, refraining consumers’ intentions to forward the content to others\.

When types of response strategies are considered, an apology is the one most often used, with positive results on virality \(Herhausen et al\. 2019\)\. Apologies are considered victim\-centered\/accommodative response strategies \(Coombs and Holladay 2008\), being recommended for situations where there is a high perceived level of brands’ control over the events associated with the complaint, so responsibility is perceived as being on the side of the company\. A public apology is understood as a positive sign of the organizations’ commitment to treating the complainant in a fair manner \(Balaji, Khong, and Chong 2016\)\. Thus, the organization attempts to gain forgiveness and acceptance of apologies, lessening the negative feelings \(Coombs 1995\)\.

When exploring victim\-centered\/accommodative strategies, the literature on crisis management does not differentiate between the types of responses regarding their effects \(Coombs and Holladay 2008\)\. The current study proposes that victim\-centered \/accommodative strategies differ in their effects, with the type of response moderating the effects of brand attitudes on consumers’ intentions to forward the complaint to others\. Therefore, corrective action is compared with an apology while moderating the effects\. Both are victim\-centered\/accommodative strategies, but differ in their content\. Through correction actions, organizations try to restore the situation associated with the crisis \(Coombs 1995\; Schultz, Utz, and Göritz 2011\)\. Therefore, corrective actions are expected to perform differently in muting the criticism in situations where negative arousal is higher \(Benoit 2018\)\. Studies on social media have yet to explore these perspectives\.

The current study addresses the abovementioned gaps in the literature by proposing the following research objectives: i\) to compare the pre and post\-effects on brand attitudes resulting from the use of response strategies following consumers’ exposure to a complaint and evaluate the impact of the post\-effects of brand attitude on consumers’ intentions to forward the complaint to others \(e\-WoM\) in the context of a potential online firestorm, and ii\) to evaluate within victim\-centered\/accommodative strategies how corrective action and apology compare regarding their effects on refraining virality in the context of a potential online firestorm\.

= Literature review
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Online firestorms and their virality
#par(first-line-indent: 0em)[An online firestorm can emerge from a single complaint which then creates a way for many others to follow with clusters of others being quickly formed, and is characterized by having high message volume, indignant tonality, and a negative opinion of brands, celebrities, or politicians, in response to moral misconducts, transgressions, and failures \(Einwiller, Viererbl, and Himmelreich 2017\; Johnen, Jungblut, and Ziegele 2018\)\.]

An online firestorm can be initiated by different types of incidents with unethical behavior, core business problems, and unfair or unprofessional communication being the most common \(Rauschnabel, Kammerlander, and Ivens 2016\)\. Unethical behavior refers to the perceived wrongdoing of a brand involving social, juridical, ecological, or political issues\. Online firestorms initiated by business problems are usually triggered by issues related to the organization’s core business, such as faulty products or customer service\. Crisis related to unfair and unprofessional communication emerges when organizations are judged for wrongdoing in the way they handle communications \(Rauschnabel, Kammerlander, and Ivens 2016\)\.

These incidents trigger physical arousals, such as anger, provocation or surprise among those who, despite not being the complainant, are exposed to the negative content \(Berger and Milkman 2012\; Utz, Schultz, and Glocka 2013\)\. Virality, therefore, results from users’ willingness to forward the negative message to others \(Utz, Schultz, and Glocka 2013\)\. For this reason, addressing the nature of virality is the #emph[Achilles’ heel] of mitigating its escalation \(Utz, Schultz, and Glocka 2013\)\. To evaluate these effects, users’ intention to forward negative content \(Negative e\-WOM\) is proposed in the current study to capture the potential virality of complaints, with forwarding buttons being easily accessible to users as the subject of their perceived behavioral control, involving low risk, costs, and effort \(Gruber, Mayer, and Einwiller 2020\)\.

== Situational crisis communications theory \(SCCT\)
#par(first-line-indent: 0em)[Crisis communications evolve on the principle that the threat to an organization’s image is mainly perceptual, with communication strategies being an adequate approach to address this \(Benoit 1997\)\. Dealing with perceptions involves choosing the response strategy that best matches the situation\.]

There is no guarantee that any strategy or combination of strategies will repair an image\. It is expected, however, that some of the inflicted damage is mitigated, by adequately responding to the threat\. SCCT offers support regarding the choice of an adequate response strategy \(Coombs 2007\)\. It draws upon Attribution Theory and Image Repair Strategy to assess the reputational threat caused by a potential crisis \(Coombs 2014\)\. In its essence, SCCT postulates that the size of the reputational threat is associated with organizations’ control over the incident, impacting the attribution of firms’ responsibility\. Moreover, it states that to mitigate the effects, firms should implement matching response strategies \(Ma and Zhan 2016\)\.

Therefore, incidents where organizations’ control is greater will lead to greater perceived responsibility attributed to the organization, requiring appropriate response strategies \(Coombs 1995, 2014\; Jin 2010\; Kim et al\. 2021\)\. In these situations, the occurrence is perceived as preventable, as it is initiated by the firm and implies some level of intentionality or knowledgeability \(Coombs and Holladay 2002\)\. The risks to firms’ reputation and implications of negative e\-WOM are greater \(Ma 2018\) due to the negative effects on sentiments \(Zhao, Zhan, and Ma 2020\) and trust \(Kim 2019\), with a sense of betrayal playing an important role \(Ma 2018\)\. In these situations, victim\-centered\/accommodative response strategies are expected to be capable of managing audiences’ anger, sadness, dislike, and fright \(Jin 2010\), while rebuilding trust \(Kim 2019\)\. Among responses of this type are apologies, with firms assuming responsibility and asking for forgiveness, compensation \(Ma and Zhan 2016\), and corrective actions \(Coombs and Holladay 2002\) in which a repair and\/or preventive action are proposed\.

On the other hand, in situations of low perceived firm responsibility, response strategies involve denial of the issue, and other attempts to shift the blame, attacking the accuser and others involved \(Ma and Zhan 2016\)\. In situations of minimal responsibility, the firm’s involvement is considered accidental with no intent and minimal control\. Matching response strategies involve excuse and justification \(Ma and Zhan 2016\)\.

In the context of an online firestorm, the triggers of virality are most often associated with a preventable crisis, a high level of responsibility being attributed and often associated with problems of unethical behaviors, core business failures, and unfair or unprofessional communication \(Rauschnabel, Kammerlander, and Ivens 2016\), and thus reputational risks are higher \(Kim et al\. 2021\)\. In these types of incidents, consumers direct their negative emotions towards the company and use social media as a means of revenge \(Delgado\-Ballester, López\-López, and Bernal\-Palazón 2021\), with victim\-centred\/accommodative strategies being proposed as the matching approach to mitigate virality \(Coombs 2007\)\. Thus, the current study focuses on preventable crises and explores apology and corrective actions as matching response strategies to refrain consumers’ intentions to forward the negative content to others on social media\.

== Brand attitude as an antecedent of intentions to forward negative e\-WOM
#par(first-line-indent: 0em)[Brand attitude captures overall evaluations of a brand, evolving as an output of heuristics from more complex consumer\-associated thoughts and emotions \(Faircloth, Capella, and Alford 2001\)\. Its adoption in marketing and communication studies derives from its predictive effects on behaviors \(e\.g\., engaging in negative e\-WOM\), as it captures individuals’ willingness to act \(Faircloth, Capella, and Alford 2001\), being also relevant in social media \(Pace, Balboni, and Gistri 2017\; Schivinski, Langaro, Shaw, 2019\; Schivinski, Langaro, Fernandes and Guzmán, 2020\)\.]

Brand attitude is shaped by product experiences and brand communications \(Sweldens, Van Osselaer, and Janiszewski 2010\)\. In the context of an online firestorm, as the content posted by the complainant is negatively valanced, aggressive, and flaming \(Gruber, Mayer, and Einwiller 2020\), this will affect the evaluations of individuals who are exposed to it, and consequently, their brand attitude\. This finds support in previous studies of negative sentiments following a preventable crisis \(Zhao, Zhan, and Ma 2020\)\.

The use of matching response strategies as proposed in SCCT \(Coombs 2007\) aims to control for these negative effects \(Yuan, Cui, and Lai 2016\)\. From this perspective, response strategies perform as impression management, influencing consumers’ perceptions of the transgressor \(Davis and Gold 2011\)\. Despite the wide acceptance of SCCT’s prescriptive approach, previous studies differed regarding the effectiveness of using response matching strategies in preventable crises \(Ma and Zhan 2016\)\. While these studies were conducted in traditional crisis contexts, in the social media context very few studies have evaluated the effect of matching response strategies \(Zhao, Zhan, and Ma 2020\)\.

The current study postulates that the use of a matching response strategy following preventable complaints \(post complaint\) will counteract the previous effects:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H1:] Brand attitude after consumers are exposed to a complaint \(pre\) is significantly different from brand attitude after consumers are exposed to a matching response strategy following the complaint \(post\) in the context of a potential online firestorm\.]]
Researchers in SCCT have focused on exploring the matching of response strategies and their cognitive outputs \(e\.g\., brand reputation\), with few focusing on measuring SCCT’s conative implications \(e\.g\., Negative e\-WOM\) \(Ma 2018\)\. Thus, in the current study, the conative implications of brand attitude are explored\.

Previous studies in the area of brand management have validated brand attitude for its effects on predicting individuals’ intentions to engage in online brand\-related activities \(e\.g\., by means of forwarding brand\-related content\) \(Blinded for Review, 2020\)\. When exposed to brand\-related content, users’ attitudes towards brands are influenced and they act accordingly on social media \(e\.g\., sharing and forwarding content\) \(Blinded for Review, 2020\)\.

The current study proposes that matching crisis response strategies \(e\.g\., brand\-related content\) have an influence on refraining consumers’ intentions to forward negative e\-WOM, contributing to the containment of virality\. Thus, when users are exposed to a response strategy following a complaint, their evaluations of the brand are positively affected and this has a positive impact on reducing their intentions to forward the negative content to others on social media\. Accordingly, the following hypothesis is suggested:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H2:] Brand attitude after consumers are exposed to a matching response strategy \(post\) has significant effects on refraining consumers’ intentions to forward the content to others \(negative e\-WOM\)\.]]
== Types of responses as moderators: apology and corrective actions
#par(first-line-indent: 0em)[Exploring response strategies, Benoit and Drew \(1997\) positioned apology and corrective action as the most effective in refraining reputation crisis\. Years later, Coombs and Holladay \(2008\) expanded this notion, concluding that any victim\-centered\/accommodative response strategy performs similarly and better than other types\.]

A public apology is often perceived as a positive sign of organizations’ commitment to treating complaints fairly \(Balaji, Khong, and Chong 2016\)\. The organization attempts to gain forgiveness and acceptance by apologizing, lessening negative feelings \(Coombs 1995\; Wei, Liu, and Keh 2020\)\. When apologizing, firms accept responsibility for the crisis admitting the blame and regretting the negative event\.

Studies of online firestorms have shown that public apologies are among the most commonly used strategies \(in 53% of cases\) \(Herhausen et al\. 2019\)\. However, the use of corrective action response strategies has not yet been investigated in the context of preventing online firestorms from escalating \(Herhausen et al\. 2019\)\.

Through corrective actions, organizations act either by restoring the situation or taking steps to prevent similar events from happening in the future \(Coombs 1995\)\. Actions like these include accepting responsibility for resolving a situation and offering a solution at the same time, without necessarily accepting the guilt \(Coombs 1995\; Schultz, Utz, and Göritz 2011\)\. In corrective actions the firm extends the effort, proposing corrective solutions and showing legitimacy \(Schultz, Utz, and Göritz 2011\)\. The resolution proposed reduces the intention to warn others as the trigger of the crisis is addressed \(Verhagen, Nauta, and Feldberg 2013\; Hansen, Kupfer, and Hennig\-Thurau 2018\)\.

Thus, we argue that although the literature on crisis communication management does not distinguish the effects of apologies and corrective actions, and often a combination of these strategies is proposed \(Coombs 2007\; Coombs and Holladay 2008\), the effects on refraining the impact of brand attitude on negative e\-WOM differ\. An apology on social media involves publicly accepting the blame for wrongdoing, showing regret, and asking for forgiveness\. This public response implies some kind of humiliation and symbolic punishment \(Swart, 2008\)\. Corrective actions, on the other hand, are a public sign of organizational learning, proposing a substantive solution, restoring faith \(Coombs and Holladay 2012\), and symbolically suggesting redemption\.

As these strategies perform different roles in restoring reputation, the following hypotheses are proposed, with the type of victim\-centered\/accommodative strategy moderating the effects:

#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[#emph[H3:] The type of response strategy implemented moderates the effects of brand attitude on consumers’ intentions to forward the content to others \(negative e\-WoM\)\.]]
= Methodology
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Research design
#par(first-line-indent: 0em)[This study was conducted online through social media\. A self\-administered survey was elaborated and distributed online using the Qualtrics surveying platform\. The sample was recruited via Facebook, with a link to the survey being published by the researchers in the Facebook networks of various demographic groups such as students, and private and public\-sector employees, all from different age groups\. Participation was voluntary with no incentives being offered\. Participants were asked to fill in the survey and share it with their network\. The use of Facebook as a recruitment platform was justified by its fit with the context of research, with online firestorms taking place on social media networking sites\.]

The survey was administered in Portuguese and the data were collected in Portugal\. The original questionnaire was written in English \(because most items were originally in English\), then translated to Portuguese, and translated back to English \(with the help of native linguists\)\. Back translation was used to ensure that the items in Portuguese and English communicated the same information \(Sekaran 1983\)\. The survey was pilot tested with the help of 10 similar consumers for content analysis and to make sure that the items were simple, clear, and without unfamiliar terms and complex syntax\.

The survey was organized in five parts\. First, the respondents were introduced to the research and randomly allocated to a type of incident\. In preparation for that, three incidents were simulated based on previous studies which identified triggers associated with online firestorms, namely unethical behavior, core business problems with operations, and unprofessional communications \(Rauschnabel, Kammerlander, and Ivens 2016\)\. The reasoning was that by capturing three of the most relevant triggers of the phenomenon, we could better represent it\. The incidents represented similar real\-life situations involving online firestorms in recent years and were all associated with cases where organizations had control over the situation, as described in the literature and characterized as situations where firms are perceived to be responsible \(Coombs, 1998\)\.

Facebook look\-alike posts were simulated, with a dissatisfied customer complaining about the brand’s page\. A fictitious retail brand named #emph[Lusoretail] was created, to avoid previous perceptions that could affect and interfere with the participant’s responses, as crisis history and prior reputation influence how incidents are perceived \(Coombs 2014\; Kanso, Nelson, and Kitchen 2020\)\.

The first incident was a complaint posted by a dissatisfied customer on the brand’s Facebook page, where the brand’s behavior is questioned over the throwing of waste into the river that flows through the city \(unethical behavior\)\. In the second incident, a dissatisfied customer voices frustration due to the ineffective customer service provided \(core business problem\)\. In the last incident, a dissatisfied customer accuses the brand of being unprofessional over the deletion of customers’ negative critics from the brand’s Facebook page \(unprofessional communications\)\. All three incidents were simulated using high\-arousal content \(e\.g\., anger, anxiety, indignation\), expressed by means of comparable content structure \(e\.g\., number of negative words\)\. The incidents were qualitatively pre\-tested and are described next\.

In the incident of unethical behavior, a user voices the following complaint: ‘How are you capable of throwing waste – that you created – in the river that flows through the city? You are polluting the environment and affecting public health? DEPLORABLE and SHAMEFUL unethical practice!’\. The core business problem was simulated by means of the following complaint: ‘I have been trying to contact your customer service for over 2 weeks without success\. There are other clients in the same situation! UNACCEPTABLE and OUTRAGEOUS business practice!’\. Finally, the incident related to unprofessional communications was portrayed as ‘How were you capable of deleting my comment without responding to me? And apparently, I am not the only one complaining! INCOMPREHENSIBLE and UNFORGIVABLE communication practice!’\.

In the second part of the questionnaire, after being exposed to the incident, respondents were inspected for their brand attitude previously being presented with the response strategy \(previous attitude\)\. In the third part, they were exposed to a response strategy, being randomly allocated either to a corrective action or apology type of response\. In the apology strategy, the organization communicates remorse and apologizes, whereas in the corrective strategy the organization communicates that the situation is being fixed and assures that similar events will not occur in the future\. The response strategies were pre\-tested qualitatively and are as follows\.

In the apology response strategy, the message stated: ‘We are very sorry for what happened, and we assume responsibility\. On behalf of Lusoretail, please accept our sincere apologies’\. In the corrective response strategy, Lusoretail communicated the following ‘We are already taking corrective actions to solve the problem immediately\. In the future, actions will be taken to prevent an incident like this from happening again at Lusoretail’\. Finally, once respondents were presented with a response strategy, their brand attitude was examined once again \(post\-attitude\)\. Questions on their intentions to forward the content to others followed\. In the last part, demographics were collected\.

== Measures
#par(first-line-indent: 0em)[The items to measure the constructs were adapted from previous studies: brand attitude from Spears and Singh \(2004\) and intentions to forward the complaint to others was adapted from Chiu et al\. \(2007\) The items are listed as follows: #emph[i\)] for brand attitude: Unappealing\/appealing, Bad\/good, Unpleasant\/pleasant, Unfavorable\/favorable, Unlikable\/likable\; #emph[ii\)] to measure intention to forward the negative e\-WOM, the items were: This Facebook post is worth sharing with others\; I will forward this Facebook post to others\.]

All measures were collected based upon 7\-point Likert scales of agreement \(1\= completely disagree\; 7 \= completely agree\), with brand attitude being measured twice i\.e\., after respondents were exposed to the complaint, and again after being exposed to the organization’s response\. So, differences in responses before and after being presented with the organization’s response could be compared\.

= Results
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
== Sample profile
#par(first-line-indent: 0em)[A total of 564 valid responses were analyzed using IBM SPSS version 25\. It was a non\-student sample, most of the participants being males \(#emph[n] \= 328\; 58\.3%\) who use Facebook, with the main age group being between 35 and 44 years old \(#emph[n] \= 139\; 24\.6 %\)\. Most participants \(#emph[n] \= 320\; 57\.6%\) access Facebook several times per day, with the majority spending less than one hour per day \(#emph[n] \= 178\; 31\.55 %\) and up to two hours \(#emph[n] \= 140\; 24\.9%\)\. Characterization as a non\-student deserves appraisal as previous studies have revealed significant differences in the context of SCCT when student samples were used \(Ma and Zhan 2016\)\. A detailed characterization of the sample is presented in Table 1\.]

#v(0.4em)
#block(breakable: true)[
#text(size: 9.5pt)[#strong[Table 1.] Detailed characterization of the sample\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto), align: (left, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Sample characterization]], [#strong[Total sample]]),
table.hline(stroke: 0.5pt),
[#emph[N]], [564],
[Gender: male | female], [329 \(58\.3%\) | 235 \(41\.7%\)],
[#emph[Age]], [],
[18–24], [124 \(22\.0%\)],
[25–34], [125 \(22\.2%\)],
[35–44], [139 \(24\.6%\)],
[45–54], [98 \(17\.4%\)],
[55–64], [58 \(10\.3%\)],
[65 and over], [20 \(3\.5%\)],
[#emph[Education]], [],
[Basic education \(9th grade\)], [34 \(6\.0%\)],
[High school degree \(12th grade\)], [142 \(25\.2%\)],
[Bachelor’s degree], [216 \(38\.3%\)],
[Master’s degree], [143 \(25\.4%\)],
[PhD], [29 \(5\.1%\)],
[#emph[Profession]], [],
[Unemployed], [38 \(6\.7%\)],
[Worker], [335 \(59\.4%\)],
[Student], [120 \(21\.3%\)],
[Student worker], [43 \(7\.6%\)],
[Retired], [28 \(5\.0%\)],
[#emph[Facebook usage]], [],
[Less than once per week], [33 \(5\.9%\)],
[Once per week], [8 \(1\.4%\)],
[Two to three times per week], [57 \(10\.1%\)],
[Once per day], [141 \(25\.0%\)],
[Several times per day], [325 \(57\.6%\)],
[#emph[Average daily time spent on Facebook]], [],
[Less than an hour], [147 \(31\.5%\)],
[1–2 hours], [116 \(24\.9%\)],
[2–3 hours], [111 \(23\.8%\)],
[3–4 hours], [58 \(12\.4%\)],
[More than 4 hours], [34 \(7\.3%\)],
table.hline(stroke: 0.8pt),
)]
]
#v(12pt)
Manipulation checks revealed that respondents understood the response strategies in both scenarios: corrective \(#emph[M] \= 1\; #emph[SD] \= 0\; #emph[n] \= 282\) and apology scenarios \(#emph[M] \= 2\; #emph[SD] \= 0\; #emph[n] \= 282\)\. The level of attributed responsibility was perceived at a higher level \(#emph[M] \= 5\.39\; #emph[SD] \= 1\.78\; #emph[n] \= 564\)\.

Data normality was assessed through skewness and kurtosis, the results being within the acceptable range with no items having absolute values of skewness \(range:\-0\.15 and 1\.34\) and kurtosis \(range: −1\.0 and 2\.5\)\. The values were well below the recommended thresholds in the literature for skewness \(≤3\.0\) and kurtosis \(≤8\.0\) \(Field 2005\)\. Scale reliability was analyzed through the Cronbach alpha, which for brand attitude \(0\.97\) and forward intentions \(0\.92\) was well above the minimum threshold of 0\.70 \(Field 2005\)\. Table 2 presents descriptive statistics and intercorrelations among variables\.

#v(0.4em)
#block(breakable: false)[
#text(size: 9.5pt)[#strong[Table 2.] Descriptive statistics and intercorrelations across variables\.]
#v(4pt)
#set par(justify: false, first-line-indent: 0em)
#text(size: 8.5pt)[#table(columns: (1fr, auto, auto, auto, auto, auto, auto), align: (left, right, right, right, right, right, right,), stroke: none, inset: (x: 4pt, y: 3.2pt),
table.hline(stroke: 0.8pt),
table.header([#strong[Variable]], [#strong[α]], [#strong[#emph[M]]], [#strong[#emph[SD]]], [#strong[1]], [#strong[2]], [#strong[3]]),
table.hline(stroke: 0.5pt),
[1\. Brand attitude before the response \(BA PRE\)], [0\.97], [2\.21], [1\.27], [–], [\.318\*\*], [−\.147\*\*],
[2\. Brand attitude after the response \(BA POST\)], [0\.97], [3\.54], [1\.29], [\.318\*\*], [–], [−\.179\*\*],
[3\. Intentions to forward negative e\-WOM], [0\.92], [3\.69], [1\.84], [−\.147\*\*], [−\.179\*\*], [–],
table.hline(stroke: 0.8pt),
)]
#text(size: 8pt)[\*#emph[ ]p\*\-value \< 0\.001]
]
#v(12pt)
== Hypothesis testing
#par(first-line-indent: 0em)[A #emph[t]\-test was used to evaluate the differences in brand attitude between consumers’ pre\-and post\-exposure to response strategies\. The results indicate that the score of brand attitude after participants were exposed to the complaint \(#emph[M] \= 2\.21, #emph[SD] \= 1\.27\) differed from the score of brand attitude after respondents were exposed to the replies following the response strategies \(#emph[M] \= 3\.54, #emph[SD] \= 1\.29\)\. The difference was statistically significant at #emph[p \<] \.001\. The results replicated all three types of incidents\. Thus, H1 was supported\.]

In terms of H2, the impact of brand attitude on consumers’ intentions to forward the content was tested using multiple linear regression analysis\. In preparation for the analysis, assumptions were validated with acceptable results, showing no multicollinearity across the variables and the residuals were normally distributed\. For the linear model, brand attitude was regressed on Negative e\-WOM, while controlling for gender and age\. The associated non\-standardized regression coefficient is negative and significant \(#emph[β]\= −\.178\; #emph[F]\(3,483\) \= 7\.924\; #emph[p] \< \.001\)\. The results were validated for all three types of incidents\. Therefore, H2 was supported\.

Finally, moderation analysis was performed using Process 3\.5 \(Hayes 2013\) to analyze H3\. The dependent variable was intentions to forward the negative content to others, the independent variable was brand attitude resulting from users’ exposure to the response strategy, and the moderator was the type of response strategy \(0\= apologies\; 1\=corrective\)\. The interaction was significant \(β\=\.262\; F\(3,560\) \= 9\.482 p \< \.05\), as presented in Figure 1, where the presence of apology and the effects of brand attitude on forwarding intentions differ from the use of corrective actions\. Therefore, the two response strategies perform differently, with an apology in general performing better than corrective actions in refraining consumers’ intention to forward the negative e\-WOM\. Indeed, we expected apology to have a greater impact on refraining virality\. Even so, when the results are examined within specific types of incidents, the moderation is not significant in the context of complaints related to core business problems, or complaints related to unprofessional communication\. In these contexts, apologies and corrective actions perform comparably regarding their influence on the effects of brand attitude on intentions to forward negative e\-WOM\.

#figure(image("build/fig1.png", width: 100%), caption: none, kind: image, supplement: none)
#align(center)[#text(size: 9.5pt)[Figure 1\. Moderation effects of type of response strategy\. Redrawn from the published figure\.]]
#v(0.6em)
= Conclusion and implications
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[The current findings indicate that in the wake of a potential online firestorm, response strategies are efficient in influencing consumers’ brand attitudes, being capable of improving overall brand evaluations\. The effects are consistent across all three types of incidents, with the relevance of results being justified by the role of brand attitude as an antecedent to conative intentions \(Blinded for Review, 2019\)\.]

Three more conclusions can be drawn\. First, the findings validate brand attitude as a mechanism through which response strategies inhibit intentions to forward negative e\-WOM\. Thus, the findings validate intentions to forward negative e\-WOM following a complaint among the conative effects associated with brand attitudes\.

Secondly, the effects of brand attitude on intentions to forward negative e\-WOM are moderated by the type of response strategy used, with apologies in general significantly influencing the effects of brand attitude\. Thus, although the literature on crisis brand communications does not distinguish between apology and corrective actions regarding their specific applications and effects, our study finds differences in their influence on the effects of brand attitudes in refraining intentions\.

Thirdly, the results put apologies in the spotlight and invite further understanding\. Despite limited exploration in the field of social media crisis communications, apologies are present in studies in various areas \(Davis and Gold 2011\; Yuan, Cui, and Lai 2016\), with evidence of their impact on restoring relationships due to the emotional and cognitive benefits derived from forgiveness \(Wei, Liu, and Keh 2020\)\. The process of asking for forgiveness is associated with companies dealing with consumers’ resentment, derived from moral judgments regarding companies’ behaviors\. Given these findings, in the scope of the present study, the greater effect of apologies can be associated with the significant emotional and cognitive impact of the sense of forgiveness underpinning the effects of brand attitude when apologies are voiced publicly, and symbolic punishment takes place \(Mia, 2017\)\.

When specific incidents are considered, the results differ, with corrective actions and apologies performing similarly\. Core business problems and unprofessional communications are associated with situations where the organization fails to deliver the expected value \(Rauschnabel, Kammerlander, and Ivens 2016\)\. For instance, faulty products, ineffective customer service, or inadequate management of communications\. In these contexts, the effort to fix the problem, as communicated in corrective action repair strategies, represents an expected outcome, as well as apologizing\. Exploring the reasons for these effects, previous studies have shown that core business problems and unprofessional communications evoke incidents that others exposed to the complaint identify with, either because they have experienced the same issues or because they anticipate them \(Hansen, Kupfer, and Hennig\-Thurau 2018\)\. In these situations, providing a corrective response strategy may reduce the dissonance, as it provides a resolution and mitigates intentions to warn others \(Hansen, Kupfer, and Hennig\-Thurau 2018\; Verhagen, Nauta, and Feldberg 2013\)\. Therefore, audiences’ personal identification with the incident might provide good ground for further understanding of the influence of corrective actions on the effects of brand attitudes\. In incidents where ethical triggers are present, personal identification tends to be lower due to highly subjective perception of the context \(Rauschnabel, Kammerlander, and Ivens 2016\) and more limited occurrence compared to operational triggers\.

== Implications for theory
#par(first-line-indent: 0em)[This research extends the SCCT literature \(Coombs 1995\) in three different ways\. First, it explores SCCT in the context of online firestorms on social media, and in doing so, evaluates response strategies in relation to their effects on intentions associated with virality, concluding that SCCT offers a good theoretical fit for this context\.]

Second, it validates brand attitude for its effects resulting from matching response repair strategies, providing better understanding of the mechanisms underpinning the effects of SCCT\.

Lastly, this study differentiates the effects of victim\-centered\/accommodative strategies, with apologies, in general, being more effective in mitigating intentions associated with virality\. However, the findings also indicate that the type of incident should be considered when deciding on an adequate strategy\.

== Implications for practice
#par(first-line-indent: 0em)[Concerning implications for practice, the contributions are threefold\. First, the results validate the use of apology and corrective actions in the context of a potential online firestorm\. This is especially relevant when considering that 30% of negative content posted on social media does not receive any kind of response \(Herhausen et al\. 2019\)\.]

Secondly, due to the role of brand attitude, when managing their response strategies organizations should fine\-tune the wording and the structure of responses, in order to produce agreeable, likable, appealing, and favorable perceptions\. Research has shown that social media content created by brands is highly associated with individual values and generates favorable behaviors \(Blinded for review, \-2019\), factors that can be explored when firms are dealing with communication crises\.

Thirdly, the results of the current study support the recommendation that when implementing crisis response strategies, companies should apply apologies in general\. However, when incidents are associated with core business problems or unprofessional communications, there is no preferred strategy\. Thus, both may be considered, with their implementation depending on the convenience of operations and other consumer considerations\. This recommendation certainly adds complexity to well\-established apology\-based protocols, requiring careful discussion of legal and economic implications and training of community managers\.

== Limitations and future studies
#par(first-line-indent: 0em)[The findings are subject to some limitations\. Firstly, the sample was formed of users who volunteered to participate in the research, resulting mostly in frequent users of Facebook, who access it various times a day\. Though differing from average Facebook usage, this sample characteristic makes sense in view of the study, as frequent users are naturally more exposed to situations that potentially evolve into online firestorms\. Moreover, the brand included in the study was fictitious and some variations in language were present among the triggers presented to respondents\.]

As the study reveals, contemporary crisis management in social media is not a matter of following a ‘better safe than sorry’ strategy, but instead, deciding between ‘better safe’ \(using corrective actions\) #emph[or] ‘sorry’ \(using apologies\)\. Therefore, future studies could further elaborate on the conditions that can influence the response strategy adopted, also considering crisis history, previous brand reputation, and volume of complaints \(Johnen, Jungblut, and Ziegele 2018\)\.

Finally, as the current study proposes the sense of forgiveness and personal identification as mechanisms that might explain the different effects of the type of response on the effects of brand attitude on refraining intentions, future studies could further explore these routes, considering the moderation of these aspects on the containment effects of brand attitude\.

= Disclosure statement
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[No potential conflict of interest was reported by the author\(s\)\.]

= Notes on contributors
#set par(hanging-indent: 0em, spacing: 0.9em)
#set text(size: 11pt)
#par(first-line-indent: 0em)[#text(size: 10pt)[Daniela Langaro \(Ph\.D\) is assistant professor at ISCTE\-IUL \(Portugal\), and visiting professor at Católica Lisbon Business School \(Portugal\)\. Following her 15 years of experience in Consumer Packaged Goods and OTC industry, Langaro moved to academia in 2012\. Her general research interests involve issues in internet marketing, social media, brand communications and brand management\. She has published her research in scientific journals such as Journal of Business Research, Journal of Marketing Communications, Journal of Brand Management, Journal of Event Management, International Journal of Internet Marketing and Advertising, Journal of Promotion Management and Journal of Creative Communications\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Sandra Maria Correia Loureiro is in the ranking of 2% of the best scientists in the world in both Marketing and Sport, Leisure & Tourism by Stanford University, together with the publishing house Elsevier and SciTech Strategies\. Her research interests include relationship marketing, marketing communication issues and the implications with VR, AR and AI\. Her papers have been published in a variety of peer reviewed journals that include Journal of Marketing, Journal of Retailing, Journal of 14 D\. LANGARO ET AL\. Service Management, Journal of Business Research, Journal of Cleaner Production, the Service Industries Journal or Online Information Review\. She recently won several awards, such as: the 2012 Best Paper Premier Award presented by the Global Marketing Conference \(comprised of EMAC, ANZMAC, KSMS, and the Japanese Association of Marketing\), Highly Commended paper Award 2014 \- 7th EuroMed Conference and EuroMed Research Business Institute \(EMRBI\), Highly Commended paper Award 2016 \- 9th EuroMed Conference and EuroMed Research Business Institute \(EMRBI\), Best Paper Award 2016\- ICCMI 2016\. In 2017 and 2018 she also won high commended papers award from editor Emerald\. Best paper award at the Fashion Management Conference 2019 and Best reviewer award for Psychology and Marketing\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Bruno Schivinski \(Ph\.D\) is a sociologist, behavioral researcher, and Senior Lecturer in Advertising at RMIT University, Australia\. He consults for online service providers, websites, and scientific institutions such as the Polish Ministry of Science and Higher Education \(MNiSW\) and the National Science Centre \(NCN\)\. Schivinski specializes in problematic consumer behavior, social\- media engagement, online branding, and user\-generated content\. His research has received international coverage on Forbes Magazine and Google News\. His latest work can be found in such academic journals as the Journal of Business Research, Journal of Advertising Research, Industrial Marketing Management, Journal of Strategic Marketing, Journal of Marketing Communications, and Journal of Clinical Medicine\.]]

#par(first-line-indent: 0em)[#text(size: 10pt)[Helder Neves holds a master’s degree in Marketing from the ISCTE Business School\. His research interests include Crisis Communication, Crisis Management, Digital Marketing, Social Media and Strategic Marketing related fields\.]]

= References
#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)
#set text(size: 9.5pt)
Balaji, M\.S\., K\.W\. Khong, and A\.Y L Chong\. 2016\. “Determinants of Negative Word\-of\-Mouth Communication Using Social Networking Sites\.” #emph[Information & Management] 53 \(4\): 528–540\. https:\/\/doi\.org\/10\.1016\/j\.im\.2015\.12\.002

Benoit, W\. L\. 1997\. “Image Repair Discourse and Crisis Communication\.” #emph[Public Relations Review] 23 \(2\): 177–186\. https:\/\/doi\.org\/10\.1016\/S0363\-8111\(97\)90023\-0

Benoit, W\.L\. 2018\. “Crisis and Image Repair at United Airlines: Fly the Unfriendly Skies\.” #emph[Journal of International Crisis and Risk Communication Research] 1 \(1\): 2\. https:\/\/doi\.org\/10\.30658\/jicrcr\.1\.1\.2

Benoit, W\.L\., and S\. Drew\. 1997\. “Appropriateness and Effectiveness of Image Repair Strategies\.” #emph[Communication Reports] 10 \(2\): 153–163\. https:\/\/doi\.org\/10\.1080\/08934219709367671

Berger, J\., and K\.L\. Milkman\. 2012\. “What Makes Online Content Viral?” #emph[Journal of Marketing Research] 49 \(2\): 192–205\. https:\/\/doi\.org\/10\.1509\/jmr\.10\.0353

Chiu, H\. C\., Y\. C\. Hsieh, Y\. H\. Kao, and M\. Lee\. 2007\. “The Determinants of Email Receivers’ Disseminating Behaviors on the Internet\.” #emph[Journal of Advertising Research] 47 \(4\): 524–534\. https:\/\/doi\.org\/10\.2501\/S0021849907070547

Coombs, W\.T\. 1995\. “Choosing the Right Words: The Development of Guidelines for the Selection of the “Appropriate” Crisis\-Response Strategies\.” #emph[Management Communication Quarterly] 8 \(4\): 447–476\. https:\/\/doi\.org\/10\.1177\/0893318995008004003

Coombs, W\. T\. 1998\. “An Analytic Framework for Crisis Situations: Better Responses from a Better Understanding of the Situation\.” #emph[Journal of Public Relations Research] 10 \(3\): 177–191\. https:\/\/doi\.org\/10\.1207\/s1532754xjprr1003\_02

Coombs, W\.T\. 2007\. “Protecting Organization Reputations During a Crisis: The Development and Application of Situational Crisis Communication Theory\.” #emph[Corporate Reputation Review] 10 \(3\): 163–176\. https:\/\/doi\.org\/10\.1057\/palgrave\.crr\.1550049

Coombs, W\. T\. 2014\. #emph[Ongoing Crisis Communication: Planning, Managing, and Responding]\. Thousand Oaks, United States: Sage Publications\.

Coombs, W\. T\., and S\.J\. Holladay\. 2002\. “Helping Crisis Managers Protect Reputational Assets: Initial Tests of the Situational Crisis Communication Theory\.” #emph[Management Communication Quarterly] 16 \(2\): 165–186\. https:\/\/doi\.org\/10\.1177\/089331802237233

Coombs, W\. T\., and S\. J\. Holladay\. 2008\. “Comparing Apology to Equivalent Crisis Response Strategies: Clarifying Apology’s Role and Value in Crisis Communication\.” #emph[Public Relations Review] 34 \(3\): 252–257\. https:\/\/doi\.org\/10\.1016\/j\.pubrev\.2008\.04\.001

Coombs, W\.T\., and S\.J\. Holladay\. 2012\. “Amazon\. Com’s Orwellian Nightmare: Exploring Apology in an Online Environment\.” #emph[Journal of Communication Management] 16 \(3\): 280–295\. https:\/\/doi\.org\/10\.1108\/13632541211245758

Davis, J\.R\., and G\.J\. Gold\. 2011\. “An Examination of Emotional Empathy, Attributions of Stability, and the Link Between Perceived Remorse and Forgiveness\.” #emph[Personality and Individual Differences] 50 \(3\): 392–397\. https:\/\/doi\.org\/10\.1016\/j\.paid\.2010\.10\.031

Delgado\-Ballester, E\., I\. López\-López, and A\. Bernal\-Palazón\. 2021\. “Why Do People Initiate an Online Firestorm? The Role of Sadness, Anger, and Dislike\.” #emph[International Journal of Electronic Commerce] 25 \(3\): 313–337\. https:\/\/doi\.org\/10\.1080\/10864415\.2021\.1943173

Einwiller, S\., B\. Viererbl, and S\. Himmelreich\. 2017\. “Journalists’ Coverage of Online Firestorms in German\-Language News Media\.” #emph[Journalism Practice] 11 \(9\): 1178–1197\. https:\/\/doi\.org\/10\.1080\/17512786 2016\.1229578\.

Faircloth, J\. B\., L\. M\. Capella, and B\. L\. Alford\. 2001\. “The Effect of Brand Attitude and Brand Image on Brand Equity\.” #emph[Journal of Marketing Theory and Practice] 9 \(3\): 61–75\. https:\/\/doi\.org\/10\.1080\/10696679\.2001 11501897\.

Field, A\. 2005\. #emph[Discovering Statistics Using SPSS \(Introducing Statistical Methods\)]\. Thousand Oaks, United States: Sage Publications\.

Gruber, M\., C\. Mayer, and S\.A\. Einwiller\. 2020\. “What Drives People to Participate in Online Firestorms?” #emph[Online Information Review] 44 \(3\): 563–581\. https:\/\/doi\.org\/10\.1108\/OIR\-10\-2018\-0331

Hansen, N\., A\.K\. Kupfer, and T\. Hennig\-Thurau\. 2018\. “Brand Crises in the Digital Age: The Short\- and Long\-Term Effects of Social Media Firestorms on Consumers and Brands\.” #emph[International Journal of Research in Marketing] 35 \(4\): 557–574\. https:\/\/doi\.org\/10\.1016\/j\.ijresmar\.2018\.08\.001

Hayes, A\.F\. 2013\. #emph[An Introduction to Mediation, Moderation, and Conditional Process Analysis: A Regression\-Based Approach]\. New York, NY: The Guilford Press\.

Herhausen, D\., S\. Ludwig, D\. Grewal, J\. Wulf, and M\. Schoegel\. 2019\. “Detecting, Preventing, and Mitigating Online Firestorms in Brand Communities\.” #emph[Journal of Marketing] 83 \(3\): 1–21\. doi:10\. 1177\/0022242918822300\.

Jin, Y\. 2010\. “Making Sense Sensibly in Crisis Communication: How Publics’ Crisis Appraisals Influence Their Negative Emotions, Coping Strategy Preferences, and Crisis Response Acceptance\.” #emph[Communication Research] 37 \(4\): 522–552\. https:\/\/doi\.org\/10\.1177\/0093650210368256

Johnen, M\., M\. Jungblut, and M\. Ziegele\. 2018\. “The Digital Outcry: What Incites Participation Behavior in an Online Firestorm?” #emph[New Media and Society] 20 \(9\): 3140–3160\. https:\/\/doi\.org\/10\.1177\/1461444817741883

Kanso, A\.M\., R\.A\. Nelson, and P\.J\. Kitchen\. 2020\. “BP and the Deepwater Horizon Oil Spill: A Case Study of How Company Management Employed Public Relations to Restore a Damaged Brand\.” #emph[Journal of Marketing Communications] 26 \(7\): 703–731\. https:\/\/doi\.org\/10\.1080\/13527266\.2018\.1559218

Kim, J\. 2019\. “Underlying Processes of SCCT: Mediating Roles of Preventability, Blame, and Trust\.” #emph[Public Relations Review] 45 \(3\): 101775\. https:\/\/doi\.org\/10\.1016\/j\.pubrev\.2019\.04\.008

Kim, S\., K\.H\. Sung, Y\. Ji, D\. Xing, and J\.G\. Qu\. 2021\. “Online Firestorms in Social Media: Comparative Research Between China Weibo and USA Twitter”\.” #emph[Public Relations Review] 47 \(1\): 102010\. doi:10\. 1016\/j\.pubrev\.2021\.102010\.

Lim, J\.S\. 2017\. “How a Paracrisis Situation is Instigated by an Online Firestorm and Visual Mockery: Testing a Paracrisis Development Model\.” #emph[Computers in Human Behavior] 67: 252–263\. doi:10\. 1016\/j\.chb\.2016\.10\.032\.

Ma, L\. 2018\. “How to Turn Your Friends into Enemies: Causes and Outcomes of Customers’ Sense of Betrayal in Crisis Communication\.” #emph[Public Relations Review] 44 \(3\): 374–384\. https:\/\/doi\.org\/10\.1016\/j\.pubrev 2018\.04\.009\.

Ma, L\., and M\. Zhan\. 2016\. “Effects of Attributed Responsibility and Response Strategies on Organizational Reputation: A Meta\-Analysis of Situational Crisis Communication Theory Research\.” #emph[Journal of Public Relations Research] 28 \(2\): 102–119\. https:\/\/doi\.org\/10\.1080\/1062726X\.2016 1166367\.

Ott, L\., and P\. Theunissen\. 2015\. “Reputations at Risk: Engagement During Social Media Crises\.” #emph[Public Relations Review] 41 \(1\): 97–102\. https:\/\/doi\.org\/10\.1016\/j\.pubrev\.2014\.10\.015

Pace, S\., B\. Balboni, and G\. Gistri\. 2017\. “The Effects of Social Media on Brand Attitude and WOM During a Brand Crisis: Evidence from the Barilla Case\.” #emph[Journal of Marketing Communications] 23 \(2\): 135–148\. https:\/\/doi\.org\/10\.1080\/13527266\.2014\.966478

Petrescu, M\., T\. Mangleburg, S\. Ben Mrad, and K\. O’Leary\. 2020\. “Reciprocal Influences and Effects of Viral NWOM Campaigns in Social Media\.” #emph[Journal of Marketing Communications] 26 \(7\): 685–702\. https:\/\/doi\.org\/10\.1080\/13527266\.2018\.1545244

Pfeffer, J\., T\. Zorbach, and K\.M\. Carley\. 2014\. “Understanding Online Firestorms: Negative Word\-Of\-Mouth Dynamics in Social Media Networks\.” #emph[Journal of Marketing Communications] 20 \(1–2\): 117–128\. https:\/\/doi\.org\/10\.1080\/13527266\.2013\.797778

Rauschnabel, P\.A\., N\. Kammerlander, and B\.S\. Ivens\. 2016\. “Collaborative Brand Attacks in Social Media: Exploring the Antecedents, Characteristics, and Consequences of a New Form of Brand Crises\.” #emph[Journal of Marketing Theory and Practice] 24 \(4\): 381–410\. https:\/\/doi\.org\/10\.1080\/10696679\.2016 1205452\.

Schivinski, B\., D\. Langaro, T\. Fernandes, and F\. Guzmán\. 2020\. “Social Media Brand Engagement in the Context of Collaborative Consumption: The Case of AIRBNB\.” #emph[Journal of Brand Management] 27 \(6\): 645–661\. https:\/\/doi\.org\/10\.1057\/s41262\-020\-00207\-5

Schivinski, B\., D\. Langaro, and C\. Shaw\. 2019\. “The Influence of Social Media Communication on Consumer\'s Attitudes and Behavioral Intentions Concerning Brand\-Sponsored Events\.” #emph[Event Management] 23 \(6\): 835–853\. https:\/\/doi\.org\/10\.3727\/152599518X15403853721268

Schultz, F\., and S\. Utz, and A\. Göritz\. 2011\. “Is the Medium the Message? Perceptions of and Reactions to Crisis Communication via Twitter, Blogs and Traditional Media\.” #emph[Public Relations Review] 37 \(1\): 20–27\. https:\/\/doi\.org\/10\.1016\/j\.pubrev\.2010\.12\.001

Sekaran, U\. 1983\. “Methodological and Theoretical Issues and Advancements in Cross\-Cultural Research\.” #emph[Journal of International Business Studies] 14 \(2\): 61–73\. https:\/\/doi\.org\/10\.1057\/palgrave\.jibs 8490519\.

Spears, N\., and S\.N\. Singh\. 2004\. “Measuring Attitude Toward the Brand and Purchase Intentions\.” #emph[Journal of Current Issues and Research in Advertising] 26 \(2\): 53–66\. https:\/\/doi\.org\/10\.1080\/10641734\.2004 10505164\.

Swart, M\. 2008\. “Sorry Seems to Be the Hardest Word: Apology as a Form of Symbolic Reparation\.” #emph[South African Journal on Human Rights] 24 \(1\): 50–70\. https:\/\/doi\.org\/10\.1080\/19962126\.2008\.11864943

Sweldens, S\., S\.M\. Van Osselaer, and C\. Janiszewski\. 2010\. “Evaluative Conditioning Procedures and the Resilience of Conditioned Brand Attitudes\.” #emph[The Journal of Consumer Research] 37 \(3\): 473–489\. https:\/\/doi\.org\/10\.1086\/653656

Utz, S\., F\. Schultz, and S\. Glocka\. 2013\. “Crisis Communication Online: How Medium, Crisis Type, and Emotions Affected Public Reactions in the Fukushima Daiichi Nuclear Disaster\.” #emph[Public Relations Review] 39 \(1\): 40–46\. https:\/\/doi\.org\/10\.1016\/j\.pubrev\.2012\.09\.010

Verhagen, T\., A\. Nauta, and F\. Feldberg\. 2013\. “Negative Online Word\-Of\-Mouth: Behavioral Indicator or Emotional Release?” #emph[Computers in Human Behavior] 29 \(4\): 1430–1440\. https:\/\/doi\.org\/10\.1016\/j\.chb\.2013 01\.043\.

Wei, C\., M\.W\. Liu, and H\.T\. Keh\. 2020\. “The Road to Consumer Forgiveness is Paved with Money or Apology? The Roles of Empathy and Power in Service Recovery\.” #emph[Journal of Business Research] 118: 321–334\. https:\/\/doi\.org\/10\.1016\/j\.jbusres\.2020\.06\.061

Yuan, D\., G\. Cui, and L\. Lai\. 2016\. “Sorry Seems to Be the Hardest Word: Consumer Reactions to Self\-Attributions by Firms Apologizing for a Brand Crisis\.” #emph[Journal of Consumer Marketing] 33 \(4\): 281–291\. https:\/\/doi\.org\/10\.1108\/JCM\-02\-2015\-1306

Zhao, X, M\. Zhan, and L\. Ma\. 2020\. “How Publics React to Situational and Renewing Organizational Responses Across Crises: Examining SCCT and DOR in Social\-Mediated Crises\.” #emph[Public Relations Review] 46 \(4\): 101944\. https:\/\/doi\.org\/10\.1016\/j\.pubrev\.2020\.101944


%%----------------------------------------------------------------------------------------------------------
%%----------------------------------------------------------------------------------------------------------
% privacy policy


%----------
% data that "you" provide
% (Name,Type,Required,Classification,DataCategories,DataGroups,Anonymization,Head,Desc)
% Types: Text, Number, Date, Boolean, Value Set, Other
% Classification: Explicit ("EI"), QuasIDentifier ("QID"), Sensitive ("SD"), Non-Sensitive ("NSD")
%----------

datum(dt01,("name","Text",true,"QID",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt02,("address","Text",true,"QID",[dc_contact],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt03,("phone number","Number",true,"EI",[dc_contact],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt04,("email address","Other",true,"EI",[dc_contact],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt05,("username","Other",true,"EI",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt06,("tax identification","Number",true,"SD",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt07,("social security","Other",true,"SD",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt08,("birthday","Number",true,"QID",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt09,("account number","Number",true,"EI",[dc_transactional],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt10,("bids data","Other",true,"EI",[dc_behavioral],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt11,("purchase data","Other",true,"EI",[dc_behavioral],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt12,("sales data","Other",true,"EI",[dc_knowledge],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt13,("message content","Other",true,"SD",[dc_communication],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt14,("financial information","Text",true,"SD",[dc_transactional,dc_credit],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt15,("shipping information","Text",true,"SD",[dc_location],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt16,("billing","Text",true,"SD",[dc_transactional,dc_account],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt17,("custom clearance information","Text",true,"NSD",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt18,("shipment number","Number",true,"EI",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt19,("tracking information","Other",true,"SD",[dc_location],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt20,("age","Number",true,"EI",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt21,("gender","Text",true,"QID",[dc_identifying],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt22,("birth country","Text",true,"SD",[dc_ethnicity],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt23,("nationality","Text",true,"SD",[dc_ethnicity],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt24,("employment status","Text",true,"SD",[dc_demographic,dc_professional],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt25,("family status","Text",true,"SD",[dc_family,dc_demographic,dc_public],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt26,("interests","Text",true,"SD",[dc_preference],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt27,("preferences","Text",true,"SD",[dc_preference],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt28,("community discussions content","Other",true,"SD",[dc_communication,dc_behavioral],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt29,("member chat content","Other",true,"SD",[dc_communication,dc_behavioral],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt30,("surveys","Other",true,"NSD",[dc_behavioral],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt31,("inquiries","Other",true,"SD",[dc_behavioral],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt32,("dispute resolution","Other",true,"SD",[dc_behavioral],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt33,("customer service calls","Other",true,"SD",[dc_transactional,dc_credit],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt34,("authentification data","Other",true,"SD",[dc_authenticating],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt35,("verification data","Other",true,"SD",[dc_authenticating],[],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).




%----------
% automatic information
% (Name,Type,Required,Classification,DataGroups,Anonymization,Head,Desc)
% Types: Text, Number, Date, Boolean, Value Set, Other
% Classification: Explicit ("EI"), QuasIDentifier ("QID"), Sensitive ("SD"), Non-Sensitive ("NSD")
%----------

datum(dt36,("automatic: bids data","Other",true,"EI",[dc_preference,dc_behavioral],[dg_transactional],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt37,("automatic: purchase data","Other",true,"EI",[dc_preference,dc_transactional],[dg_transactional],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt38,("automatic: sales data","Other",true,"EI",[dc_preference,dc_transactional],[dg_transactional],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt39,("transaction amount","Other",true,"NSD",[dc_transactional],[dg_transactional],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt40,("time (transaction)","Number",true,"NSD",[dc_transactional,dc_location],[dg_transactional],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt41,("location (transaction)","Text",true,"SD",[dc_transactional,dc_location],[dg_transactional],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt42,("payout method","Other",true,"NSD",[dc_transactional,dc_preference],[dg_transactional],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt43,("shopping cart information","Other",true,"SD",[dc_preference,dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt44,("watchlist information","Other",true,"SD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt45,("save sellers","Text",true,"SD",[dc_preference,dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt46,("automatic: interests","Other",true,"SD",[dc_knowledge,dc_behavioral,dc_preference],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt47,("follow users","Other",true,"NSD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt48,("advertising preferences","Other",true,"SD",[dc_preference,dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt49,("communication","Other",true,"SD",[dc_communication],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt50,("location","Text",true,"SD",[dc_location],[dg_location],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt51,("ip address","Number",true,"SD",[dc_identifying,dc_location,dc_computer],[dg_location],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt52,("mobile device location","Text",true,"SD",[dc_location],[dg_location],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt53,("computer","Other",true,"SD",[dc_computer],[dg_location],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt54,("connection information","Value Set",true,"SD",[dc_computer],[dg_connection,dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt55,("statistics","Other",true,"SD",[dc_computer],[dg_connection,dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt56,("data traffic","Other",true,"SD",[dc_computer],[dg_connection,dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt57,("referral url","Text",true,"SD",[dc_computer],[dg_connection,dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt58,("advert information","Other",true,"SD",[dc_computer],[dg_connection,dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt59,("automatic: access times","Number",true,"SD",[dc_computer],[dg_connection,dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt60,("language settings","Other",true,"SD",[dc_computer],[dg_connection,dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt61,("weblog information","Value Set",true,"SD",[dc_computer],[dg_connection,dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).



%----------
% data in connection with use of cookies and similar technologies
% (Name,Type,Required,Classification,DataGroups,Anonymization,Head,Desc)
% Types: Text, Number, Date, Boolean, Value Set, Other
% Classification: Explicit ("EI"), QuasIDentifier ("QID"), Sensitive ("SD"), Non-Sensitive ("NSD")
%----------

datum(dt62,("pages visited","Text",true,"SD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt63,("cookies: access times","Other",true,"SD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt64,("frequency","Number",true,"SD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt65,("duration of visits","Number",true,"NSD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt66,("links clicked","Other",true,"NSD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt67,("user segment","Other",true,"SD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt68,("device type","Other",true,"NSD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt69,("operating system","Other",true,"NSD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt70,("browser type","Other",true,"NSD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt71,("browser settings","Other",true,"SD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt72,("device ID","Other",true,"SD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt73,("device identifier","Other",true,"SD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt74,("advert ID","Other",true,"SD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt75,("device token","Other",true,"SD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
datum(dt76,("cookie data","Other",true,"SD",[dc_computer],[dg_computer],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).




%----------
% Personal data from other sources
% (Name,Type,Required,Classification,DataGroups,Anonymization,Head,Desc)
% Types: Text, Number, Date, Boolean, Value Set, Other
% Classification: Explicit ("EI"), QuasIDentifier ("QID"), Sensitive ("SD"), Non-Sensitive ("NSD")
%----------

%datum(dt77,("pages visited","Text",true,"SD",[dc_behavioral],[dg_interaction],[],[("en","  "),("de","  ")],[("en","  "),("de","  ")])).





%----------
% Data Groups
%----------
dataGroup(dg_transactional,("generated as part of user's transactions",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
dataGroup(dg_interaction,("interaction of users with available services",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
dataGroup(dg_location,("location data",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
dataGroup(dg_computer,("computer information",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
dataGroup(dg_connection,("connection information",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).




%----------
% Data Recipients
% (Name,Classification,Athentication,"DataRecipient",Required,ThirdCountryTransfer,Country,Adequacy,Head,Descriptions,Safeguards)
%----------

% Other eBay users
dataRecipient(dr1,("Other eBay users","Person","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].

% eBay Inc. corporate family members
dataRecipient(dr2,("eBay Inc. corporate family members","Legal Entity","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].

% External service providers, authentication partners, physical storage service partners, and shipping companies (such as DHL, UPS, etc.)
dataRecipient(dr3,("External service providers","Legal Entity","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].

% Government agencies or public authorities (including customs and tax authorities)
dataRecipient(dr4,("Government agencies","Public Authority","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].

% Payment service providers
dataRecipient(dr5,("Payment service providers","Legal Entity","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].

% External operators of websites, applications, services and tools
dataRecipient(dr6,("External operators","Legal Entity","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].


% Third parties based on statutory information claims against us
dataRecipient(dr7,("Third party service providers","Legal Entity","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].

% Third parties who are involved in judicial proceedings
dataRecipient(dr8,("Third party in judicial proceedings","Legal Entity","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].


% Other companies in the context of a company acquisition
dataRecipient(dr9,("Other companies","Legal Entity","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].
	   
% Credit agencies or bureaus, data verification services, risk assessment vendors and collections agencies (e.g. information about payment delays, payment defaults, or other irregularities that may be relevant to your credit report, or that we use to confirm your identity, model risk, establish credit limits, or collect unpaid debts)	   
dataRecipient(dr10,("Credit agencies","Legal Entity","","DataRecipient",true,true,"*",false,[("en","  "),("de","  ")],[("en","  "),("de","  ")],SG)) :-
    SG=[(
	       "Privacy Notice",
	       [ % HEAD
		   ("de","Datenschutzerkl rung"),
		   ("en","Privacy Notice")
	       ],
	       [ % DESC
		   ("de","Diese Datenschutzerkl rung oder eine strengere."),
		   ("en","This privacy notice or more protective rules.")
	       ]
	   )].



%----------
% Retention
%----------

retention(r,(indefinite,"",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).


%----------
% Legal Bases
%----------

legalBasis(lb1,(contract,[("en","  "),("de","  ")],[("de","  ")])).
legalBasis(lb2,(legalObligation,[("en","  "),("de","  ")],[("de","  ")])).
legalBasis(lb3,(vitalInterest,[("en","  "),("de","  ")],[("de","  ")])).
legalBasis(lb4,(legitimateInterest,[("en","  "),("de","  ")],[("de","  ")])).
legalBasis(lb5,(consent,[("en","  "),("de","  ")],[("de","  ")])).
legalBasis(lb6,(dataSharing,[("en","  "),("de","  ")],[("de","  ")])).



%----------
% Purposes
%----------

% Processing of data relating to you or your company for the purpose of entering into a contract with you and executing it.
purpose(p1,("ContractExecution",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt06,dt07,dt08,dt09,dt10,dt11,dt12,dt13,dt14,dt15,dt16,dt17,dt18,dt19,dt20,dt21,dt22,dt23,dt24,dt25,dt26,dt27,dt28,dt29,dt30,dt31,dt32,dt33,dt34,dt35,dt37,dt38,dt39,dt40,dt41,dt42,dt43,dt44,dt45,dt46,dt47,dt48,dt49,dt50,dt51,dt52,dt53,dt54,dt55,dt56,dt57,dt58,dt59,dt60,dt61,dt62,dt63,dt64,dt65,dt66,dt67,dt68,dt69,dt70,dt71,dt72,dt73,dt74,dt75,dt76],[ ],[ ],[dr2,dr9],[lb1],[ ],r)).

% Provision of our Services, including but not limited to enabling and performing transactions with other users
purpose(p2,("TransactionEnabling",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt07,dt08,dt09,dt14,dt15,dt16,dt18,dt19,dt20,dt21,dt22,dt23,dt34,dt35,dt39,dt40,dt41,dt42,dt51],[ ],[ ],[dr1,dr3,dr5],[lb1],[ ],r)).

% Enabling the delivery of purchased items by logistics and shipping service providers including notifications in connection with the delivery (such as tracking information), the latter to the extent permitted by applicable law without your consent.
purpose(p3,("DeliveryEnabling",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt07,dt08,dt09,dt14,dt15,dt16,dt17,dt18,dt19,dt20,dt21,dt23,dt33,dt34,dt35,dt39,dt40,dt41,dt42,dt43,dt50],[ ],[ ],[dr1,dr2],[lb1],[ ],r)).

% Provision of our payment services in accordance with the Payments Terms of Use.
purpose(p4,("PaymentServiceProvision",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt08,dt09,dt16,dt20,dt34,dt35,dt37,dt39,dt40,dt41,dt42,dt43,dt51],[ ],[ ],[dr5],[lb1],[ ],r)).

% Providing general customer support including the solution of problems with your eBay account, arbitration of disputes, providing other services within the scope of customer service as well as enforcement of fee claims.
purpose(p5,("CustomerSupport",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt06,dt07,dt08,dt09,dt10,dt11,dt12,dt13,dt14,dt16,dt21,dt23,dt25,dt28,dt29,dt32,dt33,dt39,dt40,dt41,dt42,dt43,dt47,dt48,dt49,dt50,dt66],[ ],[ ],[dr2],[lb1],[ ],r)).

% Processing of general location data (such as IP address or postal code) in order to provide you with location-based services (such as radius search and other content that is personalized on the basis of your general location data).
purpose(p6,("LocationDataProcessing",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt19,dt41,dt50,dt51,dt52,dt53,dt54,dt56],[ ],[ ],[dr2,dr3],[lb1],[ ],r)).

% Enforcement of our User Agreement, Payments Terms of Use, this User Privacy Notice and other rules and policies.
purpose(p7,("RuleEnforcement",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt06,dt07,dt08,dt09,dt14,dt16,dt20,dt21,dt32,dt33,dt34,dt35,dt42,dt49,dt50,dt57,dt60],[ ],[ ],[dr2,dr4],[lb1],[ ],r)).

% Publication and promotion of your listings and related content on the websites or in the applications, services and tools of other eBay Inc. corporate family members or cooperating third party operators of websites, applications, services and tools.
purpose(p8,("ListingPublicationPromotion",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt03,dt04,dt12,dt14,dt33,dt34,dt35,dt39,dt42,dt45,dt57,dt58],[ ],[ ],[dr2,dr6],[lb1],[ ],r)).

% Participation in investigations and proceedings (including judicial proceedings) conducted by public authorities or government agencies, in particular, for the purpose of detecting, investigating and prosecuting illegal acts.
purpose(p9,("InvestigationParticipationProceedings1",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt06,dt07,dt08,dt09,dt10,dt11,dt12,dt13,dt14,dt15,dt17,dt18,dt19,dt20,dt21,dt22,dt23,dt24,dt25,dt26,dt27,dt28,dt29,dt30,dt31,dt32,dt35,dt36,dt37,dt38,dt39,dt40,dt41,dt42,dt43,dt44,dt45,dt46,dt47,dt48,dt49,dt50,dt51,dt52,dt54,dt56,dt59,dt61,dt62,dt63,dt64,dt65,dt66,dt67,dt68,dt69],[ ],[ ],[dr4,dr8],[lb2],[ ],r)).

% Prevention, detection and mitigation of illegal activities (e.g. fraud, money laundering and terrorist financing).
purpose(p10,("IllegalPreventionDetectionMitigation",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt06,dt07,dt08,dt09,dt10,dt11,dt12,dt13,dt14,dt15,dt17,dt18,dt19,dt20,dt21,dt22,dt23,dt26,dt27,dt28,dt29,dt31,dt36,dt37,dt38,dt39,dt40,dt41,dt42,dt43,dt44,dt45,dt46,dt47,dt50,dt51,dt52,dt56,dt59,dt62,dt63,dt64,dt65,dt66],[ ],[ ],[dr6],[lb2],[ ],r)).

% Complying with information requests from third parties based on any statutory information rights they have against us (e.g. in the event of an intellectual property infringement, product piracy, or other unlawful activity).
purpose(p11,("InformationRequestCompliance",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt12,dt20,dt21,dt50],[ ],[ ],[dr7],[lb2],[ ],r)).

% Ensuring the information security of our Services.
purpose(p12,("InformationSecurityAssurance",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt34,dt35,dt50,dt51,dt70],[ ],[ ],[dr6],[lb2],[ ],r)).

% Retention and storage of your personal data to comply with specific legal retention requirements (for more information on eBay's storage of your data
purpose(p13,("DataRetention",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt09,dt10,dt11,dt12,dt13,dt14,dt15,dt21,dt22,dt23,dt25,dt26,dt27,dt28,dt29,dt33,dt35,dt36,dt37,dt38,dt39,dt40,dt41,dt42,dt43,dt44,dt45,dt46,dt47,dt48,dt49,dt50,dt51,dt52,dt56,dt57,dt58,dt59,dt60,dt61,dt62,dt63,dt64,dt65,dt66,dt67,dt68,dt69,dt70,dt74,dt76],[ ],[ ],[dr3,dr6],[lb2],[ ],r)).

% Prevention, detection, mitigation and investigation of unlawful activities that may result in impairment of your vital interests or the vital interests of another natural person, unless there is a statutory obligation to this effect.
purpose(p14,("UnlawfulActivityWork1",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt10,dt11,dt12,dt20,dt21,dt23,dt24,dt25,dt26,dt27,dt31,dt36,dt37,dt38,dt39,dt41,dt42,dt43,dt44,dt45,dt46,dt47,dt62,dt63,dt65,dt66,dt67,dt68],[ ],[ ],[dr4,dr8],[lb3],[ ],r)).

% Participation in investigations and proceedings (including judicial proceedings) conducted by courts, law enforcement agencies, government agencies or public authorities, intergovernmental or supranational bodies, in particular for the purpose of detecting, investigating and prosecuting illegal acts, unless there is a statutory obligation to this effect.
purpose(p15,("InvestigationParticipationProceedings2",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt10,dt36,dt51],[ ],[ ],[dr4,dr8],[lb4],[ ],r)).

% Protection of the legitimate interests of third parties in connection with civil law disputes, including the investigation of such disputes, unless there is a statutory obligation to this effect, if we may legitimately assume that it is necessary to disclose the data to such third parties in order to avert imminent disadvantages.
purpose(p16,("LegitimateInterestProtection",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt06,dt07,dt08,dt09,dt10,dt11,dt12,dt13,dt14,dt15,dt17,dt18,dt19,dt20,dt21,dt22,dt23,dt24,dt25,dt26,dt27,dt28,dt29,dt30,dt31,dt32,dt35,dt36,dt37,dt38,dt39,dt40,dt41,dt42,dt43,dt44,dt45,dt46,dt47,dt48,dt49,dt50,dt51,dt52,dt54,dt56,dt59,dt61,dt62,dt63,dt64,dt65,dt66,dt67,dt68,dt69],[ ],[ ],[dr4,dr8],[lb4],[ ],r)).

% Prevention, detection, mitigation and investigation of fraud, security breaches and other prohibited or unlawful activities, including the assessment of corresponding risks (e.g. through the use of captchas, a port enumeration technology to identify user sessions using remote desktop tools or the telephone number stored in your eBay account for risk assessments and two-factor authentication), unless there is a statutory obligation to this effect.
purpose(p17,("UnlawfulActivityWork2",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt03,dt04,dt05,dt10,dt34,dt36,dt51,dt72,dt73,dt75],[ ],[ ],[dr4,dr8],[lb4],[ ],r)).

% Monitoring and improvement of the information security of our Services, unless there is a statutory obligation to this effect.
purpose(p18,("InformationSecurityMonitoring",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt34,dt35],[ ],[ ],[dr6],[lb4],[ ],r)).

% Performance of identity checks, creditworthiness and other financial standing checks, evaluation of applications and comparison of information for accuracy and verification purposes.
purpose(p19,("FinancialWorthinessChecks",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt04,dt05,dt06,dt07,dt09,dt14,dt20,dt24,dt34,dt35,dt39,dt42],[ ],[ ],[dr4,dr10],[lb4],[ ],r)).

% Automatic filtering and, where necessary, manual review of messages sent through our messaging tools (including chat messages and emails sent to eBay alias email addresses) to prevent fraudulent or suspicious activity or violations of our User Agreement or other rules and policies, including enforcing the prohibition of purchases and sales outside of eBay.
purpose(p20,("MessageReview",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt10,dt11,dt12,dt13,dt26,dt27,dt28,dt29,dt30,dt31,dt33,dt36,dt37,dt38,dt62,dt66,dt67],[ ],[ ],[dr6],[lb4],[ ],r)).

% Provision of functions for users that make the processing of transactions easier or more convenient (e.g. administration of several delivery addresses).
purpose(p21,("FunctionProvision",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt14,dt15,dt16,dt42,dt43,dt44,dt45,dt47,dt50,dt60,dt61],[ ],[ ],[dr6],[lb4],[ ],r)).

% Analysis and improvement of the Services from eBay Inc. corporate family members, e.g. by reviewing site usage data or information from users about blocked or crashed pages in order to identify and solve problems and to provide you with an improved user experience, including as part of product development.
purpose(p22,("ServiceImprovement",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt30,dt33,dt48,dt49,dt50,dt60,dt61,dt62,dt68,dt70,dt71],[ ],[ ],[dr2,dr6],[lb4],[ ],r)).

% Analysis of telephone conversations with our customer service that we recorded with your consent.
purpose(p23,("TelephoneConversationAnalysis",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt33,dt49],[ ],[ ],[dr2,dr6],[lb4],[ ],r)).

% Advertisements by mail (according to your communication preferences in your eBay account).
purpose(p24,("MailAdvertisments",true,false,1668495600,[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt04,dt34,dt48,dt58,dt74],[ ],[ ],[dr2],[lb4],[ ],r)).

% To the extent permitted by applicable law without your consent, communications with you via electronic mail (e.g. email or text message) or telephone to offer you vouchers, discounts and special offers, to conduct opinion polls and surveys, and to inform you about our Services (according to your communication preferences in your eBay account).
purpose(p25,("Communications",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt04,dt48,dt49,dt58,dt74],[ ],[ ],[dr2],[lb4],[ ],r)).

% Notifications regarding promotions and information about our Services after logging into your account or in My Messages in My eBay according to your communication preferences in your eBay account.
purpose(p26,("PromotionNotification",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt05,dt49],[ ],[ ],[dr2],[lb4],[ ],r)).

% For users outside the European Economic Area (EEA), Switzerland and the United Kingdom: Personalization, measurement and improvement of advertisements in our online offerings, the online offerings of eBay Inc. corporate family members or third parties.
purpose(p27,("AdvertWork1",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt10,dt11,dt12,dt22,dt23,dt26,dt27,dt30,dt31,dt43,dt44,dt45,dt46,dt47,dt48,dt50,dt58,dt62,dt64,dt67,dt74],[ ],[ ],[dr2],[lb4],[ ],r)).

% Customization of page content to display the items and services you may like based on the actions you take.
purpose(p28,("PageContentCustomization",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt10,dt11,dt12,dt26,dt27,dt30,dt31,dt36,dt37,dt38,dt43,dt44,dt45,dt46,dt47,dt48,dt62,dt66],[ ],[ ],[dr6],[lb4],[ ],r)).

% Evaluation of the quality and success of our email marketing campaigns (e.g. through analysis of opening and click rates).
purpose(p29,("QualityEvaluation",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt30,dt33,dt56,dt57,dt62,dt63,dt64,dt65,dt66],[ ],[ ],[dr2,dr6],[lb4],[ ],r)).

% Assessment of the service status (e.g. on the basis of tracking information if sellers use shipping labels from shipping providers via eBay or provide tracking numbers).
purpose(p30,("ServiceStatusAssessment",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt15,dt18,dt19,dt35],[ ],[ ],[dr2,dr3],[lb4],[ ],r)).

% Offering of partner and bonus programs and other co-branded marketing efforts, e.g. seller financing offers or co-branded credit cards in collaboration with a third party lender or credit card issuer.
purpose(p31,("PartnerProgramOfferings",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt04,dt08,dt26,dt27,dt30,dt45,dt46,dt48,dt67],[ ],[ ],[dr2],[lb4],[ ],r)).

% Provision of shared content and services (such as registration for services, transaction processing and customer service) with eBay Inc. corporate family members or cooperating payment service providers.
purpose(p32,("ServicesProvision",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt04,dt05,dt08,dt09,dt14,dt33,dt34,dt35],[ ],[ ],[dr2,dr5],[lb4],[ ],r)).

% Initiation, preparation and execution of a company acquisition, e.g. in the event of a merger with another company or takeover by another company. If such an event occurs, we will require the merged entity to comply with this User Privacy Notice with respect to your personal data.
purpose(p33,("CompanyAcquistion",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt02,dt04,dt05,dt08,dt09,dt20,dt21,dt26,dt27,dt33,dt34,dt35,dt42,dt46,dt48,dt50,dt54],[ ],[ ],[dr9],[lb4],[ ],r)).

% Assertion of or defense against legal claims, including those asserted by one eBay user against another eBay user.
purpose(p34,("LegalClaimDefense",false,true,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt05,dt07,dt13,dt20,dt21,dt22,dt23,dt28,dt29,dt32,dt47],[ ],[ ],[dr4,dr8],[lb4],[ ],r)).

% For users within the European Economic Area (EEA), Switzerland and the United Kingdom: Personalization, measurement and improvement of advertisements in our online offerings, the online offerings of eBay Inc. corporate family members or third parties
purpose(p35,("AdvertWork2",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt10,dt11,dt12,dt22,dt23,dt26,dt27,dt30,dt31,dt43,dt44,dt45,dt46,dt47,dt48,dt50,dt58,dt62,dt64,dt67,dt74],[ ],[ ],[dr2],[lb5],[ ],r)).

% Marketing communications by telephone or electronic mail (such as email or SMS), including communications by other eBay Inc. corporate family members or by third parties, unless these communications are permitted without your consent under applicable law. We may engage third parties to send marketing communications on our behalf
purpose(p36,("MarketingCommunications",false,false,1668495600,[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt03,dt04,dt33,dt48],[ ],[ ],[dr2],[lb5],[ ],r)).

% Processing of your precise location data to provide location-based services. Please note that most mobile devices allow you to manage or disable the use of precise location services for all applications in the settings menu
purpose(p37,("PreciseLocationDataProcessing",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt02,dt15,dt41,dt50,dt51,dt52],[ ],[ ],[dr2,dr6],[lb5],[ ],r)).

% For users within the European Economic Area (EEA): Storing your financial information (e.g. credit card and account numbers) for future transactions
purpose(p38,("FinancialInformationStoring",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt09,dt14],[ ],[ ],[dr2,dr5],[lb5],[ ],r)).

% Provision of a single sign-on service allowing you to register or log-in to third party services using your eBay log-in credentials
purpose(p39,("SingleSignonServiceProvision",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt03,dt04,dt05,dt34,dt35],[ ],[ ],[dr6],[lb5],[ ],r)).

% Automated decision-making
purpose(p40,("AutomatedDecisionMaking",false,false,[ ],[("en"," "),("de"," ")],[("en"," "),("de"," ")],[dt01,dt08,dt10,dt11,dt12,dt20,dt21,dt22,dt23,dt26,dt27,dt31,dt33,dt36,dt37,dt38,dt42,dt43,dt44,dt45,dt46,dt47,dt48,dt49,dt50,dt58,dt59,dt60,dt62,dt63,dt64,dt65,dt66,dt67,dt73,dt74,dt76],[ ],[ ],[dr6],[lb5],[ ],r)).



%----------
% Controller
%----------

controller(c1,("eBay Commerce Inc","Legal Entity","","Controller","eBay Inc","","2025 Hamilton Avenue, San Jose, CA 95125, USA","","",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
controller(c2,("eBay S.à r.l","Legal Entity","","Controller","eBay S.à r.l","","22-24 Boulevard Royal, L-2449 Luxembourg","","",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
controller(c3,("eBay Commerce UK Ltd.","Legal Entity","","Controller","eBay Commerce UK Ltd.","","1 More London Place, London SE1 2AF, United Kingdom","","",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
controller(c4,("eBay Commerce Canada Limited","Legal Entity","","Controller","eBay Commerce Canada Limited","","44 Chipman Hill, Suite 1000, Saint John NB E2L 2A9, Canada","","",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
controller(c5,("eBay Commerce Australia Pty. Ltd.","Legal Entity","","Controller","eBay Commerce Australia Pty. Ltd.",""," Level 18, 1 York Street, Sydney NSW 2000, Australia","","",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
controller(c6,("eBay Singapore Services Private Limited","Legal Entity","","Controller","eBay Singapore Services","","10 Collyer Quay, #10-01 Ocean Financial Centre, Singapore 049315","","",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).
controller(c7,("eBay Marketplaces GmbH","Legal Entity","","Controller","eBay Marketplaces GmbH","","Helvetiastrasse 15/17, 3005 Bern, Switzerland","","",[("en","  "),("de","  ")],[("en","  "),("de","  ")])).



%----------
% Data Protection Officer
%----------

dpo(dpo,("Data Protection Officer","Legal Entity","","DataProtectionOfficer","","","Albert-Einstein-Ring 2-6, 14532, Kleinmachnow, Germany","","ebaydpo@ebay.com",[("en","  "),("de","  ")],[("de","  "),("en","  ")])).


%----------
% Data Subject Right
%----------

dsr(eBay_dsrs,[
	% right to withdraw consent
	%(consentWithdrawal,[("en","Right to Withdraw Consent"),("de","")],[("en","You can withdraw your consent to the processing of your personal data by us at any time."),("de","")]),
	% right of access
	(access,[("en","Right to obtain access"),("de","")],[("en","You have the right to obtain access to your personal data that is being processed by us."),("de","")]),
	% right to rectification
	(rectification,[("en","Right to obtain rectification"),("de","")],[("en","You have the right to obtain from us without undue delay the rectification of inaccurate personal data concerning you."),("de","")]),
	% right to erasure
	(erasure,[("en","Right to erasure"),("de","")],[("en","You have the right to obtain from us the erasure of personal data concerning you under certain conditions."),("de","")]),
	% right to restriction of data processing
	(restriction,[("en","Right to restriction"),("de","")],[("en","You have the right to obtain from us restriction of processing your personal data "),("de","")]),
	% right to portability
	(portability,[("en","Right to data protability"),("de","")],[("en","You have the right to receive the personal data concerning you, which you have provided to us, in a structured, commonly used and machine-readable format and have the right to transmit those data to another controller"),("de","")]),
	% right to complain
	%(complaint,[("en","Right to obtain access"),("de","")],[("en","You have the right to lodge a complaint with a supervisory authority. As a rule, you can contact the supervisory authority of your usual place of residence, your place of work or the registered office of the controller."),("de","")]),
	% right to object
	(objection,[("en","Right to object"),("de","")],[("en","If your personal data is processed on the basis of our legitimate interests, you have the right to object to the processing of your personal data on grounds relating to your particular situation."),("de","")])]).



lpp_ebay_raw(P):-
    URI = "https://www.ebay.com/help/policies/member-behaviour-policies/user-privacy-notice-privacy-policy?id=4260#section12",
    LPP_HEAD = [("de","  "),("en","  "),("fr","  ")],
    LPP_DESC = [("de","  "),("en","  ")],
    dsr(eBay_dsrs,DSR),
    PH = [(serviceProvision,p1),(serviceProvision,p2),(serviceProvision,p3),(serviceProvision,p4),(customerManagement,p5),(personalisation,p6),(organisationGovernance,p7),(personalisation,p8),(legalCompliance,p9),(enforceSecurity,p10),(legalCompliance,p11),(enforceSecurity,p12),(legalCompliance,p13),(enforceSecurity,p14),(legalCompliance,p15),(legalCompliance,p16),(enforceSecurity,p17),(enforceSecurity,p18),
(enforceSecurity,p19),(enforceSecurity,p20),(serviceProvision,p21),(researchAndDevelopment,p22),(communicationManagement,p23),(marketing,p24),(marketing,p25),(communicationManagement,p26),(marketing,p27),(personalisation,p28),(researchAndDevelopment,p29),(organisationGovernance,p30),
(serviceProvision,p31),(serviceProvision,p32),(organisationGovernance,p33),(legalCompliance,p34),(marketing,p35),(marketing,p36),(personalisation,p37),(serviceProvision,p38),(accountManagement,p39),(serviceProvision,p40)],
%PH = [(serviceProvision,p1),(serviceProvision,p2),(serviceProvision,p3),(serviceProvision,p4),(customerManagement,p5),(personalisation,p6),(organisationGovernance,p7),(personalisation,p8),(legalCompliance,p9),(enforceSecurity,p10),(legalCompliance,p11),(enforceSecurity,p12),(legalCompliance,p13),(enforceSecurity,p14),(legalCompliance,p15),(legalCompliance,p16),(enforceSecurity,p17),(enforceSecurity,p18),
%(enforceSecurity,p19),(enforceSecurity,p20),(serviceProvision,p21),(researchAndDevelopment,p22),(communicationManagement,p23),(marketing,p24),(communicationManagement,p26),(personalisation,p28),(researchAndDevelopment,p29),(organisationGovernance,p30),
%(serviceProvision,p31),(serviceProvision,p32),(organisationGovernance,p33),(legalCompliance,p34),(marketing,p36),(personalisation,p37),(serviceProvision,p38),(accountManagement,p39),(serviceProvision,p40)],
    P = (0.1,"eBay.com Privacy Notice","en",URI,LPP_HEAD,LPP_DESC,[],[],[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40],PH,[c1,c2,c3,c4,c5,c6,c7],[dpo],DSR,[],[]).
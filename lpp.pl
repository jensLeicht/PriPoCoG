%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% language specific definitions

% A layered privacy policy
lpp(V,N,L,PU,H,D,I,DS,P,PH,C,DPO,DSR,LC,UPP) :-
	write("Results for policy """),
	write(N),
	writeln(""":"),
    number(V),      % version
    string(N),      % name of the policy
    lang(L),        % language
    string(PU),     % URI of textual privacy policy
    hdTuples(H,"HEAD of LPP"),      % Headers of the policy in different languages
    hdTuples(D,"DESC of LPP"),      % Descriptions of the policy in different languages
    nTriples(I,"Icons"),     % Icons used
    dataSource(DS), % Data Source
    purposeDuplicateCheck(P),% check for duplicate entries
    purposes(P),    % Purposes
    purposeHierarchy(PH), % list of purposes
    purposeHierarchyChecks(PH,P), % performs consistency checks on the hierarchy
    controllers(C), % Controllers
    dpoCheck(DPO,C),% Data Protection Officers
    aggregate_all(count,dsrCheck(DSR,C,P),Count),
    Count>0,        % checks Data Subject Rights
    lodgeComplaint(LC),    % Lodge Complaint
	writeln("end of policy"),
    upp(UPP).       % Underlying Privacy Policy
    
upp([]):- !. % empty underlying policies
upp(U) :-
	writeln("Beginning of Sub-Policy:"),
	call(U).
	

% a basic entity, used to define DataSource, DataRecipient,
% Controller, and DataProtectionOfficers
entity((N,C,A,T,H,D)) :-
    string(N),         % name
    classification(C), % "Person" or "Legal Entity" or "Public Authority"
    string(A),         % authInfo
    entityType(T),     % type: "DataSource", "DataRecipient",
    % "Controller", or "DataProtectionOfficer"
    string_concat("HEAD of Entity ",N,MH),
    hdTuples(H,MH),         % Headers of the entity in different languages
    string_concat("DESC of Entity ",N,MD),
    hdTuples(D,MD).         % Descriptions of the entity in different languages

% the dataSource is either the DataSubject providing its data or a
% DataController that provides data collected from the DataSubject to
% further DataProcessors
dataSource((N,C,A,T,P,H,D)) :-
    entity((N,C,A,T,H,D)), % the underlying entity
    boolean(P),            % publiclyAvailable, states whether the data was
			   % retrieved directly from the DataSource or was
			   % publicly available
    T="DataSource".        % type from entity

dataSource([]). % empty for non-instantiated policies

% check for duplicate purpose elements
purposeDuplicateCheck(P) :-
    mapPurposeNames(P,PN), % retrieve names
    getDupes(PN,D),        % identify duplicates
    length(D,L),           % check duplicate results
    (L > 0 ->              % respond
	 write("duplicate purpose element: "),write(D),nl;
     L == 0).              % all fine, nothing to do

% check for duplicate data recipient elements
dataRecipientDuplicateCheck(DR,PN) :-
    getDupes(DR,D), % identify duplicates
    length(D,L),    % check duplicate results
    (L > 0 ->       % respond
	 write("found duplicate data recipient elements """),write(D),write(""" in purpose: "),writeln(PN);
     L == 0).       % all fine, nothing to do

% list of purpose elements including mapping from "id" to actual purpose
% element: purpose(H,P)
purposes([H|T]) :- purpose(H,P), purposeCheck(P), purposes(T).
purposes([]).

% purpose element describing the purpose of the data processing
purposeCheck((N,O,R,P,H,D,DT,PM,PSM,DR,L,A,RT)) :-
    string(N),                    % identifying name of the purpose, no
                                  % duplicates in the set/list of purposes
    boolean(O),                   % optOut=true, optIn=false
    boolean(R),                   % required, if true and no consent is
				  % given, the whole policy cannot be consented
    getLegalObligation(L,LO),     % check whether a legal obligation is provided
    legalObligation(LO,R,N),      % Legal Obligation - Required check
    pointOfAcceptance(P),         % date and time of point of consent
    string_concat("HEAD of purpose ",N,MH),
    hdTuples(H,MH),                    % Headers of the purpose
    string_concat("DESC of purpose ",N,MD),
    hdTuples(D,MD),                    % Descriptions of the purpose
    dataCheck(DT,N),              % check whether duplicate data elements exist
    data(DT,N),                   % data, that is processed for this purpose
    privacyModels(PM,DT,N),            % PrivacyModels applied (opt)
    pseudonymizationMethods(PSM,DT,N), % PseudonymizationMethods applied (opt)
    dataRecipientDuplicateCheck(DR,N), % check for duplicate recipients
    dataRecipients(DR,N),         % DataRecipients, having access to the data
    legalBases(L,N),                % LegalBasis of the processing
    nTriples(A,"Automated Decision Making "),% AutomatedDecisionMaking
    retention(RT,RTN),            % mapping from "id" to retention element
    retentionCheck(RTN,N).               % Retention of the data for this purpose


% pupose hierarchy checks
purposeHierarchyChecks(PH,P) :-
    singleParentCheck(PH),
    givenPurposeCheck(PH,P,[]).

% given purpose check
givenPurposeCheck(PH,[P|T],V) :-
    givenPurposeCheck(PH,P,D,V,[]),
    subtract(T,D,R),
    givenPurposeCheck(PH,R,D),!.
givenPurposeCheck(_,[],_).
givenPurposeCheck(PH,S,R,V,PT) :-
    memberchk((P,S),PH),!,
    superPurpose(PH,P,S,R,V,PT).
givenPurposeCheck(_,P,[P|V],V,_) :-
    %\+ memberchk((_,P),PH),!,
    write("purpose """),write(P),writeln(""" does not have a super purpose in the hierarchy").
superPurpose(_,P,S,[P|V],V,_) :-
    memberchk(P,V),!,
    subPurpose(P,S).
superPurpose(_,P,_,[],_,PT) :-
    memberchk(P,PT),!,
    write("a loop in the purpose hierarchy around purpose: "),write(P),writeln(" was detected").
superPurpose(_,P,S,[S|V],V,_) :-
    purpose(P),!.
superPurpose(PH,P,S,[S|R],V,PT) :-
    \+ purpose(P),
    subPurpose(P,S),
    givenPurposeCheck(PH,P,R,V,[S|PT]).


% sub purpose checks
subPurpose(P,S) :-
    purpose(S,(_,SO,SR,_,_,_,SDT,_,_,SDR,SL,SA,_)),
    purpose(P,(_,O,R,_,_,_,DT,_,_,DR,L,A,_)),
    subPurposeOptOut(S,P,SO,O),
    subPurposeRequired(S,P,SR,R),
    subPurposeData(S,P,SDT,DT),
    subPurposeDR(S,P,SDR,DR),
    subPurposeLB(S,P,SL,L),
    subPurposeADM(S,P,SA,A).

subPurposeOptOut(_,_,O,O) :- !.
subPurposeOptOut(S,P,SO,O) :-
    write("optOut:"),write(SO),write(" of purpose """),write(S),write(""" does not match optOut:"),write(O),write(" of super purpose """),write(P),writeln("""").

subPurposeRequired(_,_,R,R) :- !.
subPurposeRequired(S,P,SR,R) :-
    write("required:"),write(SR),write(" of purpose """),write(S),write(""" does not match required:"),write(R),write(" of super purpose """),write(P),writeln("""").

subPurposeData(_,_,SDT,DT) :-
    subset(SDT,DT),!.
subPurposeData(S,P,SDT,DT) :-
    write("data:"),write(SDT),write(" of purpose """),write(S),write(""" is not a subset or equal to data:"),write(DT),write(" of super purpose """),write(P),writeln("""").

subPurposeDR(_,_,SDR,DR) :-
    subset(SDR,DR),!.
subPurposeDR(S,P,SDR,DR) :-
    write("dataRecipients:"),write(SDR),write(" of purpose """),write(S),write(""" is not a subset or equal to dataRecipients:"),write(DR),write(" of super purpose """),write(P),writeln("""").

subPurposeLB(_,_,SL,L) :-
    subset(SL,L),!.
subPurposeLB(S,P,SL,L) :-
    write("legalBases:"),write(SL),write(" of purpose """),write(S),write(""" is not a subset or equal to legalBases:"),write(L),write(" of super purpose """),write(P),writeln("""").

subPurposeADM(_,_,SA,A) :-
    subset(SA,A),!.
subPurposeADM(S,P,SA,A) :-
    write("ADM:"),write(SA),write(" of purpose """),write(S),write(""" is not a subset or equal to ADM:"),write(A),write(" of super purpose """),write(P),writeln("""").


% single parent check
singleParentCheck([(_,P)|T]) :-
    \+ memberchk((_,P),T),!,
    singleParentCheck(T).
singleParentCheck([(_,P)|T]) :-
    memberchk((_,P),T),!,
    subtract(T,[(_,P)],R),
    write("purpose """),write(P),writeln(""" has multiple parent purposes, should have exactly one"),
    singleParentCheck(R),fail.
singleParentCheck([]).

% purpose hierarchy
purposeHierarchy([H|T]) :-
    purposeTuple(H),
    purposeHierarchy(T).
purposeHierarchy([]).

% purpose tuple defining a hierarchy
purposeTuple((P,S)) :-
    (purpose(P,_),!; purpose(P),!; \+ purpose(P), write("unknown purpose """), write(P), writeln(""" found in purpose hierarchy")),
    (purpose(S,_),!; \+ purpose(S,_), write("unknown purpose """), write(S), writeln(""" found in purpose hierarchy")).

% check for duplicate data elements in a data set
dataCheck(DT,P) :-
    mapDataNames(DT,DTN),         % extract names of datum elements
    getDupes(DTN,D),              % identify duplicates
    length(D,L),                  % check duplicate results
    (L > 0 ->                     % respond
	 write("duplicate data elements in purpose: "),write(P),write(" | "),write(D),nl;
     L == 0).                     % all fine, nothing to do

% unix timestamp of the point of consent for a purpose
pointOfAcceptance(P) :- integer(P).
pointOfAcceptance([]). % empty for the policy before consent by the DataSubject

% a list of data elements including mapping from "id" to actual datum

% elements: datum(H,D)
data([H|T],P) :- datum(H,D), datumCheck(D,P), data(T,P).
data([],_).

% datum element describing the data processed for purpose
datumCheck((N,T,R,G,DC,DG,A,H,D),P) :-
    string(N),                     % identifying name of the datum element, no
                                   % duplicates in the data of a purpose
    dType(T),                      % type of data: "Text", "Number", "Date",
			           % "Boolean", "Value Set", or "Other"
    boolean(R),                    % required, if true and no consent is given,
			           % the whole purpose cannot be consented
    pGroup(G),                     % classification of the datum into
			           % "Explicit", "QID" (quasi-identifier),
                                   % "Sensitive", or "Non-Sensitive"
    dataCategories(DC,N),          % list of DataCategories
    dataGroups(DG),                % list of DataGroup elements, categorizing the data
    ([]==A,!;                      % empty set when no AM is provided
    anonymizationMethod(A,AM),     % mapping from "id" to AM-element
    anonymizationMethod(AM,N,P)),  % minimum anonymization required (opt)
    string_concat(""" of purpose ",P,PP),
    string_concat(N,PP,NN),
    string_concat("HEAD of datum """,NN,MH),
    hdTuples(H,MH),                     % Headers of the datum
    string_concat("DESC of datum """,NN,MD),
    hdTuples(D,MD).                     % Descriptions of the datum

% anonymization method applied to data
anonymizationMethod((N,A,HE,H,D),DT,P) :- % e.g. Deletion, Surpression, or Generalization
    string(N),              % name of the method
    attributes(A),          % list of (key,value)-pairs of attributes
    anonymizationLevels(A,DT,P), % minimum and maximum anonymization
                            % levels
    values(HE),             % ordered list of hierarchie elements
    string_concat(""" of purpose ",P,PP),
    string_concat(""" of datum """,DT,DD),
    string_concat(DD,PP,DP),
    string_concat(N,DP,NN),
    string_concat("HEAD of anonymization method """,NN,MH),
    hdTuples(H,MH),              % Headers of the method
    string_concat("DESC of anonymization method """,NN,MD),
    hdTuples(D,MD).              % Descriptions of the method

% a list of privacyModels specifying privacy conditions for a purpose
% including mapping from "id" to actual privacyModel element: privacyModel(H,P)
privacyModels(L,_,P) :- L \= [], \+ current_predicate(privacyModel/2),
		      write("no privacy models defined, but the following ids are in use "),write(L),write(" in purpose: "),writeln(P),!.
privacyModels([H|T],DT,PP) :- privacyModel(H,P),privacyModelCheck(P,DT,PP), privacyModels(T,DT,PP).
privacyModels([],_,_).

% privacyModel applied to the data of a purpose
privacyModelCheck((N,NOD,P,H,D),DT,PP) :-
    string(N),     % name of the model, e.g. "k-Anonymity"
	strings(NOD),         % name of datum
    mapDataNames(DT,DTN), % extract names of datum elements
    dataNames(NOD,DTN),   % check NOD for existance
    attributes(P), % list of (key, value)-pairs of attributes
    string_concat(""" of purpose ",PP,PPP),
    string_concat(N,PPP,NN),
    string_concat("HEAD of privacy model """,NN,MH),
    hdTuples(H,MH),     % Headers of the model
    string_concat("DESC of privacy model """,NN,MD),
    hdTuples(D,MD).     % Descriptions of the model

% a list of pseudonymizationMethods appliead to specific data of a purpose
% including mapping from "id" to actual pseudonymizationMethod element: pseudonymizationMethod(H,P)
pseudonymizationMethods(L,_,P) :- L \= [], \+ current_predicate(pseudonymizationMethod/2),
				  write("no pseudonymization methods defined, but the following ids are in use "),write(L),write(" in purpose: "),writeln(P),!.
%pseudonymizationMethods([H|T],_,PP) :- \+ pseudonymizationMethod(H,_), write("test").
pseudonymizationMethods([H|T],DT,PP) :- pseudonymizationMethod(H,P), pseudonymizationMethodCheck(P,DT,PP), pseudonymizationMethods(T,DT,PP),!.
pseudonymizationMethods([],_,_).

% pseudonymizationMethod applied to specified data of a purpose
pseudonymizationMethodCheck((N,A,NOD,H,D,P),DT,PP) :-
    string(N),            % name of the method, e.g. "HMAC-SHA-1", "DES"
    string(A),            % name of the resulting attribute, i.e. name of
                          % the attribute, resulting from the combination
                          % of multiple attributes
    strings(NOD),         % name of datum
    mapDataNames(DT,DTN), % extract names of datum elements
    dataNames(NOD,DTN),   % check NOD for existance
    string_concat(""" of purpose ",PP,PPP),
    string_concat(N,PPP,NN),
    string_concat("HEAD of pseudonymization method """,NN,MH),
    hdTuples(H,MH),            % Headers of the method
    string_concat("DESC of pseudonymization method """,NN,MD),
    hdTuples(D,MD),            % Descriptions of the method
    attributes(P).        % PSMA list of (key,value)-pairs of attributes

% defining the time of deletion of the data of a purpose
retentionCheck((T,P,H,D),PP) :-
    retentionType(T), % type of retention: indefinite, afterPurpose, or fixedDate
    string(P),        % pointInTime:  textual representation of the retention -
		      % afterPurpose + pointInTime = timeframe for deletion
		      % after completion of purpose - fixedDate +
    % pointInTime = date of deletion
    string_concat("HEAD of retention of purpose ",PP,MH),
    hdTuples(H,MH),        % Headers of the retention time
    string_concat("DESC of retention of purpose ",PP,MD),
    hdTuples(D,MD).        % Descriptions of the retention time

% list of dataCategories, to which a datum belongs including mapping from "id"
% to actual dataCategories element: dataCategories(H,DC)
% a dataCategory is a named triple, containing Headers and Descriptions
dataCategories([],D) :- write("data elements must have at least one data category assigned: "),writeln(D),!.
dataCategories(L,_) :- dataCategoriesNE(L).
dataCategoriesNE([H|T]) :- dataCategory(H,DC), nTriple(DC,"Data Category "), dataCategoriesNE(T),!.
dataCategoriesNE([H|T]) :- \+ dataCategory(H,_), write("unkown data category: "),writeln(H),dataCategoriesNE(T),!.
dataCategoriesNE([]).

% list of dataGroups, to which a datum belongs including mapping from "id"
% to actual dataGroup element: dataGroup(H,DG)
% a dataGroup is a named triple, containing Headers and Descriptions
dataGroups([H|T]) :- dataGroup(H,DG), nTriple(DG,"Data Group "), dataGroups(T),!.
dataGroups([H|T]) :- \+ dataGroup(H,_), write("unkown data group: "),writeln(H),dataGroups(T),!.
dataGroups([]).

% list of dataRecipients, which receive access to data for a purpose
% including mapping from "id" to actual dataRecipient element: dataRecipient(H,DR)
dataRecipients([H|_],PN) :-
    aggregate_all(count,dataRecipient(H,_),Count),
     Count>1,
     write("found duplicate definitions of data recipient """),write(H),write(""" used in purpose: "),writeln(PN),!.
dataRecipients([H|T],PN) :-
    (dataRecipient(H,DR),!;
     \+ dataRecipient(H,_),write("unknown data recipient """),write(H),write(""" found in purpose: "),
     writeln(PN),fail),
    dataRecipientCheck(DR,PN),
    dataRecipients(T,PN).
dataRecipients([],_).

% dataRecipient element describing the entity receiving the data for a purpose
dataRecipientCheck((N,C,A,T,R,TCT,CO,AD,H,D,S),PN) :-
    entity((N,C,A,T,H,D)),         % the underlying entity
    boolean(R),                    % required, if true and no consent is
				   % given, the whole purpose cannot be consented
    boolean(TCT),                  % thirdCountryTransfer
    boolean(AD),                   % adequacy decision
    aggregate_all(count,thirdCountryDR(N,TCT,CO,AD,S,PN),Count),% checks for thirdCountryDataRecipient
    Count>0,
    nTriples(S,"Safeguard "),                   % list of named triples describing safeguards
    T="DataRecipient".             % type from entity

% list of dataControllers, responsible for data handling including mapping
% from "id" to actual controller element: controller(H,C)
controllers([H|T]) :- controller(H,C), controller(C), controllers(T).
controllers([]).

% dataController element describing the entity responsible for data handling
controller((N,C,A,T,F,L,AD,P,E,H,D)) :-
    responsiblePerson((N,C,A,T,F,L,AD,P,E,H,D)),!, % special type of entity
    T="Controller".                                % type from entity

% responsiblePerson is a special type of entity for controllers and DPOs
responsiblePerson((N,C,A,T,F,L,AD,P,E,H,D)) :-
    entity((N,C,A,T,H,D)), % the underlying entity
    string(F),             % first name
    string(L),             % last name
    string(AD),            % address
    string(P),             % phone number
    string(E).             % email

% list of dataProtectionOfficers, responsible for the policy including
% mapping from "id" to actual dpo element: dpo(H,D)
dpos([H|T]) :- dpo(H,D), dpo(D), dpos(T).
dpos([]).

% dataProtectionOfficer element describing the entity responsible for the policy
dpo((N,C,A,T,F,L,AD,P,E,H,D)) :-
    responsiblePerson((N,C,A,T,F,L,AD,P,E,H,D)), % special type of entity
    T="DataProtectionOfficer".                   % type from entity

lodgeComplaint([]) :- !. % no LC was given
lodgeComplaint(LC) :-    % check LC as named triple
	nTriple(LC,"Lodge Complaint ").
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% checks

% checks whether all necessary dataSubjectRights are provided
dsrCheck(D,_,_) :-
    D \= [],
    dsrs(D).

dsrCheck(D,C,_) :-
    \+ publicAuthorityCheck(C),
    \+ memberchk((portability,_,_),D),
    writeln("Data Subject Right: ""portability"" missing.").

dsrCheck(D,_,P) :-
    admCheck(P,R),
    length(R,L),
    L > 0,
    \+ memberchk((intervention,_,_),D),
    write("Data Subject Right: ""intervention"" required due to automated decision making in purposes: "),writeln(R).

dsrCheck(D,_,_) :-
    dsr(R),
    R \= portability,
    R \= intervention,
    \+ memberchk((R,_,_),D),
    write("Data Subject Right: """),write(R),writeln(""" missing.").

admCheck([H|T],[P|R]) :-
    purpose(H,PD),
    automatedDecisionMaking(PD,P),
    admCheck(T,R).

admCheck([H|T],R) :-
    purpose(H,PD),
    \+ automatedDecisionMaking(PD,_),
    admCheck(T,R).

admCheck([],[]).

automatedDecisionMaking((P,_,_,_,_,_,_,_,_,_,_,A,_),P) :-
    A \= [].
	
	anonymizationLevels(A,D,P) :-
   memberchk(("Minimum Level",MI),A),
   memberchk(("Maximum Level",MA),A),
   integer(MI),
   integer(MA),!;
   write("Minimum and maximum anonymization levels must be supplied:"),write(D),write("-"),write(P),nl.

% legal obligation

legalObligation(LO,R,P) :- % purpose marked as legal obligation, but not as required
    LO,
    \+ R,
    write("ERROR: legal obligation must be marked as required:"),
    writeln(P),!.

legalObligation(LO,R,_) :- % correct, legal obligation and required
    LO,
    R,!.

legalObligation(LO,_,_) :- % correct, no legal obligation
    \+ LO.

% TODO detailed output purpose


% data mapping for data name checking
mapDataNames([HD|TD],[HN|TN]) :-
    datum(HD,D),          % map data element
    D=(HN,_,_,_,_,_,_,_), % extract name of mapped data element
    mapDataNames(TD,TN).
mapDataNames([],[]).


% purpose mapping for purpose name checking
mapPurposeNames([HP|TP],[HN|TN]) :-
    (purpose(HP,P),!; \+ purpose(HP,_), write("purpose not found: "), writeln(HP), fail),
    P=(HN,_,_,_,_,_,_,_,_,_,_,_),
    mapPurposeNames(TP,TN).
mapPurposeNames([],[]).

% data names in pseudonymizationMethod
dataNames([H|T],DT) :-
    memberchk(H,DT),
    dataNames(T,DT).
dataNames([],_).


% check whether a list contains duplicate elements
getDupes(S,D) :-
    aggregate_all(set(X),dupes(S,X),D).
%    length(D,0).

dupes(S,X) :-
    select(X,S,R), member(X,R).
	
% check DPOs if provided, else provide hint for missing DPO
dpoCheck([],C) :-
    publicAuthorityCheck(C),
    writeln("A dedicated DPO is required for public authorities."),
    !.

dpoCheck([],_) :-
    writeln("A dedicated DPO may be required. Consult Art. 37 Para. 1 GDPR for further details."),
    !.

dpoCheck(D,_) :-
    dpos(D).
	
publicAuthorityCheck([H|_]) :- controller(H,(_,"Public Authority",_,_,_,_,_,_,_,_,_)),!.
publicAuthorityCheck([_|T]) :- publicAuthorityCheck(T).
publicAuthorityCheck([]) :- false.

% HEAD and DESC tuples cannot contain multiple entries for the same language
hdTuples(HD,N) :-
    tuples(HD,L),
    getDupes(L,D),
    (length(D,0),!;
    write("found duplicate elements for the following languages "),write(D),write(" in "),writeln(N)).

% legalBases resolve mapping
legalBases([H|T],P) :-
    legalBasis(H,(L,T1,T2)),
    legalBasis(L),
    string_concat(""" of purpose ",P,PP),
    string_concat(L,PP,LP),
    string_concat("HEAD of legal basis """,LP,MH),
    hdTuples(T1,MH),
    string_concat("DESC of legal basis",LP,MD),
    hdTuples(T2,MD),
    legalBases(T,P).
legalBases([],_).

% dataSubjectRights
dsrs([(N,H,D)|T]) :-
    dsr(N),
    string_concat("HEAD of data subject right ",N,MH),
    hdTuples(H,MH),
    string_concat("DESC of data subject right ",N,MD),
    hdTuples(D,MD),
    dsrs(T).
dsrs([]).

getLegalObligation(L,LO) :-
    (memberchk(legalObligation,L) -> LO = true;
     LO = false).
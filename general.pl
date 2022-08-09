%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% general definitions

% list of (key,value)-pairs
attributes([H|T]) :- attribute(H), attributes(T).
attributes([]).

% a (key,value)-pair
attribute((K,V)) :- string(K), value(V).

% a list of values
values([H|T]) :- value(H), values(T).
values([]).

% a value can be a float, integer, or string
value(V) :- float(V),!.
value(V) :- integer(V),!.
value(V) :- string(V),!.

% a list of tuples
tuples([(L,S)|T],[L|R]) :- tuple((L,S)),tuples(T,R).
tuples([],[]).

% a tuple of a language handle code and a string, used for Headers and Descriptions
tuple((L,T)) :- lang(L), string(T).

% a list of strings
strings([H|T]) :- string(H), strings(T).
strings([]).

% a boolean
boolean(B) :- B==true,!;B==false.

% a list of named triples
nTriples([H|T],S) :- nTriple(H,S), nTriples(T,S).
nTriples([],_).

% a named triple, containing the name, Headers, and Descriptions
nTriple((N,H,D),S) :- % icons, dsrs, lc, lb, adm, datagroups
    string(N),
	string_concat("HEAD of ",S,HS),
    string_concat(HS,N,MH),
    hdTuples(H,MH),
	string_concat("DESC of ",S,DS),
    string_concat(DS,N,MD),
    hdTuples(D,MD).
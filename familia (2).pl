padrede('juan','maria').
padrede('pablo','juan').
padrede('pablo','marcela').
padrede('carlos','debora').
padrede('marcela','juanita').

hijode(A,B):- padrede(B,A).
abuelode(A,B):- padrede(A,C),padrede(C,B).
hermanode(A,B):-padrede(C,A),padrede(C,B),A\==B.
tiode(A,B):-padrede(C,A),hermanode(B,C).
primode(A,B):-padrede(C,A),hermanode(C,E),padrede(E,B).
sobrinode(A,B):-hermanode(C,B),padrede(C,A).
familiarde(A,B):-padrede(A,B).
familiarde(A,B):-abuelode(A,B).
familiarde(A,B):-hermanode(A,B).



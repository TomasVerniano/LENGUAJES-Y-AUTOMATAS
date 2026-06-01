
% empleada/o trabaja/n, cobra/n, sueldo/s

% G = (Vn, Vt, R, O)

% Reglas gramaticales

% sn(Gen,Num) sintagma nominal contiene variables de GENERO y NUMERO.
o(o(SN, SV)) --> sn(SN, _Gen, Num), sv(SV, Num).

sn(sn(DET, N), Gen, Num) --> det(DET, Gen, Num), n(N, Gen, Num).

sv(sv(VT, SN), Num) --> vt(VT, Num), sn(SN, _Gen, Num).
sv(sv(V), Num) --> v(V, Num).
sv(sv(VT), Num) --> vt(VT, Num).

% Se definen las variables dependiendo la palabra 
% f = femenino, m = masculino, sg = singular, pl = plural
det(det(la), f, sg) --> [la].
det(det(X), m, sg) --> [X], {member(X, [el, un])}.
det(det(los), m, pl) --> [los].
det(det(las), f, pl) --> [las].

n(n(empleada), f, sg) --> [empleada].
n(n(X), m, sg) --> [X], {member(X, [empleado, sueldo])}.
n(n(X), m, pl) --> [X], {member(X, [empleados, sueldos])}.
n(n(empleadas), f, pl) --> [empleadas].

v(v(trabaja), sg) --> [trabaja].
v(v(trabajan), pl) --> [trabajan].
vt(vt(cobra), sg) --> [cobra].
vt(vt(cobran), pl) --> [cobran].

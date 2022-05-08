domains
	sno = integer.
	sname = symbol.
	status = integer.
	city = symbol.
	
	pno = integer.
	pname = symbol.
	color = symbol.
	weight = real.
	
	qty = integer.

predicates
	S(sno, sname, status, city).
	P(pno, pname, color, weight, city).
	SP(sno, pno, qty).
	
	SuplierByDetail(Pno, SName).
	SuplierWithOneColoredDetail(Color, Sname).

clauses
	P(1, "Nail", "R", 10.3, "Moscow").
	P(2, "Screw", "R", 15.8, "Ryazan").
	P(3, "Nail", "B", 3.4, "Smolensk").
	
	S(1, "OOO Daisy", 5, "Ryazan").
	S(2, "OOO Ruby", 3, "Krasnogorsk").
	
	SP(1, 1, 4000).
	SP(1, 2, 5000).
	SP(1, 3, 6000).
	SP(2, 1, 1000).
	SP(2, 3, 7000).
	
	SuplierByDetail(Pno, SName) :- S(Sno, Sname, _, _), SP(Sno, Pno, _).
	SuplierWithOneColoredDetail(Color, Sname) :- S(Sno, Sname, _, _), SP(Sno, Pno, _), P(Pno, _, Color, _, _).
	
goal
	%SuplierByDetail(2, SName).
	SuplierWithOneColoredDetail("R", Sname).
	
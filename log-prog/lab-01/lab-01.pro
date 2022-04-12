/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB-01
 FileName: LAB-01.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/
domains
	name, phone_number = symbol.
predicates
	uses_number(name, phone_number).
clauses
	uses_number("Gunnar Diouldeo", "+79796243288").
	uses_number("Cormacc Uga", "+79706262278").
	uses_number("Medousa Linos", "+79481608503").
	uses_number("Xanthe Iphigenia", "+79221170601").
	uses_number("Uga Buga", "+79032678184").
	uses_number("Uga Buga", "+79248234883").
	uses_number("Hector Boreas", "+79279486899").
	uses_number("Nyeat Wyunet", "+79260300582").
	uses_number("Aoide Notos", "+79184098421").
goal
	% uses_number("Uga Buga", X).
	% uses_number("Xanthe Iphigenia", Number).
	% uses_number("Cormacc Uga", "+79706262278").
	uses_number("Nyeat Wyunet", "+00000000000").
	% uses_number("This name is not in the knowledge base", Number).

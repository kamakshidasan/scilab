// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA - Vincent COUVERT <vincent.couvert@inria.fr>
// Copyright (C) 2005-2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
// <-- ENGLISH IMPOSED -->

// <-- Non-regression test for bug 859 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=859
//
// <-- Short Description -->
//    M2SCI convert Matlab expression such as a(n,:)=b(m,:) (with
//    a==[])by a(n,:)=b(m,:) but execution crashes.

MFILECONTENTS=["result=ones(10,10);";
		"m=1;";
		"for h=1:10";
		"  result_bis(m,:) = result(h,:);";
		"  m = m + 1;";
		"end"];

MFILE=TMPDIR+"/bug859.m";
SCIFILE=TMPDIR+"/bug859.sci";

mputl(MFILECONTENTS,MFILE);
mfile2sci(MFILE,TMPDIR);
SCIFILECONTENTS=mgetl(SCIFILE);

SCIFILECONTENTSREF=["";
		"// Display mode";
		"mode(0);";
		"";
		"// Display warning for floating point exception";
		"ieee(1);";
		"";
		"result = ones(10,10);";
		"m = 1;";
		"for h = 1:10";
		"  result_bis(m,1:length(result(h,:))) = result(h,:);";
		"  m = m+1;";
		"end;"];

if or(SCIFILECONTENTSREF<>SCIFILECONTENTS) then pause,end

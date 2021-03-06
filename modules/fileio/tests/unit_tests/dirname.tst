// ============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// ============================================================================
// <-- CLI SHELL MODE -->
// ============================================================================
// Unitary tests for dirname function
// ============================================================================
//
REF = pathconvert(getlongpathname(SCI + '/modules/fileio/macros'), %F);
pathRes = dirname('SCI/modules/fileio/macros/.myfile');
assert_checkequal(pathRes, REF);

REF = pathconvert(getlongpathname(SCI + '/modules/fileio/macros'), %F);
pathRes = dirname('SCI/modules/fileio/macros/poo.sci');
assert_checkequal(pathRes, REF);

REF = pathconvert(getlongpathname(SCI + '/modules/fileio/macros'), %F);
pathRes = dirname('SCI/modules\fileio/macros/poo.sci');
assert_checkequal(pathRes, REF);

REF = pathconvert(getlongpathname(SCI + '/modules/fileio/macros'), %F);
pathRes = dirname('SCI/modules\fileio/macros/poo.sci.k');
assert_checkequal(pathRes, REF);

REF = '.';
pathRes = dirname('');
assert_checkequal(pathRes, REF);

M = ['SCI/modules/fileio/macros/.myfile';
'SCI/modules/fileio/macros/poo.sci';
'SCI/modules\fileio/macros/poo.sci';
'SCI/modules\fileio/macros/poo.sci.k';
'';
'SCI/modules\fileio/macros/.sci'];

REF = pathconvert(getlongpathname(SCI + '/modules/fileio/macros'), %F);
M_REF = [REF;
         REF;
         REF;
         REF;
         '.';
         REF];

assert_checkequal(dirname(M), M_REF);

assert_checkequal(dirname([]), []);

ierr = execstr('dirname(3)','errcatch');
assert_checkequal(ierr, 999);

ierr = execstr('dirname(SCI,%t,1)','errcatch');
assert_checkequal(ierr, 999);

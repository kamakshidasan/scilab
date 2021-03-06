// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 5494 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=5494
//
// <-- Short Description -->
// On Windows 2000, stacksize with the argument 'max' set stack to minimun size if it fails.
// install scilab on windows 2000 with 256 Mo RAM

m = stacksize();
stacksize('max')
ma = stacksize();
if m(1) > ma(1) then pause,end

  
// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 12875 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=12875
//
// <-- Short Description -->
// phasemag returns an error for vector containing zero.

assert_checkequal(phasemag([0 0]), [0 0]);
assert_checkequal(phasemag([%i 0]), [90 0]);
assert_checkequal(phasemag([-%i 0]), [-90 0]);

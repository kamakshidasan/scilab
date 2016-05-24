// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 3159 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=3159
//
// <-- Short Description -->
warning('off')
x = [1 2 3 2 2 3 5 4];
refsx_sort =  [  5.    4.    3.    3.    2.    2.    2.    1. ];
refsi_sort =  [  7.    8.    3.    6.    2.    4.    5.    1. ];
refsx_gsort = [  5.    4.    3.    3.    2.    2.    2.    1. ];
refsi_gsort = [  7.    8.    3.    6.    2.    4.    5.    1. ];

[sx_sort, si_sort] = gsort(x);
[sx_gsort, si_gsort] = gsort(x);

if or(refsx_sort<>sx_sort) then pause,end
if or(refsi_sort<>si_sort) then pause,end

if or(refsx_gsort<>sx_gsort) then pause,end
if or(refsi_gsort<>si_gsort) then pause,end
warning('on')
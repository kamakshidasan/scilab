// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 528 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=528
//
// <-- Short Description -->
//    Bug Report Id: 12711200382914450
//     misleading error message (I think the error means: "hardcoded function cannot be translated in lingo")
//
//    On Scilab CVS with " fun2string()   " function
//    The Error Messages are:
//      -->fun2string(ones)    
//     Warning: obsolete use of eye rand or ones
//                 !       
//
//
//     !--error    44 
//    first argument is incorrect
//    at line      13 of function fun2string               called by :  
//    fun2string(ones)
//
//
//
//    Commands:  fun2string(ones)   
//
//    Enrico SEGRE on Linux version  distribution RH9-i386 with   as window manager
// ...

// exec("bug528.sce")

execstr("fun2string(ones)","errcatch");
if lasterror()<> msprintf(gettext("Wrong first argument.\n")) then pause,end

/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2014 - Scilab Enterprises - Calixte DENIZET
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */
/*--------------------------------------------------------------------------*/
#include "nohistory_browser.h"
#include "Scierror.h"
#include "localization.h"
#ifndef _MSC_VER
#include "scilabmode.h"
#endif
/*--------------------------------------------------------------------------*/
int gw_history_browser(void)
{
#ifndef _MSC_VER
    if (getScilabMode() == SCILAB_NWNI)
    {
        Scierror(999, _("Scilab '%s' module disabled in -nogui or -nwni mode.\n"), "history_browser");
    }
    else
#endif
    {
        Scierror(999, _("Scilab '%s' module not installed.\n"), "history_browser");
    }
    return 0;
}
/*--------------------------------------------------------------------------*/

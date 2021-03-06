/*
* Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
* Copyright (C) DIGITEO - 2010 - Allan CORNET
*
* This file must be used under the terms of the CeCILL.
* This source file is licensed as described in the file COPYING, which
* you should have received as part of this distribution.  The terms
* are also available at
* http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
*
*/

#include <math.h>
#include "machine.h"

/* libf2c does not have C2F(floor) on windows */
/* only used with F2C visual express version */

double C2F(floor)(double *_value)
{
    return floor(*_value);
}

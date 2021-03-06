/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2009 - DIGITEO - Bruno JOFRET
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

package org.scilab.modules.xcos.port.output;

/**
 * An implicit output port is a port where the input characteristic does not
 * imply the transfer of information in an a priori known direction (Output and
 * Input are equivalent).
 *
 * This kind of port are used primarily used on Modelica blocks. In fact the
 * modelica description language has an equality symbol with mathematical
 * meaning.
 */
public class ImplicitOutputPort extends OutputPort {

    private static final long serialVersionUID = 4210196486062437007L;

    /** Default constructor */
    public ImplicitOutputPort() {
        super("ImplicitOutputPort");
    }

    /** @return always Type.IMPLICIT */
    @Override
    public Type getType() {
        return Type.IMPLICIT;
    }
}

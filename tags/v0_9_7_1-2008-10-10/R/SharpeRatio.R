`SharpeRatio` <-
function (Ra, rf = 0)
{ # @author Peter Carl

    # DESCRIPTION:
    # The Sharpe ratio is simply the return per unit of risk (represented by
    # variability).  The higher the Sharpe ratio, the better the combined
    # performance of "risk" and return.

    # The Sharpe Ratio is a risk-adjusted measure of return that uses
    # standard deviation to represent risk.

    # Inputs:
    # R: in this case, the function anticipates having a return stream as input,
    #    rather than prices.
    # rf: the risk free rate MUST be in the same periodicity as the data going in.

    # Outputs:
    # This function returns a Sharpe ratio for the same periodicity of the
    # data being input (e.g., monthly data -> monthly SR)

    # FUNCTION:

    Ra = checkData(Ra, method = "zoo")
    Ra.excess = Return.excess(Ra, rf)
    return(mean(Ra.excess)/sd(Ra.excess))

}

###############################################################################
# R (http://r-project.org/) Econometrics for Performance and Risk Analysis
#
# Copyright (c) 2004-2008 Peter Carl and Brian G. Peterson
#
# This library is distributed under the terms of the GNU Public License (GPL)
# for full details see the file COPYING
#
# $Id: SharpeRatio.R,v 1.7 2008-06-02 16:05:19 brian Exp $
#
###############################################################################
# $Log: not supported by cvs2svn $
# Revision 1.6  2007/07/12 21:45:09  brian
# -calculate stddev on excess return to account for a rf series, per Sharpe paper
#
# Revision 1.5  2007/04/09 03:45:04  peter
# - uses checkData
# - uses Return.excess
#
# Revision 1.4  2007/03/12 15:34:43  brian
# - add equations to documentation
# - standardize on Ra for Returns of asset
#
# Revision 1.3  2007/03/04 01:05:24  brian
# - simplify code because NA's are taken care of in checkDataVector
#
# Revision 1.2  2007/02/07 13:24:49  brian
# - fix pervasive comment typo
#
# Revision 1.1  2007/02/02 19:06:15  brian
# - Initial Revision of packaged files to version control
# Bug 890
#
###############################################################################
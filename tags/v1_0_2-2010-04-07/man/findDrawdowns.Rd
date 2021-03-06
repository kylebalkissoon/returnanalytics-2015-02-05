\name{findDrawdowns}
\alias{findDrawdowns}
\alias{Drawdowns}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Find the drawdowns and drawdown levels in a timeseries. }
\description{
\code{findDrawdowns} will find the starting period, the ending period, and the amount and length of the drawdown.

Often used with \code{\link{sortDrawdowns}} to get the largest drawdowns.

\code{Drawdowns} will calculate the drawdown levels as percentages, for use in \code{\link{chart.Drawdown}}.
}
\usage{
findDrawdowns(R, geometric = TRUE, ...)
Drawdowns(R, geometric = TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{R}{ an xts, vector, matrix, data frame, timeSeries or zoo object of asset returns }
  \item{geometric}{ generate geometric (TRUE) or simple (FALSE) returns, default TRUE }
  \item{\dots}{ any other passthru parameters }
}
\details{
Returns an unordered list: \cr
\itemize{
  \item{return }{depth of drawdown}
  \item{from }{starting period}
  \item{to }{ending period}
  \item{length }{length in periods}
}
}
\references{
Bacon, C. \emph{Practical Portfolio Performance Measurement and Attribution}. Wiley. 2004. p. 88 \cr

}
\author{
Peter Carl

\code{findDrawdowns} modified with permission from function by Sankalp Upadhyay
}
\seealso{
    \code{\link{sortDrawdowns}} \cr
    \code{\link{maxDrawdown}} \cr
    \code{\link{sortDrawdowns}} \cr
    \code{\link{table.Drawdowns}} \cr
    \code{\link{table.DownsideRisk}} \cr
    \code{\link{chart.Drawdown}} \cr

}
\examples{
data(edhec)
findDrawdowns(edhec[,"Funds of Funds", drop=FALSE])
sortDrawdowns(findDrawdowns(edhec[,"Funds of Funds", drop=FALSE]))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ts }
\keyword{ multivariate }
\keyword{ distribution }
\keyword{ models }
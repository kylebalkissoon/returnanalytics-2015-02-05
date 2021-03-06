\name{chart.VaRSensitivity}
\alias{chart.VaRSensitivity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ show the sensitivity of Value-at-Risk estimates }
\description{
Creates a chart of Value-at-Risk estimates by confidence interval for multiple methods.
}
\usage{
chart.VaRSensitivity(R, methods = c("GaussianVaR", "ModifiedVaR", "HistoricalVaR"), clean = c("none", "boudt"), elementcolor = "darkgray", reference.grid = TRUE, xlab = "Confidence Level", ylab = "Value at Risk", type = "l", lty = c(1, 2, 4), lwd = 1, colorset = (1:12), pch = (1:12), legend.loc = "bottomleft", cex.legend = 0.8, main = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{R}{ a vector, matrix, data frame, timeSeries or zoo object of asset returns }
  \item{methods}{ one or more calculation methods indicated "GaussianVaR", "ModifiedVaR", "HistoricalVaR".  See \code{\link{VaR.CornishFisher}} for more detail. }
  \item{clean} { method for data cleaning through \code{\link{Return.clean}}.  Current options are "none" or "boudt". }
  \item{elementcolor}{ the color used to draw chart elements. The default is "darkgray" }
  \item{reference.grid}{ if true, draws a grid aligned with the points on the x and y axes }
  \item{ylab}{ set the y-axis label, same as in \code{\link{plot}} }
  \item{xlab}{ set the x-axis label, same as in \code{\link{plot}} }
  \item{type}{ set the chart type, same as in \code{\link{plot}} }
  \item{lty}{ set the line type, same as in \code{\link{plot}} }
  \item{lwd}{ set the line width, same as in \code{\link{plot}} }
  \item{colorset}{ color palette to use, set by default to rational choices }
  \item{pch}{ symbols to use, see also \code{\link{plot}} }
  \item{legend.loc}{ places a legend into one of nine locations on the chart: bottomright, bottom, bottomleft, left, topleft, top, topright, right, or center. }
  \item{cex.legend}{ The magnification to be used for sizing the legend relative to the current setting of 'cex'.  }
  \item{main}{ set the chart title, same as in \code{\link{plot}} }
  \item{\dots}{ any other passthru parameters }
}
\details{
  This chart shows estimated VaR along a series of confidence intervals for selected calculation methods.  Useful for comparing a method to the historical VaR calculation.
}
\references{ Boudt, K., Peterson, B. G., Croux, C., 2008. Estimation
and Decomposition of Downside Risk for Portfolios with Non-Normal Returns. Journal of
Risk, forthcoming. }
\author{ Peter Carl }
\note{ 
}
\seealso{ \code{\link{VaR.CornishFisher}} }
\examples{
data(managers)
chart.VaRSensitivity(managers[,1,drop=FALSE], methods=c("HistoricalVaR", "ModifiedVaR", "GaussianVaR"), colorset=bluefocus, lwd=2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ts }
\keyword{ multivariate }
\keyword{ distribution }

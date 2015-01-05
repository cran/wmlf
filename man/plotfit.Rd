\name{plotfit-method}
\alias{plotfit,Leader-method}
\alias{plotfit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Displays the scales indicators to estimate hmin , c1 and c2}
\description{
Displays graphics to choose the range of scales for estimating hmin, c1 and c2. If the analysis is limited , this function only displays the graph of the logarithm of the maximum wavelet decomposition by scales. If this curve is descending, it is essential to integrate the image.
}
\usage{\S4method{plotfit}{Leader}(object)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{A object of "Leader" class}
 }

\references{
Herwig Wendt, Stephane Roux, Stephane Jaffard, Patrice Abry. Wavelet leaders and bootstrap
for multifractal analysis of images. Signal Processing, Elsevier, 2009, 6 (89), pp.1100-1114.
}
\author{
Francois Semecurbe
}

\examples{
library(wmlf)
data(bocage)
l_b=leader(bocage,frac=1,full=TRUE)
plotfit(l_b)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

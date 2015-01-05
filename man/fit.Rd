\name{fit-method}
\alias{fit,Leader-method}
\alias{fit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute the multifractal indicators hmin, c1 and c2
}
\description{
This function estimates the multifractal indicators of an image. It takes as input a class object "leader" and a range of scales and returns a vector containing hmin, c1 and c2 .

Concretely the function fit uses "df.mf" slot and performs a linear regression of hmin, c1 and c2 columns on the choosen scales.
hmin characterizes the uniform smoothness of the image, c1 corresponds to the value of h where L(h) is maximal, and c2 explains the strength
of the multifractality. hmin and c1 are positive and c2 negative. The multifractal spectrum is approximated by : \deqn{L(h) = 2 + \frac{c_2}{2}(\frac{h-c_1}{c_2})^2}{%
  L(h) = 2 + c2/2 ((h-c1)/c2)^2}
hmin is the minimum value of h such that L(h) is greater than 0.
To make comparable analyzes , we substract frac to c1.

If the analysis is limited, we get only hmin. If the estimate of hmin is negative, strictly speaking one should repeat the analysis with an index of fractional integration "frac" greater than -hmin. hmin, t1 and t2 are calculated on the original wavelet coefficients (without the fractional integration).
}
\usage{
\S4method{fit}{Leader}(object,scales)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{ A object of "Leader" class
}
  \item{scales}{ The scales of range of the estimate. This range must be contained in 1:J 
}
}

\value{ A vector containing 1 (hmin) or 3 (hmin,c1,c2) values.
}
\references{
Herwig Wendt, Stephane Roux, Stephane Jaffard, Patrice Abry. Wavelet leaders and bootstrap
for multifractal analysis of images. Signal Processing, Elsevier, 2009, 6 (89), pp.1100-1114.

Patrice Abry, Herwig Wendt, Stephane Jaffard. When Van Gogh meets Mandelbrot: Multifractal Classification of Painting's Texture. Signal Processing, Elsevier, 2013, 93 (3), pp.554-572.

}
\author{
Francois Semecurbe
}


\examples{
library(wmlf)
data(bocage)
l_b=leader(bocage,frac=1,full=TRUE)
fit(l_b,2:5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

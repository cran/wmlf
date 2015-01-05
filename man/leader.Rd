\name{leader}
\alias{leader}
\alias{Leader-class}
\alias{wmlf-package}
\alias{$,Leader-method}
\alias{[,Leader-method}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculating the wavelet leaders decomposition of a square matrix 
}
\description{
This function calculates the wavelet decomposition leaders of a square matrix . Concretely , the output function returns a 'Leader' class object that allows calculations hmin , c1 and c2 . These indicators can then be used to discriminate, classify, study the image.

%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
leader(image, wf="d6",frac = 0, full = T, energy=F) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{image}{
a square matrix representing the image in gray level to analyze
}
\item{wf}{name of the wavelet filter to use in the decomposition. By default, "d6" is used  . "d6" has 3 vanishing moments which implies that it is orthogonal to polynomials of degree 2. Only "d4", "d6" and "d8" are available.}
\item{frac}{Index of fractional integration}
\item{full}{boolean indicating whether the analysis is complete , or if it is limited to the wavelet decomposition. The full analysis (TRUE) enables the estimation of hmin , c1 and c2. The limited analysis (FALSE ) estimates hmin and determines the index of fractional integration.}
\item{energy}{boolean indicating whether the indicators t1 and t2 are calculated. t1 is the logarithm of the sum of wavelet coefficients, t2 is the logarithm of the sum of wavelet coefficients. t2 is related to energy.  }
}

\value{

leader returns an object of class "Leader". An object of class "Leader" is a list containing the following components :
\item{dwtn}{The wavelet decomposition . This decomposition preserves only the maximum absolute value for the detailed breakdown HL , LH and HH for each pixel}
\item{leader}{wavelet leaders decomposition}
\item{J}{The number of scale of the wavelet decomposition. This number is equal to the number of significant scales.}
\item{frac}{Index of fractional integration}
\item{full}{boolean indicating whether the analysis is complete or limited}
\item{full}{boolean indicating whether the analysis is complete or limited}
\item{df.mf}{Data frame containing the indicators by scales of analysis allowing calculation of hmin , c1 and c2}

The access to the components is done with : objet$component and object["component""]. 
}
\references{
Herwig Wendt, Stephane Roux, Stephane Jaffard, Patrice Abry. Wavelet leaders and bootstrap
for multifractal analysis of images. Signal Processing, Elsevier, 2009, 6 (89), pp.1100-1114.
}
\author{
Francois Semecurbe
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{plotfit}}
}
\examples{
library(wmlf)
data(bocage)
l_b=leader(bocage,full=FALSE)
plotfit(l_b) 

l_b=leader(bocage,frac=1,full=TRUE)
plotfit(l_b)
fit(l_b,2:5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

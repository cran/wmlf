\name{bocage}
\alias{bocage}
\docType{data}
\title{An orthophoto of bocage country near Nantes in France}
\description{An orthophto of bocage country near Nantes in France in 2012 with a pixel size of 5m.
}
\usage{data("bocage")}
\format{
A matrix with 512 rows and 512 colomns.
}
\source{
BD ORTHO 5 m - Institut national de l'information geographique et forestiere

Original data can be retreived here (page reached on 2014-08-01):
http://professionnels.ign.fr/bdortho-5m
}

\examples{
library(wmlf)
data(bocage)
l_b=leader(bocage,frac=1,full=TRUE)
fit(l_b,2:5)

}
\keyword{datasets}

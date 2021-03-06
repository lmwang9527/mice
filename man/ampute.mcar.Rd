% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ampute.mcar.R
\name{ampute.mcar}
\alias{ampute.mcar}
\title{Multivariate Amputation In A MCAR Manner}
\usage{
ampute.mcar(P, patterns, prop)
}
\arguments{
\item{P}{A vector containing the pattern numbers of the cases's candidacies. 
For each case, a value between 1 and #patterns is given. For example, a 
case with value 2 is candidate for missing data pattern 2.}

\item{patterns}{A matrix of size #patterns by #variables where \code{0} indicates 
a variable should have missing values and \code{1} indicates a variable should 
remain complete. The user may specify as many patterns as desired. One pattern 
(a vector) is also possible. Could be the result of \code{\link{ampute.default.patterns}}, 
default will be a square matrix of size #variables where each pattern has missingness 
on one variable only.}

\item{prop}{A scalar specifying the proportion of missingness. Should be a value 
between 0 and 1. Default is a missingness proportion of 0.5.}
}
\value{
A list containing vectors with \code{0} if a case should be made missing 
and \code{1} if a case should remain complete. The first vector refers to the 
first pattern, the second vector to the second pattern, etcetera.
}
\description{
This function creates a missing data indicator for each pattern, based on a MCAR 
missingness mechanism. The function is used in the multivariate amputation function 
\code{\link{ampute}}.
}
\seealso{
\code{\link{ampute}}
}
\author{
Rianne Schouten, 2016
}

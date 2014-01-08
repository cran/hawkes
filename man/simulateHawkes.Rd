\name{simulateHawkes}
\alias{simulateHawkes}

\title{
Hawkes process simulation Function
}
\description{
The function simulates a Hawkes process for the given parameter, and until a time horizon.
}
\usage{
simulateHawkes(lambda0, alpha, beta, horizon)
}

\arguments{
  \item{lambda0}{Vector of initial intensity, a scalar in the monovariate case.}
  \item{alpha}{Matrix of excitation, a scalar in the monovariate case. Excitation values are all positive.}
  \item{beta}{Vector of betas, a scalar in the monovariate case.}
  \item{horizon}{Time horizon until which the simulation is to be conducted.}
}
\details{
Notice that in the scalar case, one must have beta>alpha for the process to be stable, and in the multivariate case, the matrix (diag(beta)-alpha) must have eigen values with strictly positive real parts for the process to be stable.
}
\value{
Returns a vector of jump times in the monovariate case, and a list of such vectors for every component in the multivariate case.

}
\references{
Y. Ogata. (1981)
On Lewis simulation method for point processes.
\emph{IEEE Transactions on Information Theory}, \bold{31}
}

\examples{
#One dimensional Hawkes process
lambda0<-0.02
alpha<-0.05
beta<-0.06
horizon<-3600#one hour
h<-simulateHawkes(lambda0,alpha,beta,horizon)

#Multivariate Hawkes process
lambda0<-c(0.02,0.02)
alpha<-matrix(c(0.05,0,0,0.05),byrow=TRUE,nrow=2)
beta<-c(0.06,0.06)
horizon<-3600#one hour
h<-simulateHawkes(lambda0,alpha,beta,horizon)
}

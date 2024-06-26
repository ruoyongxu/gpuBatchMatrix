% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/backsolve.R
\name{backsolveBatch}
\alias{backsolveBatch}
\title{backsolveBatch}
\usage{
backsolveBatch(
  C,
  A,
  B,
  numbatchB,
  diagIsOne,
  Nglobal,
  Nlocal,
  NlocalCache,
  Cstartend,
  Astartend,
  Bstartend,
  verbose = FALSE
)
}
\arguments{
\item{C}{an object of class 'vclMatrix'}

\item{A}{an object of class 'vclMatrix', with upper triangular values 0}

\item{B}{an object of class 'vclMatrix', consists of batches of rectangular matrices.}

\item{numbatchB}{number of batches in B. If 1, B uses a single matrix for all matrix batches in A.}

\item{diagIsOne}{a logical value, if TRUE, all the diagonal entries in matrices in A are 1.}

\item{Nglobal}{Size of the index space for use.}

\item{Nlocal}{Work group size of the index space.}

\item{NlocalCache}{an integer specifying amount of local memory to cache.}

\item{Cstartend}{a vector that selects the range of C, c(startrow, numberofrows, startcolumn, numberofcols), row starts from 0.}

\item{Astartend}{a vector that selects the range of A.}

\item{Bstartend}{a vector that selects the range of B.}

\item{verbose}{a logical value, if TRUE, print extra information, default is FALSE.}
}
\value{
returns nothing, this function modifies the input "vclMatrix" C in place.
}
\description{
Solve A * C = B for C on a GPU, where A, B and C are batches of square matrices of class 'vclMatrix'.
}
\note{
result matrices are stored in C, no returned objects.
}

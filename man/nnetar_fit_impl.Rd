% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsnip-nnetar_reg.R
\name{nnetar_fit_impl}
\alias{nnetar_fit_impl}
\title{Low-Level NNETAR function for translating modeltime to forecast}
\usage{
nnetar_fit_impl(
  x,
  y,
  period = "auto",
  p = 1,
  P = 1,
  size = 10,
  repeats = 20,
  decay = 0,
  maxit = 100,
  ...
)
}
\arguments{
\item{x}{A dataframe of xreg (exogenous regressors)}

\item{y}{A numeric vector of values to fit}

\item{period}{A seasonal frequency. Uses "auto" by default. A character phrase
of "auto" or time-based phrase of "2 weeks" can be used if a date or date-time variable is provided.}

\item{p}{Embedding dimension for non-seasonal time series. Number of
non-seasonal lags used as inputs. For non-seasonal time series, the default
is the optimal number of lags (according to the AIC) for a linear AR(p)
model. For seasonal time series, the same method is used but applied to
seasonally adjusted data (from an stl decomposition).}

\item{P}{Number of seasonal lags used as inputs.}

\item{size}{Number of nodes in the hidden layer. Default is half of the
number of input nodes (including external regressors, if given) plus 1.}

\item{repeats}{Number of networks to fit with different random starting
weights. These are then averaged when producing forecasts.}

\item{decay}{Parameter for weight decay. Default 0.}

\item{maxit}{Maximum number of iterations. Default 100.}

\item{...}{Additional arguments passed to \code{forecast::nnetar}}
}
\description{
Low-Level NNETAR function for translating modeltime to forecast
}
\keyword{internal}

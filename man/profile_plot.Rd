% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/profile_plot.R
\name{profile_plot}
\alias{profile_plot}
\title{Generate likelihood profiles plots
To be called from the run_diagnostics function after creating
the model settings using the get_settings function.}
\usage{
profile_plot(mydir, model_settings, rep, vec, para, profilesummary)
}
\arguments{
\item{mydir}{Directory where model files are located.}

\item{model_settings}{input of all settings created using the get_settings function}

\item{rep}{base model outpus}

\item{vec}{vector of value that were profiled over}

\item{para}{parameter name SS control.ss_new expected parameter name}

\item{profilesummary}{output from [r4ss::SSsummarize()]}
}
\description{
Generate likelihood profiles plots
To be called from the run_diagnostics function after creating
the model settings using the get_settings function.
}
\author{
Chantel Wetzel.
}

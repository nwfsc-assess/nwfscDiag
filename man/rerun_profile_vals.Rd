% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rerun_profile_vals.R
\name{rerun_profile_vals}
\alias{rerun_profile_vals}
\title{Generate likelihood profiles
To be called from the run_diagnostics function after creating
the model settings using the get_settings function.}
\usage{
rerun_profile_vals(mydir, para_name, run_num, data_file_nm)
}
\arguments{
\item{mydir}{Directory location and name of the base model.  The code takes this
directory location and combined with the para_name function input locates the folder
for the profile that is going to be modified. 
Example - mydir = file.path("C:/my_models", "base_model")}

\item{para_name}{SS parameter name that the profile was run across. This is used to 
located the correct folder combined with the mydir function input (e.g. paste0(mydir, "_profile_", para_name))}

\item{run_num}{A single or vector of run numbers that you would like to rerun for convergence.
This input needs to match the run number for the original profile (e.g., Report6.sso) that
you would like to rerun.}

\item{data_file_nm}{SS data file name}
}
\description{
Generate likelihood profiles
To be called from the run_diagnostics function after creating
the model settings using the get_settings function.
}
\author{
Chantel Wetzel.
}

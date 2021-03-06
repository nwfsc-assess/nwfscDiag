% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_settings_profile.R
\name{get_settings_profile}
\alias{get_settings_profile}
\title{Get Default Settings For Profiles}
\usage{
get_settings_profile(
  parameters = c("NatM_p_1_Fem_GP_1", "SR_BH_steep", "SR_LN(R0)"),
  low = c(0.4, 0.25, -2),
  high = c(0.4, 1, 2),
  step_size = c(0.005, 0.05, 0.25),
  param_space = c("multiplier", "real", "relative")
)
}
\arguments{
\item{parameters}{vector of SS parameter names to conduct a profile for}

\item{low}{a vector of low paramater bounds for the profile}

\item{high}{a vector of upper parameter bounds for the profile}

\item{step_size}{increments to run the profile between the low and high bounds}

\item{param_space}{options: real, mulitplier, relative indicates how to interpret the low and high bound values.
real indicates bounds in the parameter space, relative indicates how far to go from the base parameter, and
multiplier indicates that low and high bounds are set at x\% above and below the base parameter.}
}
\value{
A matrix of low, high, and step size values for the default parameters
that should be profiled. The goal is to provide users with a template
to add additional rows for parameters that they want to profile beyond
the default ones.
}
\description{
Create a matrix of default values for profiling over
the typical parameters given results will be presented to the
Pacific Fisheries Management Council.
}
\details{
The column titled 'param_space' indicated where the range of of the profile parameter
should be interpretted as relative to the base model estimate vs. across a pre-specified range.
An example is for R0 where the default setting below indicates that the param_space is relative
where the low bound for the profile is set = base model log(R0) - 2 and high = base model log(R0) + 2.
The default range for M is set as a multiplier to explore a range of (M - 0.40 * M) - (M + 0.40 * M) 
at a step size of 0.005. This range may be too large (or small) with a step size too large (or too small)
and should be considered if the default settings are appropriate for your specific model. The default setting
for steepness is in 'real' space which means that the low and high is in the same parameter space as the 
parameter. A user can select any of the options for specifying a parameter range for any parameter.
}
\examples{
\dontrun{

# Define each parameter in real space
get_settings_profile( parameters =  c("NatM_p_1_Fem_GP_1", "SR_BH_steep", "SR_LN(R0)"),

# Example 2: Run a profile for natural mortality alone
get_settings_profile( parameters =  c("NatM_p_1_Fem_GP_1"),
					 low =  c(0.40),
					 high = c(0.40),
					 step_size = c(0.005),
					 param_space = c('multiplier')) 
}

}
\author{
Chantel Wetzel & Kelli Johnson
}

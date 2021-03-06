% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create-manifest-explore-univariate.R
\name{create_manifest_explore_univariate}
\alias{create_manifest_explore_univariate}
\title{Create a manifest for exploring univariate patterns.}
\usage{
create_manifest_explore_univariate(
  d_observed,
  write_to_disk = TRUE,
  path_out = getwd(),
  overwrite_file = FALSE,
  default_class_graph = c(numeric = "histogram_continuous", integer =
    "histogram_continuous", factor = "histogram_discrete", character =
    "histogram_discrete", notMatched = "histogram_generic"),
  default_format = c(numeric = "scales::comma", notMatched = "scales::comma"),
  bin_count_suggestion = 30L
)
}
\arguments{
\item{d_observed}{The \code{data.frame} to create metadata for.}

\item{write_to_disk}{Indicates if the meta-dataset should be saved as a CSV.}

\item{path_out}{The file path to save the meta-dataset.}

\item{overwrite_file}{Indicates if the CSV of the meta-dataset should be overwritten if a file already exists at the location.}

\item{default_class_graph}{A \code{character} array indicating which graph should be used with variables of a certain class.}

\item{default_format}{A \code{character} array indicating which formatting function should be displayed on the axis of the univariate graph.}

\item{bin_count_suggestion}{An \code{integer} value of the number of roughly the number bins desired for a histogram.}
}
\value{
Returns a \code{data.frame} where each row in the metadata represents a column in \code{d_observed}.
The metadata contains the following columns
\enumerate{
\item{\code{variable_name} The variable name (in \code{d_observed}). \code{character}.}
\item{\code{remark} A blank field that allows theuser to enter notes in the CSV for later reference.}
\item{\code{class} The variable's \code{\link{class}} (eg, numeric, Date, factor).  \code{character}.}
\item{\code{should_graph} A boolean value indicating if the variable should be graphed. \code{logical}.}
\item{\code{graph_function} The name of the function used to graph the variable. \code{character}.}
\item{\code{x_label_format} The name of the function used to format the \emph{x}-axis. \code{character}.}
\item{\code{bin_width} The uniform width of the bins. \code{numeric}.}
\item{\code{bin_start} The location of the left boundary of the first bin. \code{numeric}.}
}
}
\description{
This function creates a meta-dataset (from the \code{data.frame} passed as a parameter)
and optionally saves the meta-dataset as a CSV.  The meta-dataset specifies how the variables
should be plotted.
}
\examples{

create_manifest_explore_univariate(datasets::InsectSprays, write_to_disk=FALSE)

#Careful, the first column is a `ts` class.
create_manifest_explore_univariate(datasets::freeny, write_to_disk=FALSE)
}
\keyword{explore}

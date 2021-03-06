% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/commonutils.R
\name{bpCent}
\alias{bpCent}
\title{Biplot of a Cluster Analysis Function}
\usage{
bpCent(pc, clsAsgn, data.pts = TRUE, centroids = TRUE, choices = 1:2,
  scale = 1, pc.biplot = FALSE, var.axes = TRUE, col = palette()[1:2],
  cex = rep(par("cex"), 2), xlabs = NULL, ylabs = NULL, expand = 1,
  xlim = NULL, ylim = NULL, arrow.len = 0.1, main = NULL, sub = NULL,
  xlab = NULL, ylab = NULL, ...)
}
\arguments{
\item{pc}{The prcomp object of the data used in clustering.}

\item{clsAsgn}{A vector containing the cluster assignment for each record in
the clustering data.}

\item{data.pts}{If TRUE the point for each record is plotted.}

\item{centroids}{If TRUE the centroid for each cluster is plotted.}

\item{choices}{length 2 vector specifying the components to plot.}

\item{scale}{The variables scaled by lambda ^ scale and the observations are
scaled by lambda ^ (1-scale), where lambda are the eigen values of the
principal components solution. scale should be between 0 and 1.}

\item{pc.biplot}{If true, then lambda = 1 and the observations are are scaled
up the sqrt(n) and the variables scaled down by sqrt(n). In this case the
inner product between variables approximate covariances, and the distances
between observations approximate Mahalanobis distance. Gabriel refers to
this as a "principal component biplot".}

\item{var.axes}{If TRUE the second set of points have arrows representing
them as (unscaled) axes.}

\item{col}{A vector of length 2 giving the colours for the first and second
set of points respectively (and the corresponding axes). If a single colour
is specified it will be used for both sets. If missing the default colour
is looked for in the palette: if there it and the next colour as used,
otherwise the first two colours of the paletter are used.}

\item{cex}{The character expansion factor used for labelling the points. The
labels can be of different sizes for the two sets by supplying a vector of
length two.}

\item{xlabs}{A vector of character strings to label the first set of points:
the default is to use the row dimname of x, or 1:n is the dimname is NULL.}

\item{ylabs}{A vector of character strings to label the second set of points: the default is to use the row dimname of y, or 1:n is the dimname is NULL.}

\item{expand}{An expansion factor to apply when plotting the second set of points relative to the first. This can be used to tweak the scaling of the two sets to a physically comparable scale.}

\item{xlim}{Limits for the x axis in the units of the first set of variables.}

\item{ylim}{Limits for the y axis in the units of the first set of variables.}

\item{arrow.len}{The length of the arrow heads on the axes plotted in var.axes is true. The arrow head can be suppressed by arrow.len = 0.}

\item{main}{graphical parameter}

\item{sub}{graphical parameter}

\item{xlab}{graphical parameter}

\item{ylab}{graphical parameter}

\item{...}{graphical parameters}
}
\description{
The bpCent function is from Dan Putler's BCA package, and is included here to avoid
the need of loading the Rcmdr package (with its GUI). The function creates a biplot
of a cluster analysis solution.
}
\author{
Dan Putler
}


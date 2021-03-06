% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layer.R
\docType{class}
\name{layer-class}
\alias{layer-class}
\alias{layer}
\title{Layer}
\description{
A reference class object for one layer of computation in a network object.
}
\details{
__
}
\section{Fields}{

\describe{
\item{\code{coef.dim}}{a length-two integer vector}

\item{\code{weights}}{a matrix of real numbers}

\item{\code{biases}}{a numeric vector containing the intercept for each node}

\item{\code{nonlinearity}}{a \code{\link{nonlinearity}} object}

\item{\code{prior}}{a \code{\link{prior}} object}

\item{\code{inputs}}{a numeric array with the input activity to each
node in response to each example, for each Monte Carlo sample}

\item{\code{outputs}}{a numeric array with the transformed activations for each 
node in response to each example, for each Monte Carlo sample}

\item{\code{error.grads}}{a numeric array}

\item{\code{weighted.bias.grads}}{a numeric vector}

\item{\code{weighted.llik.grads}}{a numeric matrix}

\item{\code{coef.updater}}{an \code{\link{updater}} object}
}}

\section{Methods}{

\describe{
\item{\code{backwardPass(incoming.error.grad, sample.num)}}{Calculate error.grads for one sample}

\item{\code{combineSampleGrads(inputs, weights, n.importance.samples)}}{update weighted.llik.grads and weighted.bias.grads based on importance 
weights and gradients from backpropagation}

\item{\code{forwardPass(input, sample.num)}}{Update inputs and outputs for one sample}

\item{\code{resetState(n.minibatch, n.importance.samples)}}{Reset inputs, outputs, and error.grads to NA;
alter the minibatch size and number of importance samples if desired}

\item{\code{updateCoefficients(dataset.size, n.minibatch)}}{Calculate coef.delta and add it to weights. Update biases}
}}

\seealso{
\code{\link{network}}
}

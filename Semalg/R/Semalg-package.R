#' Semalg: A Simple Word-Based Sentiment Analysis Package
#'
#' @description
#' Semalg is an R package for identifying positive and negative words
#' in text documents and calculating a positive-to-negative word ratio.
#'
#' @details
#' The package contains three main functions:
#'
#' \describe{
#'   \item{read_text()}{Reads a text file and prepares it for sentiment
#'   analysis by converting the text to lowercase, removing punctuation,
#'   and separating the text into individual words.}
#'   \item{compare_words()}{Counts the occurrences of words from a
#'   specified word list in a document. It supports exact word matching
#'   and prefix matching using the wildcard character '*'.}
#'   \item{sentiment_score()}{Counts positive and negative word matches
#'   and calculates the ratio of positive to negative matches.}
#' }
#'
#' The sentiment ratio is interpreted as follows:
#' A ratio below 1 indicates more negative than positive word matches.
#' A ratio equal to 1 indicates equal numbers of positive and negative
#' matches, while a ratio above 1 indicates more positive than negative
#' matches. If there are no negative matches, the ratio is returned as NA.
#'
#' The package includes predefined positive and negative word lists
#' that can be used for sentiment analysis. Users can also provide
#' their own word lists or modify the existing lists to suit their
#' specific analysis.
#'
#' @keywords internal
"_PACKAGE"

#' Compare words
#'
#' Counts how many words from a positive or negative word list
#' appear in the text of the document.
#'
#' @param words A character vector containing words from a document.
#' @param word_list A character vector containing positive or negative words.
#'
#' @returns The number of matching words.
#' @export
#'
#' @examples words <- c("nauseous", "nauseated", "happy")
#' compare_words(words, c("nause*"))
#'
compare_words <- function(words, word_list) {

  matches <- 0

  for (word in word_list) {

    if (endsWith(word, "*")) {
      prefix <- sub("\\*$", "", word)
      matches <- matches + sum(startsWith(words, prefix))
    } else {
      matches <- matches + sum(words == word)
    }

  }

  return(matches)
}

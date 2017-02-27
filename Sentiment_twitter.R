#init

libs <- c("tm", "plyr", "class")
lapply(libs, require, character.only = TRUE)

#set options
options(stringsAsFactors = FALSE)

#clean text

cleanCorpus <- function(corpus) {
  corpus.tmp <- tm_map(corpus, removePunctuation)
  corpus.tmp <- tm_map(corpus.tmp, stringWhitespaces)
  corpus.tmp <- tm_map(corpus.tmp, tolower)
  corpus.tmp <- tm_map(corpus.tmp, removeWords, stopwords("english"))
  return(corpus.tmp)
}

#attach name

#stack

#hold out

#model-knn
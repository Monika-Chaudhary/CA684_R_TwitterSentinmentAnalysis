#Register Application Program Interface(API) using twitter account

api_key <- '8888888888'
api_secret <- '8888888888888888888888888888J'
access_token <- '888888888888888888888888888888888'
access_token_secret <- '8888888888888888888888888888888888888888'

#Load library
library(twitteR)
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

#Getting tweets
tweets <- searchTwitter('$aapl', n=50, lang = 'en' )
tweets
tweetsdf <- twListToDF(tweets)
write.csv(tweetsdf, file="tt.csv", row.names=F)
apple <- read.csv("tt.csv")
View(apple)
  

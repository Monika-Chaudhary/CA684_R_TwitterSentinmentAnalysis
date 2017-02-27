#Register Application Program Interface(API) using twitter account

api_key <- 'PTGoCj8ZogwNbWl2ANmEpORlT'
api_secret <- 'ZYcRNIN5meYbs9hPQLrTWD1F1JjrFFEtmWKQagidRpwcUkzMAJ'
access_token <- '809806667533709312-L162WLykq4evp7ToTcUsKj3eoM6eJm1'
access_token_secret <- 'qXCqBiANxaepMiEHd0BTckGKNablVsaaRXjJqUCZm1qqg'

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
  
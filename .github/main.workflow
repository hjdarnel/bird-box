workflow "Update gist with latest tweet" {
  resolves = ["update-gist"]
  on = "schedule(*/10 * * * *)"
}

action "update-gist" {
  uses = "matchai/bird-box@master"
  env = {
    "TWITTER_USER" = "hjdarnel"
    "GIST_ID" = "906c7a8513509a5a3b3fe9297d8f5a10"
  }
  secrets = [
    "GH_TOKEN",
    "TWITTER_CONSUMER_KEY",
    "TWITTER_CONSUMER_SECRET",
    "TWITTER_ACCESS_TOKEN_KEY",
    "TWITTER_ACCESS_TOKEN_SECRET",
  ]
}

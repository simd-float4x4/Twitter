import Foundation

class Tweet {
    let id: Int
    let user: [User]
    let content: String
    let createdAt: Date
    let retweetCount: Int
    let favoriteCount: Int
    
    init(tweetId: Int, tweetUser: [User], tweetContent: String, tweetCreatedAt: Date, tweetRetweetCount: Int, tweetFavoriteCount: Int){
        id = tweetId
        user = tweetUser
        content = tweetContent
        createdAt = tweetCreatedAt
        retweetCount = tweetRetweetCount
        favoriteCount = tweetFavoriteCount
    }
}

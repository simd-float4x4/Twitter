import Foundation

class generateSampleTweetData {
    var user = generateSampleUserData()
    var userData = [User]()
    var tweetData = [Tweet]()
    
    init(){
        for h in 0 ..< user.userData.count {
            userData.append(user.userData[h])
        }
        for i in 0 ..< user.userData.count {
            let tweetString = "てをにはがへ、。私僕君するしたい大学会社工医理工商経営済学部年生abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789今日何してる？！.人場所行く来る電話国#アニメ鑑賞オタク"
            var tweetRandomContent = ""
            for _ in 1 ..< 100 {
                    tweetRandomContent += String(tweetString.randomElement()!)
            }
            
            let tweet =
            Tweet(
                tweetId: i,
                tweetUser: userData[i],
                tweetContent: tweetRandomContent,
                tweetCreatedAt: Date(),
                tweetRetweetCount: 0,
                tweetFavoriteCount: 0
            )
            tweetData.append(tweet)
        }
        
    }
}

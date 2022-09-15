import Foundation

class generateSampleUserData {
    var userData = [User]()
   
    init(){
        for i in 1 ..< 10 {
            let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
            let japanese = "てをにはがへ、。私僕君1234567890するしたい大学会社工医理工商経営済学部年生"
            var userNameRandomString = ""
            var userIdRandomString = ""
            var userDescriptionRandomString = ""
            
            for _ in 1 ..< 10 {
                userIdRandomString += String(letters.randomElement()!)
                userNameRandomString += String(letters.randomElement()!)
                userDescriptionRandomString += String(japanese.randomElement()!)
            }
            
            let user =
            User(
                userId: i,
                userDecidedID: userIdRandomString,
                userName: userNameRandomString,
                userIconURL: URL(string: "test@go.jp")!,
                userDescription: userDescriptionRandomString
            )
            userData.append(user)
        }
    }
    
}

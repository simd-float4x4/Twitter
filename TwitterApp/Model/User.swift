import Foundation

class User{
    let id: Int
    let name: String
    let icon: URL
    let description: String
    init(userId: Int, userName: String, userIconURL: URL, userDescription: String){
        id = userId
        name = userName
        icon = userIconURL
        description = userDescription
    }
}

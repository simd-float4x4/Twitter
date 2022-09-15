import Foundation

class User{
    let id: Int
    let userDecidedId: String
    let name: String
    let icon: URL
    let description: String
    init(userId: Int, userDecidedID: String, userName: String, userIconURL: URL, userDescription: String){
        id = userId
        userDecidedId = userDecidedID
        name = userName
        icon = userIconURL
        description = userDescription
    }
}

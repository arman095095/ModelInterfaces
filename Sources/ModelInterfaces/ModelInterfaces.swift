import UIKit

public protocol AccountModelProtocol: AnyObject {
    var profile: ProfileModelProtocol { get set }
    var blockedIds: Set<String> { get set }
    var friendIds: Set<String> { get set }
    var requestIds: Set<String> { get set }
    var waitingsIds: Set<String> { get set }
}

public protocol ProfileModelProtocol {
    var userName: String { get set }
    var info: String { get set }
    var sex: String { get set }
    var imageUrl: String { get set }
    var id: String { get set }
    var country: String { get set }
    var city: String { get set }
    var birthday: String { get set }
    var removed: Bool { get set }
    var online: Bool { get set }
    var lastActivity: Date? { get set }
    var postsCount: Int { get set }
}

public protocol ChatModelProtocol: AnyObject {
    var friend: ProfileModelProtocol { get }
    var friendID: String { get }
    var typing: Bool { get set }
    var lastMessage: MessageModelProtocol? { get }
    var messages: [MessageModelProtocol] { get set }
    var newMessages: [MessageModelProtocol] { get set }
    var newMessagesCount: Int { get }
    var notSendedMessages: [MessageModelProtocol] { get set }
}

public protocol MessangerChatModelProtocol: AnyObject {
    var friend: ProfileModelProtocol { get }
    var friendID: String { get }
    var typing: Bool { get set }
    var messages: [MessageModelProtocol] { get set }
    var newMessages: [MessageModelProtocol] { get set }
    var notSendedMessages: [MessageModelProtocol] { get set }
    var notLookedMessages: [MessageModelProtocol] { get set }
}

public enum Status: String {
    case waiting
    case sended
    case looked
    case incoming
    case incomingNew
}

public enum MessageContentType {
    case text(content: String)
    case audio(url: String, duration: Float)
    case image(url: String, ratio: Double)
}

public protocol MessageModelProtocol: AnyObject {
    var senderID: String { get }
    var adressID: String  { get }
    var date: Date { get set }
    var id : String { get }
    var firstOfDate: Bool  { get set }
    var status: Status? { get set }
    var type: MessageContentType { get set }
}

public protocol RequestModelProtocol {
    var sender: ProfileModelProtocol { get }
    var senderID: String { get }
}

public protocol PostModelProtocol: AnyObject {
    var userID: String { get }
    var likersIds: [String] { get }
    var date: Date { get }
    var id: String { get }
    var textContent: String { get }
    var urlImage: String? { get }
    var imageHeight: CGFloat? { get }
    var imageWidth: CGFloat? { get }
    var owner: ProfileModelProtocol { get }
    var likedByMe: Bool { get }
    var ownerMe: Bool { get }
}

public enum RemovedProfileConstants: String {
    case title = "Профиль удален"
    case imageURL = "https://miro.medium.com/max/1400/1*Bvkn3ol6fCOuzAM42B2Afw.jpeg"
    case name = "DELETED"
    case info = "Пользователь удалил свой профиль"
    case postsCount = "0"
}

public protocol ProfileNetworkModelProtocol {
    var userName: String { get set }
    var info: String { get set }
    var sex: String { get set }
    var imageUrl: String { get set }
    var id: String { get set }
    var country: String { get set }
    var city: String { get set }
    var birthday: String { get set }
    var removed: Bool { get set }
    var online: Bool { get set }
    var lastActivity: Date? { get set }
    var postsCount: Int { get set }
    
    func convertModelToDictionary() -> [String: Any]
}

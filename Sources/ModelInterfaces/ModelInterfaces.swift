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

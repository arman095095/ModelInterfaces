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

import Foundation

public struct Alert: Codable {
    public let senderName: String?
    public let event: String?
    public let start: Int?
    public let end: Int?
    public let description: String?
    public let tags: [String]

    public enum CodingKeys: String, CodingKey {
        case senderName = "sender_name"
        case event
        case start
        case end
        case description
        case tags
    }
}

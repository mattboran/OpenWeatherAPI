import Foundation

public struct Precipitation: Codable {
    public let oneHour: Double?

    public enum CodingKeys: String, CodingKey {
        case oneHour = "1h" 
    }
}

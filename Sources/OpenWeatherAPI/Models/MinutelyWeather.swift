import Foundation

public struct MinutelyWeather: Codable {
    public let datetime: Int?
    public let precipitation: Double?

    public var datetimeDate: Date? {
        guard let datetime = datetime else { return nil }
        return Date(timeIntervalSince1970: TimeInterval(datetime))
    }

    public enum CodingKeys: String, CodingKey {
        case datetime = "dt"
        case precipitation
    }
}

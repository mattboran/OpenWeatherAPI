import Foundation

public struct Condition: Codable { 
    public let id: Int
    public let main: String
    public let description: String
    public let icon: String

    public var conditionGroup: ConditionGroup { 
        switch id {
        case 200...232:
            return .thunderstorm
        case 300...321:
            return .drizzle
        case 500...531:
            return .rain
        case 600...622:
            return .snow
        case 701...781:
            return .atmosphere
        case 800:
            return .clear
        case 801...804:
            return .clouds
        default:
            return .clear
        }
    }

    public var iconUrl: String { 
        return "https://openweathermap.org/img/wn/\(icon)@2x.png"
    }

    public enum ConditionGroup: String {
        case thunderstorm
        case drizzle
        case rain
        case snow
        case atmosphere
        case clear
        case clouds
    }
}
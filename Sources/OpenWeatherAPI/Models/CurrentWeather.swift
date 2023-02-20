import Foundation

public struct CurrentWeather: Codable {
    public let datetime: Int?
    public let sunrise: Int?
    public let sunset: Int?
    public let temperature: Double?
    public let feelsLike: Double?
    public let pressure: Int?
    public let humidity: Int?
    public let dewPoint: Double?
    public let uvIndex: Double?
    public let clouds: Int?
    public let visibility: Int?
    public let windSpeed: Double?
    public let windGust: Double?
    public let windDirection: Int?
    public let probabilityOfPrecipitation: Double?
    public let weather: [Condition]?
    public let rain: Precipitation?
    public let snow: Precipitation?

    public var datetimeDate: Date? {
        guard let datetime = datetime else { return nil }
        return Date(timeIntervalSince1970: TimeInterval(datetime))
    }

    public var sunriseDate: Date? {
        guard let sunrise = sunrise else { return nil }
        return Date(timeIntervalSince1970: TimeInterval(sunrise))
    }

    public var sunsetDate: Date? {
        guard let sunset = sunset else { return nil }
        return Date(timeIntervalSince1970: TimeInterval(sunset))
    }

    public enum CodingKeys: String, CodingKey {
        case datetime = "dt"
        case sunrise
        case sunset
        case temperature = "temp"
        case feelsLike = "feels_like"
        case pressure
        case humidity
        case dewPoint = "dew_point"
        case uvIndex = "uvi"
        case clouds
        case visibility
        case windSpeed = "wind_speed"
        case windGust = "wind_gust"
        case windDirection = "wind_deg"
        case probabilityOfPrecipitation = "pop"
        case weather
        case rain
        case snow
    }
}

import Foundation

public struct DailyWeather: Codable {
    public let datetime: Int?
    public let sunrise: Int?
    public let sunset: Int?
    public let moonrise: Int?
    public let moonset: Int?
    public let moonPhase: Double?
    public let temperature: Temperature?
    public let feelsLike: FeelsLike?
    public let pressure: Int?
    public let humidity: Int?
    public let dewPoint: Double?
    public let windSpeed: Double?
    public let windGust: Double?
    public let windDirection: Int?
    public let clouds: Int?
    public let probabilityOfPrecipitation: Double?
    public let uvIndex: Double?
    public let weather: [Condition]?
    public let rain: Double?
    public let snow: Double?

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

    public var moonriseDate: Date? {
        guard let moonrise = moonrise else { return nil }
        return Date(timeIntervalSince1970: TimeInterval(moonrise))
    }

    public var moonsetDate: Date? {
        guard let moonset = moonset else { return nil }
        return Date(timeIntervalSince1970: TimeInterval(moonset))
    }

    public enum CodingKeys: String, CodingKey {
        case datetime = "dt"
        case sunrise
        case sunset
        case moonrise
        case moonset
        case moonPhase = "moon_phase"
        case temperature = "temp"
        case feelsLike = "feels_like"
        case pressure
        case humidity
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windGust = "wind_gust"
        case windDirection = "wind_deg"
        case clouds
        case probabilityOfPrecipitation = "pop"
        case uvIndex
        case weather
        case rain
        case snow
    }
}

public struct Temperature: Codable {
    public let day: Double?
    public let min: Double?
    public let max: Double?
    public let night: Double?
    public let eve: Double?
    public let morning: Double?

    public enum CodingKeys: String, CodingKey {
        case day
        case min
        case max
        case night
        case eve
        case morning = "morn"
    }
}

public struct FeelsLike: Codable {
    public let day: Double?
    public let night: Double?
    public let eve: Double?
    public let morning: Double?

    public enum CodingKeys: String, CodingKey {
        case day
        case night
        case eve
        case morning = "morn"
    }
}

import Foundation

public struct WeatherData: Codable {
    public let latitude: Double
    public let longitude: Double
    public let timezoneString: String
    public let timezoneOffset: Int?
    public let current: CurrentWeather?
    public let minutely: [MinutelyWeather]?
    public let hourly: [HourlyWeather]?
    public let daily: [DailyWeather]?
    public let alerts: [Alert]?

    public var timezone: TimeZone? {
        TimeZone(identifier: timezoneString)
    }

    public enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lon"
        case timezoneString = "timezone"
        case timezoneOffset = "timezone_offset"
        case current
        case minutely
        case hourly
        case daily
        case alerts
    }
}

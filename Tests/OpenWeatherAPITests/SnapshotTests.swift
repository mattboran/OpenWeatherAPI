import XCTest
@testable import OpenWeatherAPI

final class SnapshotTests: XCTestCase {

    var weatherDataSnapshot: WeatherData?

    override func setUp() async throws {
        try await super.setUp()
        guard let path = Bundle.module.path(forResource: "Resources/all_result", ofType: "json") else {
            XCTFail("Could not find all_result.json file.")
            return
        }
        let jsonData = try XCTUnwrap(Data(contentsOf: URL(fileURLWithPath: path)))
        let decoder = JSONDecoder()
        weatherDataSnapshot = try decoder.decode(WeatherData.self, from: jsonData)
    }

    func testWeatherDataDecoding() throws {
        let weatherData = try XCTUnwrap(weatherDataSnapshot)
        XCTAssertEqual(weatherData.latitude, 39.7392)
        XCTAssertEqual(weatherData.longitude, -104.9903)
        XCTAssertEqual(weatherData.timezoneString, "America/Denver")
        XCTAssertEqual(weatherData.timezoneOffset, -25200)
        XCTAssertNotNil(weatherData.current)
        XCTAssertNotNil(weatherData.daily)
        XCTAssertNotNil(weatherData.hourly)
        XCTAssertNotNil(weatherData.minutely)
        XCTAssertNil(weatherData.alerts)
    }

    func testConditionsDecoding() throws {
        let conditions = try XCTUnwrap(weatherDataSnapshot?.current?.weather)
        XCTAssertEqual(conditions.count, 1)
        let condition = conditions[0]
        XCTAssertEqual(condition.id, 800)
        XCTAssertEqual(condition.main, "Clear")
        XCTAssertEqual(condition.description, "clear sky")
        XCTAssertEqual(condition.icon, "01n")
        XCTAssertEqual(condition.iconUrl, "https://openweathermap.org/img/wn/01n@2x.png")
        XCTAssertEqual(condition.conditionGroup, .clear)
    }
}

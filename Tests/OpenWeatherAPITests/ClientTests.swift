import XCTest
@testable import OpenWeatherAPI

final class ClientTests: XCTestCase {

    static let apiKey = "TEST_API_KEY"
    static let latitude = 39.7392
    static let longitude = -104.9903

    let dataService = DataServiceMock()

    func testBasicURLFormatting() throws {
        let client = Client(apiKey: Self.apiKey, dataService: dataService)
        client.fetchWeather(latitude: Self.latitude, longitude: Self.longitude, completion: nil)
        XCTAssertEqual(dataService.queryURL?.absoluteString, "https://api.openweathermap.org/data/3.0/onecall?lat=39.7392&lon=-104.9903&appid=TEST_API_KEY&units=standard")
    }
}

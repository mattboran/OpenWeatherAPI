import Foundation
@testable import OpenWeatherAPI

class DataServiceMock: DataServiceProtocol {
    var queryURL: URL?

    func query<T>(url: URL, completion: ((Result<T, Error>) -> Void)?) where T: Decodable {
        queryURL = url
    }
}

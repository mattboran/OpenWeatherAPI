import Foundation

public class Client {

    // MARK: - Constants

    private static let baseURL = "https://api.openweathermap.org/data/3.0/onecall"

    // MARK: - Properties

    private let apiKey: String
    private let exclude: [ExcludeOptions]
    private let units: Units
    private let language: Language?
    private let dataService: DataServiceProtocol

    // MARK: - Initializers

    public init(apiKey: String,
                exclude: [ExcludeOptions] = [],
                units: Units = .standard,
                language: Language? = nil) {
        self.apiKey = apiKey
        self.exclude = exclude
        self.units = units
        self.language = language
        self.dataService = DataService()
    }

    init(apiKey: String,
         exclude: [ExcludeOptions] = [],
         units: Units = .standard,
         language: Language? = nil,
         dataService: DataServiceProtocol) {
        self.apiKey = apiKey
        self.exclude = exclude
        self.units = units
        self.language = language
        self.dataService = dataService
    }

    // MARK: - Public Methods

    public func fetchWeather(latitude: Double, longitude: Double, completion: ((Result<WeatherData, Error>) -> Void)?) {
        let url = makeQueryURL(latitude: latitude, longitude: longitude)
        dataService.query(url: url, completion: completion)
    }

    @available(iOS 13.0, macOS 10.15, *)
    public func fetchWeatherAsync(latitude: Double, longitude: Double) async throws -> WeatherData {
        let url = makeQueryURL(latitude: latitude, longitude: longitude)
        return try await withCheckedThrowingContinuation { continuation in
            dataService.query(url: url) { result in
                continuation.resume(with: result)
            }
        }
    }

    // MARK: - Private Helpers

    private func makeQueryURL(latitude: Double, longitude: Double) -> URL {
        var queryItems = [
            URLQueryItem(name: "lat", value: "\(latitude)"),
            URLQueryItem(name: "lon", value: "\(longitude)"),
            URLQueryItem(name: "appid", value: apiKey)
        ]
        let excludeString = exclude.map { $0.rawValue }.joined(separator: ",")
        queryItems.append(URLQueryItem(name: "exclude", value: excludeString))
        queryItems.append(URLQueryItem(name: "units", value: units.rawValue))

        if let language = language {
            queryItems.append(URLQueryItem(name: "lang", value: language.rawValue))
        }

        var urlComponents = URLComponents(string: Self.baseURL)!
        urlComponents.queryItems = queryItems
        return urlComponents.url!
    }
}

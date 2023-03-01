# OpenWeatherAPI

This Swift package provides a simple and easy-to-use interface to integrate your apps with the [OpenWeather One Call 3.0 API](https://openweathermap.org/api/one-call-3). 

## Installation
To add this package to your Swift project, add the following line to the dependencies section in your Package.swift file:

```swift
.package(url: "https://github.com/mattboran/OpenWeatherAPI.git", from: "1.0.0")
```
Then add the package as a dependency for your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "OpenWeatherAPI", package: "OpenWeatherAPI"),
    ]
)
```

## Usage
To use the OpenWeatherAPI Swift package, first import the module, then create an instance of the `Client` class with your API key:

```swift
import OpenWeatherAPI

let apiKey = "your-api-key"
let client = Client(apiKey: apiKey)
```

You can then use the various methods provided by the `Client` class to query the OpenWeather One Call 3.0 API. For example, to get the current weather for a location, use the `fetchWeather(latitude:longitude:completion:)` method:

```swift
let latitude = 37.7749
let longitude = -122.4194

client.fetchWeather(latitude: latitude, longitude: longitude) { result in
    switch result {
    case .success(let weather):
        print("Current weather:", weather)
    case .failure(let error):
        print("Error getting current weather:", error)
    }
}

// For iOS 13+ and MacOS 10.15+, use the async version of the above method:
let result = try await client.fetchWeatherAsync(latitude: latitude, longitude: longitude)
```

See the [full documentation](https://mattboran.github.io/OpenWeatherAPI/documentation/openweatherapi/) for more information.

## Contributing
If you find a bug or would like to contribute to this Swift package, please open an issue or submit a pull request on [GitHub](https://github.com/mattboran/OpenWeatherAPI).

## License
This Swift package is licensed under the Apache License, Version 2.0

import Foundation

protocol DataServiceProtocol {
    func query<T>(url: URL, completion: ((Result<T, Error>) -> Void)?) where T: Decodable
}

class DataService: DataServiceProtocol {

    func query<T>(url: URL, completion: ((Result<T, Error>) -> Void)?) where T: Decodable {
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion?(.failure(error))
                return
            }
            guard let data = data else {
                completion?(.failure(NSError(domain: "com.openweatherapi", code: 0, userInfo: nil)))
                return
            }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(T.self, from: data)
                completion?(.success(result))
            } catch {
                completion?(.failure(error))
            }
        }
        task.resume()
    }
}

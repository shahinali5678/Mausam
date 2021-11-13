//
//  APIManager.swift
//  Mausam
//
//  Created by Shahinali Agharia on 05/09/21.
//

import Foundation

class APIManager {
    static let sharedInstance = APIManager()
    func getData(url: URL, completion: @escaping (WeatherDetail, Error) -> Void) {
        let urlSessionTask = URLSession.shared.dataTask(with: URLRequest(url: url)) { (data, response, error) in
            print(data)
            print(response)
            print(error)
//            completion(data,error as! Error)
        }
        urlSessionTask.resume()
        
    }
}

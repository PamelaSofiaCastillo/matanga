//
//  YourWayApi.swift
//  YourWay
//
//  Created by Gabriela Antezana on 11/19/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

class YourWayService {
    var apiBase = "https://yourwayapi.azurewebsites.net"
    
    func getSportEventsByUser(userId: String, completion: @escaping ([SportEvent]?) -> ()) {
        guard let url = URL(string: "\(apiBase)/api/sportEvents/user/\(userId)") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            do {
                let events = try JSONDecoder().decode([SportEvent].self, from: data)
                DispatchQueue.main.async {
                    completion(events)
                }
            } catch {
                print("error: \(error)")
            }
            
            if let error = error {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func getSportEventsByUserAsMember(userId: String, completion: @escaping ([SportEvent]?) -> ()) {
        guard let url = URL(string: "\(apiBase)/api/sportEvents/asmember/\(userId)") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            do {
                let events = try JSONDecoder().decode([SportEvent].self, from: data)
                DispatchQueue.main.async {
                    completion(events)
                }
            } catch {
                print("error: \(error)")
            }
            
            if let error = error {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func getFriends(userId: String, completion: @escaping ([User]?) -> ()) {
        guard let url = URL(string: "\(apiBase)/api/users/\(userId)/friends") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                DispatchQueue.main.async {
                    completion(users)
                }
            } catch {
                print("error: \(error)")
            }
            
            if let error = error {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func getPlaces(completion: @escaping ([Place]?) -> ()) {
        guard let url = URL(string: "\(apiBase)/api/places") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            do {
                let places = try JSONDecoder().decode([Place].self, from: data)
                DispatchQueue.main.async {
                    completion(places)
                }
            } catch {
                print("error: \(error)")
            }
            
            if let error = error {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    struct Throwable<T: Decodable>: Decodable {
        let result: Result<T, Error>

        init(from decoder: Decoder) throws {
            do {
                let decoded = try T.init(from: decoder)
                result = .success(decoded)
            } catch let error {
                result = .failure(error)
            }
        }
    }
}


//
//  Networking.swift
//  eventHub
//
//  Created by ankit.dubey03 on 15/05/23.
//

import Foundation
import Combine

struct Login: Decodable {
    let token: String
}


struct EndPoints {
    let url: String = "/auth/login"
}



class APIClient: ObservableObject {
    @Published var login = [Login]()
    
    var cancellables = Set<AnyCancellable>()
    
    init() {
        userLogin()
    }
    
    func userLogin() {
        let urlString = "https://fakestoreapi.com/auth/login"
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .tryMap({ (data, response) -> Data in
                guard
                    let response = response as? HTTPURLResponse,
                    response.statusCode >= 200 else {
                    throw URLError(.badServerResponse)
                }
                
                return data
            })
            .decode(type: [Login].self, decoder: JSONDecoder())
            .sink { (completion) in
                print("Posts completed: \(completion)")
            } receiveValue: { (output) in
                //Is there a way to chain getComments such that receiveValue would contain Comments??
            }
            .store(in: &cancellables)
    }
    
}

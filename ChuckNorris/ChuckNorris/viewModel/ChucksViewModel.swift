//
//  ChucksViewModel.swift
//  ChuckNorris
//
//  Created by Süleyman Üren on 17.04.2023.
//

import SwiftUI

import Alamofire

class ChucksViewModel : ObservableObject {
    @Published var chucks = [Welcome]()
    init(){
        getChunks()
    }
    func getChunks(){
        AF.request("https://api.chucknorris.io/jokes/random",method: .get).responseDecodable(of:Welcome.self){ response in
            switch response.result {
            case .success(let data):
                self.chucks.append(data)
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}

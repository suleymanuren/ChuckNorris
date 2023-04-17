//
//  ChuckData.swift
//  ChuckNorris
//
//  Created by Süleyman Üren on 17.04.2023.
//

import Foundation

// MARK: - Welcome
struct Welcome: Identifiable,Codable {
    let categories: [String]?
    let createdAt: String?
    let iconURL: String?
    let id, updatedAt: String?
    let url: String?
    let value: String
}

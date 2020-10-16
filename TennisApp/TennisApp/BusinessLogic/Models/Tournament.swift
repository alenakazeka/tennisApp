//
//  Tournament.swift
//  TennisApp
//
//  Created by Alena on 10/16/20.
//

import Foundation

// MARK: - Tournament
struct Tournament: Codable {
    let id: Int
    let name: String
    let city: String
    let country: String
    let surface: String
    let code: String
    let startDate: String
    let endDate: String
    let season: Int
    let countryCode: String
}

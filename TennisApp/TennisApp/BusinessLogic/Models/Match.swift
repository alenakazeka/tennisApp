//
//  Match.swift
//  TennisApp
//
//  Created by Alena on 10/15/20.
//

import Foundation

// MARK: - MatchesOnDateResponse
struct MatchesOnDateResponse: Codable {
    let result: [MatchesOnTournament]
}

// MARK: - MatchesOnTournament
struct MatchesOnTournament: Codable {
    let tournament: Tournament
    let matches: [Match]
}

// MARK: - Match
struct Match: Codable {
    let away: MatchPlayer
    let awayID: Int
    let awayPlayer: String
    let court: String
    let date: Date
    let home: MatchPlayer
    let homeID: Int
    let homePlayer: String
    let id: Int
    let result: MatchResult
    let roundID: Int
    let roundName: String
    let status: String
    let title: String
    
    static func mock() -> Match {
        return Match(away: MatchPlayer.mockAway(), awayID: 2, awayPlayer: "Rafa Nadal", court: "Main", date: Date(), home: MatchPlayer.mockHome(), homeID: 1, homePlayer: "Novak Djokovich", id: 1, result: MatchResult.mock(), roundID: 1, roundName: "Final", status: "Ended", title: "Roland-Garros Men's Final")
    }
}

// MARK: - Away
struct MatchPlayer: Codable {
    let country: String
    let firstName: String
    let fullName: String
    let lastName: String
    let ranking: Int
    
    static func mockAway() -> MatchPlayer {
        MatchPlayer(country: "Spain", firstName: "Rafa", fullName: "Rafa Nadal", lastName: "Nadal", ranking: 2)
    }
    
    static func mockHome() -> MatchPlayer {
        MatchPlayer(country: "Serbia", firstName: "Novak", fullName: "Novak Djokovich", lastName: "Djokovich", ranking: 1)
    }
}

// MARK: - Result
struct MatchResult: Codable {
    var awaySet1: String?
    var awaySet2: String?
    var awaySet3: String?
    var awaySet4: String?
    var awaySet5: String?
    var awaySets: String?
    var awayTb1: String?
    var awayTb2: String?
    var awayTb3: String?
    var awayTb4: String?
    var awayTb5: String?
    
    var homeSet1: String?
    var homeSet2: String?
    var homeSet3: String?
    var homeSet4: String?
    var homeSet5: String?
    var homeSets: String?
    var homeTb1: String?
    var homeTb2: String?
    var homeTb3: String?
    var homeTb4: String?
    var homeTb5: String?
    
    let resultDescription: String
    var winnerID: Int?
    
    static func mock() -> MatchResult {
        MatchResult(resultDescription: "6:0, 6:4, 7:5", winnerID: 2)
    }
}

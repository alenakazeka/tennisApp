//
//  Match.swift
//  TennisApp
//
//  Created by Alena on 10/15/20.
//

import Foundation

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
}

// MARK: - Away
struct MatchPlayer: Codable {
    let country: String
    let firstName: String
    let fullName: String
    let lastName: String
    let ranking: Int
}

// MARK: - Result
struct MatchResult: Codable {
    let awaySet1: String?
    let awaySet2: String?
    let awaySet3: String?
    let awaySet4: String?
    let awaySet5: String?
    let awaySets: String?
    let awayTb1: String?
    let awayTb2: String?
    let awayTb3: String?
    let awayTb4: String?
    let awayTb5: String?
    
    let homeSet1: String?
    let homeSet2: String?
    let homeSet3: String?
    let homeSet4: String?
    let homeSet5: String?
    let homeSets: String?
    let homeTb1: String?
    let homeTb2: String?
    let homeTb3: String?
    let homeTb4: String?
    let homeTb5: String?
    
    let resultDescription: String
    let winnerID: Int
}

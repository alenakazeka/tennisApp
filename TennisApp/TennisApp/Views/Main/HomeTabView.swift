//
//  HomeTabView.swift
//  TennisApp
//
//  Created by Alena on 10/15/20.
//

import SwiftUI

struct HomeTabView: View {
    enum Tabs: Int, CaseIterable {
        case matches, tournaments, ranking
        
        var title: String {
            switch self {
            case .matches: return "Matches"
            case .tournaments: return "Tournaments"
            case .ranking: return "Ranking"
            }
        }
        
        var image: Image {
            switch self {
            case .matches: return Image(systemName: "1.square.fill")
            case .tournaments: return Image(systemName: "2.square.fill")
            case .ranking: return Image(systemName: "3.square.fill")
            }
        }
    }
    
    var body: some View {
        TabView {
            MatchesView()
                .tabItem {
                    Tabs.matches.image
                    Text(Tabs.matches.title)
            }
            TournamentsView()
                .tabItem {
                    Tabs.tournaments.image
                    Text(Tabs.tournaments.title)
            }
            RankingView()
                .tabItem {
                    Tabs.ranking.image
                    Text(Tabs.ranking.title)
            }
        }
        .font(.headline)
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}


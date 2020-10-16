//
//  MatchRow.swift
//  TennisApp
//
//  Created by Alena on 10/16/20.
//

import SwiftUI

struct MatchRow: View {
    let match: Match
    
    var body: some View {
        VStack {
            HStack {
                Text(match.awayPlayer)
                    .font(.headline)
                Spacer()
                Text(Strings.vs)
                Spacer()
                Text(match.homePlayer)
                    .font(.headline)
            }
            Text(match.result.resultDescription)
        }
        .padding()
    }
}

struct MatchRow_Previews: PreviewProvider {
    static var previews: some View {
        MatchRow(match: Match.mock())
    }
}

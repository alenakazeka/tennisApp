//
//  MatchesView.swift
//  TennisApp
//
//  Created by Alena on 9/28/20.
//  Copyright © 2020 Alena. All rights reserved.
//

import SwiftUI

struct MatchesView: View {
    @State var date = Date()
    @State var matches = [MatchesOnTournament]()
    
    var body: some View {
        NavigationView {
            VStack {
                DatePicker(Strings.matchDate, selection: $date, displayedComponents: .date)
                    .datePickerStyle(CompactDatePickerStyle())
                    .padding()
                Spacer()
                // TODO: show matches groupped by tournament
            }
            .navigationTitle(Strings.matches)
        }
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MatchesView()
        }
    }
}

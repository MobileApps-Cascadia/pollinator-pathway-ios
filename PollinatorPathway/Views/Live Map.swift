//
//  Live Map.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/25/22.
//

import SwiftUI

struct Live_Map: View {
    var body: some View {
        ZStack {
            Color.gray
            Image(systemName: "map.fill")
                .foregroundColor(Color.yellow)
                .font(.system(size: 100.0))
        }
    }
}

struct Live_Map_Previews: PreviewProvider {
    static var previews: some View {
        Live_Map()
    }
}

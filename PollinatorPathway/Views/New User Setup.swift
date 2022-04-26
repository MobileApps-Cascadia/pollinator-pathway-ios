//
//  New User Setup.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/25/22.
//

import SwiftUI

struct New_User_Setup: View {
    var body: some View {
        ZStack {
            Color.gray
            Image(systemName: "qrcode.viewfinder")
                .foregroundColor(Color.yellow)
                .font(.system(size: 100.0))
        }
    }
}

struct New_User_Setup_Previews: PreviewProvider {
    static var previews: some View {
        New_User_Setup()
    }
}

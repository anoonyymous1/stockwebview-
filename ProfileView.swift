//
//  ProfileView.swift
//  investment 101
//
//  Created by Celine Tsai on 25/7/23.
//

import SwiftUI
import Firebase

struct ProfileView: View {
    @State private var isSettingsViewPresented = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topTrailing) {
                VStack(spacing: 16) {
                    Image("pfp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 120)
                        .clipShape(Circle())
                    
                    Text("John Doe")
                        .font(.title)
                        .bold()
                    
                    HStack {
                        VStack {
                            Text(String(UserDefaults.xpPoints))
                                .font(.title)
                                .bold()
                            
                            Text("Points")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 8)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 2)
                }
            }
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}




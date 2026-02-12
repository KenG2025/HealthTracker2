//
//  HeaderSectionView.swift
//  HealthTracker2
//
//  Created by Ken Gonzalez on 2/10/26.
//

import SwiftUI

struct HeaderSectionView: View {
    var body: some View {
        VStack(spacing:10){
            Image(systemName: "figure.walk.motion")
                .font(.system(size: 80))
                .foregroundColor(Color.indigo)
            
            Text("☀Daily Activity Tracker")
                .font(.title)
                .fontWeight(.bold)
            
            Text("AI-powered ✨")
                .foregroundStyle(.gray)
            
            Spacer()
            
            HStack(alignment: .center){
                Image(systemName: "figure.flexibility")
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                
                Text("Health Data Monitor")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                
                Image(systemName: "figure.cooldown")
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                
            }
        }
        .padding()
        .foregroundStyle(.yellow)
    }
}


#Preview {
    HeaderSectionView()
}

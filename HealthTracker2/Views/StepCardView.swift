//
//  StepCardView.swift
//  HealthTracker2
//
//  Created by Ken Gonzalez on 2/10/26.
//

import SwiftUI

struct StepCardView:View {
    let goal: Int = 10000
    let steps: Int
    @State var isSwipped: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15){
            HStack{
                Image(systemName: "figure.walk.circle.fill")
                    .font(.system(size: 33))
                    .foregroundColor(Color.green)
                
                Text("Steps Today").font(.headline)
                
                Spacer()
                
             }
            
            Toggle(isOn: $isSwipped) {
                HStack{
                    Image(systemName: "figure.walk.circle.fill")
                        .font(.system(size: 33))
                        .foregroundColor(Color.purple)
                    
                    
                    Text("Show last 7 days")
                        .font(.headline)
                }
            }
            
            HStack(alignment: .firstTextBaseline){
                Text("\(steps)")
                    .font(.system(size: 48,weight: .bold))
                    .foregroundColor(Color.primary)
                
                Text("steps").font(.title3)
                    .foregroundColor(.gray)
                    
            }
            
            ProgressView(value: Double(steps), total:Double(goal))
                .tint(.green)
            
            Text("Goal \(goal.formatted()) steps")
                .font(.caption)
                .foregroundColor(Color(.gray))
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(15)
    }
}


#Preview {
    StepCardView(steps: 1551)
        .padding()
}

//
//  ContentView.swift
//  HealthTracker2
//
//  Created by Ken Gonzalez on 2/10/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel: HealthViewModel = HealthViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView{
                    VStack(spacing: 20){
                        HeaderSectionView()
                        StepCardView(steps: viewModel.steps)
                        DistanceCardView(distance: viewModel.distance)
                        ActivityStatusCard(activityStatus: viewModel.activityStatus, authStatus: viewModel.authStatus, isAuthorized: viewModel.isAuthorized)
                        Spacer()
                        
                    }
                    .padding()
                }
            }
                .onAppear{
                    viewModel.requestAuthorization()
                }
                .refreshable {
                    viewModel.fetchTodaySteps()
                    viewModel.fetchTodayDistance()
                }
        }
        
        
    }
}

#Preview {
    ContentView()
}

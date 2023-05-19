//
//  OnBoardingMainView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 24/04/23.
//

import SwiftUI

struct OnBoardingMainView: View {
    
    @State private var selectedPage = 0

    @State var heading:[String] = ["Explore Upcoming and Nearby Events",  "Web Have Modern Events Calendar Feature", "To Look Up More Events or Activities Nearby By Map"]
    @State var isLogin:Bool = false
    @EnvironmentObject var tabBar: TabBar

    var body: some View {
        NavigationStack(path: $tabBar.path) {
            TabView(selection: $selectedPage) {
                ForEach(Array(heading.enumerated()) ,id: \.offset) { index, element in
                    VStack {
                        Image("onboarding\(index)")
                            .resizable()
                        
                        OnBoardingEventsView(heading: element, next: {
                            if selectedPage == 2 {
                                tabBar.path.append("goToLogin")
                            } else {
                                selectedPage = selectedPage + 1
                            }
                        }, skip: {
                            tabBar.path.append("goToLogin")
                        })
                        .offset(y: 10)
                        .frame(height: 300,alignment: .bottom)
                        .onAppear {
                            withAnimation(.linear(duration: 0.9)) {
                            }
                        }
                        .tag(index)
                    }
                }
            } //: TAB
            .ignoresSafeArea()
            .tabViewStyle(PageTabViewStyle())
            .navigationDestination(for: String.self) { route in
                switch route {
                case "goToLogin":
                    LoginView()
                case "Logined":
                    MainControlView()
                case "SignUp":
                    SignUpVIew()
                default:
                    EmptyView()
                }
            }
        }
    }
}

struct OnBoardingMainView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingMainView()
    }
}

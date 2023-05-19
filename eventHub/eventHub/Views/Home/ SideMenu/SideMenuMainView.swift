//
//  SideMenuMainView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 02/05/23.
//

import SwiftUI

struct SideMenuMainView: View {
    
    @State var sideMenuArr:[String] = ["My Profile","Message","Calender","Bookmark","Contact Us","Setting","Help & FAQ's","Sign Out"]
    @State var icons:[String] = ["person","envelope","calendar","bookmark","mail","seal","questionmark.app","rectangle.portrait.and.arrow.right"]
    var body: some View {
        VStack(alignment: .leading) {
            SideMenuHeader()
                .offset(x: 10)
                .padding(.horizontal)
            ForEach(Array(sideMenuArr.enumerated()), id: \.offset) {index, element in
                if element == "Sign Out" {
                    NavigationLink(destination: LoginView()) {
                        SideMenuOption(icon: icons[index], title: element)
                            .padding()
                    }
                } else {
                    SideMenuOption(icon: icons[index], title: element)
                        .padding()
                }
            }
            
            Spacer()
            
            HStack {
                Spacer()
            }
            
            Button(action: {}, label: {
                HStack {
                    Image(systemName: "crown.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9705329537, blue: 1, alpha: 1)))
                    Text("Upgrade pro")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9705329537, blue: 1, alpha: 1)))

                }
                .frame(width: 130, height: 20)
                .padding()
            })
            .background(Color(#colorLiteral(red: 0, green: 0.9705329537, blue: 1, alpha: 0.2)))
            .cornerRadius(14)
            .offset(x: 20)
            
            Spacer()
        }
    }
}

struct SideMenuMainView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuMainView()
            .environmentObject(TabBar())

    }
}

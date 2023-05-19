//
//  EventDetailsMainView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 10/05/23.
//

import SwiftUI

struct EventDetailsMainView: View {
    var body: some View {
        VStack() {
            EventDetailsTopView()
                .offset(y: 60)

            VStack(alignment: .leading) {
                EventDetailTitleView()
                
                ScrollView(showsIndicators: false) {
                    DateLocationCommonView()
                    
                    DateLocationCommonView(image: "Location",title: "Gala Convention Center", subTitle: "36 Guild Street London, UK ")
                    
                    OrganizerView()
                    
                    HeaderView(title: "About")
                    
                    Text("Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More")
                        .padding(.vertical)
                        .multilineTextAlignment(.leading)
                        .lineLimit(5)
                    
                }
            }
            .padding(.horizontal, 2)
            

            
            ZStack {
                Button("Buy Ticket $120".uppercased(), action: {})
                    .frame(width: 320, height: 58)
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .background(Color(#colorLiteral(red: 0.4112041593, green: 0.5140529871, blue: 1, alpha: 1)))
                    .cornerRadius(18)
                
                Image("rightArrow")
                    .offset(x: 120)
            }
        }
        .padding()
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
    }
}
struct EventDetailsMainView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailsMainView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

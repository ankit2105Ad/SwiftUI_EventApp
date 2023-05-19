//
//  EventDetailsTopView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 10/05/23.
//

import SwiftUI

struct EventDetailsTopView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var isInvite:Bool = false
    var body: some View {
        HStack(alignment: .top) {
            ZStack {
                Image("EventDetails")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 350)
                
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("Back")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                        Text("Event Details")
                            .padding()
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.semibold)
                    })
                    
                    Spacer()
                    Image(systemName: "bookmark.circle")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 100)
                .frame(height: 273, alignment: .top)
                
                HStack {
                    ZStack {
                        Image("ProfilePic")
                            .offset(x: 10)
                        Image("ProfilePic")
                            .offset(x: 25)
                        Image("ProfilePic")
                            .offset(x: 40)
                    }
                    
                    Text("+20 Going")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("AppBg"))
                        .offset(x: 40)
                    Spacer()
                    Button(action: {
                        isInvite.toggle()
                    }, label: {
                        Text("Invite")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    })
                    .sheet(isPresented: $isInvite, content: {
                        BottomPopupView(content: {
                            InviteMainView()
                        })
                        .foregroundColor(.clear)
                        .background (
                            Color.white.clipShape(CustomShapeInvite())
                        )                    })
                    .frame(width: 67, height: 28)
                    .background(
                        Color("AppBg")
                            .cornerRadius(14)
                    )
                    .offset(x: -20)
                }
                .frame(width: 310, height: 60)
                .background(
                    Color.white
                        .cornerRadius(24)
                )
                .offset(y: 165)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 3, y: 3)
                .shadow(color: Color(.gray).opacity(0.1), radius: 5, x: -3, y: -3)
            }
        }
        .offset(y:-80)
    }
}

struct EventDetailsTopView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailsTopView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

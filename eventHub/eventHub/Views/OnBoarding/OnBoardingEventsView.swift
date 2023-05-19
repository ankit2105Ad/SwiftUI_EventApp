//
//  OnBoardingEventsView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 24/04/23.
//

import SwiftUI

struct OnBoardingEventsView: View {
    
    var heading:String = ""
    @EnvironmentObject var tabBar: TabBar
    
    var next:() -> ()
    var skip:() -> ()

    func getIndex(_ index: Int) -> Int {
        return index
    }

    var body: some View {
        VStack(spacing: 50) {
            
            VStack(spacing: 20) {
                Text(heading)
                    .padding(.vertical, 20)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("In publishing and graphic design, Lorem is a placeholder text commonly")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            
            HStack(alignment: .center) {
                Button(action: {
                    skip()
                }, label: {
                    Text("Skip")
                        .padding()
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                    
                })
                .frame(width: 80,height: 80)
                Spacer()
                
                Button(action: {
                    next()
                }, label: {
                    Text("Next")
                        .padding()
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                })
                .frame(width: 80,height: 80)

            }
            .padding(.horizontal)
            
        }
        .frame(height: 350)
        .background(
            Color(#colorLiteral(red: 0.4112041593, green: 0.5140529871, blue: 1, alpha: 1))
                .clipShape(CustomShape())
                .cornerRadius(50)
        )
        
    }
}

struct CustomShape: Shape {
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: 30, height: 30))
    
    return Path(path.cgPath)
  }
}

struct OnBoardingEventsView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingMainView(heading: [""])
    }
}

struct CustomShapeTab: Shape {
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 0, height: 0))
    
    return Path(path.cgPath)
  }
}

struct CustomShapeTab_Previews: PreviewProvider {
  static var previews: some View {
    CustomShapeTab()
      .previewLayout(.fixed(width: 500, height: 120))
      .padding()
  }
}

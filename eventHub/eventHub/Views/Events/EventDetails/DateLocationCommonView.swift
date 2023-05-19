//
//  DateLocationCommonView.swift
//  eventHub
//
//  Created by ankit.dubey03 on 10/05/23.
//

import SwiftUI

struct DateLocationCommonView: View {
    var image = "Date"
    var title = "14 December, 2021"
    var subTitle = "Tuesday, 4:00PM - 9:00PM"

    var body: some View {
        HStack(spacing: 20) {
            Image(image)
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.title2)
                Text(subTitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct OrganizerView: View {
    var image = "Date"
    var title = "14 December, 2021"
    var subTitle = "Tuesday, 4:00PM - 9:00PM"

    var body: some View {
        HStack(spacing: 20) {
            Image("Image")
            VStack(alignment: .leading, spacing: 5) {
                Text("Ashfak Sayem")
                    .font(.title2)
                Text("Organizer")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Button(action: {}, label: {
                Text("Follow")
                    .font(.subheadline)
                    .foregroundColor(Color("AppBg"))
            })
            .frame(width: 90, height: 40)
            .background(Color(#colorLiteral(red: 0.4112041593, green: 0.5140529871, blue: 1, alpha: 0.3))
                .cornerRadius(12)
            )
        }
    }
}

struct EventDetailTitleView: View {
    var title = "International Band Music Concert"

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            .lineLimit(3)
        }
    }
}

struct DateLocationCommonView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailTitleView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

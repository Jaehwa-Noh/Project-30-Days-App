//
//  BookContentScreen.swift
//  SwiftUI-30-Days-App
//
//  Created by Jaehwa Noh on 12/2/23.
//

import SwiftUI

struct BookContentListItem: View {
    let bookContent: BookContent
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(bookContent.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
            BookContentTextSection(bookContent: bookContent)
        }
        .background(
            Color.gray
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 16.0)
        )
        
    }
}

struct BookContentTextSection: View {
    let bookContent: BookContent
    var body: some View {
        VStack(alignment: .leading) {
            Text(bookContent.day)
            Spacer()
                .frame(height: 4)
            Text(bookContent.titleString)
            Spacer()
                .frame(height: 24)
            Text(bookContent.contentString)
            Text(bookContent.sourceString)
        }
        .padding(16)
    }
}

#Preview {
    BookContentListItem(bookContent: BookContentsRepository().bookContents[0])
}

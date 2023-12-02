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
            RoundedRectangle(cornerRadius: 12.0)
        )
        
    }
}

struct BookContentTextSection: View {
    let bookContent: BookContent
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(bookContent.day)
                .font(
                    Font.custom("NanumGothic-Regular", size: 14, relativeTo: .footnote)
                )
            Spacer()
                .frame(height: 4)
            Text(bookContent.titleString)
                .font(
                    Font.custom("EastSeaDokdo-Regular", size: 36, relativeTo: .largeTitle)
                )
            Spacer()
                .frame(height: 24)
            Text(bookContent.contentString)
                .font(
                    Font.custom("NanumGothic-Regular", size: 14, relativeTo: .footnote)
                )
            Text(bookContent.sourceString)
                .font(
                    Font.custom("NanumGothic-Regular", size: 14, relativeTo: .footnote)
                )
        }
        .padding(16)
    }
}

#Preview {
    BookContentListItem(bookContent: BookContentsRepository().bookContents[0])
}

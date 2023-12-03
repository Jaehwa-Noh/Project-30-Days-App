//
//  BookContentScreen.swift
//  SwiftUI-30-Days-App
//
//  Created by Jaehwa Noh on 12/2/23.
//

import SwiftUI

struct BookContentList: View {
    
    private var bookContents = BookContentsRepository().bookContents.map {
        BookContentWithExpanded(bookContent: $0, expanded: false)
    }
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(bookContents) { bookContent in
                    BookContentListItem(bookContent: bookContent)
                }
            }
        }
    }
}

struct BookContentListItem: View {
    @ObservedObject var bookContent: BookContentWithExpanded
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(bookContent.bookContent.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
            BookContentTextSection(expanded: $bookContent.expanded, bookContent: bookContent.bookContent)
        }
        
        .background(
            Color(Colors.cardBackgroundColor.rawValue)
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 12.0)
        )
        .contentShape(
            RoundedRectangle(cornerRadius: 12.0)
        )
        .onTapGesture {
            withAnimation(.smooth(duration: 0.4)) {
                bookContent.expanded.toggle()
            }
        }
        .shadow(radius: 2)
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }
}

struct BookContentTextSection: View {
    @Binding var expanded: Bool
    
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
            if expanded {
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
        }
        .padding(16)
    }
}

#Preview {
    BookContentList()
}

#Preview {
    
    BookContentListItem(bookContent: BookContentWithExpanded(bookContent: BookContentsRepository().bookContents[0], expanded: false))
}

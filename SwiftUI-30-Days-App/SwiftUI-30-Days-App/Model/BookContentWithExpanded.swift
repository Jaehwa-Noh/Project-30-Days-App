//
//  Expand.swift
//  SwiftUI-30-Days-App
//
//  Created by Jaehwa Noh on 12/3/23.
//

import SwiftUI

class BookContentWithExpanded: ObservableObject, Identifiable {
    let bookContent: BookContent
    @Published var expanded: Bool
    
    init(bookContent: BookContent, expanded: Bool) {
        self.bookContent = bookContent
        self.expanded = expanded
    }
}

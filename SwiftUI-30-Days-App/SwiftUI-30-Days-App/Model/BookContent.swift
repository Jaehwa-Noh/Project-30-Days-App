//
//  BookContent.swift
//  SwiftUI-30-Days-App
//
//  Created by Jaehwa Noh on 12/1/23.
//

struct BookContent: Identifiable {
    let day: String
    let titleString: String
    let contentString: String
    let sourceString: String
    let imageName: String
    var id: String { day }
}

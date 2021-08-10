//
//  NewsCell.swift
//  AlienReader
//
//  Created by Hao Nguyen on 10/08/2021.
//

import SwiftUI

struct NewsCell: View {
    var news: MenuItem
        
    var body: some View {
        VStack(alignment: .leading) {
            Text(news.title)
        }
    }
}

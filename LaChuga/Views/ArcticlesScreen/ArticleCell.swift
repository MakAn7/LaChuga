//
//  ArticleCell.swift
//  LaChuga
//
//  Created by Антон Макаров on 28.07.2022.
//

import SwiftUI

struct ArticleCell: View {
    
    var article: ArticleModel
    var body: some View {
        HStack(spacing: 15) {
            Image(uiImage: article.image)
                .resizable()
                .frame(width: 120, height: 120)
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
            
            VStack(spacing: 15) {
                Text(article.title)
                    .font(.system(.headline, design: .serif)).font(.system(size: 20))
                Text(article.description)
            } .lineLimit(4)
                .font(.system(.subheadline, design: .serif))
                .font(.system(size: 16))
        }
        .listRowInsets(EdgeInsets())
    }
}

struct ArticleCell_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCell(article: ArticleModel.getMockArticleData()[0])
    }
}

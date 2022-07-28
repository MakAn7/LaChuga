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

            VStack(spacing: 15) {
                Text(article.title)
                    .font(.headline)
                Text(article.description)
            } .lineLimit(4)
                .font(.system(size: 14))
        } .padding(5)
    }
}

struct ArticleCell_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCell(article: ArticleModel.getMockArticleData()[0])
    }
}

//
//  ArticlesView.swift
//  LaChuga
//
//  Created by Антон Макаров on 28.07.2022.
//

import SwiftUI

struct ArticlesView: View {
    @State private var serchableText = ""

    var body: some View {
        NavigationView {
            List(ArticleModel.getMockArticleData()) { article in
                ArticleCell(article: article)
            }

            .navigationTitle("Статьи")
        }
        .searchable(text: $serchableText)
        
    }
}


struct ArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesView()
    }
}

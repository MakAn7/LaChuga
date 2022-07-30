//
//  ArticlesView.swift
//  LaChuga
//
//  Created by Антон Макаров on 28.07.2022.
//

import SwiftUI

struct ArticlesList: View {
    @State private var serchableText = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(ArticleModel.getMockArticleData()) { article in
                    HStack {
                        ArticleCell(article: article)
                        Spacer()
                    }
                    .padding(7)
                    .background(Image("backgroundCell")
                                    .opacity(0.7)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .listRowSeparator(.hidden, edges: .all)
                }
            }
            .navigationTitle("Статьи")
        }
        .searchable(text: $serchableText)
    }
}

struct ArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesList()
    }
}

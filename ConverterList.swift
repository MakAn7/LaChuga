//
//  ConverterList.swift
//  LaChuga
//
//  Created by Антон Макаров on 30.07.2022.
//

import SwiftUI

struct ConverterList: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(ConverterModel.getMeasure(), id: \.id) {
                    ConverterCell(converterModel: $0)
                }
            }
            .navigationBarTitle("Конвертер")
        }
    }
}

struct ConverterList_Previews: PreviewProvider {
    static var previews: some View {
        ConverterList()
    }
}

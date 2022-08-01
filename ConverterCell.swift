//
//  ConverterCell.swift
//  LaChuga
//
//  Created by Антон Макаров on 31.07.2022.
//

import SwiftUI

struct ConverterCell: View {
    var converterModel: ConverterModel
    var body: some View {
        HStack {
            Image(converterModel.image)
                .resizable()
                .frame(maxWidth: screen.width * 0.12, maxHeight: screen.width * 0.12)
                .scaledToFill()
            Text(converterModel.title)
                .padding(.horizontal, 10)
                Spacer()
            let dimension = converterModel.measureType
            switch dimension {
            case .lenght(let meter, let km):
                Text("\(meter), \(km)")
            case .weight(let gramm, let kg, let mg):
                Text("\(gramm), \(kg), \(mg)")
            case .volume(let m3, let ml3):
                Text("\(m3), \(ml3)")
            case .temperature(let kelvin, let fahrenhate, let celsium):
                Text("\(kelvin), \(fahrenhate), \(celsium)")
            case .speed(let kilometerPerHour, let meterPerSecond):
                Text("\(kilometerPerHour), \(meterPerSecond)")
            }
        }
        .padding(5)
    }
}

struct ConverterCell_Previews: PreviewProvider {
    static var previews: some View {
        ConverterCell(converterModel: ConverterModel.getMeasure()[0])
    }
}

//
//  ConverterModel.swift
//  LaChuga
//
//  Created by Антон Макаров on 30.07.2022.
//

import Foundation


struct ConverterModel: Identifiable {
    enum MeasureType {
        case lenght(meter:String, km: String)
        case weight(gramm:String, kg: String, mg: String)
        case volume(m3: String, ml3: String)
        case temperature(kelvin: String, fahrenhate: String, celsium: String)
        case speed(kilometerPerHour: String, meterPerSecond: String)
    }

    let id = UUID()
    let title: String
    let image: String
    let measureType: MeasureType

    static func getMeasure() -> [ConverterModel] {
        let dataMeasure = [
            ConverterModel(title: "Длинна", image: "Lenght", measureType: .lenght(meter: "m", km: "km")),
            ConverterModel(title: "Вес", image: "Weight",measureType: .weight(gramm: "gr", kg: "kg", mg: "mg")),
            ConverterModel(title: "Объем", image: "Volume",measureType: .volume(m3: "m", ml3: "ml")),
            ConverterModel(title: "Температура", image: "Temperature", measureType: .temperature(kelvin: "K", fahrenhate: "F", celsium: "C")),
            ConverterModel(title: "Скорость", image: "Speed", measureType: .speed(kilometerPerHour: "km/h", meterPerSecond: "m/s"))
        ]
        return dataMeasure
    }
}


//
//  Button.swift
//  LaChuga
//
//  Created by Антон Макаров on 25.07.2022.
//

import SwiftUI

struct Buttons: View {
    @State var imageName: String
    @State var action: () -> Void
    var body: some View {
        Button(action: {
         action()
        }, label: {
            Image(imageName)
        })
            .padding(10)
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color("TitleColor"))
            .cornerRadius(20)
    }
}


struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(imageName: "Exclamation", action: {
            print("go")
        })
    }
}

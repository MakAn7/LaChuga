//
//  CurrentButton.swift
//  LaChuga
//
//  Created by Антон Макаров on 25.07.2022.
//

import SwiftUI

struct CurrentButton: View {
    var imageName: String
    var action: () -> Void
    var titleText: String

    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text(titleText)
            }
            .frame(maxWidth: 100, maxHeight: 100)
            .foregroundColor(.white)
            .background(Color("BackgroundButton"))
            .cornerRadius(15)
        })
    }
}


struct Button_Previews: PreviewProvider {
    static var previews: some View {
        CurrentButton(imageName: "Exclamation", action: {
            print("go")
        }, titleText: "О нас")
    }
}

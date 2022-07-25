//
//  ContentView.swift
//  LaChuga
//
//  Created by Антон Макаров on 25.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("- Строй Сам -")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .background(Color("TitleColor"))
            HStack {
                Buttons(imageName: "Exclamation",
                        action: {
                    print("got to info")
                })
                Buttons(imageName: "Converter", action: {
                    print("Go to converter")
                })
            }

            HStack {
                Buttons(imageName: "Articles", action: {
                    print("go to articles")
                })
                Buttons(imageName: "Calculations", action: {
                    print("go to calculations")
                })
            }
        }
        .background(Image("Background"))
        .scaledToFill()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

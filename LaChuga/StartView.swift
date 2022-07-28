//
//  ContentView.swift
//  LaChuga
//
//  Created by Антон Макаров on 25.07.2022.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack {
            Text("- Строй Сам -")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .background(Color("BackgroundTitle"))
                .padding(.top, 70)
            Spacer()
            HStack {
                VStack(spacing: 10.0) {
                    CurrentButton(imageName: "Calculations",
                                  action: {
                        print("got to info")
                    }, titleText: "Расчеты")

                    CurrentButton(imageName: "Articles", action: {
                        print("go to articles")
                    }, titleText: "Статьи")
                }

                VStack(spacing: 10.0) {
                    CurrentButton(imageName: "Converter", action: {
                        print("Go to converter")
                    }, titleText: "Конвертер")

                    CurrentButton(imageName: "Exclamation", action: {
                        print("go to calculations")
                    }, titleText: "О нас")
                }
                .padding(.top, 100)
            }
            Spacer()
        }
        .background(
            Image("Background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

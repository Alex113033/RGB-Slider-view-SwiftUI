//
//  ContentView.swift
//  HW_2_Gnilitskiy_SwiftUI
//
//  Created by Александр on 22.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var randomSliderValueRed = Double.random(in: 0...255)
    @State private var randomSliderValueGreen = Double.random(in: 0...255)
    @State private var randomSliderValueBlue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            SquareColor(colorRed: randomSliderValueRed, colorGreen: randomSliderValueGreen, colorBlue: randomSliderValueBlue)
                .padding(.all)
            
            HStack {
                SliderColor(value: $randomSliderValueRed, colorSlider: .red, nameColor: "\(lround(randomSliderValueRed))", textSlider: $randomSliderValueRed)
                
//                TextField("\(randomSliderValueRed)", value: $randomSliderValueRed, format: .number)
//                    .modsText()
            }
            HStack {
                SliderColor(value: $randomSliderValueGreen, colorSlider: .green, nameColor: "\(lround(randomSliderValueGreen))", textSlider: $randomSliderValueGreen)
//
//                TextField("\(lround(randomSliderValueGreen))", value: $randomSliderValueGreen, format: .number)
//                    .modsText()
            }
            HStack {
                SliderColor(value: $randomSliderValueBlue, colorSlider: .blue, nameColor: "\(lround(randomSliderValueBlue))", textSlider: $randomSliderValueBlue)
               
//                TextField("\(randomSliderValueBlue)", value: $randomSliderValueBlue, format: .number)
//                    .modsText()
            }
        }.offset(x: 0, y: -60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding([.top, .trailing])
            .frame(width: 55.0)
            .keyboardType(.numberPad)
        
    }
}
extension TextField {
    func modsText() -> some View {
        ModifiedContent (content: self, modifier: TextFieldModifier())
    }
}
    

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
            SquareColor(
                colorRed: randomSliderValueRed,
                colorGreen: randomSliderValueGreen,
                colorBlue: randomSliderValueBlue)
                .padding(.all)
            
            SliderColor(value: $randomSliderValueRed, colorSlider: .red)
            
            SliderColor(value: $randomSliderValueGreen, colorSlider: .green)
            
            SliderColor(value: $randomSliderValueBlue, colorSlider: .blue)
        }.offset(x: 0, y: -60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    

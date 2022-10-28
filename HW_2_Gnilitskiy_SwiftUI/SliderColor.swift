//
//  SliderColor.swift
//  HW_2_Gnilitskiy_SwiftUI
//
//  Created by Александр on 28.10.2022.
//

import SwiftUI

struct SliderColor: View {
    @Binding var value: Double
    
    let colorSlider: Color
    var nameColor: String
    @Binding var textSlider: Double
    
    var body: some View {
       
            HStack {
                Text("\(nameColor)")
                    .multilineTextAlignment(.leading)
                    .frame(width: 50.0)
                
                Slider(value: $value, in: 1...255, step: 1)
                    .padding(.vertical)
                    .accentColor(colorSlider)
               
//                TextField("000", value: $nameColor, format: .number)
//                    .modsText()
//                    TextField("red", text: $textSlider)
                TextField("red", value: $textSlider, format: .number)
        }
    }
}


struct SliderColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderColor(value: .constant(190), colorSlider: .red, nameColor: "red", textSlider: .constant(99))
    }
}

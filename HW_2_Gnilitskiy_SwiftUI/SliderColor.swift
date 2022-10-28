//
//  SliderColor.swift
//  HW_2_Gnilitskiy_SwiftUI
//
//  Created by Александр on 28.10.2022.
//

import SwiftUI

struct SliderColor: View {
    @Binding var value: Double
    @State private var textValue = ""
    
    let colorSlider: Color
   
    
    
    var body: some View {
       
        HStack {
            Text("\(textValue)")
                .multilineTextAlignment(.leading)
                .frame(width: 50.0)
            
            Slider(value: $value, in: 1...255, step: 1)
                .padding(.vertical)
                .accentColor(colorSlider)
                .onChange(of: value) { isOnFocus in
                    textValue = "\(lround(isOnFocus))"
                }
          
            
            SliderText(textSlider: $textValue, value: $value)
                
        }
        .onAppear {
            textValue = "\(lround(value))"
        }
    }
    
}


struct SliderColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderColor(value: .constant(100), colorSlider: .red)
    }
}

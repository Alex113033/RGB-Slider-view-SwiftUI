//
//  SliderColor.swift
//  HW_2_Gnilitskiy_SwiftUI
//
//  Created by Александр on 24.07.2022.
//

import SwiftUI

struct SquareColor: View {
    let colorRed: Double
    let colorGreen: Double
    let colorBlue: Double

    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 160.0)
            .foregroundColor(
                Color(
                    .sRGB,
                    red: colorRed / 255,
                    green: colorGreen / 255,
                    blue: colorBlue / 255
                )
            )
    }
}

struct SquareColor_Previews: PreviewProvider {
    static var previews: some View {
        SquareColor(colorRed: 0.0, colorGreen: 0.0, colorBlue: 0.0)
    }
}

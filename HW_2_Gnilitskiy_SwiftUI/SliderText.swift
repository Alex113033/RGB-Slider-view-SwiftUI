//
//  SliderText.swift
//  HW_2_Gnilitskiy_SwiftUI
//
//  Created by Александр on 28.10.2022.
//

import SwiftUI

struct SliderText: View {
    @Binding var textSlider: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textSlider) { _ in
            checkFlaw()
        }
        .frame(width: 50, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("0 to 255")
        }
        
    }
    private func checkFlaw() {
        if let value = Int(textSlider), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        value = 0
        textSlider = "0"
        showAlert.toggle()
        
    }
}

struct SliderText_Previews: PreviewProvider {
    static var previews: some View {
        SliderText(textSlider: .constant("90"), value: .constant(50))
    }
}

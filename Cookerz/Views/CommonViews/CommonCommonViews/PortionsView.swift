//
//  PortionsView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 13/03/2025.
//

import SwiftUI

struct PortionsView: View {
    // Binding to change the number of portion chosen
    @Binding var numberPortionChosen : Int
    var body: some View {
        HStack {
            // - button
            Button {
                // if 0, can't go lower/negatif
                // else it decreases numberPortionChosen
                if numberPortionChosen > 0 {
                    numberPortionChosen -= 1
                }
                
            }label : {
                // if 0, the button disapear
                if numberPortionChosen > 0 {
                    ButtonPortionView(textSymbol :"-")}
            }
            
            HStack {
                Text ("\(numberPortionChosen) pers")
                    .font(.PoppinsCaption2())
            }
            .padding()
            .background(Color.red50)
            .cornerRadius(200)
        }

        // + button
        Button {
            // it increases numberPortionChosen
            numberPortionChosen += 1
        }label : {
            ButtonPortionView(textSymbol :"+")}
    }
}


#Preview {
    RecipePageView (recipe : recipes[0])
}

//
//  CreationPortionView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 13/03/2025.
//

import SwiftUI

// view to reduce or increase the number of portion
struct CreationPortionsView: View {
    @Binding var numberPortionChosen : Int
    var body: some View {
        HStack {
            // if it's 0, it can't go lower
            Button {
                if numberPortionChosen > 0 {
                    numberPortionChosen -= 1
                }
                
            }label : {
                // if it's 0, the button doesn't appear
                if numberPortionChosen > 0 {
                    ButtonPortionView(textSymbol :"-")}
            }
            
            ZStack {
                Rectangle()
                    .fill(Color.grisFond.opacity(0.25))
                    .frame(width: 60, height: 40)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.grisBordure, lineWidth: 1))
                Text ("\(numberPortionChosen) pers")
                    .font(.PoppinsCaption2())
                    .padding()
            }
        }
        
        Button {
            numberPortionChosen += 1
            
        }label : {
            ButtonPortionView(textSymbol :"+")}
    }
}


#Preview {
    RecipeCreationView()
}

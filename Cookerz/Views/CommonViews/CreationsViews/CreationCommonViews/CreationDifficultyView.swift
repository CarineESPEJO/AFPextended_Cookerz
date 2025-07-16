//
//  CreationDifficultyView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//


import SwiftUI

struct CreationDifficultyView: View {
    //call this var to change it with this button
    // it will be put in the recipe or cooking class which will be created
    @Binding var elementDifficulty: Level

    //function for when the button is clicked, the value toggle
    func toggleDifficulty() {
        switch elementDifficulty {
        // defaultdifficulty is for giving a visual to the button when it's not already clicked a 1st time
        // and verify if button used a least one time before confirming the creation to avoid that the user forgot to choose a difficulty
        case .defaultdifficulty:
            //when clicked it goes on easy 
            return elementDifficulty = .easy
        //then it toggles only between easy, medium and hard
        case .easy:
            return elementDifficulty = .medium
        case .medium:
            return elementDifficulty = .hard
        case .hard:
            return elementDifficulty = .easy
        }
    }
    
    var body: some View {
        Button {
            toggleDifficulty()
        } label: {
            VStack {
                // there is no Icon for defaultDifficulty so it use the same as easy
                Image(elementDifficulty == .defaultdifficulty ? Level.easy.IconBlackWhite : elementDifficulty.IconBlackWhite)
                
                Text(elementDifficulty.name)
                    .foregroundStyle(.black)
                    .font(.PoppinsSubhead())
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(Color.red50)
        .cornerRadius(16)
    }
}

#Preview {
    RecipeCreationView()
}

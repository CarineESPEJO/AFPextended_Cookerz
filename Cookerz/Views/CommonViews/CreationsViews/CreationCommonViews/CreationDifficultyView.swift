//
//  CreationDifficultyView.swift
//  Cookerz
//
//  Created by apprenant98 on 14/03/2025.
//


import SwiftUI

struct CreationDifficultyView: View {
    //call this var to change it with this button
    @Binding var elementDifficulty: Level

    //function for when the button is clicked, the value toggle
    func toggleDifficulty() {
        switch elementDifficulty {
        // defaultdifficulty is for giving a visual to the button when it's not already clicked a 1st time
        case .defaultdifficulty:
            return elementDifficulty = .easy
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

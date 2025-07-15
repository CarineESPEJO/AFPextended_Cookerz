//
//  PageHeaderView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 10/03/2025.
//

import SwiftUI

struct PageHeaderView: View {
    // name of the recipe or cooking class
    var elementTitle : String
    // the creator, if issue finding them, there is a visual for it
    var recipeCreator : User?
    var body: some View {
        VStack (alignment: .leading) {
            VStack {
                Text(elementTitle.capitalized)
                    .font(.PoppinsTitle3Medium())
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
            .padding(.vertical, 8)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                HStack {
                   // if there is a creator, shows its profil image and name
                    if let creator = recipeCreator {
                        Image(creator.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                        Text(creator.name)
                            .font(.PoppinsSubhead())
                   // else its shows remplacement elements
                    } else {
                        Image("UnknownProfil")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                        Text("Profil not found")
                            .font(.PoppinsSubhead())
                        
                        
                    }
                    
                }
                Spacer ()
                
                
            }
        }
        .padding(.horizontal, 8)
        .foregroundStyle(.black)
    }
}


#Preview {
    //    PageHeaderView(elementTitle: recipes[0].title, recipeCreator: users[0])
    RecipePageView (recipe : recipes[0])
        .environmentObject(BaseViewModel())
}

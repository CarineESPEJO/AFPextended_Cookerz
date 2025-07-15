//
//  PageGeneralInfosView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 13/03/2025.
//

import SwiftUI

struct PageGeneralInfosView: View {
    // icon of difficulty or likes
    var GeneralInfoIcon : String
    // difficulty name or number of likes
    var GeneralInfoText : String
    var body: some View {
        VStack {
            Image(GeneralInfoIcon)
                .frame(width: 24, height: 24)
            Text(GeneralInfoText)
                .font(.PoppinsSubhead())
            
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(Color.red50)
        .cornerRadius(16)
    }
}


#Preview {
    RecipePageView (recipe : recipes[0])
}

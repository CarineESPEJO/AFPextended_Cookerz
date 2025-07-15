//
//  AtelierPageTransparentFrontBGImage.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//

import SwiftUI

struct AtelierPageTransparentFrontBGImage: View {
     //access the presentation mode of the current view(here used to dismiss from the nav and go back
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.clear)
                .frame(width: UIScreen.main.bounds.width, height: 20)
            HStack {
                Button {
                     //custom return button (the normal one is hidden in recipepageview)
                    presentationMode.wrappedValue.dismiss()
                }label : {
                    HStack {
                        Text("< Retour")
                    }
                    .padding()
                    .background(Color.white.opacity(0.75))
                    .foregroundColor(.black)
                    .cornerRadius(50)
                }
                Spacer()
                
                
            }
            .padding(.horizontal)
            .padding(.trailing)
            
            Rectangle()
                .fill(Color.clear)
                .frame(width: UIScreen.main.bounds.width, height: 120)
        }
        .padding(.top, 34)
    }
}

#Preview {
    AtelierPageView (atelier : ateliers[0])
}

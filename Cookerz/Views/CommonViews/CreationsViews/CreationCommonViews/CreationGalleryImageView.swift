//
//  CreationGalleryImageView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 17/03/2025.
//


import SwiftUI
// view to show the same gallery as publication
struct CreationGalleryImageView: View {
    // var to close this view
    @Binding var isGalleryPresented: Bool
    // var to retrieve the name of the chosen picture to put it in the recipe or cooking class which will be created
    @Binding var imageChosen: String?
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State private var gallery: [String] = ["pizza_margherita","salade_cesar", "gyozas", "pokebowl1-2", "pokebowl2-2", "pokebowl3-2", "pokebowl4", "toastegg", "ramen1", "salmonpasta", "sashimi", "risotto_champignons", "soupe_pho", "spaghetti_carbo"]
    var body: some View {
        VStack {
            HStack {
                
                Button { isGalleryPresented = false
                }label: {
                    Text("Retour")
                        .foregroundStyle(Color.blue)
                }
                Spacer ()
                Text("Gallerie")
                    .foregroundStyle(Color.black)
                Spacer ()
                Text("Retour")
                    .foregroundStyle(.white)
                
            }
            .padding()
            .background(Color.grisFond.opacity(0.5))
            .cornerRadius(10)
            
            
            PhotoGalleryView(selectedImage: $imageChosen, columns: columns, gallery: gallery)
        }
    }
}

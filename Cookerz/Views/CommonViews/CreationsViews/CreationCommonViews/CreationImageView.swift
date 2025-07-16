//
//  CreationImageView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 19/03/2025.
//


import SwiftUI

// view where the picture of the recipe is showed (the one which will be added to the futur recipe or cooking class created) 
// and where is the button to add or change it
struct CreationImageView: View {
    // all this var are here to be put in false when the GalleryView is opened
    // it for when they are also opened to avoid them to stack on each other vertically
    @Binding var isDateTimePickerPresented: Bool
    @Binding var isIngredientPickerPresented: Bool
    @Binding var isIngredientUnitPickerPresented: Bool
    @Binding var isUstensilTypePickerPresented: Bool

    // to open the Gallery qhen button clicked
    @Binding var isGalleryPresented: Bool

    // to modify the image chosen to be added to the new recipe or cooking class
    @Binding var elementImage : String?
    var body: some View {
        ZStack {
            // it's at the beginning so there is no image to show
            // so it show instead a gray rectangle at its place
            if elementImage == nil {
                Rectangle()
                    .fill(Color.grisFond)
                    .frame(width: UIScreen.main.bounds.width, height: 300)
                    .ignoresSafeArea()
            } else {
                //else it calls the same view as the page ones (in CommonCommonViews)
                BackgroungImage(imageName: elementImage!)
            }
            Button {
                //as said before, close the other views at the front to avoid stacking
                isDateTimePickerPresented = false
                isIngredientPickerPresented = false
                isIngredientUnitPickerPresented = false
                isUstensilTypePickerPresented = false
                //open the gallery view
                isGalleryPresented = true
            } label: {
                VStack {
                    Image("addPhoto")
                    if elementImage == nil {
                        Text("Ajouter une photo")
                            .foregroundStyle(.black)
                    } else {
                        Text("Changer la photo")
                            .foregroundStyle(.black)
                    }
                }
                .padding()
                .background(Color.white.opacity(0.5))
                .cornerRadius(10)
                .padding(.top)
            }
        }
    }
}

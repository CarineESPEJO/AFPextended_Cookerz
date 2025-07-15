//
//  AtelierPageView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 10/03/2025.
//

import SwiftUI
// link the cooking class to show from parent view (the button clicked to go on the page)
struct AtelierPageView: View {
    var atelier: Atelier
    // go retrieve its creator infos by theit UUID
    var atelierCreatorId: UUID { atelier.creatorId }
    var atelierCreator: User? {
        for user in users {
            if user.id == atelierCreatorId {
                return user
            }
        }
        return nil
    }

    // var to change page between the presentation part and the ingredients part
    @State var selectedPart: AtelierEnum = .description
    // var to change number of portions 
    // (the number PortionChosen is initialized with 1 to make it work 
    // but when the page appears it takes the number Portion chosen by the creator)
    @State var numberPortionChosen: Int = 1
    
    var body: some View {
        ZStack {
            //BG color
            Color.white.ignoresSafeArea()
            
            // the page is scrollable
            ScrollView {
                ZStack(alignment: .top) {
                    // cooking class image under the rest of the page to be able to have a rounder corner on the background of the rest
                    BackgroungImage(imageName: atelier.image)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        // to let a space at the top before the rest to see the coocking class image behind
                        // with return button
                        AtelierPageTransparentFrontBGImage()
                        
                        VStack {
                            // infos of the creator
                            PageHeaderView(elementTitle: atelier.title, recipeCreator: atelierCreator)
                            
                            HStack(spacing: 8) {
                                AtelierPageDateView(atelier: atelier)
                                PageGeneralInfosView(GeneralInfoIcon: atelier.level.IconBlackWhite, GeneralInfoText: atelier.level.name)
                                PageGeneralInfosView(GeneralInfoIcon: "nb_participants", GeneralInfoText: "\(atelier.usersRegistered.count) inscrits")
                            }
                            
                            AtelierDoublePickerView(selectedPart: $selectedPart)

                            // if description part, show the description of the cooking class
                            if selectedPart == .description {
                                Text("\(atelier.description)")
                                    .font(.PoppinsSubhead())
                            }
                            // else it shows the ingredients and ustensils
                                else {
                                    PageStuffView( numberPortionChosen: $numberPortionChosen, numberPortionBase: atelier.portion, listIngredients : atelier.ingredients,
                                                   listUstensils : atelier.ustensils)
                                }
                                    
                          
                        }
                        .padding(20)
                        .padding(.bottom, 20)
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                }
                .padding(.top, 8)
            }
        }
        // return button is hidden because there is another one customed
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        // when page appear, numberPortionChosen takes portion chosen by creator as base
        .onAppear {
            numberPortionChosen = atelier.portion
        }
    }
}

#Preview {
    AtelierPageView(atelier : ateliers[0])
}



















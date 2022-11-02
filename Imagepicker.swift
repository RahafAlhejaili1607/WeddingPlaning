//
//  Imagepicker.swift
//  hall owner
//
//  Created by Rahaf Alhejaili on 05/04/1444 AH.
//

import SwiftUI
import PhotosUI

struct imageoicker: View {
    @State private var selectedItem: PhotosPickerItem? = nil
      @State private var selectedImageData: Data? = nil
      
      var body: some View {
          
          PhotosPicker(
              selection: $selectedItem,
              matching: .images,
              photoLibrary: .shared()) {
                                                                HStack{
                                                                                                                  
                                                                                                                  Text("Upload ")
                                                                                                                  
                                                                                                                  Image(systemName: "photo")
                                                                                                                  
                                                                                                                                                                    .resizable()
                                                                                                                                                                    .frame(width: 25, height: 25)
                                                                                                                  //  .padding(.leading,300)
                                                                                                                  
                                                                                                                  
                                                                }}
              .onChange(of: selectedItem) { newItem in
                  Task {
                      // Retrieve selected asset in the form of Data
                      if let data = try? await newItem?.loadTransferable(type: Data.self) {
                          selectedImageData = data
                      }
                  }
              }
          
          if let selectedImageData,
             let uiImage = UIImage(data: selectedImageData) {
              Image(uiImage: uiImage)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 250, height: 250)
          }
      }
  }

struct imageoicker_Previews: PreviewProvider {
    static var previews: some View {
        imageoicker()
    }
}

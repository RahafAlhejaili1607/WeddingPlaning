//
//  Package.swift
//  hall owner
//
//  Created by Rahaf Alhejaili on 08/04/1444 AH.
//

import SwiftUI

struct Package: View {
    @State var Tableware: Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Clear","Gold","Silver"]
    
    @State var TableCloth: Bool = false
    @State private var reviewIndex = 0
    var reviewOptions = ["Regular","lace Table"]
    
    @State private var Table = ""
    @State private var TierCake = ""
    @State private var FlowersColorandType = ""
    @State private var Facilities = ""
    @State private var Services = ""
    
    @State var facilities = """
* Wedding staircase
* Separate entrances
* DJ System
* BRIDE Room
"""
    var body: some View {
        
            
            NavigationView {
                ZStack {
                    //Spacer()
                    Rectangle()
                    //.frame(width: 400.0, height: 300.0)
                        .foregroundColor(Color(hue: 0.068, saturation: 0.179, brightness: 0.676, opacity: 0.671))
                        .ignoresSafeArea()
                    //.position(x:200, y:0)
                    
                    RoundedRectangle(cornerRadius: 70)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .ignoresSafeArea()
                        .padding(.top ,70)
                    //.position(x:197, y:440)
                    
                    VStack{
                        Text("Silver  ")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        
                        Spacer()
                        
                        //.position(x:190,y:0)
                        // VStack(){
                        HStack{
                            NavigationLink(destination: Signup()) {
                                Text ("Women")}
                            .padding(.trailing,160)
                            .padding(.top,50)
                            
                            /*  Text("Women")
                             .padding(.trailing,160)
                             .padding(.top,50)*/
                            NavigationLink(destination: Signup()) {
                                Text ("Men")}
                            .padding(.top,50)
                            /*  Text("Men")
                             .padding(.top,50)*/
                        }
                        Form{
                            
                            Section(){
                                Text("Table *")
                                
                                Picker(selection: $previewIndex, label: Text("Tableware")){
                                    ForEach(0 ..<   previewOptions.count){
                                        Text(self.previewOptions[$0])
                                        
                                    }
                                }
                                
                                Picker(selection: $reviewIndex, label: Text("TableCloth")){
                                    ForEach(0 ..<   reviewOptions.count){
                                        Text(self.reviewOptions[$0])
                                        
                                    }}
                                Text("TableCloth Color")
                                TextField("Red & Yellow & Blue",  text: $Table)}
                            
                            Section(){
                                Text("3 Tier Cake")
                                imageoicker()}
                            Section(){
                                Text("Flowers Color & Type")
                              

                             
                                imageoicker()
                            }
                            Section(){
                                Text("Facilities")
                                TextEditor(text: $facilities)
                                    .foregroundColor(.gray)
                                
                            }
                            
                            Section(){
                                Text("Services")
                                TextField("Services", text: $Services)}
                            
                        }     }
                }
                        .scrollContentBackground(.hidden)
                               
                        .foregroundColor(Color(hue: 0.248, saturation: 0.334, brightness: 0.515))
                      
                              
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                            }
                        }
    }


struct Package_Previews: PreviewProvider {
    static var previews: some View {
        Package()
    }
}

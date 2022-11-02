//
//  register new hall.swift
//  hall owner
//
//  Created by Rahaf Alhejaili on 05/04/1444 AH.
//

import SwiftUI

struct register_new_hall: View {
    @State var HallName=""
    @State var Capacity=""
    @State var Secions=""
    @State var ContactNumber=""
    @State var dservices=""
    @State var dfacilities=""

    @State var dMenPrice=""
    @State var dWemenPrice=""
    @State var gservices=""
    @State var gfacilities=""
    @State var gMenPrice=""
    @State var gWemenPrice=""
    @State var sservices=""

    @State var sfacilities=""
    @State var sMenPrice=""
    @State var sWemenPrice=""
    init()
    {
        
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        
    }
    
    @Environment(\.calendar) var calendar
        @State var dates: Set<DateComponents> = []
  
    var body: some View {
     //   NavigationView{
            
            
          
       
            ZStack {
                // Spacer()
                Rectangle()
                //.frame(width: 400.0, height: 300.0)
                    .foregroundColor(Color(hue: 0.067, saturation: 0.179, brightness: 0.676, opacity: 0.671))
                    .ignoresSafeArea()
                
                
                //   .position(x:200 , y:0)
                
                
                RoundedRectangle(cornerRadius
                                 : 70.0)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .ignoresSafeArea()
                .padding(.top,90)
                
                //.position(x:197 , y:440)
                
                VStack{
                  //  Text("Register A new Hall")
                      //  .font(.title)
                       // .foregroundColor(.black)
                    
                    
                    Spacer()
                    
                    
                    Spacer()
                    
                    //  .position(x: 190, y: 0)
                    
                    //     VStack(){
                    
                    Form{
                        
                        
                        Section ("Enter hall Informations") {
                            
                            TextField(" Hall Name",
                                      text:$HallName)
                            .frame(width:350.0, height: 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                            
                            TextField(" Capacity",text:$Capacity )
                                .frame(width:350.0, height: 40.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                            
                            TextField(" Number of secions", text: $Secions)
                                .frame(width:350.0, height: 40.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                            
                            
                            TextField(" Contact number", text: $ContactNumber)
                                .frame(width:350.0, height: 40.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                            
                        }.foregroundColor(.gray)
                            .font(.headline)
                        Section {
                           
                         
                            imageoicker()
                           
                             
                            
                        }
                        Section("Available Days") {
                            MultiDatePicker("Available Dates", selection: $dates, in: Date.now...)
                            
                            
                        }.foregroundColor(.gray)
                            .font(.headline)
                            .border(Color(hue: 0.265, saturation: 0.537, brightness: 0.313))
                        //
                        Section(" Diamond Package") {
                            Section("Describe all the provided Services") {
                                TextEditor(text: $dservices)
                                    .foregroundColor(.gray)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                            }.foregroundColor(.gray)
                                .font(.headline)
                            
                            Section("Describe all the provided facilities") {
                                TextEditor(text: $dfacilities)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                   
                            }.foregroundColor(.gray)
                                .font(.headline)
                                
                                
                                Section("Price") {
                                    TextField("Men's Section price ",
                                              text:$dMenPrice)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                    
                                    
                                    TextField("Women's Section price ",
                                              text:$dWemenPrice)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                             
                                    
                                }
                               
                                .foregroundColor(.gray)
                                .font(.headline)
                        }.foregroundColor(.gray)
                            .font(.title3)
                        Section(" Golden Package") {
                            Section("Describe all the provided Services") {
                                TextEditor(text: $gservices)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                   
                            }.foregroundColor(.gray)
                                .font(.headline)
                            
                            Section("Describe all the provided facilities") {
                                TextEditor(text: $gfacilities)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                
                            }.foregroundColor(.gray)
                                .font(.headline)
                                
                                
                                Section("Price") {
                                    TextField("Men's Section price ",
                                              text:$gMenPrice)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                    
                                    TextField("Women's Section price ",
                                              text:$gWemenPrice)
                                    
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                }
                                .foregroundColor(.gray)
                                .font(.headline)
                        }.foregroundColor(.gray)
                            .font(.title3)
                        
                        
                        
                        
                        Section(" Silver Package") {
                            Section("Describe all the provided Services") {
                                TextEditor(text: $sservices)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                   
                            }.foregroundColor(.gray)
                                .font(.headline)
                            
                            Section("Describe all the provided facilities") {
                                TextEditor(text: $sfacilities)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                
                                
                            }.foregroundColor(.gray)
                                .font(.headline)
                            
                            Section("Price") {
                                TextField("Men's Section price ",
                                          text:$sMenPrice)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                
                                TextField("Women's Section price ",
                                          text:$sWemenPrice)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                
                                
                            }.foregroundColor(.gray)
                                .font(.headline)
                        }.foregroundColor(.gray)
                            .font(.title3)
                        
                        
                        
                        
                        
                        
                        /*  Button(action: {})
                         {
                         ZStack {
                         RoundedRectangle(cornerRadius: 20)
                         .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.203, saturation: 0.31, brightness: 0.462)/*@END_MENU_TOKEN@*/)
                         
                         Text("Done")
                         .foregroundColor(.white)
                         }
                         
                         }
                         .frame(width: 200.0, height: 35.0)*/}.foregroundColor(Color(hue: 0.248, saturation: 0.334, brightness: 0.515))
                        .scrollContentBackground(.hidden)
                     /*   ZStack(alignment:.center){
                            RoundedRectangle(cornerRadius: 90)
                                .frame(width: 200.0, height: 35.0)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.203, saturation: 0.31, brightness: 0.462)/*@END_MENU_TOKEN@*/)}*/
                               
                            
                            NavigationLink(destination: Hall_owner_s_profile()) {
                                Text("Done")
                                    .frame(width: 200.0, height: 35.0, alignment: .center)
                                   
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.19, saturation: 0.28, brightness: 0.484, opacity: 0.922)/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .cornerRadius(40)
                                
                                    
                            }
                            
                                
                                
                         
                        
                        
                        
                    
                    
                    
                    Spacer()
                    
                    
                    
                    
                    
                  
                    
                }
                .padding(.top,100)
                
                
                
                
                /*   Button("Save The Changes"){}
                 .border(.green)
                 .frame(width: 200.0,height: 100.0)*/
                
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.large)
                .toolbar{
                    ToolbarItem(placement: .principal){
                        Text("Register A New Hall")
                            .foregroundColor(.white)
                            .font(.title)
                            .padding(.top)
                    }
                }
                
            }
           

            
        }
                
            }
            
            
            
            
            
            
            
            
       
           
            
            
      //  }
       
   // }
    
 


struct register_new_hall_Previews: PreviewProvider {
    static var previews: some View {
        register_new_hall()
    }
}

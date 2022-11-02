//
//  Edit my hall.swift
//  hall owner
//
//  Created by Rahaf Alhejaili on 02/04/1444 AH.
//

import SwiftUI
import UIKit
struct Edit_my_hall: View {
    @State var HallName="Gardina Hall"
    @State var Capacity=" 300"
    @State var Secions="2"
    @State var ContactNumber="0546783462"
    @State var dservices="""
Tables Clear, Gold or selver
table Cloth lace or regolar
6 tire cake
25 meter Buffet
vip flower arrangment
 65 Dessert on each table
Tea, saudi coffee  & water  on each table
bridal photographer
DJ


"""
    @State var dfacilities="""
wedding staircase
separate entrances
VIP entrances table
Bride Room
"""
    @State var dMenPrice="25000sr"
    @State var dWemenPrice="45000sr"
    @State var gservices="""
Tables Clear, Gold or selver
table Cloth lace or regolar
3 tire cake
15 meter Buffet

 35 Dessert on each table
Tea, saudi coffee  & water  on each table




"""
    @State var gfacilities="""
wedding staircase
separate entrances
VIP entrances table
Bride Room
"""
    @State var gMenPrice="15000sr"
    @State var gWemenPrice="350000sr"
    @State var sservices="""
Tables Clear, Gold or selver
table Cloth lace or regolar
5 tire cake
15 meter Buffet
flower arrangment
45 Dessert on each table
Tea, saudi coffee  & water  on each table
DJ
"""
    @State var sfacilities="""
wedding staircase
separate entrances
VIP entrances table
Bride Room
"""
    @State var sMenPrice="10000sr"
    @State var sWemenPrice="25000sr"
    @State var issheetopen = false
  

 //   @State private var avilableDates = Date()
  //  @State private var avilableDates1 = [Date]()
   // @State  var isconfermationSheeetopen = false
    
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
                    .padding(.top,50)
                    
                    //.position(x:197 , y:440)
                    
                    VStack{
                      /*  Text("Edit My Hall")
                            .font(.title)
                            .foregroundColor(.black)*/
                 
                     
                        
                       
                       
                           
                          //  .position(x: 190, y: 0)
                        
                   //     VStack(){
                            
                            Form{
                                
                                
                                Section (" hall Informations") {
                                    
                                    
                                    TextField(" Hall Name",
                                              text:$HallName)
                                    .frame(width:350.0, height: 40.0)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                 
                                    .foregroundColor(.gray)
                                    .cornerRadius(10)
                                    TextField(" Capacity",text:$Capacity )
                                        .foregroundColor(.gray)
                                        .frame(width:350.0, height: 40.0)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(10)
                                    TextField(" Number of secions", text: $Secions)
                                        .foregroundColor(.gray)
                                        .frame(width:350.0, height: 40.0)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(10)
                                    TextField(" Contact number", text: $ContactNumber)
                                        .foregroundColor(.gray)
                                        .frame(width:350.0, height: 40.0)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                      
                                        .cornerRadius(10)
                                }
                                
                                .foregroundColor(.gray)
                                .font(.headline)
                                
                           
                                   
                                       
                                       
                                        imageoicker()
                                       
                                
                               
                                    
          Section {
              
                 HStack{
                     
                                        Image("Hall1")
                         .resizable()
                         .frame(width: 250.0, height: 250.0)
                     Image("hall2")
                         .resizable()
                         .frame(width: 250.0, height:250.0)
                         .padding(.leading)
                    
                
                                    }
                 .foregroundColor(.gray)
                 .font(.headline)
              
              
                                     // لازم احط صور هنا بال hstack
                                     
                               //hscroll+image
          }
          
          .frame(width: 400.0, height: 200.0)
          .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
          .cornerRadius(20)
                                Section("Available Days") {
                                
                                    MultiDatePicker("Available Dates", selection: $dates, in: Date.now...)
                                    
                                       
                                }
                                .foregroundColor(.gray)
                                .font(.headline)
                                .border(Color(hue: 0.265, saturation: 0.537, brightness: 0.313))
    //
                                Section(" Daiamond Package") {
                                    Section("Describe all the provided Services") {
                                        TextEditor(text: $dservices)
                                            .foregroundColor(.gray)
                                           
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                          
                                           
                                    } .foregroundColor(.gray)
                                        .font(.headline)
                                    
                                    Section("Describe all the provided facilities") {
                                        TextEditor(text: $dfacilities)
                                            .foregroundColor(.gray)
                                        
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                        
                                    }
                                    .foregroundColor(.gray)
                                    .font(.headline)
                                        
                                 
                                        
                                        Section("Price") {
                                            TextField("Men's Section price ",
                                                      text:$dMenPrice)
                                            .foregroundColor(.gray)
                                            
                                            .frame(width:350.0, height: 40.0)
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                          
                                            .cornerRadius(10)
                                          
                                            .cornerRadius(10)
                                            
                                            TextField("Women's Section price ",
                                                      text:$dWemenPrice)
                                            .foregroundColor(.gray)
                                            .frame(width:350.0, height: 40.0)
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                          
                                            .cornerRadius(10)
                                          
                                          
                                            
                                        }
                                        .foregroundColor(.gray)
                                        .font(.headline)
                                }
                                .foregroundColor(.gray)
                                .font(.title3)
                          
                                Section(" Golden Package") {
                                    Section("Describe all the provided Services") {
                                        TextEditor(text: $gservices)
                                            .foregroundColor(.gray)
                                            
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                          
                                    } .foregroundColor(.gray)
                                        .font(.headline)
                                    
                                    Section("Describe all the provided facilities") {
                                        TextEditor(text: $gfacilities)
                                            .foregroundColor(.gray)
                                        
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                        
                                    }
                                    .foregroundColor(.gray)
                                    .font(.headline)
                                  
                                        
                                        Section("Price") {
                                            TextField("Men's Section price ",
                                                      text:$gMenPrice)
                                            .foregroundColor(.gray)
                                            .frame(width:350.0, height: 40.0)
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                          
                                            .cornerRadius(10)
                                            
                                            TextField("Women's Section price ",
                                                      text:$gWemenPrice)
                                           
                                            .foregroundColor(.gray)
                                            .frame(width:350.0, height: 40.0)
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                          
                                            .cornerRadius(10)
                                        }
                                        .foregroundColor(.gray)
                                        .font(.headline)
                                } .foregroundColor(.gray)
                                    .font(.title3)
                                Section(" Silver Package") {
                                    Section("Describe all the provided Services") {
                                        TextEditor(text: $sservices)
                                            .foregroundColor(.gray)
                                        
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                        
                                        
                                    } .foregroundColor(.gray)
                                        .font(.headline)
                                    
                                    Section("Describe all the provided facilities") {
                                        TextEditor(text: $sfacilities)
                                            .foregroundColor(.gray)
                                        
                                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                        
                                        
                                        
                                        
                                    }
                                    .foregroundColor(.gray)
                                    .font(.headline)
                               
                                    
                                    Section("Price") {
                                        TextField("Men's Section price ",
                                                  text:$sMenPrice)
                                        .foregroundColor(.gray)
                                        .frame(width:350.0, height: 40.0)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                      
                                        .cornerRadius(10)
                                        
                                        TextField("Women's Section price ",
                                                  text:$sWemenPrice)
                                        .foregroundColor(.gray)
                                        .frame(width:350.0, height: 40.0)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                                      
                                        .cornerRadius(10)
                                       
                                        
                                    }
                                    .foregroundColor(.gray)
                                    .font(.headline)
                                } .foregroundColor(.gray)
                                    .font(.title3)
                                
                            
                                
                                
                                //    DatePicker("Available dates", selection: $avilableDates, in: Date()..., displayedComponents: .date)
                                // MultiDatePicker( self.avilableDates1)
                                /*  HStack(alignment: .center, spacing: 20){
                                 Text("Available dates")
                                 Spacer()
                                 Button{
                                 isconfermationSheeetopen
                                 }label: {
                                 Image(systemName: "calendar")
                                 }
                                 
                                 
                                 }*/
                                // MultiDatePicker("Available dates", selection: $a)
                                
                       
                                
                                
                                
                                
                              
                                    
                                  
                                
                          
                                    
                            } .foregroundColor(Color(hue: 0.248, saturation: 0.334, brightness: 0.515))
                            .scrollContentBackground(.hidden)
                            
                        
                                Spacer()
                           

                           
                          

                          
                           .scrollContentBackground(.hidden)
                           .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.322, saturation: 0.215, brightness: 0.44, opacity: 0.922)/*@END_MENU_TOKEN@*/)
                        
                        HStack {
                            Spacer()
                            VStack {
                          
                               
                            
                                NavigationLink(destination: Edit_my_hall()) {
                                    Text("  Save The Changes")
                                }
                                .frame(width: 200.0, height: 35.0, alignment: .center)
                              
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.19, saturation: 0.28, brightness: 0.484, opacity: 0.922)/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                            
                                NavigationLink(destination: Hall_owner_s_profile()) {
                                    Text("  Delete This Hall")
                                }
                                .frame(width: 200.0, height: 35.0, alignment: .center)
                               
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.19, saturation: 0.28, brightness: 0.484, opacity: 0.922)/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                           
                          
                         
                            
                        }
                        
                        Spacer()
                        
                           }
                        
   .sheet(isPresented: $issheetopen) {
                              Image("hall1")
       Image("Hall2")
                           }
                        }
                   .padding(.top,100)
                        
                        
                        
                        
                        /*   Button("Save The Changes"){}
                         .border(.green)
                         .frame(width: 200.0,height: 100.0)*/
                    
                        
                        
                  }
        
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.large)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Edit The Hall")
                        .foregroundColor(.white)
                        .font(.title)
                }
            }
            
        }
           
            }
            
            
            
            
            
            
            
            
       
           
            
   
    


struct Edit_my_hall_Previews: PreviewProvider {
    static var previews: some View {
        Edit_my_hall()
    }
}

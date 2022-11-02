//
//  Signup.swift
//  hall owner
//
//  Created by Rahaf Alhejaili on 08/04/1444 AH.
//

import SwiftUI

struct Signup: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var Email = ""
    @State private var Phonenumber = ""
    var body: some View
        {
            ZStack {
                //Spacer()
                Rectangle()
                //.frame(width: 400.0, height: 300.0)
                    .foregroundColor(Color(hue: 0.067, saturation: 0.179, brightness: 0.676, opacity: 0.671))
                    .ignoresSafeArea()
                //.position(x:200, y:0)
                
                RoundedRectangle(cornerRadius: 70)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                    .padding(.top ,70)
                //.position(x:197, y:440)
                
                VStack {
                    Text("Sign Up")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.top, -190.0)
                        .position(x:200,y:200 )
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                    
                    Spacer()
                    
                    //.position(x:190,y:0)
                    // VStack(){
                    
                    Form{
                        
                        Text("Username:")
                            .foregroundColor(.gray)
                            .font(.headline)
                        TextField(" username", text: $Username)
                            .frame(width:350.0, height: 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                        
                        Text("Password:")
                            .foregroundColor(.gray)
                            .font(.headline)
                        TextField("Password", text: $Password)
                            .frame(width:350.0, height: 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                        
                        
                        Text(" Email:")
                            .foregroundColor(.gray)
                            .font(.headline)
                        TextField("Email", text: $Email)
                            .frame(width:350.0, height: 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                        
                        Text(" Phone number:")
                            .foregroundColor(.gray)
                            .font(.headline)
                        TextField("Phone number", text: $Phonenumber)
                            .frame(width:350.0, height: 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                    }
                    .scrollContentBackground(.hidden)
                    .padding(.top,-230)
                    .padding(.bottom,160)
                    
                    
                    NavigationLink(destination: ContentView()) {
                        Text ("Sign Up")}
                    .frame(width: 200.0, height: 35.0, alignment: .center)
                  
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.19, saturation: 0.28, brightness: 0.484, opacity: 0.922)/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                        
                    
                   
                    /* Button{
                     print("s")
                     }label: {
                     Text("Sign Up")
                     .foregroundColor(.white)
                     .background(Color.green)
                     .position(x:196,y:690)
                     
                     }*/
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
            }
        }
    }


struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}

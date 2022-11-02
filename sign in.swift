//
//  sign in.swift
//  hall owner
//
//  Created by Rahaf Alhejaili on 08/04/1444 AH.
//

import SwiftUI

struct sign_in: View {
    @State private var username = ""
    @State private var Password = ""
    var body: some View {
        
            ZStack {
                //Spacer()
                Rectangle()
                //.frame(width: 400.0, height: 300.0)
                    .foregroundColor(Color(hue: 0.067, saturation: 0.179,brightness: 0.676, opacity: 0.671))
                    .ignoresSafeArea()
                //.position(x:200, y:0)
                
                RoundedRectangle(cornerRadius: 70)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                    .padding(.top ,70)
                //.position(x:197, y:440)
                
                VStack{
                    Text("Sign In")
                        .font(.title)
                        .multilineTextAlignment(.center)
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
                        TextField(" Username", text: $username)
                            .frame(width:350.0, height: 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                        
                        Text("Password:")
                            .foregroundColor(.gray)
                            .font(.headline)
                        TextField(" Password", text: $Password)
                            .frame(width:350.0, height: 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.243, saturation: 0.865, brightness: 0.313, opacity: 0.133)/*@END_MENU_TOKEN@*/)
                         
                    }
                    .scrollContentBackground(.hidden)
                    .padding(.bottom ,300)
                    .padding(.top,85)
                    
                    NavigationLink(destination: Signup()) {
                        Text ("Forget Password?")}
                            .padding(.top,-300)
                            .padding(.leading, -150.0)
                        .frame(width: 154.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.19, saturation: 0.28, brightness: 0.484, opacity: 0.922)/*@END_MENU_TOKEN@*/)
                    
                    
                    NavigationLink(destination: Signup()) {
                        Text ("Login")}
                    .frame(width: 200.0, height: 35.0, alignment: .center)
                  
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.19, saturation: 0.28, brightness: 0.484, opacity: 0.922)/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                            /*Button {
                             print("s")
                             } label: {
                             Text("Sign in")
                             .foregroundColor(.white)
                             .background(Color.gray)
                             .padding()
                             }*/
                            
                            /*  Button {
                             print("s")
                             }*/
                       
                    
                            /*HStack {
                             Text("Forget Password ?")
                             .fontWeight(.bold)
                             .foregroundColor(.gray)
                             .position(x:100, y:-250)*/
                            
                        HStack{
                            Text ("Don't have account?")
                                .frame(width: 160.0)
                                .padding(.leading, 80.0)
                                .foregroundColor(.gray) .padding(.trailing)
                            
                            NavigationLink(destination: Signup()) {
                                Text ("Sign Up")}
                            .padding(.leading, -70.0)
                                .frame(width: 100.0)
                                .foregroundColor(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.19, saturation: 0.28, brightness: 0.484, opacity: 0.922)/*@END_MENU_TOKEN@*/)
                                
                                /* Button{
                                 print("s")
                                 }label: {
                                 Text("Sign Up")
                                 }*/
                            }
                        
                        }
                    
            
            }
    }
}

struct sign_in_Previews: PreviewProvider {
    static var previews: some View {
        sign_in()
    }
}

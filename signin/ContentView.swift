//
//  ContentView.swift
//  signin
//
//  Created by Fatima Alismail on 06/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var Password = ""
    
    var body: some View {
        
        
        NavigationView {
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
                    Text("Sign in")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .bold()
                    Spacer()
                    
                    Spacer()
                    
                    //.position(x:190,y:0)
                    // VStack(){
                    
                    Form{
                        
                        Text("username:")
                        TextField("username", text: $username)
                        
                        Text("Password:")
                        TextField("Password", text: $Password)
                    }
                    .padding(.bottom ,300)
                    .padding(.top,85)
                    
                    NavigationLink(destination: Sign_up()) {
                        Text ("Forget Password?")}
                            .padding(.top,-300)
                            .padding(.leading, -184.0)
                        .frame(width: 154.0)
                    
                    
                    NavigationLink(destination: Sign_up()) {
                        Text ("Login")}
                            .fontWeight(.bold)
                        .padding(.bottom)
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
                            
                                .foregroundColor(.gray) .padding(.trailing)
                            
                            NavigationLink(destination: Sign_up()) {
                                Text ("Sign Up")}
                                .frame(width: 100.0)
                                
                                
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
    }

            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
        
    


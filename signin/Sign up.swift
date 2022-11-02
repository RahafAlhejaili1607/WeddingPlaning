//
//  Sign up.swift
//  signin
//
//  Created by Fatima Alismail on 06/04/1444 AH.
//

import SwiftUI

struct Sign_up: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var Email = ""
    @State private var Phonenumber = ""
    var body: some View {
        
        NavigationView {
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
                        TextField("username", text: $Username)
                        
                        
                        Text("Password:")
                        TextField("Password", text: $Password)
                        
                        
                        Text("Email:")
                        TextField("Email", text: $Email)
                        
                        
                        Text("Phone number:")
                        TextField("Phone number", text: $Phonenumber)
                    }
                    .scrollContentBackground(.hidden)
                    .padding(.top,-230)
                    .padding(.bottom,160)
                    
                    
                    NavigationLink(destination: ContentView()) {
                        Text ("Sign Up")}
                        
                    
                   
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
        }
       
struct Sign_up_Previews: PreviewProvider {
    static var previews: some View {
        Sign_up()
    }
}

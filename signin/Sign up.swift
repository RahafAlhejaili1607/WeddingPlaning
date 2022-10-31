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
                
                Text("username:")
                    .position(x:50,y:70)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 300.0)
                
                TextField("username", text: $Username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                    .position(x:195,y:-35)
                
                Text("Password:")
                    .position(x:50,y:-135)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 300.0)
                
                TextField("Password", text: $Password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                .position(x:195,y:-240)}
            
            Text("Email:")
                .position(x:33,y:420)
                .multilineTextAlignment(.center)
                .padding(.trailing, 300.0)
            
            TextField("Email", text: $Email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.leading)
                .position(x:195,y:470)
            
            Text("Phone number:")
                .position(x:67,y:520)
                .multilineTextAlignment(.center)
                .padding(.trailing, 250.0)
            
            TextField("Phone number", text: $Phonenumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.leading)
                .position(x:195,y:570)
            
            
            
            Button{
                print("s")
            }label: {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .background(Color.green)
                    .position(x:196,y:690)
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
     
        }
            }
        }
       
struct Sign_up_Previews: PreviewProvider {
    static var previews: some View {
        Sign_up()
    }
}

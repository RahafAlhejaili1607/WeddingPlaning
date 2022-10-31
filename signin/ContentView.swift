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
                    .padding(.top, -190.0)
                    .position(x:200,y:200 )
                    .bold()
                Text("username:")
                    .position(x:50,y:80)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 300.0)

                TextField("username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                    .position(x:195,y:3)

                Text("Password:")
                    .position(x:50,y:-70)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 300.0)

                TextField("Password", text: $Password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .position(x:195,y:-150)
                
                Button {
                    print("s")
                } label: {
                    Text("Sign in")
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .padding()
                }
                
                Button {
                    print("s")
                } label: {
                    Text("Forget Password ?")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .position(x:80, y:-285)
                }
                
                HStack{
                    Text("Don't have account?")
                    Button{
                        print("s")
                    }label: {
                        Text("Sign Up")
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

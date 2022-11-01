//
//  Gold.swift
//  signin
//
//  Created by Fatima Alismail on 06/04/1444 AH.
//

import SwiftUI

struct Gold: View {
    var body: some View {
        NavigationView{
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
                    Text("Silver")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .bold()
                        .padding(.top, -190.0)
                        .position(x:200,y:200 )
                }
            }
        }
    }
}
struct Gold_Previews: PreviewProvider {
    static var previews: some View {
        Gold()
    }
}

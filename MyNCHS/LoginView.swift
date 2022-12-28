//
//  LoginView.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 7/1/22.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel

    var body: some View {
        ZStack {
            Color("Color")
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 500, height: 870)
                .edgesIgnoringSafeArea(.all)
                .offset(y: -12)
            
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 450, height: 450)
                    .clipShape(Circle())
                    .shadow(radius: 5)
                    .offset(y: -20)

                Text("MyNCHS")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .font(Font.custom("Quicksand-Bold", size: 50))
                    .multilineTextAlignment(.center)
                    .offset(y: -200)
                
                Text("Together we rise")
                    .fontWeight(.light)
                    .font(Font.custom("Quicksand-Regular", size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .offset(y: -200)
                
                Button {
                    viewModel.signIn()
                } label: {
                    HStack {
                        Spacer()
                        
                        Image("Google Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 28, height: 28)
                        
                        Spacer()
                        
                        Text("SIGN IN WITH GOOGLE")
                            .fontWeight(.medium)
                            .kerning(1.1)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 350)
                    .background(.white)
                    .cornerRadius(50)
                }
                .offset(y: -190)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

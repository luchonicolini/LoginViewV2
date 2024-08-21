//
//  HomeView.swift
//  LoginView
//
//  Created by Luciano Nicolini on 07/08/2024.
//

import SwiftUI

struct HomeView: View {
    @State var email = ""
    @State var Password = ""
    @State var Remember = false
    @State var showSignUp = true
    
    var body: some View {
        ZStack {
            Color(UIColor.secondarySystemBackground)
                .ignoresSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                if showSignUp {
                    SignIn(email: $email, Password: $Password, Remember: $Remember, showSignUp: $showSignUp, action: {})
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
                    
                } else {
                    SignUp(email: $email,Password: $Password, Remember: $Remember, showSignIn: $showSignUp, action: {})
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
                
                }
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    HomeView()
}

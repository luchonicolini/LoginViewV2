//
//  SignUp.swift
//  LoginView
//
//  Created by Luciano Nicolini on 07/08/2024.
//

import SwiftUI

struct SignUp: View {
    @FocusState var isActive
    @Binding var email: String
    @Binding var Password: String
    @Binding var Remember: Bool
    @Binding var showSignIn: Bool
    var action:() -> Void
    
    var body: some View {
        VStack(spacing: 45) {
            TopView(title: "Create new account", details: "Please fill in the from to continue")
            InfoTF(title: "Email", text: $email)
          
            PasswordCheck()
            
            SignButton(title: "Sign Up", action: {})
            OrView(title: "or")
            HStack(spacing:64) {
                signAccount(image: .apple, width: 32, height: 32, action: {})
                signAccount(image: .apple, width: 32, height: 32, action: {})
                signAccount(image: .apple, width: 32, height: 32, action: {})
            }
            Spacer()
            Button {
                email = ""
                Password = ""
                withAnimation {
                    showSignIn.toggle()
                }
            } label: {
                Text("Already have an account ***Sign in***")
            }
            .tint(.primary)
        }
        .padding(.horizontal)
    }
}


#Preview {
    HomeView()
    //SignUp()
}

//
//  LoginView.swift
//  UserLogin
//
//  Created by Praveen Jangre on 22/06/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("User Login")
                .font(.largeTitle)
                .bold()
            
            VStack {
                TextField("Enter Email", text: $loginViewModel.email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                
                SecureField("Enter Password", text: $loginViewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal)
            
            Button {
                loginViewModel.login()
            } label: {
                Text("Login")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .padding(.horizontal)
        

            // Status message
            if !loginViewModel.loginStatus.isEmpty {
                Text(loginViewModel.loginStatus)
                    .foregroundStyle(loginViewModel.loginStatus.contains("✅") ? .green : .red)
                    .padding(.top)
            }
            
            Spacer()

        }
        .padding()
        
    }
}

#Preview {
    LoginView()
}

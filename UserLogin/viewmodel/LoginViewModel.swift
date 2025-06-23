//
//  LoginViewModel.swift
//  UserLogin
//
//  Created by Praveen Jangre on 22/06/2025.
//

import Foundation


class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    @Published var loginStatus: String = ""
    
    func login() {
        let userAccount = UserAccount(email: email, password: password)
        
        
        guard !userAccount.email.isEmpty || !userAccount.password.isEmpty else {
            loginStatus = "Please enter both email and password."
            return
        }
        
        if userAccount.email == "test@example.com" && userAccount.password == "123456" {
            loginStatus = "✅ Login successfull"
        } else {
            loginStatus = "❌ Invalid email and password."
        }
    }
    
}

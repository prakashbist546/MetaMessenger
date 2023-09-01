//
//  LoginViewModel.swift
//  MetaMessenger
//
//  Created by Prakash Bist on 2023/08/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}

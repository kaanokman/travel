//
//  LoginView.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-09-01.
//

import SwiftUI

struct LoginView: View {
    @State private var givenName: String = ""
    @State private var familyName: String = ""

    var body: some View {
        VStack {
            TextField(
                "Username",
                text: $givenName
            )
            .disableAutocorrection(true)
            .frame(width: 300)
            
            TextField(
                "Password",
                text: $familyName
            )
            .frame(width: 300)
            .disableAutocorrection(true)
        }
        .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    LoginView()
}

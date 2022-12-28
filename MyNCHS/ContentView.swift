//
//  ContentView.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 6/30/22.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var viewModel: AuthenticationViewModel
  
  var body: some View {
      switch viewModel.state {
        case .signedIn: Menu()
        case .signedOut: LoginView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
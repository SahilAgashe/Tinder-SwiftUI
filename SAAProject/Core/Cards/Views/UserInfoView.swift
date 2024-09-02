//
//  UserInfoView.swift
//  SAAProject
//
//  Created by SAHIL AMRUT AGASHE on 08/08/24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Roman Reings")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("35")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(){
                    print("DEBUG: Show Profile here..")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("WWE Player | Tribal Chief")
                .font(.subheadline)
                .lineLimit(2)
        }
        .printOutput("Body of UserInfoView", #line)
        .foregroundStyle(.white)
        .padding()
        .background {
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        }
    }

}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}

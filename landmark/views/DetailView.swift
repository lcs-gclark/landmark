//
//  DetailView.swift
//  landmark
//
//  Created by Gray Clark on 2024-01-30.
//

import SwiftUI

struct DetailView: View {
    
    let item: Landmark
    var body: some View {
        ScrollView {
            Image(item.image)
                      .resizable()
                      .scaledToFit()
                  
                  HStack {
                      Image(systemName: item.isRecommended == true ? "hand.thumbsup.fill" : "hand.thumbsdown")
                          .resizable()
                          .scaledToFit()
                          .frame(height: 20)
                          .padding(5)
                      
                      Spacer()
                  }
                  .padding(.horizontal)
                  
                  Text(item.description)
                  .padding(.horizontal)
            Text(item.description)
              
              }
        .navigationTitle(item.name)
          }
      }
    


#Preview {
    NavigationStack{
        DetailView(item: rom)
        
    }
}
#Preview {
    NavigationStack {
        DetailView(item: sudburyNickel)
    }
}


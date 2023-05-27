//
//  HomeView.swift
//  6-swift-learning
//
//  Created by Liu Ziyi on 27/5/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                
                ForEach(model.modules) { module in
                    
                    // Learning Card
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .aspectRatio(CGSize(width: 335, height: 175),contentMode: .fit)
                        
                        HStack {
                            // Image
                            Image(module.content.image)
                                .resizable()
                                .frame(width: 116, height: 116)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            //Text
                            VStack(alignment:.leading, spacing:10) {
                                //Headline
                                Text("Learn \(module.category)")
                                    .bold()
                                
                                //Description
                                Text(module.content.description)
                                    .padding(.bottom, 20)
                                    .font(.caption)
                                
                                //Icons
                                HStack {
                                    //Number of lessons/questions
                                    Image(systemName: "text.book.closed")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    Text("\(module.content.lessons.count) Lessons")
                                        .font(.caption)
                                    
                                    Spacer()
                                    
                                    //Time
                                    Image(systemName: "clock")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    Text(module.content.time)
                                        .font(.caption)
                                }
                            }
                        }
                            .padding(.horizontal, 20)
                        
                    }
                    
                    // Test Card
                    
                }
                
            }
                .padding()
            
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}

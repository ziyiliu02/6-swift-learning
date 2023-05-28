//
//  ContentDetailView.swift
//  6-swift-learning (iOS)
//
//  Created by Liu Ziyi on 28/5/23.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        let lesson = model.currentLesson
        let url = URL(string: Constants.videoHostUrl + (lesson?.video ?? ""))
        
        VStack{
            // Only show video if we get a valid URL
            if url != nil {
                VideoPlayer(player: AVPlayer(url: url!))
            }
            
            // Description
            
            // Show next lesson button, only if there is a next lesson
            if model.hasNextLesson(){
                Button(action: {
                    //Advance the lesson
                    model.nextLesson()
                }, label: {
                    ZStack{
                        Rectangle()
                            .frame(height:48)
                            .foregroundColor(Color.green)
                            .cornerRadius(10)
                            .shadow(radius:5)
                        
                        Text("Next Lesson: \(model.currentModule!.content.lessons[model.currentLessonIndex + 1].title)")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                })
            }
            
        }

    }
}


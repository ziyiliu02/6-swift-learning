//
//  CodeTextView.swift
//  6-swift-learning (iOS)
//
//  Created by Liu Ziyi on 29/5/23.
//

import SwiftUI

struct CodeTextView: UIViewRepresentable {
    
    @EnvironmentObject var model: ContentModel
    
    func makeUIView(context: Context) -> UITextView {
        
        let textView = UIViewType()
        textView.isEditable = false
        
        return textView
        
    }
    
    func updateUIView(_ textView: UITextView, context: Context) {
        // Set the attributed text for the lesson
        // textView.text = "Testing"
        textView.attributedText = model.lessonDescription
        
        // Scroll back to the top
        textView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1),animated: false)
    }
    
}


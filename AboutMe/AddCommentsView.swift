//
//  AddCommentsView.swift
//  AboutMe
//
//  Created by Pranav Thomas on 1/26/23.
//

import SwiftUI
import Firebase
import FirebaseFirestore

func addFeedback(feedback: String) {
    let db = Firestore.firestore()
    let docRef = db.collection("Feedback Document").document(feedback)

    docRef.setData(["Feedback": feedback]) { error in
        if let error = error {
            print("Error writing document: \(error)")
        } else {
            print("Document successfully written!")
        }
    }
}

struct AddCommentsView: View {
    @State private var feedback: String = ""

    var body: some View {
        VStack {
            Text("Feedback")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            TextField(
              "What do you think about the app?",
              text: $feedback
            )
            .padding()
            .multilineTextAlignment(.center)
            
            Button("Submit") {
                addFeedback(feedback: feedback)
            }
                    
        }
        .padding([.top, .bottom], 50)
    }
}

struct AddCommentsView_Previews: PreviewProvider {
    static var previews: some View {
        AddCommentsView()
    }
}

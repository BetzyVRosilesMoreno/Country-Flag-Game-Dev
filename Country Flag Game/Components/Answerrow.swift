//
//  Answerrow.swift
//  Country Flag Game
//
//  Created by Betzy Moreno on 1/10/24.
//

import SwiftUI

struct Answerrow: View {
    var answer: Answer
    @State private var isSelected = false
    @EnvironmentObject var gameManager: GameManager
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(answer.text)
                .font(.title)
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? .green : .red)
            }
        }
        .padding()
        .frame(width: 300, alignment: .leading)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5, x:0.5, y:0.5)
        .onTapGesture {
            isSelected = true
        }
    }
}

struct Answerrow_Previews: PreviewProvider {
    static var previews: some View {
        Answerrow(answer: Answer(text: "Test", isCorrect: true))
    }
}
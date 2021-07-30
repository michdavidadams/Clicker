//
//  ClickerButton.swift
//  Clicker WatchKit Extension
//
//  Created by Michael Adams on 7/27/21.
//

import SwiftUI
import AVFoundation
import MediaPlayer

struct ClickerButton: View {
    
    @State var isPlaying: Bool = false
    
    var body: some View {
        
        Button(action: {
            self.isPlaying.toggle()
            Sounds.playSound(soundfile: "soundEffect.m4a")
        }) {
            Image(systemName: "waveform")
                .padding()
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.blue)
                .clipShape(Circle())
                .font(Font.system(size: 80))
                .foregroundColor(.black)
        }.buttonStyle(PlainButtonStyle())
        
    }
}

struct ClickerButton_Previews: PreviewProvider {
    static var previews: some View {
        ClickerButton()
    }
}

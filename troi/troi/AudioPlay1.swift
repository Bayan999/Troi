//
//  ContentView.swift
//  soundtry
//
//  Created by Hams Alzahrani on 02/04/1445 AH.
//

import SwiftUI
import AVKit

class SoundManager {
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case badum
        case sound1
    }
    
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
            
            
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    func stopAudio() {
        player?.pause()
    }
    
    func goBackward() {
        player?.currentTime -= 10
    }
    
    func goForward() {
        player?.currentTime += 10
    }
    
    func totalTime() -> Double {
        let totalTime = player?.duration ?? 0
        return totalTime
    }
    
    func currentTime() -> Double {
        let currentTime = player?.currentTime ?? 0
        return currentTime
    }
}

struct AudioPlay1: View {
    @State private var isPlaying = false
    @State private var currentTime: Double = 0
    @State private var timer: Timer?
    
    var body: some View {
        ZStack{
            Color("1")
                .ignoresSafeArea()
            
            VStack {
                Text("اسم المحتوى")
                    .font(.custom("Al Bayan", size: 24))
                    .offset(x: 0, y: -100)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("color2"))
                        .frame(width: 353, height: 380)
                    
                    Image("lotus")
                        .resizable()
                        .frame(width: 352.36, height: 233.9)
                    
                    HStack {
                        Image("music")
                            .resizable()
                            .frame(width: 79, height: 79)
                            .offset(x: -90, y: -170)
                        
                        Image("music")
                            .resizable()
                            .frame(width: 79, height: 79)
                            .offset(x: 80, y: -170)
                    }
                    
                    HStack(spacing: 100) {
                        Button(action: {
                            SoundManager.instance.goBackward()
                        }) {
                            Image(systemName: "backward.fill")
                                .resizable()
                                .frame(width: 36, height: 36)
                                .foregroundColor(.black)
                        }
                        
                        Button(action: {
                            isPlaying.toggle()
                            if isPlaying {
                                SoundManager.instance.playSound(sound: .sound1)
                                startTimer()
                            } else {
                                SoundManager.instance.stopAudio()
                                stopTimer()
                            }
                        }) {
                            Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                                .resizable()
                                .frame(width: 28, height: 36)
                                .foregroundColor(.black)
                        }
                        
                        Button(action: {
                            SoundManager.instance.goForward()
                        }) {
                            Image(systemName: "forward.fill")
                                .resizable()
                                .frame(width: 36, height: 36)
                                .foregroundColor(.black)
                        }
                    }
                    .offset(x: 0, y: 50)
                    
                    VStack(spacing: 20) {
                        Slider(value: Binding<Double>(
                            get: { SoundManager.instance.currentTime() },
                            set: { value in
                                SoundManager.instance.player?.currentTime = value
                            }
                        ), in: 0...SoundManager.instance.totalTime())
                        .accentColor(.black)
                        .onAppear {
                            startTimer()
                        }
//                        .onDisappear {
//                            stopTimer()
//                        }
                        
                        HStack(spacing: 220) {
                            Text(formatTimeInterval(SoundManager.instance.currentTime()))
                            Text(formatTimeInterval(SoundManager.instance.totalTime()))
                        }
                    }
                    .offset(x: 0, y: 10)
                    .offset(x: 0, y: 130)
                    
                    VStack{
                        Button(action: {
                        }, label: {
                            Image("like").resizable().frame(width: 30,height:28)
                                .foregroundColor(.black)
                        })
                    }
                    .offset(x:0,y:160)
                }
                .padding()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color("2"))
                        .frame(width: 295, height: 45)
                    
                    Button("تأمل مع الأصدقاء") {
                        
                    }
                    .background(Color("2"))
                    .foregroundColor(.black)
                    .frame(width: 295.0,height:45.0)
                }
                .offset(x: 0, y: 270)
            }
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            DispatchQueue.main.async {
                currentTime = SoundManager.instance.currentTime()
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func formatTimeInterval(_ timeInterval: Double) -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: timeInterval) ?? "00:00"
    }
    
}

struct AudioPlay1_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlay1()
    }
}

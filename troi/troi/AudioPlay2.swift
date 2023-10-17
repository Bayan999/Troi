import SwiftUI
import AVFoundation

class SoundManager1: ObservableObject {
    static let instance = SoundManager1()
    
    var player: AVAudioPlayer?
    @Published var currentTime: Double = 0
    
    enum SoundOption: String {
        case badum
        case sound1
    }
    
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
            // Update currentTime periodically
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] timer in
                guard let self = self else { return }
                self.currentTime = self.player?.currentTime ?? 0
            }
            
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
}

struct AudioPlay2: View {
    @StateObject private var SoundManager = SoundManager1.instance
    @State private var isPlaying = false
        
    var body: some View {
        ZStack{
            Color("1")
                .ignoresSafeArea()
            
            VStack {
                Text("أنت تتأمل الآن مع صديقك")
                    .font(.custom("Al Bayan", size: 24))
                    .offset(x: 0, y: -100)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("color2"))
                        .frame(width: 353, height: 380)
                    
                     Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                        .resizable()
                        .frame(width: 28, height: 36)
                        .foregroundColor(.black)
                        .onTapGesture {
                            isPlaying.toggle()
                            if isPlaying {
                                SoundManager.playSound(sound: .sound1)
                            } else {
                                SoundManager.stopAudio()
                            }
                        }
                    HStack(spacing: 200) {
                            Button(action: {
                                SoundManager.goBackward()
                            }) {
                                Image(systemName: "gobackward.10")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit).accentColor(.black)
                                    .frame(width: 30, height: 30)
                            }
                            
                            Button(action: {
                                SoundManager.goForward()
                            }) {
                                Image(systemName: "goforward.10")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit).accentColor(.black)
                                    .frame(width: 30, height: 30)
                            }
                        }
                        .offset(x: 0, y: 0)
                    
                    VStack(spacing: 20) {
                        Slider(value: $SoundManager.currentTime, in: 0...SoundManager.totalTime())
                            .accentColor(.black)
                        
                        HStack(spacing: 220) {
                            Text(formatTimeInterval(SoundManager.currentTime))
                            Text(formatTimeInterval(SoundManager.totalTime()))
                        }
                    }
                    .offset(x: 0, y: 10)
                    .offset(x: 0, y: 130)
                    
                    
                }
                .padding()
            }
        }
        .onAppear {
            SoundManager1.instance.playSound(sound: .sound1)
        }
        .onDisappear {
            SoundManager1.instance.stopAudio()
        }
    }
    
    func formatTimeInterval(_ timeInterval: Double) -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: timeInterval) ?? "00:00"
    }
}

struct AudioPlay2_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlay2()
    }
}

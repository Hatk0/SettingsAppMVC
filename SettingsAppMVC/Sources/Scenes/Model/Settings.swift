import Foundation

struct Settings {
    let title: String
    let description: String?
    let image: String
    var color: Color
    
    enum Color {
        case systemBlue
        case systemOrange
        case systemGreen
        case systemRed
        case blue
        case lightGray
        case systemCyan
        case black
    }
    
    static var model = [
        
        [Settings(title: "Airplane Mode", description: "", image: "airplane", color: .systemOrange),
         Settings(title: "Wi-Fi", description: "Off", image: "wifi", color: .systemBlue),
         Settings(title: "Bluetooth", description: "On", image: "network", color: .systemBlue),
         Settings(title: "Mobile Data", description: "Off", image: "antenna.radiowaves.left.and.right", color: .systemGreen),
         Settings(title: "Personal Hotspot", description: "Off", image: "personalhotspot", color: .systemGreen),
         Settings(title: "VPN", description: "Not Connected", image: "bonjour", color: .systemBlue)
        ],
        
        [Settings(title: "Notifications", description: "", image: "bell", color: .systemRed),
         Settings(title: "Sounds & Haptics", description: "", image: "speaker.wave.3", color: .systemRed),
         Settings(title: "Focus", description: "", image: "moon", color: .blue),
         Settings(title: "Screen Time", description: "", image: "hourglass", color: .blue)
        ],
        
        [Settings(title: "General", description: "", image: "gear", color: .lightGray),
         Settings(title: "Control Centre", description: "", image: "switch.2", color: .lightGray),
         Settings(title: "Display & Brightness", description: "", image: "textformat.size", color: .systemBlue),
         Settings(title: "Home Screen", description: "", image: "rectangle.grid.3x2", color: .systemBlue),
         Settings(title: "Accessibility", description: "", image: "figure", color: .systemBlue),
         Settings(title: "Wallpaper", description: "", image: "photo", color: .systemCyan),
         Settings(title: "Siri & Search", description: "", image: "magnifyingglass", color: .black),
         Settings(title: "Face ID & Passcode", description: "", image: "faceid", color: .systemRed),
         Settings(title: "Emergency SOS", description: "", image: "sos", color: .systemRed),
         Settings(title: "Battery", description: "", image: "battery.100percent", color: .systemGreen),
         Settings(title: "Privacy & Security", description: "", image: "hand.raised", color: .systemBlue)
        ]
        
    ]
}

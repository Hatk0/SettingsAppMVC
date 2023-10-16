import Foundation

extension Settings {
    
    static var model: [[Settings]] {
        return [
            
            [Settings(title: "Airplane Mode", description: "", image: "airplane"),
             Settings(title: "Wi-Fi", description: "Off", image: "wifi"),
             Settings(title: "Bluetooth", description: "On", image: "network"),
             Settings(title: "Mobile Data", description: "Off", image: "antenna.radiowaves.left.and.right"),
             Settings(title: "Personal Hotspot", description: "Off", image: "personalhotspot"),
             Settings(title: "VPN", description: "Not Connected", image: "bonjour")
            ],
            
            [Settings(title: "Notifications", description: "", image: "bell"),
             Settings(title: "Sounds & Haptics", description: "", image: "speaker.wave.3"),
             Settings(title: "Focus", description: "", image: "moon"),
             Settings(title: "Screen Time", description: "", image: "hourglass")
            ],
            
            [Settings(title: "General", description: "", image: "gear"),
             Settings(title: "Control Centre", description: "", image: "switch.2"),
             Settings(title: "Display & Brightness", description: "", image: "textformat.size"),
             Settings(title: "Home Screen", description: "", image: "rectangle.grid.3x2"),
             Settings(title: "Accessibility", description: "", image: "figure"),
             Settings(title: "Wallpaper", description: "", image: "photo"),
             Settings(title: "Siri & Search", description: "", image: "magnifyingglass"),
             Settings(title: "Face ID & Passcode", description: "", image: "faceid"),
             Settings(title: "Emergency SOS", description: "", image: "sos"),
             Settings(title: "Battery", description: "", image: "battery.100percent"),
             Settings(title: "Privacy & Security", description: "", image: "hand.raised")
            ]
            
        ]
    }
}

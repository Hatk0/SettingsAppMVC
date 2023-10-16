import UIKit
import SnapKit

class SettingsTableViewCell: UITableViewCell {

    static let identifier = "SettingsTableViewCell"
    
    var model: Settings? {
        didSet {
            settingImageView.image = UIImage(systemName: model?.image ?? "")
            setupBackgroundColor()
        }
    }
    
    // MARK: - UI
    
    private lazy var settingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.layer.cornerRadius = 10
        imageView.contentMode = .center
        imageView.clipsToBounds = true
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .value1, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(settingImageView)
    }
    
    private func setupLayout() {
        settingImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.width.equalTo(32)
            make.height.equalTo(35)
        }
    }
    
    // MARK: - Action
    
    // MARK: - Private methods
    
    private func setupBackgroundColor() {
        guard let title = model?.title else { return }
        
        switch title {
        case "Airplane Mode":
            settingImageView.backgroundColor = .systemOrange
        case "Wi-Fi", "Bluetooth", "VPN", "Display & Brightness", "Home Screen", "Accessibility", "Privacy & Security":
            settingImageView.backgroundColor = .systemBlue
        case "Mobile Data", "Personal Hotspot", "Battery":
            settingImageView.backgroundColor = .systemGreen
        case "Notifications", "Sounds & Haptics", "Face ID & Passcode", "Emergency SOS":
            settingImageView.backgroundColor = .systemRed
        case "Focus", "Screen Time":
            settingImageView.backgroundColor = .blue
        case "General", "Control Centre":
            settingImageView.backgroundColor = .lightGray
        case "Wallpaper":
            settingImageView.backgroundColor = .systemCyan
        case "Siri & Search":
            settingImageView.backgroundColor = .black
        default:
            settingImageView.backgroundColor = .black
        }
    }
    
    // MARK: - Reuse
}

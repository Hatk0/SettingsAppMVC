import UIKit
import SnapKit

class SettingsTableViewCell: UITableViewCell {

    static let identifier = "SettingsTableViewCell"
    
    var model: Settings? {
        didSet {
            settingImageView.image = UIImage(systemName: model?.image ?? "")
            titleLabel.text = model?.title ?? ""
            setupBackgroundColor()
            updateSwitchVisibility()
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
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    private lazy var switchControl: UISwitch = {
       let switchControl = UISwitch()
        switchControl.isOn = true
        switchControl.isEnabled = true
        switchControl.addTarget(self, action: #selector(switchStateDidChange(_:)), for: .valueChanged)
        return switchControl
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
        addSubview(titleLabel)
        addSubview(switchControl)
    }
    
    private func setupLayout() {
        settingImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.width.equalTo(32)
            make.height.equalTo(35)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(settingImageView.snp.trailing).offset(16)
            make.centerY.equalToSuperview()
        }
        
        switchControl.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
        }
    }
    
    // MARK: - Action
    
    @objc func switchStateDidChange(_ sender: UISwitch) {
        if sender.isOn {
            print("Turned on")
        } else {
            print("Turned off")
        }
    }
    
    // MARK: - Private methods
    
    func updateSwitchVisibility() {
        if let title = model?.title, title == "Airplane Mode" {
            switchControl.isHidden = false
            accessoryType = .none
            selectionStyle = .none
        } else {
            switchControl.isHidden = true
            accessoryType = .disclosureIndicator
            selectionStyle = .default
        }
    }
    
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
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.model = nil
    }
}

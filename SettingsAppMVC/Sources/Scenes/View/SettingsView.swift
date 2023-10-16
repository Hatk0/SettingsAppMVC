import UIKit
import SnapKit

final class SettingsView: UIView {
    
    // MARK: - UI

    
    
    // MARK: - Initializers
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
    }
    
    private func setupLayout() {
        
    }
}

import UIKit

class SettingsController: UIViewController {

    private var settingsView: SettingsView?
    
    // MARK: - Lifecycle
    
    override func loadView() {
        settingsView = SettingsView()
        view = settingsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        settingsView?.tableView.reloadData()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
    
    // MARK: - Configuration
    
    private func configure() {
        settingsView?.tableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: SettingsTableViewCell.identifier)
        settingsView?.tableView.dataSource = self
        settingsView?.tableView.delegate = self
    }
}

    // MARK: - Extensions

    extension SettingsController: UITableViewDataSource, UITableViewDelegate {
        func numberOfSections(in tableView: UITableView) -> Int {
            Settings.model.count
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            Settings.model[section].count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.identifier, for: indexPath) as? SettingsTableViewCell
            cell?.contentView.isUserInteractionEnabled = false
            let modelData = Settings.model[indexPath.section][indexPath.row]
            cell?.model = modelData
            cell?.detailTextLabel?.text = modelData.description
            return cell ?? UITableViewCell()
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let setting = Settings.model[indexPath.section][indexPath.row]
                tableView.deselectRow(at: indexPath, animated: true)
                print("The setting is selected: \(setting.title)")
        }
    }


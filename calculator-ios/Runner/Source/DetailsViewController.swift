import UIKit
import SnapKit

class DetailsViewController: UIViewController, ViewCodeConfiguration {
    
    // MARK: - Coordinator
    weak var coordinator: MainCoordinator?
    
    // MARK: - UI Components
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Project Details (Screen 2)"
        label.font = .systemFont(ofSize: 22, weight: .medium)
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        return label
    }()
    
    private lazy var settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open Preferences", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.backgroundColor = .systemPurple
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didTapSettingsButton), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        title = "Details"
        setupViewCode()
    }
    
    // MARK: - ViewCode Setup
    func buildHierarchy() {
        view.addSubview(infoLabel)
        view.addSubview(settingsButton)
    }
    
    func setupConstraints() {
        infoLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        settingsButton.snp.makeConstraints { make in
            make.top.equalTo(infoLabel.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    
    func configureViews() {
        // Additional stylistic configurations if needed
    }
    
    // MARK: - Actions
    @objc private func didTapSettingsButton() {
        // Navigation delegated cleanly to the MainCoordinator
        coordinator?.showSettings()
    }
}

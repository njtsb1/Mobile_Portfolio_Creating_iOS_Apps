import UIKit
import SnapKit

class SettingsViewController: UIViewController, ViewCodeConfiguration {
    
    // MARK: - UI Components
    private let settingsLabel: UILabel = {
        let label = UILabel()
        label.text = "Configuration Hub (Screen 3)"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.textColor = .label
        label.textAlignment = .center
        return label
    }()
    
    private let statusImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "gearshape.fill")
        imageView.tintColor = .systemGray
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        title = "Settings"
        setupViewCode()
    }
    
    // MARK: - ViewCode Setup
    func buildHierarchy() {
        view.addSubview(statusImageView)
        view.addSubview(settingsLabel)
    }
    
    func setupConstraints() {
        statusImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-40)
            make.width.height.equalTo(80)
        }
        
        settingsLabel.snp.makeConstraints { make in
            make.top.equalTo(statusImageView.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
    }
    
    func configureViews() {}
}

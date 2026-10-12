import Foundation

public protocol ViewCodeConfiguration {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
    func setupViewCode()
}

public extension ViewCodeConfiguration {
    func setupViewCode() {
        buildHierarchy()
        setupConstraints()
        configureViews()
    }
}

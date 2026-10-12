import Foundation

// Public access level allows the main app module to instantiate this model
public struct SharedSkill: Identifiable {
    public var id: String
    public let skillName: String
    public let image: String

    public init(id: String = UUID().uuidString, skillName: String, image: String) {
        self.id = id
        self.skillName = skillName
        self.image = image
    }
}

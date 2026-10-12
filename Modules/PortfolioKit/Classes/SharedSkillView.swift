import SwiftUI

public struct SharedSkillView: View {
    var skill: SharedSkill
    var width: CGFloat
    
    // Public initializer required for cross-module accessibility
    public init(skill: SharedSkill, width: CGFloat = 120) {
        self.skill = skill
        self.width = width
    }
    
    public var body: some View {
        VStack {
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
                .frame(height: 40)
            
            Text(skill.skillName)
                .font(.system(size: 13.5, weight: .semibold))
                .padding(.top, 10)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.8)
        }
        .padding()
        .frame(width: width, height: 115)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
        )
    }
}

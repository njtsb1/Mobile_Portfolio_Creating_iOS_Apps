import SwiftUI

struct SkillView: View {
    
    // MARK: - Variables
    var skill: Skill
    var width: CGFloat = 120
    
    // MARK: - Views
    var body: some View {
        VStack {
            // Renders official SF Symbols mapped dynamically from the updated AppModel
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
                .frame(height: 40)
            
            Text(skill.skillName)
                .font(Montserrat.semibold.font(size: 13.5))
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

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
            .previewLayout(.sizeThatFits)
    }
}

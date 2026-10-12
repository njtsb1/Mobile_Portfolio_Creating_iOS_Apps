import SwiftUI
import PortfolioKit // Imports the module to use the shared UI components

struct SkillsView: View {
    
    // MARK: - Variables
    // Changed type to hold shared models from the local pod framework
    var skills: [SharedSkill]
    var width: CGFloat
    
    @State var showSkills = true
    
    // MARK: - Views
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Skills")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                Spacer()
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }
                .buttonStyle(PlainButtonStyle())
            }
            
            if showSkills {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                    ForEach(skills) { skill in
                        // Consumes the component directly from the PortfolioKit module
                        SharedSkillView(skill: skill, width: width / 3 - 20)
                    }
                }
                .padding(.top, 30)
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SkillsView(skills: AppModel().portfolio.skills, width: 400)
                .padding(24)
        }
    }
}

import Foundation
import Combine
import PortfolioKit // Imports the newly created local pod module

class AppModel: ObservableObject {
    @Published var portfolio: Portfolio
    
    init() {
        self.portfolio = Portfolio(
            name: "Nivaldo Beirão", 
            role: "Administrative and IT Process Analyst", 
            description: "IT Governance and Management Specialist with a solid background in Business Administration and a focus on Operational Efficiency and GRC (Governance, Risk and Compliance)", 
            location: "Registro, São Paulo, Brasil", 
            // The skills array now holds SharedSkill objects from PortfolioKit
            skills: [
                SharedSkill(id: UUID().uuidString, skillName: "IT Management", image: "briefcase.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "IT Governance", image: "shield.vibrating.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Project Management", image: "checklist"),
                SharedSkill(id: UUID().uuidString, skillName: "Strategic Planning", image: "arrow.triangle.turn.up.right.diamond.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Moodle", image: "graduationcap.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Standardized Work", image: "doc.text.below.ecg.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Process Optimization", image: "gearshape.2.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Financial Risk Management", image: "chart.line.uptrend.xyaxis"),
                SharedSkill(id: UUID().uuidString, skillName: "Compliance Management", image: "checkmark.seal.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Administrative Support", image: "person.2.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Technical Support", image: "wrench.and.screwdriver.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Microsoft Excel", image: "tablecells"),
                SharedSkill(id: UUID().uuidString, skillName: "Calculation", image: "plus.forwardslash.minus"),
                SharedSkill(id: UUID().uuidString, skillName: "JavaScript", image: "applescript"),
                SharedSkill(id: UUID().uuidString, skillName: "HTML", image: "globe"),
                SharedSkill(id: UUID().uuidString, skillName: "CSS", image: "paintpalette.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Banking Operations", image: "coloncurrencysign.circle.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Customer Service", image: "bubble.left.and.bubble.right.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Internal Process Audit", image: "doc.text.magnifyingglass"),
                SharedSkill(id: UUID().uuidString, skillName: "Inventory and Asset Management", image: "shippingbox.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Analytical Thinking", image: "brain.head.profile"),
                SharedSkill(id: UUID().uuidString, skillName: "Emotional Intelligence", image: "heart.text.square.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Teamwork", image: "person.3.sequence.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Organization", image: "tray.full.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Resilience", image: "bolt.shield.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Critical Thinking", image: "lightbulb.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "Leadership", image: "crown.fill"),
                SharedSkill(id: UUID().uuidString, skillName: "People Management", image: "person.line.dotted.person.fill")
            ], 
            experience: [
                Experience(id: UUID().uuidString, companyName: "YouTube", role: "Multimedia Editor and Digital Asset Manager", duration: "April 2023 - October 2025"),
                Experience(id: UUID().uuidString, companyName: "Betfair", role: "Risk Analyst and Market Intelligence", duration: "March 2021 - December 2021"),
                Experience(id: UUID().uuidString, companyName: "Unisepe Educational", role: "Administrative Assistant", duration: "July 2016 - September 2019"),
                Experience(id: UUID().uuidString, companyName: "Registro Regional Education Unit", role: "Administrative Support", duration: "July 2014 - June 2016"),
                Experience(id: UUID().uuidString, companyName: "Miracatu Regional Education Unit", role: "Administrative Support", duration: "September 2011 - August 2013"),
                Experience(id: UUID().uuidString, companyName: "Bradesco Bank", role: "Clerk / Cashier", duration: "April 2009 - March 2011"),
                Experience(id: UUID().uuidString, companyName: "Tio Beba Supermarkets", role: "Operations and Sales Assistant (Retail)", duration: "January 2009 - March 2011")
            ], 
            educations: [
                Educations(id: UUID().uuidString, collegeName: "DIO", concentration: "IT Specialist", duration: "October 2021 - Present"),
                Educations(id: UUID().uuidString, collegeName: "Unisepe Educational", concentration: "IT Governance and Management", duration: "July 2017 - December 2018"),
                Educations(id: UUID().uuidString, collegeName: "Unisepe Educational", concentration: "Business Administration", duration: "January 2010 - June 2017")
            ]
        )
    }
}

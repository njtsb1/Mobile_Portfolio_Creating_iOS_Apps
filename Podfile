platform :ios, '14.0'
use_frameworks!

workspace 'project.xcworkspace'

# Target of Project 2 and 3
target 'PortfolioApp' do
  project 'PortfolioApp/PortfolioApp.xcodeproj'
  pod 'PortfolioKit', :path => 'Modules/PortfolioKit'
end

# NEW: Target of Project 1 (Calculator App)
target 'Runner' do
  project 'calculator-ios/Runner.xcodeproj'
  
  # Add SnapKit dependency for the Calculator App
  pod 'SnapKit', '~> 5.6.0'
end

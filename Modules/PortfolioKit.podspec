Pod::Spec.new do |s|
  s.name             = 'PortfolioKit'
  s.version          = '0.1.0'
  s.summary          = 'A shared component library for the Portfolio applications.'
  s.description      = 'Contains reusable UI components and modules like Skills layouts for modular application tracks.'
  s.homepage         = 'https://github.com'
  s.license          = { :type => 'MIT', :text => 'License text' }
  s.author           = { 'Nivaldo Beirao' => 'nivaldo@example.com' }
  s.source           = { :path => '.' }

  s.ios.deployment_target = '14.0'
  s.swift_version    = '5.0'

  # Points to the source files that will be compiled into the module
  s.source_files = 'Classes/**/*'
  
  s.frameworks = 'SwiftUI', 'Foundation'
end

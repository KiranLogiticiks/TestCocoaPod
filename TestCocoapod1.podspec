
Pod::Spec.new do |spec|
  spec.name         = "TestCocoapod1"
  spec.version      = "0.0.4"
  spec.summary      = "A CocoaPods library to show alert from any class."

  spec.description  = "For testing purpose . Only used to create a UIAlertViewController wrapper with three action button."
  spec.homepage     = "https://github.com/KiranLogiticiks/TestCocoaPod"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Kiran P Nair" => "kiran@logiticks.com" }
  spec.ios.deployment_target = "12.1"
  spec.swift_version = "5.0"
  spec.source       = { :git => "https://github.com/KiranLogiticiks/TestCocoaPod.git", :tag => "#{spec.version}" }
  spec.source_files  = "TestCocoapod/**/*.swift"
end

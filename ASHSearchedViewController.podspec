
Pod::Spec.new do |s|

  s.name         = "ASHSearchedViewController"
  s.version      = "1.0.0"
  s.summary      = "A replacement for the standard UIViewController that provides navigation bar integrated searching interface"

  s.description  = <<-DESC
  Use ASHSearchedViewController as a base class for your ViewController instead of the UIVIewController if you want to get navigation bar-integrated searching UI for free. You then need to implemented actual search based on received text input.
                   DESC

  s.homepage     = "https://github.com/Xedart/ASHSearchedViewController"

  s.license      = "MIT"

  s.author             = { "Xedart" => "Xedartmail@gmail.com" }
  s.platform     = :ios, "9.0"


  s.source       = { :git => "https://github.com/Xedart/ASHSearchedViewController.git", :tag => "1.0.0" }

  s.source_files  = "ASHSearchedViewController"

  s.swift_version = "4.2"

  s.resource_bundles = {
    'ASHSearchedViewController' => [
        'ASHSearchedViewController/Resources/*.xcassets'
    ]
  }

end

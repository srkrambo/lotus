Pod::Spec.new do |s|
  s.name         = "Lotus"
  s.version      = "0.0.1"
  s.summary      = "Layer animation DSL"
  s.description  = <<-DESC
  Light and easy to use DSL for animating layers with help of CoreAnimation
                   DESC
  s.homepage     = "https://github.com/vkondrashkov/lotus"
  s.license      = "MIT"
  s.author       = { "Vladislav Kondrashkov" => "vladislav.kondrashkov@gmail.com" }
  s.source       = { :git => "https://github.com/vkondrashkov/lotus.git", :tag => '0.0.1' }
  s.platform     = :ios, '10.0'
  s.swift_version = '5.0'
  s.source_files  = "Source/*.swift"
end
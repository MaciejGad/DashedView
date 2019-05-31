Pod::Spec.new do |s|
  s.name                      = "DashedView"
  s.version                   = "1.0.0"
  s.summary                   = "DashedView"
  s.homepage                  = "https://github.com/MaciejGad/DashedView"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Maciej Gad" => "gad.maciej@gmail.com" }
  s.source                    = { :git => "https://github.com/MaciejGad/DashedView.git", :tag => s.version.to_s }
  s.ios.deployment_target     = "8.0"
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
end

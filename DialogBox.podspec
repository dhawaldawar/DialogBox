Pod::Spec.new do |s|
  s.name             = 'DialogBox'
  s.version          = '1.0.0'
  s.summary          = 'Alerts, Notifications, Screen messages, toast/HUD and Loading views'
  s.description      = 'It helps to create your own style of Alerts, Notifications, Screen messages, toast/HUD and Loading views with plenty options of customisation.'
  s.homepage         = 'https://github.com/dhawaldawar/DialogBox'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dhawal Dawar' => 'dhawal.dawar@gmail.com' }
  s.source           = { :git => 'https://github.com/dhawaldawar/DialogBox.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'DialogBox/Classes/**/*'
end

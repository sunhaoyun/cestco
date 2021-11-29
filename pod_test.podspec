
Pod::Spec.new do |s|
  s.name             = 'pod_test'
  s.version          = '0.1.0'
  s.summary          = 'A short description of pod_test.'
  s.homepage         = 'https://github.com/sunhy/pod_test'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sunhy' => '1868297745@163.com' }
  s.source           = { :git => 'https://github.com/sunhy/pod_test.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.source_files = 'pod_test/Classes/**/*'

end

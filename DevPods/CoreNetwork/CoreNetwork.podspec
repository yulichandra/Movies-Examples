Pod::Spec.new do |s|
    s.name             = 'CoreNetwork'
    s.version          = '0.1.0'
    s.summary          = 'A short description of CoreNetwork.'

    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                        DESC

    s.homepage         = 'https://github.com/herlianzhang/CoreNetwork'
    s.author           = { 'herlianzhang' => 'herlian@ovo.id' }
    s.source           = { :git => 'https://github.com/herlianzhang/CoreNetwork.git', :tag => s.version.to_s }

    s.ios.deployment_target = '13.0'

    # s.test_spec 'UnitTests' do |test_spec|
    #     test_spec.source_files = 'TestAja/UnitTests/**/*'

    #     test_spec.dependency 'Quick'
    #     test_spec.dependency 'Nimble'
    #     test_spec.dependency 'iOSSnapshotTestCase'
    # end

    s.source_files = 'CoreNetwork/Module/**/*'

    s.dependency 'Moya', '~> 15.0'
end
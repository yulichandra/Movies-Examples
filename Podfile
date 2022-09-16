# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'
use_frameworks!

def core
  pod 'CoreUI', :path => 'DevPods/CoreUI'
  pod 'CoreNetwork', :path => 'DevPods/CoreNetwork'
  pod 'CoreUtils', :path => 'DevPods/CoreUtils'
end

def feature
  pod 'Home', :path => 'DevPods/Home'
end

target 'Movies' do
  core
  feature
end

target 'Movies Dev' do
  core
  feature
end

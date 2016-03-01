#
# Be sure to run `pod lib lint TDCore.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "TDCore"
s.version          = "1.2.8"
s.summary          = "TDCore is a iOS framework. You have beauty project and stable. It will down time development for you"
s.description      = "TDCore allows configure & create base to any iOS Project. Below are services needed to be implement basic funtion. so it's help to you can write short code and meanable. So you will the clear source code"
s.homepage         = "https://github.com/thuydao/TDCore"
# s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
s.license          = 'MIT'
s.author           = { "Thuỷ Đào" => "daoduythuy@gmail.com" }
s.source           = { :git => "https://github.com/thuydao/TDCore.git", :tag => s.version.to_s }
# s.social_media_url = 'https://www.facebook.com/daoduythuy'

s.ios.vendored_frameworks = 'Frameworks/TDLog.framework'

s.platform     = :ios, '6.0'
s.requires_arc = true
s.frameworks   = ['Foundation', 'UIKit', 'CoreGraphics', 'QuartzCore', 'CoreFoundation']

s.source_files = 'TDCore/*'

s.subspec 'TDCategory' do |ss|
    ss.source_files = 'TDCategory/*'
end

s.subspec 'TDEvent' do |ss|
    ss.source_files = 'TDEvent/*'
end

s.subspec 'TDPopup' do |ss|
    ss.source_files = 'TDPopup/*'
end

s.subspec 'TDUtils' do |ss|
    ss.source_files = 'TDUtils/*'
end

s.subspec 'TableViewDragLoad' do |ss|
    ss.source_files = 'UITableViewDragLoad/**/*'
end


s.subspec 'TDCustomView' do |ss|
ss.source_files = 'TDCustomView/**/*'
end

s.resource_bundles = {
    'TDCore' => ['Resources/**/*.{png,xib,storyboad}']
}

s.public_header_files = 'TDCore/TDCore.h','TDBaseViewController/*.h','TDCategory/*.h','TDEngineLog/*.h','TDEvent/*.h','TDPopup/*.h','TDUtils/*.h','UITableViewDragLoad/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end

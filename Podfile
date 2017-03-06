platform :ios, '9.1'
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

abstract_target 'Abstract' do

    pod 'Alamofire'
    
    #TARGETS
    target 'CI' do
    end

    target 'CITests' do

    end

    target 'CIUITests' do
        
    end
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end

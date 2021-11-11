# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'web3Eth' do
  # Comment the next line if you don't want to use dynamic frameworks
 # use_frameworks!
 use_modular_headers!
  # Pods for web3Eth
pod 'web3swift'
#post_install do |installer|
#  installer.pods_project.targets.each do |target|
#    if target.name =~ /-macOS$/
#      target.build_configurations.each do |config|
#        config.build_settings['DYLIB_INSTALL_NAME_BASE'] = target.product_name
#        config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'YES'
#      end
#    end
#  end
#end
end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['MACH_O_TYPE'] = 'staticlib'
    end
  end
end

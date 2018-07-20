# Uncomment the next line to define a global platform for your project
use_frameworks!
platform :ios, '8.0'

def memory_frameworks
  #start - add google adMob
  pod 'Firebase/AdMob', '~> 3.17.0'
  #end
  
  #start - google analytics
  pod 'GoogleAnalytics', '~> 3.17.0'
  pod 'Firebase/Core', '~> 3.17.0'
  #end
end

target 'Memory' do
  memory_frameworks

  target 'MemoryTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'MemoryUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

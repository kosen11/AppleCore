Pod::Spec.new do |spec|
  spec.name = "AppleCore"
  spec.version = "0.0.1"
  spec.summary = "Core support extensions and convenience functions"
  spec.homepage = "https://github.com/kosen11"
  spec.license = "Privately Owned"
  spec.author = { "Raymond Pietz" => "raymond.pietz@gmail.com" }
  spec.source = { :git => "https://github.com/kosen11/AppleCore.git", :tag => "0.0.1" }
  spec.source_files = "AppleCore/*.{swift,h,m}", "AppleCore/**/*.{swift,h,m}"
end

#
# Be sure to run `pod lib lint NodeKitten.podspec" to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

s.name             = "freetype-gl"
s.version          = "0.1.0"
s.summary          = "A C OpenGL Freetype engine"
s.homepage         = "http://code.google.com/p/freetype-gl/"
s.license          = "BSD"
s.author           = { "structuresound" => "leif@structuresound.com" }
s.source           = {:git => 'https://github.com/structuresound/freetype-gl.git',
                      :tag => 'master'
                     }

s.dependency 'freetype', '~> 2.6'
s.ios.deployment_target = "6.0"
s.osx.deployment_target = "10.9"

s.source_files = "*.{h,c,cpp}"

s.ios.frameworks = "UIKit", "OpenGLES"
s.osx.frameworks = "AppKit", "OpenGL"

s.resources = "fonts/*.ttf",
              "shaders/*.{vert,frag}"

s.xcconfig  =  { "CLANG_CXX_LIBRARY" => "libc++",
                 "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                 "GCC_OPTIMIZATION_LEVEL" => "3"
                 }

end

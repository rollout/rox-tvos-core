Pod::Spec.new do |s|

  s.name         = "ROXCore-tvOS"
  s.version      = "6.0.5"
  s.summary      = "Continuous Feature Rollouts for Mobile"
  s.description  = "Release mobile features quickly and safely with fully controlled rollouts, measure impact, and react as needed without waiting for your next code release."

  s.homepage     = "https://rollout.io"
  s.license      = {
                      "type" => "Commercial",
                      "text" => "See http://www.rollout.io/"
                   }
  s.authors      = {
                      "Rollout.io" => "support@rollout.io"
                   }
  s.documentation_url = "http://support.rollout.io/"

  s.source       = { :git => "https://github.com/rollout/rox-core-spm.git", :tag => "#{s.version}" }

  s.vendored_frameworks = "ROXCore.xcframework"

  s.platform = :tvos

  s.swift_version = '4.0'

  s.tvos.deployment_target  = '10.0'
  s.tvos.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64', }
  s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }

end

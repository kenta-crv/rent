lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'core/version'

Gem::Specification.new do |spec|
  spec.name        = 'paypal-checkout-sdk'
  spec.version     = "1.0.5"
  spec.summary     = "Deprecated."
  spec.description = "[Deprecated] This repository contains PayPal's Ruby SDK for Checkout REST API"
  spec.authors     = ["http://developer.paypal.com"]
  spec.email       = 'dl-paypal-checkout-api@paypal.com'
  spec.homepage    = 'https://github.com/paypal/Checkout-Ruby-SDK'
  spec.license     = 'Apache-2.0'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'paypalhttp', '~> 1.0.1'

  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock'
end

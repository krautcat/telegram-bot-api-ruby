# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'telegram-bot-api-ruby'
  spec.authors       = ['Odisharia Georgiy']
  spec.email         = ['math.kraut.cat@gmail.com']
  spec.summary       = "Tiny Ruby wrapper for Telegram Bot API"
  spec.version	     = '0.0.1'

  spec.files  	     = Dir['lib/**/*.rb'] 
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = Gem::Platform::RUBY

  spec.add_dependency 'virtus'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
end

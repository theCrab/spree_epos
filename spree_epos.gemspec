# version = File.read(File.expand_path("../../SPREE_VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_epos'
  s.version     = '0.0.1.beta'
  s.summary     = 'This is a Spree POS (Point Of Sale) for physical operated shops'
  s.description = %W{ While Spree is focused mainly towards online e-commerce, the high-street shops rely on
                      the same design and infrastructure. The online stores are at large an extension of the high-street shop.
                      This extension uses the Spree Checkout DSL to bring back unify both shop fronts.
                      For UK stores that use the 'Verifone Payment Terminals', there is a `spree_verifone` payment extension
                      but requirements of verifone has asked we release it secretely. Get in touch if interested. }

  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Nelson Kelem'
  s.email     = 'nelson@safarista.com'
  s.homepage  = 'http://www.safarista.com'

  s.files       = Dir['LICENSE', 'README.md', 'app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*', 'vendor/**/*']
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 2.0.0'

  s.add_dependency 'rails', '~> 3.2.13'

  s.add_dependency 'jquery-rails', '~> 2.2.1'
  s.add_dependency 'select2-rails', '~> 3.2.1'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end

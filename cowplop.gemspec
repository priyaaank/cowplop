Gem::Specification.new do |s|
  s.name        = 'cowplop'
  s.version     = '0.0.1'
  s.date        = '2011-07-03'
  s.summary     = "A gem to manage your seed data with least amount of hassle."
  s.description = "Provides a nice DSL for your seed data"
  s.authors     = ["Priyank Gupta"]
  s.email       = 'priyaaank@gmail.com'
  s.files       = ["lib/cowplop.rb"]
  s.homepage    = 'http://rubygems.org/gems/cowplop'

  s.files         = `git ls-files`.split("\n")
  s.files        += Dir.glob("lib/**/*")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  
  s.add_development_dependency 'bundler', ['>= 1.0.0']
  s.add_development_dependency 'rspec', ['>= 0']
end


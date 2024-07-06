# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'csv-editor'
  s.version     = '0.1.1'
  s.licenses    = ['MIT']
  s.summary     = 'CSV Editor'
  s.description = 'Command line CSV file editor'
  s.authors     = ['Doug Youch']
  s.email       = 'dougyouch@gmail.com'
  s.homepage    = 'https://github.com/dougyouch/csv-editor'
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir      = 'bin'
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.add_runtime_dependency 'csv-utils'
  s.add_runtime_dependency 'tty-prompt'
end

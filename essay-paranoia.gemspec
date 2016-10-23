# encoding: utf-8
# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name            = 'essay-paranoia'
  s.version         = '1.0.3'
  s.authors         = ['Yaroslav Konoplov']
  s.email           = ['eahome00@gmail.com']
  s.summary         = 'Essay writer for paranoia'
  s.description     = 'Essay writer for paranoia'
  s.homepage        = 'http://github.com/yivo/essay-paranoia'
  s.license         = 'MIT'
  s.platform        = Gem::Platform::RUBY

  s.executables     = `git ls-files -z -- bin/*`.split("\x0").map{ |f| File.basename(f) }
  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_dependency 'paranoia', '>= 1.0', '< 3.0'
  s.add_dependency 'essay',    '~> 1.0'
end

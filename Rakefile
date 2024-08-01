
begin
  require "#{__dir__}/task/gemgem"
rescue LoadError
  sh 'git submodule update --init --recursive'
  exec Gem.ruby, '-S', $PROGRAM_NAME, *ARGV
end

Gemgem.init(__dir__) do |s|
  s.name    = 'gem-grep'
  s.version = '1.0.0'
  s.add_runtime_dependency('gem-path')
end

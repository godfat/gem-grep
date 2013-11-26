
require 'stringio'

class CapturedUI < Gem::StreamUI
  def initialize
    super($stdin, StringIO.new, $stderr, false)
  end
end

class Gem::Commands::GrepCommand < Gem::Command
  def description
    'Edit the gem for a given name or edit the file for a given require path'
  end

  def initialize
    super('grep', description)
  end

  def execute
    ui = CapturedUI.new
    Gem::DefaultUserInteraction.use_ui(ui) do
      Gem::GemRunner.new.run(['path'] + options[:args])
    end

    if options[:build_args].empty?
      alert_error('No pattern specified')
      terminate_interaction(1)
    else
      exec(grep, *options[:build_args], '-nR', ui.outs.string.strip)
    end
  end

  def exec *args
    say(args.join(' '))
    super
  end

  def grep
    ENV['GEM_GREP'] || 'grep'
  end
end


require 'stringio'

class Gem::Commands::GrepCommand < Gem::Command
  class CapturedUI < Gem::StreamUI
    def initialize
      super($stdin, StringIO.new, $stderr, false)
    end
  end

  def description
    'Grep the gem for a given name or grep the file for a given require path'
  end

  def initialize
    super('grep', description)
  end

  def execute
    if options[:build_args].empty?
      alert_error('No pattern specified')
      terminate_interaction(1)
    end

    exec(*grep_command(options[:args], options[:build_args]))
  end

  def grep_command path_args, grep_args
    [grep_name, *grep_args, '-nR', capture_path(*path_args)]
  end

  private
  def capture_path *path_args
    ui = CapturedUI.new
    Gem::DefaultUserInteraction.use_ui(ui) do
      Gem::GemRunner.new.run(['path', *path_args])
    end
    ui.outs.string.strip
  end

  def grep_name
    ENV['GEM_GREP'] || 'grep'
  end

  def exec *args
    say(args.join(' '))
    super
  end
end

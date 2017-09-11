
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

    exec(*grep_command(options[:build_args], options[:args]))
  end

  def grep_command grep_args, *paths_args
    [grep_name, *grep_args, *grep_default_args,
     *paths_args.map(&method(:capture_path))]
  end

  private
  def capture_path path_args
    ui = CapturedUI.new
    Gem::DefaultUserInteraction.use_ui(ui) do
      Gem::GemRunner.new.run(['path', *path_args])
    end
    ui.outs.string.strip
  end

  def grep_name
    @grep_name ||= ENV['GEM_GREP'] || 'grep'
  end

  def grep_default_args
    case grep_name
    when 'rg'
      []
    else
      ['-nR']
    end
  end

  def exec cmd, *args
    quoted_args = args.map(&method(:quote))
    say("#{cmd} #{quoted_args.join(' ')}")
    super
  end

  def quote arg
    escaped = arg.gsub('\\', '\\\\\\').gsub("'", '\'').gsub('"', '\\"')

    if escaped.include?(' ')
      "'#{escaped}'"
    else
      escaped
    end
  end
end

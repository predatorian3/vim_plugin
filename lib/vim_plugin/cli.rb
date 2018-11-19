require 'vim_plugin'
require 'vim_plugin/cmds' # Holds extra Thor commands
require 'thor'

module VimPlugin
  # VimPlugin::Generator
  # Used to call other generated task options.
  class Generate < Thor
    # Registering the Plugin Generator Command
    # => https://github.com/erikhuda/thor/wiki/Groups
    register(VimPlugin::PathogenPlugin, 'plugin', 'plugin NAME', 'Generate Vim Pluing named NAME')
  end

  # VimPlugin::CLI
  # The main CLI Class for the vim_plugin application
  class CLI < Thor
    # VimPlugin::CLI#geneate
    # is a Sub-command calling more commands in the generate class.
    desc 'generate SUBCOMMAND', 'Generation tasks.'
    subcommand 'generate', Generate
  end
end

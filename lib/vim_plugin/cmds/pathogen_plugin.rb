require 'thor'
require 'thor/group'

module VimPlugin
  # VimPlugin::PathogenPlugin
  # The class used to generate Pathogen Plugin structures.
  class PathogenPlugin < Thor::Group
    include Thor::Actions

    desc 'Generate Vim Plugin named NAME'
    argument :plugin_name,
             type: :string,
             desc: 'Name of the Pathogen Vim Plugin.'

    def config
      config = {
        'plugin_name' => plugin_name,
        'maintainer' => ENV['USER']
      }
      return config
    end

    # Set the Root directory for the Generators to use for template lookups.
    def self.source_root
      File.join(File.dirname(__FILE__), '..', 'templates')
    end

    # Create teh Plugin base directory.
    def create_plugin_base
      empty_directory(plugin_name)
    end

    # Create the Plugin's Colors directory
    def create_plugin_colors
      empty_directory(plugin_name + '/colors')
      template('colors.vim.tt', plugin_name + '/colors/' + plugin_name + '.vim', config)
    end

    # Create teh Plugin's Plugin directory
    def create_plugin_plugin
      empty_directory(plugin_name + '/plugin')
      template('plugin.vim.tt', plugin_name + '/plugin/' + plugin_name + '.vim', config)
    end

    # Create the Plugin's FileType Detection directory
    def create_plugin_ftdetect
      empty_directory(plugin_name + '/ftdetect')
      template('ftdetect.vim.tt', plugin_name + '/ftdetect/' + plugin_name + '.vim', config)
    end

    # Create the Plugin's FileType Plugin directory.
    def create_plugin_ftplugin
      empty_directory(plugin_name + '/ftplugin')
      template('ftplugin.vim.tt', plugin_name + '/ftplugin/' + plugin_name + '.vim', config)
    end

    # Create the Plugin's Indentation directory.
    def create_plugin_indent
      empty_directory(plugin_name + '/indent')
      template('indent.vim.tt', plugin_name + '/indent/' + plugin_name + '.vim', config)
    end

    # Create the Plugin's Compiler directory.
    def create_plugin_compiler
      empty_directory(plugin_name + '/compiler')
      template('compiler.vim.tt', plugin_name + '/compiler/' + plugin_name + '.vim', config)
    end

    # Create the Plugin's After Directory.
    def create_plugin_after
      empty_directory(plugin_name + '/after')
      template('after.vim.tt', plugin_name + '/after/' + plugin_name + '.vim', config)
    end

    # Create teh Plugin's Autoload Directory
    def create_plugin_autoload
      empty_directory(plugin_name + '/autoload')
      template('autoload.vim.tt', plugin_name + '/autoload/' + plugin_name + '.vim', config)
    end

    # Create the Plugin's Documenation directory.
    def create_plugin_doc
      empty_directory(plugin_name + '/doc')
      template('doc.txt.tt', plugin_name + '/doc/' + plugin_name + '.txt', config)
    end

    # Create the Plugin's Syntax directory
    def create_plugin_syntax
      empty_directory(plugin_name + '/syntax')
      template('syntax.vim.tt', plugin_name + '/syntax/' + plugin_name + '.vim', config)
    end

    # Create the Plugin's Keymap directory
    def create_plugin_keymap
      empty_directory(plugin_name + '/keymap')
      template('keymap.vim.tt', plugin_name + '/keymap/' + plugin_name + '.vim', config)
    end

    # Create teh Plugin's README.md file.
    def create_plugin_readme
      template('README.md.tt', "#{plugin_name}/README.md", config)
    end

    # Create the Plugin's LICENSE file.
    def create_plugin_license
      template('LICENSE.tt', "#{plugin_name}/LICENSE", config)
    end

    # Create the Plugin's .gitignore file.
    def create_plugin_gitignore
      template('gitignore.tt', "#{plugin_name}/.gitignore", config)
    end

    def git_tasks
      say('=> Be sure to make this into a Git Repository and track your changes!', color = :red)
    end
  end
end

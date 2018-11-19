require 'thor'

module VimPlugin
  # VimPlugin::PathogenPlugin
  # The class used to generate Pathogen Plugin structures.
  class PathogenPlugin < Thor::Group
    include Thor::Actions

    desc 'Generate Vim Plugin named NAME'
    argument :plugin_name,
             type: :string,
             desc: 'Name of the Pathogen Vim Plugin.'

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
      template('colors_README.md.tt', plugin_name + '/colors/README.md')
    end

    # Create teh Plugin's Plugin directory
    def create_plugin_plugin
      empty_directory(plugin_name + '/plugin')
      template('plugin_README.md.tt', plugin_name + '/plugin/README.md')
    end

    # Create the Plugin's FileType Detection directory
    def create_plugin_ftdetect
      empty_directory(plugin_name + '/ftdetect')
      template('ftdetect_README.md.tt', plugin_name + '/ftdetect/README.md')
    end

    # Create the Plugin's FileType Plugin directory.
    def create_plugin_ftplugin
      empty_directory(plugin_name + '/ftplugin')
      template('ftplugin_README.md.tt', plugin_name + '/ftplugin/README.md')
    end

    # Create the Plugin's Indentation directory.
    def create_plugin_indent
      empty_directory(plugin_name + '/indent')
      template('indent_README.md.tt', plugin_name + '/indent/README.md')
    end

    # Create the Plugin's Compiler directory.
    def create_plugin_compiler
      empty_directory(plugin_name + '/compiler')
      template('compiler_README.md.tt', plugin_name + '/compiler/README.md')
    end

    # Create the Plugin's After Directory.
    def create_plugin_after
      empty_directory(plugin_name + '/after')
      template('after_README.md.tt', plugin_name + '/after/README.md')
    end

    # Create teh Plugin's Autoload Directory
    def create_plugin_autoload
      empty_directory(plugin_name + '/autoload')
      template('autoload_README.md.tt', plugin_name + '/autoload/README.md')
    end

    # Create the Plugin's Documenation directory.
    def create_plugin_doc
      empty_directory(plugin_name + '/doc')
      template('doc_README.md.tt', plugin_name + '/doc/README.md')
    end

    # Create the Plugin's Syntax directory
    def create_plugin_syntax
      empty_directory(plugin_name + '/syntax')
      template('syntax_README.md.tt', plugin_name + '/syntax/README.md')
    end

    # Create teh Plugin's README.md file.
    def create_plugin_readme
      template('README.md.tt', "#{plugin_name}/README.md")
    end

    # Create the Plugin's LICENSE file.
    def create_plugin_license
      template('LICENSE.tt', "#{plugin_name}/LICENSE")
    end

    # Create the Plugin's .gitignore file.
    def create_plugin_gitignore
      template('gitignore.tt', "#{plugin_name}/.gitignore")
    end

    def git_tasks
      say('=> Be sure to make this into a Git Repository and track your changes!', color = :red)
    end
  end
end

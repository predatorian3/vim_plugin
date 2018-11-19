require 'thor'

module VimPlugin
  # VimPlugin::PathogenPlugin
  # The class used to generate Pathogen Plugin structures.
  class PathogenPlugin < Thor::Group
    include Thor::Actions

    desc 'Generate Vim Plugin named NAME'
    argument :plugin_name, 
      type: :string,
      desc: "Name of the Pathogen Vim Plugin."

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
    end

    # Create teh Plugin's Plugin directory
    def create_plugin_plugin
      empty_directory(plugin_name + '/plugin')
    end

    # Create the Plugin's FileType Detection directory
    def create_plugin_ftdetect
      empty_directory(plugin_name + '/ftdetect')
    end

    # Create the Plugin's FileType Plugin directory.
    def create_plugin_ftplugin
      empty_directory(plugin_name + '/ftplugin')
    end

    # Create the Plugin's Indentation directory.
    def create_plugin_indent
      empty_directory(plugin_name + '/indent')
    end

    # Create the Plugin's Compiler directory.
    def create_plugin_compiler
      empty_directory(plugin_name + '/compiler')
    end

    # Create the Plugin's After Directory.
    def create_plugin_after
      empty_directory(plugin_name + '/after')
    end

    # Create teh Plugin's Autoload Directory
    def create_plugin_autoload
      empty_directory(plugin_name + '/autoload')
    end

    # Create the Plugin's Documenation directory.
    def create_plugin_doc
      empty_directory(plugin_name + '/doc')
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
  end
end

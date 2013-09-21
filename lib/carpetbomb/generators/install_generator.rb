module CarpetBomb
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.join(File.dirname(__FILE__), 'templates')

      desc "Creates CarpetBomb Initializer for your application"

      def copy_initializer
        template "carpetbomb.rb", "config/initializers/carpetbomb.rb"
      end
    end
  end
end

require 'rails/generators'

module Carpetbomb
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates Carpetbomb Initializer for your application"

      def copy_initializer
        template "carpetbomb.rb", "config/initializers/carpetbomb.rb"

        puts "Install complete! please check config/initializers/carpetbomb.rb to customize Redcarpet options."
      end
    end
  end
end

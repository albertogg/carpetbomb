require 'rails/generators'

module Carpetbomb
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates Carpetbomb Initializer for your application"

      def copy_initializer
        template "carpetbomb.rb", "config/initializers/carpetbomb.rb"

        puts "Carpetbomb is installed into config/initializers/carpetbomb.rb"
      end
    end
  end
end

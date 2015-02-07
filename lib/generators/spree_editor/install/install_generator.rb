module SpreeEditor
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../templates', __FILE__)

      def add_stylesheets
        inject_into_file "vendor/assets/stylesheets/spree/backend/all.css", " *= require spree/backend/spree_editor\n", before: /\*\//, verbose: true
      end

    end
  end
end

require 'rails/generators/active_record'

module ActiveRecord
  module Generators
    class DeviseSmsActivableGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def copy_devise_migration
        migration_template "migration.rb", "db/migrate/devise_sms_activable_add_to_#{table_name}"
      end
    end
  end
end
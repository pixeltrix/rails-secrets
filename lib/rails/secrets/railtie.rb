module Rails
  module Secrets
    module InstanceMethods
      attr_writer :secrets
      def secrets
        @secrets ||= ActiveSupport::OrderedOptions.new.tap do |secrets|
          yaml = config.paths['config/secrets'].first

          if File.exist?(yaml)
            require 'erb'
            all_secrets = YAML.load(ERB.new(IO.read(yaml)).result) || {}
            env_secrets = all_secrets[::Rails.env]
            secrets.merge!(env_secrets.symbolize_keys) if env_secrets
          end
        end
      end
    end

    class Railtie < ::Rails::Railtie
      config.before_configuration do |app|
        app.paths.add 'config/secrets', with: 'config/secrets.yml'
        app.extend(InstanceMethods)
      end

      config.after_initialize do |app|
        if app.secrets.secret_key_base.blank?
          fail "Missing `secret_key_base` for '#{Rails.env}' environment, set this value in `config/secrets.yml`"
        else
          app.config.secret_key_base = app.secrets.secret_key_base
        end
      end
    end
  end
end

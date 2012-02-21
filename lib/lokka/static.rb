module Lokka
  module Static
    def self.registered(app)
      static_view_path = File.expand_path(File.dirname(__FILE__) + '/../../views')

      Dir.glob(static_view_path + "/*.{erb,html,haml}").each do |f|
        file_name = File.basename(f, ".*")
        app.get "/#{file_name}" do
          send(:render, File.extname(f)[1..-1].to_sym, "plugin/lokka-static/views/#{file_name}".to_sym, :layout => false)
        end
      end

      app.helpers do
        # e.g.) assets("js/sample.js")
        def assets_path(file_path)
          "/plugin/lokka-static/assets/#{file_path}"
        end
      end
    end
  end
end

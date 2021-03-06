module Gon
  module Helpers
    def self.included base
      base.send(:include, InstanceMethods)
    end

    module InstanceMethods
      def include_gon
        data = Gon.all_variables

        script = "<script>window.Gon = {};"
        data.each do |key, val|
          script += "Gon." + key.to_s + '=' + val.to_json + ";"
        end
        script += "</script>"
        script.html_safe
      end
    end

  end
end

ActionView::Base.send :include, Gon::Helpers

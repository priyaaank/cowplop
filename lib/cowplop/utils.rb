module Cowplop
  module Util

    def get_klass_instance(name = @klass)
      get_klass(name).new if name.present?
    end

    def get_klass(name = @klass)
      Object.const_get(name.singularize.camelize.to_sym)
    end
  end
end

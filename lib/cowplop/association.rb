module Cowplop
  class Association

    attr_accessor :entity_name, :association_name, :method_name, :entity_id, :association_id

    def initialize

    end


    private

    def prepare_entity

    end

    def prepare_assocation

    end

    def get_klass_instance(name = @klass)
      get_klass(name).new if name.present?
    end

    def get_klass(name = @klass)
      Object.const_get(name.singularize.camelize.to_sym)
    end

  end
end

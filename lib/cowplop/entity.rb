module Cowplop
  class Entity

    include Cowplop::Util

    attr_accessor :klass, :assocations, :attributes, :yaml_id, :db_id

    def initialize(klass, yaml_id, yaml_value)
      @yaml_id = yaml_id
      @klass = get_klass(klass)
      @attributes = {}
      @assocations = []
      load_attributes_and_associations(yaml_value)
    end

    private

    def is_array_or_hash? value
      value.is_a?(Array) or value.is_a?(Hash)
    end

    def load_attributes_and_associations(values)
      values.each do |attribute_name, attribute_value|
        is_array_or_hash?(attribute_value) ?
          prepare_associations(attribute_name, attribute_value) :
          prepare_attributes(attribute_name, attribute_value)
      end
    end

    def prepare_associations(association_name, association_value)
      association_value.is_a?(Array) ?
        loop_for_each(association_name, association_value) { |name, value| set_association_value(name, value)} :
        set_association_value(association_name, association_value)
    end

    def loop_for_each(name, values, &block)
      values.each do |val|
        yield(name, val)
      end
    end

    def set_association_value(name, value)
      @assocations << Cowplop::Association.new(@klass, @yaml_id, name, value)
    end

    def prepare_attributes(yaml_value)
      attributes[name] = value unless name == "id"
    end
  end
end

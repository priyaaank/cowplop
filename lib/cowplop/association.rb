module Cowplop
  class Association

    include Cowplop::Util

    attr_accessor :entity_name, :association_name, :method_name, :entity_id, :association_id

    def initialize(entity_name, entity_id, association_name, yaml_value)
      @entity_name = entity_name
      @association_name = association_name
      parse_into_attributes(yaml_value)
    end

    def new_instance
      puts "*"*100
      puts "We are going to create association for #{@entity_name}:#{@entity_id} having an association with #{@association_name} : #{@association_id} using method: #{@method_name}"
      puts "*"*100
    end

    private

    def parse_into_attributes(yaml_value)
      method_name = yaml_value["_method"] || @association_name
      @association_id = yaml_value["id"]
    end

  end
end

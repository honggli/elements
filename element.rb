module UTILS
  class ELEMENT
    # when instantiate an object of ELEMENT or its subclass, set each field to the default value if supplied
    def initialize
      @@fields.each { |field| instance_variable_set("@#{field[:name]}", field[:default]) if field[:default] }
    end
  end
end

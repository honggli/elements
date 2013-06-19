module UTILS
  class ELEMENT
    # define instance method initialize(), which is used to initialize the object of ELEMENT or its subclass
    def initialize
      @@fields.each { |field| instance_variable_set("@#{field[:name]}", field[:default]) if field[:default] }
    end
  end
end

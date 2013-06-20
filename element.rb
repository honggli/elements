module UTILS
  class ELEMENT
    # define instance method initialize(), which is used to initialize the object of ELEMENT or its subclass
    def initialize
      @@fields.each { |field| instance_variable_set("@#{field[:name]}", field[:default]) if field[:default] }
    end
    
    # define instance method decode() to decode the byte stream into the object
    def decode(stream)
      ("0x"+stream).hex.to_s(2)
    end
  end
end

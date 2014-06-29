require 'css-colour/constants'
require 'css-colour/version'

module CssColour
  class Validator
    include CssColour::Constants

    attr_accessor :colour

    def initialize(value); self.colour = value; end

    def colour=(value); @colour = value.downcase.strip; end

    def valid?; inherit? or transparent? or websafe? or hex? or rgb? or rgba? or hsl? or hsla?; end

    def inherit?; @colour == INHERIT; end
    def transparent?; @colour == TRANSPARENT; end
    def websafe?; WEBSAFE.include? @colour; end
    def hex?;   is? HEX;  end
    def hsl?;   is? HSL;  end
    def hsla?;  is? HSLA; end
    def rgb?;   is? RGB;  end
    def rgba?;  is? RGBA; end

    private
      def is?(type); !type.match(@colour).nil?; end
  end
end

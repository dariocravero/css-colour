require 'css-colour'
require 'minitest/autorun'
require 'minitest/pride'

describe 'validator test' do
  it 'should validate inherit' do
    assert CssColour::Validator.new('inherit').valid?
  end

  it 'should validate websafe colours' do
    assert CssColour::Validator.new('white').valid?
    assert CssColour::Validator.new('White').valid?
    refute CssColour::Validator.new('blanco').valid?
  end

  it 'should validate HEX colours' do
    assert CssColour::Validator.new('#123456').valid?
    assert CssColour::Validator.new(' #123456').valid?
    assert CssColour::Validator.new('#123456 ').valid?
    assert CssColour::Validator.new('#123').valid?
    assert CssColour::Validator.new('#FF1234').valid?
    refute CssColour::Validator.new('#1 23456').valid?
    refute CssColour::Validator.new('123456').valid?
    refute CssColour::Validator.new('123').valid?
    refute CssColour::Validator.new('#GG0000').valid?
    refute CssColour::Validator.new('#FF00001').valid?
  end

  it 'should validate HSL colours' do
    assert CssColour::Validator.new('hsl(0,0%,0%)').valid?
    assert CssColour::Validator.new('hsl(0, 0%, 0%)').valid?
    assert CssColour::Validator.new('hsl(360,100%,100%)').valid?
    refute CssColour::Validator.new('hsl 0,0%,0%)').valid?
    refute CssColour::Validator.new('hsl(0,0%,0%').valid?
    refute CssColour::Validator.new('hsl(0,0,0)').valid?
    refute CssColour::Validator.new('hsl(360,100,100)').valid?
    refute CssColour::Validator.new('hsl(0,150%,150%)').valid?
    refute CssColour::Validator.new('hsl(-0,-0%,-0%)').valid?
  end

  it 'should validate HSLA colours' do
    assert CssColour::Validator.new('hsla(0,0%,0%,0)').valid?
    assert CssColour::Validator.new('hsla(0, 0%, 0%, 0)').valid?
    assert CssColour::Validator.new('hsla(0,0%,0%,0.0)').valid?
    assert CssColour::Validator.new('hsla(360,100%,100%,1)').valid?
    assert CssColour::Validator.new('hsla(360,100%,100%,1.0)').valid?
    refute CssColour::Validator.new('hsla 0,0%,0%,0.0)').valid?
    refute CssColour::Validator.new('hsla(0,0%,0%,0,0)').valid?
    refute CssColour::Validator.new('hsla(0,0%,0%,0.0 ').valid?
    refute CssColour::Validator.new('hsla(0,0%,0%)').valid?
    refute CssColour::Validator.new('hsla(360,100%,100%)').valid?
    refute CssColour::Validator.new('hsla(360,100%,100%,-0)').valid?
    refute CssColour::Validator.new('hsla(360,100%,100%,1.1)').valid?
  end

  it 'should validate RGB colours' do
    assert CssColour::Validator.new('rgb(0,0,0)').valid?
    assert CssColour::Validator.new('rgb(0, 0, 0)').valid?
    assert CssColour::Validator.new('rgb(255,255,255)').valid?
    refute CssColour::Validator.new('rgb 0,0,0)').valid?
    refute CssColour::Validator.new('rgb(0,0,0 ').valid?
    refute CssColour::Validator.new('rgb(-0,0,0)').valid?
    refute CssColour::Validator.new('rgb(256,0,0)').valid?
    refute CssColour::Validator.new('rgb(0,-0,0)').valid?
    refute CssColour::Validator.new('rgb(0,256,0)').valid?
    refute CssColour::Validator.new('rgb(0,0,-0)').valid?
    refute CssColour::Validator.new('rgb(0,0,256)').valid?
  end

  it 'should validate RGBA colours' do
    assert CssColour::Validator.new('rgba(0,0,0,0)').valid?
    assert CssColour::Validator.new('rgba(0, 0, 0, 0)').valid?
    assert CssColour::Validator.new('rgba(0,0,0,0.0)').valid?
    assert CssColour::Validator.new('rgba(255,255,255,1)').valid?
    assert CssColour::Validator.new('rgba(255,255,255,1.0)').valid?
    refute CssColour::Validator.new('rgba 0,0,0,0.0)').valid?
    refute CssColour::Validator.new('rgba(0,0,0,0,0)').valid?
    refute CssColour::Validator.new('rgba(0,0,0,0.0 ').valid?
    refute CssColour::Validator.new('rgba(0,0,0)').valid?
    refute CssColour::Validator.new('rgba(255,255,255)').valid?
    refute CssColour::Validator.new('rgba(0,0,0,-0)').valid?
    refute CssColour::Validator.new('rgba(0,0,0,1.1)').valid?
  end
end

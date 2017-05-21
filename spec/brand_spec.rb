require("spec_helper")

describe(Brand)do
  it("validates presece of brand name") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end
end
describe(Brand) do
    it("converts the first letter to uppercase") do
      brand = Brand.create({:name => "nike"})
      expect(brand.name.capitalize()).to(eq("Nike"))
    end
  end
  describe(Brand) do
it("ensures the length of name is at most 100 characters") do
  brand = Brand.new({:name => "a".*(101)})
  expect(brand.save()).to(eq(false))
  end
end
describe(Brand) do
it("ensures that no two brands are alike") do
  brand = Brand.new({:name => "Nike"})
  brand2 = Brand.new({:name => "Nike"})
  expect(brand.save()).to(eq(false))
    end
  end

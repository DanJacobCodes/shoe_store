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
      expect(brand.name()).to(eq("Nike"))
    end
  end

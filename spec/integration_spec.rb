require("spec_helper")

describe(Brand)do
  it("validates presece of brand name") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end
end

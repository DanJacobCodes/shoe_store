require("spec_helper")
describe(Store)do
  it("validates presece of store name") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end
end
describe(Store) do
    it("converts the first letter to uppercase") do
      store = Store.create({:name => "nike"})
      expect(store.name.capitalize()).to(eq("Nike"))
    end
  end
  describe(Store) do
it("ensures the length of name is at most 100 characters") do
  store = Store.new({:name => "a".*(101)})
  expect(store.save()).to(eq(false))
  end
end
describe(Store) do
it("ensures that no two stores are alike") do
  store = Store.new({:name => "Nike"})
  store2 = Store.new({:name => "Nike"})
  expect(store.save()).to(eq(false))
    end
  end

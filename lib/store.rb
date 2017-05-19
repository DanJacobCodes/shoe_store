class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates(:name, {:presence => true, :uniqueness => true, :length => {:maximum => 100}})
  before_save(:upcase_name)

  scope(:not_done, -> do
    where({:done => false})
  end)


  private

  define_method(:upcase_name) do
    self.name=(name().capitalize())
  end
end

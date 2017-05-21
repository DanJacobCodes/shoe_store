class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:name, {:presence => true, :length => { :maximum => 100}})
  validates(:name, uniqueness: { case_sensitive: false })
  before_save(:upcase_name)

  scope(:not_done, -> do
    where({:done => false})
  end)


  private

  define_method(:upcase_name) do
    self.name=(name().capitalize())
  end
end

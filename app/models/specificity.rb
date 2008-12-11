class Specificity
  include DataMapper::Resource
  
  property :id, Serial
  property :cut, String, :length => (0..2000)
  property :no_cut, String, :length => (0..2000)
  property :sense, String, :length => (0..2000)

  belongs_to :sample_enzyme

end

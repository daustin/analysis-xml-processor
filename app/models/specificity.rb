class Specificity
  include DataMapper::Resource
  
  property :id, Serial
  property :cut, String, :length => (0..1000)
  property :no_cut, String, :length => (0..1000)
  property :sense, String, :length => (0..1000)

  belongs_to :sample_enzyme

end

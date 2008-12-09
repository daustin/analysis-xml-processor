class Specificity
  include DataMapper::Resource
  
  property :id, Serial
  property :cut, String, :length => (0..512)
  property :no_cut, String, :length => (0..512)
  property :sense, String, :length => (0..512)

  belongs_to :sample_enzyme

end

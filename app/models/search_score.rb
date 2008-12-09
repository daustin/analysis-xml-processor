class SearchScore
  include DataMapper::Resource
  
  property :id, Serial
  property :name, String, :length => (0..512)
  property :value, Float

  belongs_to :search_hit

end

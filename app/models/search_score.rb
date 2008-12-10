class SearchScore
  include DataMapper::Resource
  
  property :id, Serial
  property :name, String, :length => (0..1000)
  property :value, Float

  belongs_to :search_hit

end

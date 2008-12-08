class SearchScore
  include DataMapper::Resource
  
  property :id, Serial
  property :name, String
  property :value, Float

  belongs_to :search_hit

end

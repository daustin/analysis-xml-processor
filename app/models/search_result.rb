class SearchResult
  include DataMapper::Resource
  
  property :id, Serial

  has n, :search_hits

  belongs_to :spectrum_query


end

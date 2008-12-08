class SearchScoreSummary
  include DataMapper::Resource
  
  property :id, Serial
  
  has n, :parameters

  belongs_to :peptideprophet_result

end

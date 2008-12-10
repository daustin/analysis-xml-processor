class AnalysisResult
  include DataMapper::Resource
  
  property :id, Serial
  property :analysis, String, :length => (0..1000)

  has 1, :peptideprophet_result


  belongs_to :search_hit

end

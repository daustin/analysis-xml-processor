class PeptideprophetResult
  include DataMapper::Resource
  
  property :id, Serial
  property :probability, Float
  property :all_ntt_prob, String

  has 1, :search_score_summary

  belongs_to :analysis_result

end
class ErrorPoint
  include DataMapper::Resource
  
  property :id, Serial
  property :error, Float
  property :min_prob, Float
  property :num_corr, Integer
  property :num_incorr, Integer

  belongs_to :peptideprophet_summary

end

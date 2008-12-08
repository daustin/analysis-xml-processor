class RocDataPoint
  include DataMapper::Resource
  
  property :id, Serial
  property :min_prob, Float
  property :sensitivity, Float
  property :error, Float
  property :num_corr, Integer
  property :num_incorr, Integer

  belongs_to :peptideprophet_summary



end

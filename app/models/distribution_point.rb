class DistributionPoint
  include DataMapper::Resource
  
  property :id, Serial
  property :fvalue, Float
  property :obs_1_distr, Integer
  property :model_1_pos_distr, Float
  property :model_1_neg_distr, Float
  property :obs_2_distr, Integer
  property :model_2_pos_distr, Float
  property :model_2_neg_distr, Float
  property :obs_3_distr, Integer
  property :model_3_pos_distr, Float
  property :model_3_neg_distr, Float
  property :obs_4_distr, Integer
  property :model_4_pos_distr, Float
  property :model_4_neg_distr, Float
  property :obs_5_distr, Integer
  property :model_5_pos_distr, Float
  property :model_5_neg_distr, Float


  belongs_to :peptideprophet_summary

end

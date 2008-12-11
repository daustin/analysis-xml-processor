class NspDistribution
  include DataMapper::Resource
  
  property :id, Serial
  property :bin_no, Integer
  property :nsp_lower_bound_incl, Float
  property :nsp_lower_bound_excl, Float
  property :nsp_upper_bound_excl, Float
  property :nsp_upper_bound_incl, Float
  property :pos_freq, Float
  property :neg_freq, Float
  property :pos_to_neg_ratio, Float
  property :alt_pos_to_neg_ratio, Float
  property :nsp_upper_bound_incl, Float

  belongs_to :nsp_information

end

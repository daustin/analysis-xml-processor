class EnzymaticSearchConstraint
  include DataMapper::Resource
  
  property :id, Serial
  property :enzyme, String, :length => (0..512)
  property :max_num_internal_cleavages, Integer
  property :min_number_termini, Integer

  belongs_to :search_summary

end
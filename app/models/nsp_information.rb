class NspInformation
  include DataMapper::Resource
  
  property :id, Serial
  property :neighboring_bin_smoothing, String, :length => (0..2000)

  has n, :nsp_distributions
  
  belongs_to :proteinprophet_details, :class_name => 'ProteinprophetDetails'

end

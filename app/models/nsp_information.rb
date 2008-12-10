class NspInformation
  include DataMapper::Resource
  
  property :id, Serial
  property :neighboring_bin_smoothing, String, :length => (0..1000)

  has n, :nsp_distributions
  
  belongs_to :proteinprophet_details, :class_name => 'ProteinprophetDetails'

end

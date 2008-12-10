class NiInformation
  include DataMapper::Resource
  
  property :id, Serial

  belongs_to :proteinprophet_details, :class_name => 'ProteinprophetDetails'

end

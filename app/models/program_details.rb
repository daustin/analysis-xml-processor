class ProgramDetails
  include DataMapper::Resource
  
  property :id, Serial
  property :analysis, String, :length => (0..2000)
  property :time, DateTime
  property :version, String, :length => (0..2000)
 
  has 1, :proteinprophet_details, :class_name => 'ProteinprophetDetails'

  belongs_to :protein_summary_header


end

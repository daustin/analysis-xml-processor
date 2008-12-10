class ProteinSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :xmlns, String, :length => (0..1000)
  property :xsi, String, :length => (0..1000)
  property :schemaLocation, String, :length => (0..1000)
  property :summary_xml, String, :length => (0..1000)

  has 1, :protein_summary_header
  has n, :dataset_derivations
  has n, :protein_groups


end

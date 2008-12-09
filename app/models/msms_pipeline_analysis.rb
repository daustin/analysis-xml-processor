class MsmsPipelineAnalysis
  include DataMapper::Resource
  
  property :id, Serial
  property :date, DateTime
  property :xmlns, String, :length => (0..512)
  property :xsi, String, :length => (0..512)
  property :schemaLocation, String, :length => (0..512)
  property :summary_xml, String, :length => (0..512)

  has n, :analysis_summaries
  has n, :dataset_derivations
  has n, :msms_run_summaries


end

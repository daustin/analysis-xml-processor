class MsmsPipelineAnalysis
  include DataMapper::Resource
  
  property :id, Serial
  property :date, DateTime
  property :xmlns, String
  property :xmlns_xsi, String
  property :xsi_schemaLocation, String
  property :summary_xml, String

  has n, :analysis_summaries
  has n, :dataset_derivations
  has n, :msms_run_summaries


end

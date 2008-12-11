class MsmsRunSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :base_name, String, :length => (0..2000)
  property :msManufacturer, String, :length => (0..2000)
  property :msModel, String, :length => (0..2000)
  property :msIonization, String, :length => (0..2000)
  property :msMassAnalyzer, String, :length => (0..2000)
  property :msDetector, String, :length => (0..2000)
  property :raw_data_type, String, :length => (0..2000)
  property :raw_data, String, :length => (0..2000)

  has n, :sample_enzymes
  has 1, :search_summary
  has n, :analysis_timestamps
  has n, :spectrum_queries


  belongs_to :msms_pipeline_analysis, :class_name => 'MsmsPipelineAnalysis'

end

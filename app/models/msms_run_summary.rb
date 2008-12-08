class MsmsRunSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :base_name, String
  property :msManufacturer, String
  property :msModel, String
  property :msIonization, String
  property :msMassAnalyzer, String
  property :msDetector, String
  property :raw_data_type, String
  property :raw_data, String

  has n, :sample_enzymes
  has 1, :search_summary
  has n, :analysis_timestamps
  has n, :spectrum_queries


  belongs_to :msms_pipeline_analysis, :class_name => 'MsmsPipelineAnalysis'

end

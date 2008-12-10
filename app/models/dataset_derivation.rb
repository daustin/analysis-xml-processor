class DatasetDerivation
  include DataMapper::Resource
  
  property :id, Serial
  property :generation_no, Integer

  belongs_to :msms_pipeline_analysis, :class_name => 'MsmsPipelineAnalysis'
  belongs_to :protein_summary


end

class AnalysisSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :analysis, String
  property :time, DateTime

  has 1, :peptideprophet_summary
  has 1, :interact_summary

  belongs_to :msms_pipeline_analysis, :class_name => 'MsmsPipelineAnalysis'

end

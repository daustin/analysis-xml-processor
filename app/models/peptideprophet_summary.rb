class PeptideprophetSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :version, String
  property :author, String
  property :min_prob, String
  property :options, String
  property :est_tot_num_correct, Float
  
  has n, :inputfiles
  has n, :roc_data_points
  has n, :error_points
  has n, :distribution_points
  has n, :mixture_models
 
  belongs_to :analysis_summary

end
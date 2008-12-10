class PeptideprophetSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :version, String, :length => (0..1000)
  property :author, String, :length => (0..1000)
  property :min_prob, String, :length => (0..1000)
  property :options, String, :length => (0..1000)
  property :est_tot_num_correct, Float
  
  has n, :inputfiles
  has n, :roc_data_points
  has n, :error_points
  has n, :distribution_points
  has n, :mixture_models
 
  belongs_to :analysis_summary

end

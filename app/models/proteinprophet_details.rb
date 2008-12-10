class ProteinprophetDetails
  include DataMapper::Resource
  
  property :id, Serial
  property :occam_flag, String, :length => (0..1000)
  property :groups_flag, String, :length => (0..1000)
  property :degen_flag, String, :length => (0..1000)
  property :nsp_flag, String, :length => (0..1000)
  property :initial_peptide_wt_iters, Integer
  property :nsp_distribution_iters, Integer
  property :final_peptide_wt_iters, Integer
  property :run_options, String, :length => (0..1000)

  has 1, :nsp_information
  has 1, :ni_information
  has n, :protein_summary_data_filters

  belongs_to :program_details, :class_name => 'ProgramDetails'

end

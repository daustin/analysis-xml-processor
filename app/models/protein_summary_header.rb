class ProteinSummaryHeader
  include DataMapper::Resource
  
  property :id, Serial
  property :reference_database, String, :length => (0..2000)
  property :residue_substitution_list, String, :length => (0..2000)
  property :source_files, String, :length => (0..2000)
  property :source_files_alt, String, :length => (0..2000)
  property :organism, String, :length => (0..2000)
  property :min_peptide_probability, Float
  property :min_peptide_weight, Float
  property :num_predicted_correct_prots, Float
  property :num_input_1_spectra, Integer
  property :num_input_2_spectra, Integer
  property :num_input_3_spectra, Integer
  property :num_input_4_spectra, Integer
  property :num_input_5_spectra, Integer
  property :initial_min_peptide_prob, Float
  property :total_no_spectrum_ids, Float
  property :sample_enzyme, String, :length => (0..2000)

  has 1, :program_details, :class_name => 'ProgramDetails'

  belongs_to :protein_summary


  
end

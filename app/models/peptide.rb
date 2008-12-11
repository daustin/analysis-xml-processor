class Peptide
  include DataMapper::Resource
  
  property :id, Serial
  property :peptide_sequence, String, :length => (0..2000)
  property :charge, Integer
  property :initial_probability, Float
  property :nsp_adjusted_probability, Float
  property :weight, Float
  property :is_nondegenerate_evidence, Boolean
  property :n_enzymatic_termini, Integer
  property :n_sibling_peptides, Float
  property :n_sibling_peptides_bin, Integer
  property :n_instances, Integer
  property :exp_tot_instances, Float
  property :is_contributing_evidence, Boolean
  property :calc_neutral_pep_mass, Float
  property :peptide_group_designator,  String, :length => (0..2000)

  has 1, :modification_info
  
  belongs_to :protein

end

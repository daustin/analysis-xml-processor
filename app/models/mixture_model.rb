class MixtureModel
  include DataMapper::Resource
  
  property :id, Serial
  property :precursor_ion_charge, Integer
  property :comments, String, :length => (0..512)
  property :prior_probability, Float
  property :est_tot_correct, Float
  property :tot_num_spectra, Integer
  property :num_iterations, Integer

  has n, :mixturemodel_distributions


  belongs_to :peptideprophet_summary


end

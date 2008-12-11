class MixturemodelDistribution
  include DataMapper::Resource
  
  property :id, Serial
  property :name, String, :length => (0..2000)
  property :negmean, Float

  has 1, :posmodel_distribution
  has 1, :negmodel_distribution

  belongs_to :mixture_model

end

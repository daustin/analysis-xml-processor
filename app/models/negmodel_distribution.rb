class NegmodelDistribution
  include DataMapper::Resource
  
  property :id, Serial
  property :type, String, :length => (0..2000)

  has n, :parameters

  belongs_to :mixturemodel_distribution


end

class NegmodelDistribution
  include DataMapper::Resource
  
  property :id, Serial
  property :type, String

  has n, :parameters

  belongs_to :mixturemodel_distribution


end

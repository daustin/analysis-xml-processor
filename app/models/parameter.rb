class Parameter
  include DataMapper::Resource
  
  property :id, Serial
  property :name, String
  property :value, String

  belongs_to :posmodel_distribution
  belongs_to :negmodel_distribution
  belongs_to :search_summary
  belongs_to :search_score_summary


end

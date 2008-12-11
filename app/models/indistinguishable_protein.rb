class IndistinguishableProtein
  include DataMapper::Resource
  
  property :id, Serial
  property :protein_name, String, :length => (0..2000)

  has n, :annotations

  belongs_to :protein

end

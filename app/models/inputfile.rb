class Inputfile
  include DataMapper::Resource
  
  property :id, Serial
  property :name, String, :length => (0..2000)

  belongs_to :peptideprophet_summary
  belongs_to :interact_summary

end

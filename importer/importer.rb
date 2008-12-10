require 'rubygems'
require 'data_mapper'
require 'nokogiri'
require 'open-uri'
require 'yaml'

Dir.glob('../app/models/*.rb').each do |g|
  require g
end


class Importer



  def initialize(i = 100)
    @num_nodes = i
    @count = 1
    @last_percent = 0
  end
  
  def traverseNode(n, num_tabs, parent_name = nil, parent = nil)
    tabs = ''
    num_tabs.times {tabs += "\t"}
    # puts "#{tabs}#{n.name} with attributes: (#{n.attributes})"
    # create the node
    klass = eval("#{getClassName(n.name)}.new")
    #set the attributes
    if n.name.eql?("msms_pipeline_analysis") then
      #alter vars accordingly
      temphash = n.attributes
      # temphash["xmlns-xsi"] = temphash.delete("xmlns:xsi")
      # temphash["xsi-schemaLocation"] = temphash.delete("xsi:schemaLocation")
      klass.attributes = temphash
    elsif n.name.eql?("analysis_timestamp") then
      #alter accordingly
      temphash = n.attributes
      temphash["search_id"] = temphash.delete("id")
      klass.attributes = temphash
    else
      #just add attributes. 
      klass.attributes = n.attributes
    end
    
    #now we take care of parent
    unless parent_name.nil?
      eval("klass.#{parent_name}_id =  parent.id")
    end

    
    # puts "Class: " + klass.class.to_s  
    # puts "Attributes: " + klass.attributes.to_s
    unless klass.save
      puts "EEERRRRRRRRRR => " + "#{klass.class}"
      puts YAML.dump(klass)
    end
    #puts "count: #{@count.to_f/@num_nodes.to_f}"
    if (((@count.to_f/@num_nodes.to_f)*100).floor > @last_percent)
      @last_percent = ((@count.to_f/@num_nodes.to_f)*100).floor 
      puts "#{@last_percent}%"
    end
    @count += 1

    n.children.each do |c|
      traverseNode(c, num_tabs+1, n.name, klass)
    end
    
  end

  def getClassName (s)
    # change capitalization & remove underscores
    temp = ''
    sa = s.split('_')
    sa.each do |t|
      temp = temp + t.strip.capitalize

    end
    return temp
  end

  
end


### SETUP

puts "setting up db space.."

DataMapper.setup(:default, "sqlite3:///#{Dir.pwd}/test.db")
DataMapper::Logger.new(STDOUT, :error) 
# DataObjects::Sqlite3.logger = DataObjects::Logger.new(STDOUT, 0)

# DataMapper.setup(:default, {:host => 'localhost', :database => 'analysis_xml', :user => 'axml'})
# DataMapper::Logger.new(STDOUT, :debug) 
# DataObjects::Mysql.logger = DataObjects::Logger.new(STDOUT, 0)

puts "migrating..."

DataMapper.auto_migrate!

puts "Reading XML File #{ARGV[0]}..."

doc = Nokogiri::XML(open("#{ARGV[0]}"))
size = doc.root.xpath('.//*').size
puts "Found #{size} nodes."
imp = Importer.new(size)
imp.traverseNode(doc.root, 0)

unless ARGV[1].nil?
  puts "Reading XML File #{ARGV[1]}..."
  
  doc = Nokogiri::XML(open("#{ARGV[1]}"))
  size = doc.root.xpath('.//*').size
  puts "Found #{size} nodes."
  imp = Importer.new(size)
  imp.traverseNode(doc.root, 0)
  


end


puts 'Finished!'


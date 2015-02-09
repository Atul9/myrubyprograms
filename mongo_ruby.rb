#require 'rubygems'
require 'mongo' #Use mongo gem via require Kernel method
#require 'bson'
#require 'bson_ext'
include Mongo #Include Mongo so that the Mongo classes are available without
#having to specify the Mongo namespace.
client = MongoClient.new #A MongoClient instance represents a connection to the Mongodb.
#Default host is localhost and port number is 27017.
db = client['mydb']
coll = db['collection1']
10.times{|i|
coll.insert({:count =>i+1})}
puts "There are #{coll.count} documents"
coll.find.each{|doc| puts doc.inspect}

puts client.database_names #list all the database names

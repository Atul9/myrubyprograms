require 'rubygems'
require 'mongo'
require 'bson'
#require 'bson_ext'
include Mongo
client = MongoClient.new
db = client['mydb']
coll = db['collection1']
10.times{|i|
coll.insert({:count =>i+1})}
puts "There are #{coll.count} documents"
puts coll.find.each{|doc| puts doc.inspect}

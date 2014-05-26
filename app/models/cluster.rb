class Cluster < ActiveRecord::Base
  attr_accessible :cluster, :numcpucores, :totalcpu, :totalmemory, :vcserver
 def self.import(file)
  ::CSV.foreach(file.path, headers: true) do |row|
    cluster = find_by_id(row["id"]) || new
    cluster.attributes = row.to_hash.slice(*accessible_attributes)
    cluster.save!
#  Cluster.create! row.to_hash
  end
 end
end

class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :vcserver
      t.string :cluster
      t.string :totalcpu
      t.string :totalmemory
      t.string :numcpucores

      t.timestamps
    end
  end
end

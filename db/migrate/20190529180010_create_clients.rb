class CreateClients < ActiveRecord::Migration[5.2]
  def change
  	create_table  :client do |t|  #в таблице будут созданы следующие столбцы
  		t.text :name
  		t.text :phone
  		t.text :datestamp
  		t.text :barber
  		t.text :color

  		t.timestamps 
  	end
  end
end

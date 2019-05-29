class CreateBarbers < ActiveRecord::Migration[5.2]
  def change
  	  	create_table :barbers do |t|  #в таблице будут созданы следующие столбцы
  		t.text :name

  		t.timestamps 
  	end
  	#наполняем базу
  	Barber.create :name => 'Jessie Pinkman'
  	Barber.create :name => 'Walter White'
  	Barber.create :name => 'Gus Fring'

  end
end

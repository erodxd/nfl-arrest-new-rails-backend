class CreateArrests < ActiveRecord::Migration[5.2]
  def change
    create_table :arrests do |t|
      t.string :date
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end

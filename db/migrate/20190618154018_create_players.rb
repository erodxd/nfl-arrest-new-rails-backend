class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :image
      t.string :name
      t.string :team
      t.string :team_city
      t.string :position

      t.timestamps
    end
  end
end

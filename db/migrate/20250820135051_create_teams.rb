class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach
      t.string :pg
      t.string :sg
      t.string :pf
      t.string :sf
      t.string :c

      t.timestamps
    end
  end
end

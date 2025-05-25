class CreateMyQuests < ActiveRecord::Migration[8.0]
  def change
    create_table :my_quests do |t|
      t.string :quest

      t.timestamps
    end
  end
end

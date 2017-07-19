class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :language
      t.string :skill_level

      t.timestamps
    end
  end
end

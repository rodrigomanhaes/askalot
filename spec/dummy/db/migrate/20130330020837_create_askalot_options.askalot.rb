# This migration comes from askalot (originally 20130330013051)
class CreateAskalotOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :text
      t.references :question

      t.timestamps
    end
    add_index :options, :question_id
  end
end

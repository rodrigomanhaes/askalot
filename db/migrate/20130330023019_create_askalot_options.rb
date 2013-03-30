class CreateAskalotOptions < ActiveRecord::Migration
  def change
    create_table :askalot_options do |t|
      t.string :text
      t.references :question

      t.timestamps
    end
    add_index :askalot_options, :question_id
  end
end

class CreateAskalotAnswerItems < ActiveRecord::Migration
  def change
    create_table :askalot_answer_items do |t|
      t.references :answer
      t.references :option

      t.timestamps
    end
    add_index :askalot_answer_items, :answer_id
    add_index :askalot_answer_items, :option_id
  end
end

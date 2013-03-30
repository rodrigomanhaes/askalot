# This migration comes from askalot (originally 20130330022955)
class CreateAskalotQuestions < ActiveRecord::Migration
  def change
    create_table :askalot_questions do |t|
      t.string :text
      t.boolean :multiple, default: false
      t.references :questionnaire

      t.timestamps
    end
    add_index :askalot_questions, :questionnaire_id
  end
end

class CreateAskalotQuestions < ActiveRecord::Migration
  def change
    create_table :askalot_questions do |t|
      t.string :text
      t.string :kind
      t.references :questionnaire

      t.timestamps
    end
    add_index :askalot_questions, :questionnaire_id
  end
end

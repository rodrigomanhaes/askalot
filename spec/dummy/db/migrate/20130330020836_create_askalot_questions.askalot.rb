# This migration comes from askalot (originally 20130330012952)
class CreateAskalotQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.references :questionnaire

      t.timestamps
    end
    add_index :questions, :questionnaire_id
  end
end

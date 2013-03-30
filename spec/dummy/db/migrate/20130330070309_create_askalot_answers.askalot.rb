# This migration comes from askalot (originally 20130330045625)
class CreateAskalotAnswers < ActiveRecord::Migration
  def change
    create_table :askalot_answers do |t|
      t.references :questionnaire

      t.timestamps
    end
    add_index :askalot_answers, :questionnaire_id
  end
end

# This migration comes from askalot (originally 20130330012945)
class CreateAskalotQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :title

      t.timestamps
    end
  end
end

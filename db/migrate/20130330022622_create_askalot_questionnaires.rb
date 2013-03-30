class CreateAskalotQuestionnaires < ActiveRecord::Migration
  def change
    create_table :askalot_questionnaires do |t|
      t.string :title

      t.timestamps
    end
  end
end

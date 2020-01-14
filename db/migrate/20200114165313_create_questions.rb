class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.column(:text, :varchar)
      t.column(:answer_1, :varchar)
      t.column(:answer_2, :varchar)
      t.column(:answer_3, :varchar)
      t.column(:answer_4, :varchar)
      t.column(:ask_id, :integer)
      t.timestamps()
    end
  end
end

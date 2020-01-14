class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.column(:question_id, :integer)
      t.column(:answer, :integer)
      t.column(:other_text, :varchar)
      t.timestamps()
    end
  end
end

class AddForeignKeyForResponses < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :responses, :questions
  end
end

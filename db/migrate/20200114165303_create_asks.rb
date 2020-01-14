class CreateAsks < ActiveRecord::Migration[6.0]
  def change
    create_table :asks do |t|
      t.column(:topic, :varchar)
      t.timestamps()
    end
  end
end

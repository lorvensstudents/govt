class CreatePradhans < ActiveRecord::Migration[5.1]
  def change
    create_table :pradhans do |t|
      t.string :name

      t.timestamps
    end
  end
end

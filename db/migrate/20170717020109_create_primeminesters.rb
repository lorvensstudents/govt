class CreatePrimeminesters < ActiveRecord::Migration[5.1]
  def change
    create_table :primeminesters do |t|
      t.string :name
      t.string :duriation
      t.text :discription

      t.timestamps
    end
  end
end

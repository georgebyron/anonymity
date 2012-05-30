class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :e-mail
      t.string :ip
      t.text :content
      t.integer :matter_id

      t.timestamps
    end
  end
end

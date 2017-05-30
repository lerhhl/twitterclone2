class CreateUserpics < ActiveRecord::Migration[5.1]
  def change
    create_table :userpics do |t|
      t.string :picurl
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

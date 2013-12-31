class CreateInsights < ActiveRecord::Migration
  def up
    create_table :insights do |t|
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end

  def down
    drop_table :insights
  end
end

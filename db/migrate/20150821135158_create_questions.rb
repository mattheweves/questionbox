class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.string :category
      t.text :questiontext

      t.timestamps
    end
  end
end

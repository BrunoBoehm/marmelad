class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :question
      t.text :answ1
      t.text :answ2
      t.text :answ3
      t.text :answer
      t.boolean :featured

      t.timestamps
    end
  end
end

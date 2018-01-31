class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :anonymous_author 
      t.string :content

      t.timestamps
    end
  end
end

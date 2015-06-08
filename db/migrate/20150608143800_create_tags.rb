class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps null: false # creates two colums in app 'created_at' and 'updated_at'
    end
  end
end

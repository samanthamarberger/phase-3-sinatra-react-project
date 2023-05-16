class CreateStretches < ActiveRecord::Migration[6.1]
  def change
    create_table :stretches do |t|
      t.string :name
      t.string :image_url
      t.string :how_to_do
      t.timestamps
    end
  end
end

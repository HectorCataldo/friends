class CreateAmigos < ActiveRecord::Migration[7.0]
  def change
    create_table :amigos do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end

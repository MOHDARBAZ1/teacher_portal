class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    add_index :teachers, :email, unique: true
  end
end

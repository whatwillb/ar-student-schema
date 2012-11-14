require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    create_table(:students) do |t|
      t.column :id, :integer
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :gender, :string
      t.column :email, :string
      t.column :phone, :string
      t.column :birthday, :date
    end

    # HINT: checkout ActiveRecord::Migration.create_table
  end
end

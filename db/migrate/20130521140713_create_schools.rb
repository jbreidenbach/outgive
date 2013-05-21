class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :schoolname
      t.string :schoolwebsite
      t.integer :schoolcode
      t.integer :university_id
      t.string :uniname
      t.integer :unicode

      t.timestamps
    end
  end
end

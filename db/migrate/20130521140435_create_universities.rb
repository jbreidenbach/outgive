class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :uniname
      t.string :uniwebsite
      t.integer :unicode

      t.timestamps
    end
  end
end

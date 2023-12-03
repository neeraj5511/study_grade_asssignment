class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.integer :s1
      t.integer :s2
      t.integer :s3
      t.integer :s4

      t.timestamps
    end
  end
end

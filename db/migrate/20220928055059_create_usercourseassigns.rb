class CreateUsercourseassigns < ActiveRecord::Migration[6.1]
  def change
    create_table :usercourseassigns do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end

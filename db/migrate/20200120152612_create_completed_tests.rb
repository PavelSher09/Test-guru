class CreateCompletedTests < ActiveRecord::Migration[6.0]
  def change
    create_table :completed_tests do |t|
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end

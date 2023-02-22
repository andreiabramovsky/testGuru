class ChangeColumnCurrentQuestionTestPassages < ActiveRecord::Migration[6.1]

  def self.up
    remove_column :test_passages, :current_question
    add_column :test_passages, :current_question, foreign_key: { to_table: :questions }
  end

  def self.down
    remove_column :test_passages, :current_question
    add_column :test_passages, :current_question, null: false, foreign_key: true
  end
  
end
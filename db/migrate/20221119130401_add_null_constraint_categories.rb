class AddNullConstraintCategories < ActiveRecord::Migration[6.1]
  def change
    change_column_null :categories, :title, false
    change_column_default :tests, :level, 0
    change_column_default :answers, :correct, false
  end
end

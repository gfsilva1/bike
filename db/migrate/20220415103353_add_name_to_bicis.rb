class AddNameToBicis < ActiveRecord::Migration[6.1]
  def change
    add_column :bicis, :name, :string
  end
end

class CreateBicis < ActiveRecord::Migration[6.1]
  def change
    create_table :bicis do |t|

      t.timestamps
    end
  end
end

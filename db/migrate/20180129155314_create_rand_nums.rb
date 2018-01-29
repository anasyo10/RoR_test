class CreateRandNums < ActiveRecord::Migration[5.1]
  def change
    create_table :rand_nums do |t|
      t.integer :value

      t.timestamps
    end
  end
end

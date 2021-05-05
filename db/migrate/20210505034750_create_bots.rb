class CreateBots < ActiveRecord::Migration[6.1]
  def change
    create_table :bots do |t|
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end

class CreateTimeGetters < ActiveRecord::Migration
  def change
    create_table :time_getters do |t|
      t.datetime :datetime
      t.text :html

      t.timestamps
    end
  end
end

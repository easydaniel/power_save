class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :devices, :profiles do |t|
      # t.index [:device_id, :profile_id]
      # t.index [:profile_id, :device_id]
    end
    create_join_table :histroy, :profiles do |t|
      # t.index [:device_id, :profile_id]
      # t.index [:profile_id, :device_id]
    end

  end
end

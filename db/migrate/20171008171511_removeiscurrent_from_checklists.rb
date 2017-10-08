class RemoveiscurrentFromChecklists < ActiveRecord::Migration[5.0]
  def change
    remove_column :checklists, :iscurrent
  end
end

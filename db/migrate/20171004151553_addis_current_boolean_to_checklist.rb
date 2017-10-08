class AddisCurrentBooleanToChecklist < ActiveRecord::Migration[5.0]
  def change
    add_column :checklists, :iscurrent, :boolean, null: false, default: true
  end
end

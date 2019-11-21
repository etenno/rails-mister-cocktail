class RemoveStringFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :string, :string
  end
end

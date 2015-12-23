class AddNameToCats < ActiveRecord::Migration
  def change
    add_column :cats, :name, :string
  end
end

class AddImageToCats < ActiveRecord::Migration
  def change
    add_column :cats, :image, :string
  end
end

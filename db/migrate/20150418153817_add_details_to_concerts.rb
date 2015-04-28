class AddDetailsToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :title, :string
    add_column :concerts, :date, :date
    add_column :concerts, :open, :time
    add_column :concerts, :start, :time
    add_column :concerts, :info, :text
  end
end

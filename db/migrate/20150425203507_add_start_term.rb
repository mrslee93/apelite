class AddStartTerm < ActiveRecord::Migration
  def change
  	add_column :plans, :start_term, :string
  end
end

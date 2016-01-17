class AddEstadoToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :estado, :boolean
  end
end

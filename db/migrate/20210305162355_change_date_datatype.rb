class ChangeDateDatatype < ActiveRecord::Migration[6.0]
  def change
    rename_column :intervencions, :date, :fecha
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword") :intervencions, :date, :fecha

    remove_column :cultivos, :cultivo 
  end
end

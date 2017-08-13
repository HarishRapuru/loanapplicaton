class AddPanNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :pan_card, :string
    add_column :users, :mobile, :string
    add_column :users, :company_pan, :string
    add_column :users, :type_of_company, :string
    add_column :users, :annual_trunover, :string
    add_column :users, :funding_date, :date
    add_column :users, :pan_image, :string
    add_column :users, :aadhar_image, :string
    add_column :users, :address_image, :string
    add_column :users, :token, :string
    add_column :users, :loan_confirmation, :string
    add_column :users, :status, :string
 end
end

class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :company_name

      t.timestamps

    end
  end
end

class EmployeeDetails < ActiveRecord::Migration[5.0]
  def change
	 create_table :employee_details do |t|
      t.string :first_name
      t.string :last_name
    end	

	create_table :department do |t|
      t.string :dept_no
      t.string :dept_name
    end
  end
end

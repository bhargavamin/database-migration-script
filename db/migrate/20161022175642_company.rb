class Company < ActiveRecord::Migration[5.0]
  def up
	   create_table :employee_info do |t|
      t.string :first_name
      t.string :last_name
    end
 execute "insert into employee_info values (1,'bhargav','amin');"
         execute "insert into employee_info values(2,'kashyap','amin');"
         execute "insert into employee_info values(3,'rajendra','amin');"
        execute "insert into employee_info values(4,'daxa','amin');"
         execute "insert into employee_info values(5,'rob','coal');"
         execute "insert into employee_info values(6,'kevin','hart');"


        create_table :department_info do |t|
      t.string :dept_no
      t.string :dept_name
    end
	

	 execute "insert into department_info values(1,'101','accounts');"
	execute "insert into department_info values(2,'102','marketing');"
	execute "insert into department_info values(3,'103','production');"
	execute "insert into department_info values(4,'104','research');"
	execute "insert into department_info values(5,'105','sales');"

  end

 def down
	 execute "Drop table employee_info;"
	execute "Drop table department_info;"

	end
end

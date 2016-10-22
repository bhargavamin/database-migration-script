# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version `2.3.0`

Add database configuration to `config/database.yml` in your project directory 

### To create a new database migration:

    rake db:new_migration name=company
    edit db/migrate/20161023234130_company.rb

#### Create tables, insert and rollback/delete in `db/migrate/20161023234130_company.rb` :

```
 def up
	   create_table :employee_info do |t|
      t.string :first_name
      t.string :last_name
    end
 execute "insert into employee_info values (1,'bhargav','amin');"

 def down
	 execute "Drop table employee_info;"

	end
```

### To apply your newest migration:

    rake db:migrate

### To migrate to a specific version (for example to rollback)

    rake db:migrate VERSION=20081220234130

### To migrate a specific database (for example your "testing" database)

    rake db:migrate RAILS_ENV=test

### To execute a specific up/down of one single migration

    rake db:migrate:up VERSION=20081220234130

### To revert your last migration

    rake db:rollback


# database-migration-script

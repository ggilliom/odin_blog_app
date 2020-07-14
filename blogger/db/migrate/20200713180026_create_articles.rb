class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t| # t is a table from :articles
    	# Call methods on t to create columns in the :articles table
    	# What kind of fields should our article have?
    	t.string :title # Gives Article a :title property
    	t.text :body # Gives Article a :body property

      t.timestamps # creates created_at and updated_at columns to be
      						 # managed by Rails automatically
    end
  end
end

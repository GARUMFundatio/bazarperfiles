ActiveRecord::Schema.define(:version => 20101112073536) do

    create_table :perfiles, :force => true do |t|
      t.string   :codigo
      t.string   :desc
      t.integer  :nivel
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_index :perfiles, [:codigo]

end
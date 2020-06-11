class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :code_path
      t.string :name
      t.boolean :root
      t.references :page

      t.timestamps
    end
  end
end

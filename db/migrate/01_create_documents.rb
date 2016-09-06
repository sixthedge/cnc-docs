class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string  :title
      t.text    :body
      t.string  :slug
      t.integer :order

      t.belongs_to :section
      t.belongs_to :version
      t.timestamps
    end
  end
end

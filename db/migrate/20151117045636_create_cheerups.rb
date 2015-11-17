class CreateCheerups < ActiveRecord::Migration
  def change
    create_table :cheerups do |t|
    t.string     :title
    t.string     :content
    
    t.timestamps
    t.references :user
    end
  end
end

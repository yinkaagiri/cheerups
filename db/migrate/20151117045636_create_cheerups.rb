class CreateCheerups < ActiveRecord::Migration
  def change
    create_table :cheerups do |t|
    t.string     :title
    t.string     :content
    t.integer    :user_id

    t.timestamps
    t.references :user
    end
  end
end

class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :account, index: true
      t.references :user, index: true
      t.string :role, null: false

      t.timestamps
    end
  end
end

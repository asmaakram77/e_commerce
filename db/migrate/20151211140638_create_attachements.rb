class CreateAttachements < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :attachable_id
      t.string :attachable_type
      t.timestamps
    end
  end
end

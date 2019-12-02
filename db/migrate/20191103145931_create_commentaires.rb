class CreateCommentaires < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaires do |t|
      t.string :message
      t.belongs_to :client, index: true

      t.timestamps
    end
  end
end

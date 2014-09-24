class AddArticleIdToProcess < ActiveRecord::Migration
  def change
    add_column :processes, :article_id, :integer

    add_index :processes, :article_id
  end
end

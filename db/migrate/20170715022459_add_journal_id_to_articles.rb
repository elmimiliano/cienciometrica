class AddJournalIdToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :journal_id, :integer
  end
end

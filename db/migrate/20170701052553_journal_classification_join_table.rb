class JournalClassificationJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :clasifications, :journals do |t|
      # t.index [:clasification_id, :journal_id]
      # t.index [:journal_id, :clasification_id]
    end
  end
end

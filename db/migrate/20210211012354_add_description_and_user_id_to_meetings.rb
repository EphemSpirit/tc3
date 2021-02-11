class AddDescriptionAndUserIdToMeetings < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :description, :text
    add_column :meetings, :user_id, :integer
  end
end

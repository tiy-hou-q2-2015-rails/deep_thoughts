class AddPhotoToThought < ActiveRecord::Migration
  def change
    add_column :thoughts, :photo, :string
  end
end

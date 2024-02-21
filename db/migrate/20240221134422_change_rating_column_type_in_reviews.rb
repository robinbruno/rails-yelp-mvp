class ChangeRatingColumnTypeInReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :integer, :string
    change_column :reviews, :rating, :integer
  end
end

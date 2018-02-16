class AddUserRefToStaticPatterns < ActiveRecord::Migration[5.1]
  def change
    add_reference :static_patterns, :user, foreign_key: true
  end
end

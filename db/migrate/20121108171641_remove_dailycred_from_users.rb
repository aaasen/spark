class RemoveDailycredFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :provider
    remove_column :users, :verified
    remove_column :users, :referred_by
    remove_column :users, :token
    remove_column :users, :facebook
    remove_column :users, :tags
    remove_column :users, :referred
    remove_column :users, :google
    remove_column :users, :twitter
    remove_column :users, :github
    remove_column :users, :access_tokens
    remove_column :users, :subscribed
    remove_column :users, :display
    remove_column :users, :identities
  end

  def down
    add_column :users, :identities, :text
    add_column :users, :display, :string
    add_column :users, :subscribed, :boolean
    add_column :users, :access_tokens, :text
    add_column :users, :github, :text
    add_column :users, :twitter, :text
    add_column :users, :google, :text
    add_column :users, :referred, :text
    add_column :users, :tags, :text
    add_column :users, :facebook, :text
    add_column :users, :token, :string
    add_column :users, :referred_by, :string
    add_column :users, :verified, :boolean
    add_column :users, :provider, :string
  end
end

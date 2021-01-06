class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :link_to_apply
      t.string :company_name
      t.string :headquarters
      t.string :company_website
      t.string :compensation_range
      t.string :compensation_type
      t.string :estimated_hours
      t.boolean :remote, default: false
      t.string :years_of_experience
      t.string :status, default: "pending"
      t.integer :price
      t.string :upsell_type
      t.datetime :published_at
      t.datetime :featured_until
      t.boolean :featured, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

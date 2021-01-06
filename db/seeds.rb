
User.delete_all
Job.delete_all

admin = User.new(email: "example@example.com", password: "password", password_confirmation: "password", admin: true, developer: true, employer: true)
admin.save

developer = User.new(email: "developer@example.com", password: "password", password_confirmation: "password", admin: false, developer: true, employer: false)
developer.save

employer = User.new(email: "employer@example.com", password: "password", password_confirmation: "password", admin: false, developer: false, employer: true)
employer.save

Job.create!(
  company_name: "Goooogle",
  company_website: "https://goooogle.com",
  compensation_range: "170,000 - 180,000",
  compensation_type: "Full-time",
  estimated_hours: nil,
  featured: false,
  featured_until: nil,
  headquarters: "California",
  link_to_apply: "https://google.com/apply",
  price: 199,
  published_at: DateTime.now,
  remote: false,
  slug: "rails-developer-at-google",
  status: "published",
  title: "Rails developer at Google",
  upsell_type: nil,
  years_of_experience: "5",
  user_id: admin.id,
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph
)

Job.create!(
  company_name: "Dropppbox",
  company_website: "https://dropppbox.com",
  compensation_range: nil,
  compensation_type: "Contract",
  estimated_hours: "more than 100",
  featured: true,
  featured_until: 1.week.from_now.beginning_of_day,
  headquarters: "California",
  link_to_apply: "https://dropppbox.com/apply",
  price: 299,
  published_at: DateTime.now,
  remote: true,
  slug: "ruby-developer-at-dropppbox",
  status: "published",
  title: "Ruby developer at Dropppbox",
  upsell_type: "best",
  years_of_experience: "5",
  user_id: employer.id,
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph
)

Job.create!(
  company_name: "Applette",
  company_website: "https://applette.com",
  compensation_range: "240,000 - 250,000",
  compensation_type: "Full-time",
  estimated_hours: nil,
  featured: false,
  featured_until: nil,
  headquarters: "California",
  link_to_apply: "https://applette.com/apply",
  price: 199,
  published_at: DateTime.now,
  remote: false,
  slug: "ruby-developer-at-applette",
  status: "published",
  title: "Ruby developer at Applette",
  upsell_type: nil,
  years_of_experience: "8",
  user_id: employer.id,
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph
)











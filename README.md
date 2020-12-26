# README

Data Modeling

User
time_zone

Developer
  first_name (string)
  last_name (string)
  email (string)
  admin: false (Boolean)

Employer
  first_name (string)
  last_name (string)
  email (string)
  admin: false (Boolean)

Admin
  name (string)
  email (string)
  admin: true (Boolean)

Job
  title (string)
  link_to_apply (string)
  description (RichText)
  company_name (string)
  company_website (string)
  company_logo (ActiveStorage)
  company_headquarters (string)
  company_description (RichText)
  role_type (string)
  compensation_range (string)
  remote (Boolean)
  years_of_experience (string)

  SimpleDiscussion (Community)
    https://github.com/excid3/simple_discussion

    ForumPost
    ForumThread
    ForumSubscription
    ForumCategory

Gems Used

  Devise (auth)
  Sidekiq (background job queuing service)
  Whenever (Cron jobs for the win)
  Stripe (Charge with Stripe)
  Stripe Event (listen for Stripe events)
  Pay (payments with Stripe and Braintree)
  Pagy (fast pagination)
  aws-sdk-s3 (active storage)
  image_processing (active storage)
  inline_svg (rendering svgs from file)
  Honeybadger - (error tracker)
  Redis (for all the redis things)
  pg (PostGreSQL)
  sendgrid-ruby (hook up email sending service)
  name_of_person (cool gem for working with names) (https://github.com/basecamp/name_of_person)
  FriendlyId (make slugs more human)
  OmniAuth - Google/Twitter (Login with Google and Twitter with Devise-omniauth)

Development:

  faker (generate fake data for tests or seeds)
  pry-rails (useful for debugging)
  annotate (adds comments to models for reminders about the database design)

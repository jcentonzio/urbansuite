ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address        => 'smtp.gmail.com',
  :port           => 587,
  :domain         => 'Urbansuites.cl',
  :authentication => :plain,
  :user_name      => 'aparturbansuite@gmail.com',
  :password       => '171181jorge555'
}


ActionMailer::Base.default_url_options[:host] = "www.urbansuites.cl"
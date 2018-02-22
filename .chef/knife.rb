current_dir = File.dirname(__FILE__)
log_level :info
log_location STDOUT

cookbook_path ["#{current_dir}/../cookbooks"]
cookbook_copyright 'Internet Janitors'
cookbook_email 'noreply@thejanitors.com'
cookbook_license 'Apache-2.0'

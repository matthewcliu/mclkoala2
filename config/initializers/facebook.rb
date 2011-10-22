fb_options = YAML.load_file(Rails.root.join("config", "facebook.yml"))[Rails.env]

puts "*"*200
puts YAML.load_file(Rails.root.join("config", "facebook.yml"))

puts "*"*200


puts Rails.root.join("config", "facebook.yml")

puts "*"*200


puts fb_options

puts "*"*200


$app_id = fb_options['app_id']
$secret_key = fb_options['app_id']
$callback_url = fb_options['app_id']

puts $app_id
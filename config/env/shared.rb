# If you haven't already, create a base AMI on EC2 and put it's id below.
Butcher::Config[:base_image_id] = 'your-ami-id'

# What is the filename of your AWS key? (exclude .pem)
Butcher::Config[:aws_key_filename] = 'butcher'

# What is the base images's sudo-enabled username?
Butcher::Config[:username] = 'butcher'

# Which region are you using?
Butcher::Config[:aws_region] = 'us-east-1'

# Your AWS ID and secret key are needed below.
Butcher::Config[:aws_secret_access_key] = 'secret key'
Butcher::Config[:aws_access_key_id] = 'key id'

# Is there any particular git branch you'll be pulling from?
Butcher::Config[:branch] = ENV["BRANCH"] || "master"

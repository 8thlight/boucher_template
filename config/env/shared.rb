# What is the filename of your AWS key? (exclude .pem)
Butcher::Config[:aws_key_filename] = 'butcher'

# Which region are you using?
Butcher::Config[:aws_region] = 'us-east-1'

# Your AWS ID and secret key are needed below.
Butcher::Config[:aws_access_key_id] = 'key id'
Butcher::Config[:aws_secret_access_key] = 'secret key'

# What is the base images's sudo-enabled username?
Butcher::Config[:username] = 'ubuntu'

# What's your infrastructure project's git URL?
Butcher::Config[:infrastructure_git_repo] = "git@github.com:<github account name>/<project name>.git"

# If you haven't already, create a base AMI on EC2 and put it's id below.
Butcher::Config[:base_image_id] = 'your-ami-id'

# Is there any particular git branch you'll be pulling from?
Butcher::Config[:branch] = ENV["BRANCH"] || "master"

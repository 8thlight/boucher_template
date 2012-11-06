# What is the filename of your AWS key? (exclude .pem)
Boucher::Config[:aws_key_filename] = 'boucher'

# Which region are you using?
Boucher::Config[:aws_region] = 'us-east-1'

# Your AWS ID and secret key are needed below.
Boucher::Config[:aws_access_key_id] = 'key id'
Boucher::Config[:aws_secret_access_key] = 'secret key'

# What is the base images's sudo-enabled username?
Boucher::Config[:username] = 'ubuntu'

# What's your infrastructure project's git URL?
Boucher::Config[:infrastructure_git_repo] = "git@github.com:<github account name>/<project name>.git"

# If you haven't already, create a base AMI on EC2 and put it's id below.
Boucher::Config[:default_image_id] = 'your-ami-id'

# What are your default image settngs?
Boucher::Config[:default_instance_flavor_id] = 't1.micro'
Boucher::Config[:default_instance_groups] = %w(SSH)

# Is there any particular git branch you'll be pulling from?
Boucher::Config[:branch] = ENV["BRANCH"] || "master"

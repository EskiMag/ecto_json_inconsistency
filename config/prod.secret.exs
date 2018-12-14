use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :bug, BugWeb.Endpoint,
  secret_key_base: "K5x/SfKcMDZGBxcPejs6sTkYuq2Yqov3POlRU2PcXLf8qd+JtefP6H0/1UKpE61F"

# Configure your database
config :bug, Bug.Repo,
  username: "postgres",
  password: "postgres",
  database: "bug_prod",
  pool_size: 15

# AC project sample

This app is an app for AC students to practice writing documentation and model specs.

## Getting Started



1. Get the codebase

  ```bash
  https://github.com/gohdaniel15/ac_project_sample.git
  ```

2.Install gem dependencies

  ```bash
  cd ac_project_sample
  bundle install
  ```

3. Setup Database

  ```bash
  rake db:create db:migrate
  ```

4. Start the application

  ```bash
  # Start the web server
  rails server
  ```

## Testing

We use [Rspec](https://github.com/rspec/rspec-rails) as our testing framework. So, during development, run these regularly.

```bash
# Run the specs
rspec
```

## Branch Policy

We follow the [Github Flow](https://guides.github.com/introduction/flow/) when developing the application, and name our branches as follow:

- `master` is the active development branch

Local development branch naming:

- `feature/<your-branch-name>` for substantial new feature or function
- `enhance/<your-branch-name>` for minor feature or function enhancement
- `bugfix/<your-branch-name>` for bug fixes

## Deployment

We deploy our application to heroku.. Automatic deployment has been setup for our production environment as documented [here](https://devcenter.heroku.com/articles/github-integration#automatic-deploys). To manually deploy to heroku with Git, you need to:

1. Register a heroku account and request access to production app
2. Install [heroku toolbelt](https://toolbelt.heroku.com/) which is a CLI tool for creating and managing Heroku apps
3. Setup heroku remote

  ```bash
  # Setup heroku remote for production
  git remote add heroku https://git.heroku.com/ac-project-sample.git
  ```

# README

# Construction Tasks

Construction Tasks is an application made for construction Foreman looking to assign tasks mulitple tasks to employees with the expectation that instead of them coming up to you constantly interupting your work that they can look at this app and see what tasks have been assigned to them. They have the ability to check done or undone incase they accidently clicked done but realized they didn't actually finish the task.

Application built with React.js for the Front End and ruby on rails for the back end.

## Installation

Check that your ruby is up to date to atleast 3.1.2 and rails is up to atleast 7.0

```bash
ruby -v
rails -v
```

```bash
git clone https://github.com/StevenMetz/todo-group-tasks.git
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can test web requests as documented in the `Requests` file.

## Roadmap

Future Features Include but not limited to

1. Employee can see how far a jobsite is away from their house.
2. Foremen will get a text message notification that "X" Employee has completed "X" tasks

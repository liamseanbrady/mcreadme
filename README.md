# McREADME

McREADME is the README equivalent of fast food. Just order a README and it is delivered to you in no time and according to your specifications.

This was inspired by the importance of starting a project with a good, thorough README outlined in [README Driven Development](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html).

## Installation

```
gem install mcreadme
```

## Menu

At the moment, the menu is pretty limited. We have two flavours of README on offer:

  - Basic - title, introduction, requirements, and usage 
  - Tasty - title, introduction, installation, dependencies, usage, contributing
  
## Usage

Ordering a README
  
  - Adding a basic README in your current working directory
  
  ```
  mcreadme basic
  ```
  
  or

  ```
  mcreadme
  ```

  - Adding a tasty README in your current working directory

  ```
  mcreadme tasty
  ```

  - Finding all of the options for a customized README (all READMEs have a title and introduction as standard)
  
  ```
  mcreadme options

  You can have the following items in your README
    - requirements
    - usage 
    - installation
    - dependencies
    - contributing
  ```

  - Ordering a custom README

  ```
  mcreadme with usage dependencies
  ```

    This will give you a README with a title, introduction, dependencies and usage


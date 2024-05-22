# clean_architecture_demo_02

A new Flutter project.

## Getting Started with clean architecture

lib
-core
-entities      #Core business logic models
-repositories  #Interfaces for data access
-usecases      #Application-specific business rules
-errors        #Custom error handling
-data
-datasources
-remote         #Remote data sources (API)
-local          #Remote data sources (Internal Database)
-repositoriesImpl  #Implementations of repositories
-models             #Data models
-presentation
-screens            #UI screens
-widgets            #Reusable UI components/widgets
-providers          #Provider setup and providers
-utils              #Utility classes for presentation layer
-injections
-locator.dart       #Setup for dependency injection
-main.dart





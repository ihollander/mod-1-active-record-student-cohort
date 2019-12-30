# Object Relations Practice Code Challenge - Students

For this assignment, we'll be working with a Students domain.

We have two models: `Cohort` and `Student`.

For our purposes, a `Cohort` has many `Students`s and a `Student` belongs to a `Cohort`.

`Student` - `Cohort` is a one to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Topics

- Active Record Migrations
- Object Relationships
- Active Record Queryng

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it, run `rake console` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You are also encouraged to use the `seeds.rb` file to create sample data to test your models and associations.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices. 

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

## What You Already Have

The starter code has migrations and models for the initial `Cohort` and `Student` models, and seed data for some `Cohort`s and `Student`s. The schema currently looks like this: 

#### `students` Table
| Column      | Type      |
| ------------| ----------|
| name        | String    |
| age         | Integer   |
| email       | String    |

#### `cohorts` Table
| Column            | Type      |
| ------------------| --------- |
| name              | String    |
| current_mod       | Integer   |

You will need to create a migration to establish the relationship between these two tables. You'll need to add one additional column to one of these existing tables to create the relationship. **Remember**: a `Cohort` has many `Student`s and a `Student` belongs to a `Cohort`.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Remember: Active Record give your classes access to a lot of built-in methods! Keep in mind what methods Active Record gives you access to on each of your classes when you're approaching the deliverables below.

### Migrations

Before working on the rest of the deliverables, you will need to create a migration to establish the relationship between a `Student` and a `Cohort`.

- A `Student` belongs to a `Cohort`. Create a migration to update your existing tables to reflect this relationship.

After creating the migration file and migrating, use the `seeds.rb` file to create instances of `Student`s and `Cohort`s to so you can test your relationships.

**Once you've successfully created the migration**, work on building out the following deliverables. Use Active Record association macros and Active Record query methods where appropriate.

### Object Relationship Methods

#### Student

- `Student#cohort`
  - should return the `Cohort` instance for this student

#### Cohort

- `Cohort#students`
  - returns a collection of all `Student` instances for this cohort

### Aggregate and Association Methods

#### Student
- `Student#current_mod`
  - returns the current mod for this student's cohort

#### Cohort
- `Cohort#add_student` 
  - takes a name (as a `String`) and an age (as an `Integer`) and adds a new student to this cohort
- `Cohort#average_age`
  - returns the average age of all the students in the cohort as a `Float`
- `Cohort#total students`
  - returns the total number of students in the cohort as an `Integer`
- `Cohort.biggest`
  - returns a `Cohort` instance for the cohort with the most students
- `Cohort.sort_by_mod`
  - returns all cohorts, sorted by `current_mod` from lowest to highest

## Rubric

### Active Record Associations

1. No associations, no foreign key on the table.
2. Associations attempted in the model but are incorrect; foreign key is on a table but in the wrong spot.
3. Relationships properly created. Associations lead to the correct behavior but may have used `has_one` or manually written out the methods the macro builds for us.
4. Relationships properly created, save minor mistakes in advanced deliverables. May implement advanced query methods with iterators instead of using built-in methods.
5. Relationships properly created. Advanced query methods use appropriate built-in methods.

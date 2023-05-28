# Articles--code-challenge
The above  is a Ruby application that models a system for managing authors, magazines, and articles. It provides a set of classes and methods to create and interact with instances of these classes.

## Classes
The classes include:
* Author
* Magazine
* Article
The above classes are each in their own file under the "lib" folder.

## Configuration
There's an  environment file that contains all the relative files of each class then a run file that requires the environment file and runs the application 

## Methods

Each class has methods that fulfill the following deliverables:

### Initializers, Readers, and Writers

#### Author
- `Author#initialize(name)`: Initializes an author with a name as a string. The name cannot be changed after initialization.
- `Author#name`: Returns the name of the author.

#### Magazine
- `Magazine#initialize(name, category)`: Initializes a magazine with a name and category, both as strings. The name and category can be changed after initialization.
- `Magazine#name`: Returns the name of the magazine.
- `Magazine#category`: Returns the category of the magazine.
- `Magazine.all`: Returns an array of all Magazine instances.

#### Article
- `Article#initialize(author, magazine, title)`: Initializes an article with an author (as an Author object), a magazine (as a Magazine object), and a title (as a string). The author, magazine, and title cannot be changed after initialization.
- `Article#title`: Returns the title of the article.
- `Article.all`: Returns an array of all Article instances.

### Object Relationship Methods

#### Article
- `Article#author`: Returns the author for the given article.
- `Article#magazine`: Returns the magazine for the given article.

#### Author
- `Author#articles`: Returns an array of Article instances that the author has written.
- `Author#magazines`: Returns a unique array of Magazine instances for which the author has contributed to.

#### Magazine
- `Magazine#contributors`: Returns an array of Author instances who have written for the magazine.

### Associations and Aggregate Methods

#### Author
- `Author#add_article(magazine, title)`: Creates a new Article instance and associates it with the author and a magazine. The magazine parameter should be a Magazine instance, and the title should be a string.
- `Author#topic_areas`: Returns a unique array of strings representing the categories of the magazines the author has contributed to.

#### Magazine
- `Magazine.find_by_name(name)`: Given a string of a magazine's name, returns the first magazine object that matches the name.
- `Magazine#article_titles`: Returns an array of strings representing the titles of all articles written for the magazine.
- `Magazine#contributing_authors`: Returns an array of authors who have written more than 2 articles for the magazine.

These methods enable you to interact with the instances of the Author, Magazine, and Article classes and retrieve relevant information about authors, magazines, and articles in the system.

## Usage

1. Instantiate instances of `Author`, `Magazine`, and `Article` to create a sample dataset.
2. Use the provided methods to interact with the instances and retrieve information.
3. See the example usage in the source code . 


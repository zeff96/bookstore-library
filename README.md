<div align="center">

  <h3><b>BOOKSTORE LIBRARY</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 BOOKSTORE LIBRARY <a name="about-project"></a>

**BOOKSTORE LIBRARY** is web application enables authenticated users to seamlessly view a list of available books, borrow books if they are available, and navigate to their profile to manage their account. Users can see their profile details and a list of borrowed books, and they also have the option to return any borrowed book directly through the platform.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> [Ruby on Rails](https://guides.rubyonrails.org/) (simplify as Rails) is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer and HTML, CSS and JavaScript for user interfacing.

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **User Authentication**: Secure login and authentication for users to access the application.

- **Book Browsing**: View a comprehensive list of available books with details.

- **Book Borrowing**: Borrow books if they are available in the inventory.

- **User Profile Management**: Navigate to user profile to view and manage personal information.

- **Borrowed Books List**: See a detailed list of borrowed books within the user profile.

- **Book Returning**: Option to return any borrowed book directly through the platform.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- [Ruby and Rails on you operating system eg. for Ubuntu 24.04](https://guides.rubyonrails.org/install_ruby_on_rails.html)
- [Node.js](https://nodejs.dev/en/) installed
- [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/#debian-stable)
- [PostgreSQL](https://www.postgresql.org/) database installed

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git git@github.com:zeff96/bookstore-library.git
```

### Install

Install this project with:

Install Dependencies

```sh
  cd bookstore-library/
  bundle install
```

Create the Database

Add authentication details in config/database.yml (for Windows users)

```sh
  echo "Updating database.yml for Windows authentication..."
  sed -i 's/username:.*/username: your_db_username/' config/database.yml
  sed -i 's/password:.*/password: your_db_password/' config/database.yml
  sed -i 's/host:.*/host: your_db_host/' config/database.yml
```

Create the Database

```sh
  rails db:create
```

Install Active Storage

```sh
  rails active_storage:install
```

Run Migrations

```sh
  rails db:migrate
```

Seed the Database with Data

```sh
  rails db:seed
```

### Usage

To run the project, execute the following command:

Start the Application

```sh
  bin/dev
```

Display Login Information

Log in to the application with the following credentials:

- **Email Address**: allan@example.com
- **Password**: password

### Run tests

To run tests, run the following command:

Run all test

```sh
  bin/rails test:all
```

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Adeka Zeff's**

- GitHub: [@zeff96](https://github.com/zeff96)
- LinkedIn: [zeff-adeka](https://www.linkedin.com/in/zeff-adeka/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Book Reviews and Ratings**: Allow users to leave reviews and rate books they have borrowed, helping others make informed choices.

- **Wishlist**: Enable users to create a wishlist of books they want to read in the future.

- **Notifications**: Implement a notification system to alert users about due dates, new book arrivals, and overdue books.

- **Advanced Search and Filters**: Enhance the search functionality with filters such as genre, author, publication date, and more.

- **Book Recommendations**: Offer personalized book recommendations based on users’ borrowing history and preferences.

- **Social Sharing**: Allow users to share their favorite books and reviews on social media platforms.

- **Digital Books**: Integrate a feature for borrowing and reading digital books (e-books) directly within the platform.

- **Admin Dashboard**: Create an administrative dashboard for managing users, books, and monitoring overall system activity.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/zeff96/bookstore-library/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, kindly give me a ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I would like to thank [Artisans](https://artisans.company/) for inspiring this project
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **Is Rails still relevant?**

  - [Yes, Rails is still popular among developer](https://blog.railwaymen.org/is-ruby-on-rails-dead)

- **Is it easy to learn Ruby on Rails**

  - [It is very easy to learn compared to most of the programming languages](https://careerkarma.com/blog/why-learn-ruby-on-rails/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# NodeJS and MySQL - CRUD

This is a very simple web application using NodeJS and MySQL. It’s a CRUD (Create, Read, Update, Delete) functionality.

# Prerequisites

*  XAMPP or MySQL on it’s own
* Node JS
* Git

# Installing

Install node from - https://nodejs.org/en/

Create a database name `events` and copy/import `events.sql`. This will create all required tables in your database. Since this prohect uses MySQL as RDBMS, you will have to rely on XAMPP or similar platform and make sure mysql service is running

Install git if you have not installed on your computer - https://git-scm.com/
Open the command line tool and navigate to HTDOCS folder if you are using XAMPP or other local server.

Then, clone the git repo - git clone https://github.com/Tanzimul-Hasib/NodeJS-event-management-CRUD-.git - This is will copy all files and foldsers to your root directory. You will see nodejs-crud directory in your root directory. Or you can download the project or copy it in HTDOCKS directory. 

```
prompt xampp/htdocs> git clone Open the command line tool and navigate to HTDOCS folder if you are using XAMPP or other local server return/enter
```
Then navigate to nodejs-crud directory - cd nodejs-crud and then type node server.js. This will give you message that says server running at localhost:1000

```
prompt xampp/htdocs> cd nodejs-crud return/enter
prompt xampp/htdocs/nodejs-crud> node server.js return/enter
```

Visit http://localhost:1000 you will see list of events.

# Todo

* Add validation to edit event page

* Add time tables to the event

* Add sessions/schedule to the timetables 

* Create front-end for a live time table

# Changing the text/messages

To change/update any messages or text, look for a en-lang.js file located in settings/en-lang.js

# Author

Tanzimul Hasib  
tanzimul.hasib@gmail.com@gmail.com

Enjoy the code :-)

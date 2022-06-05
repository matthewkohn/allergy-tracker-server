# Allergy Tracker Server
This is the backend for an allergy tracker app for Flatiron School to showcase skills in Ruby and Active Record.

## Requirements
ruby v2.7.4
SQLite v3.31.1

## How to use
Fork and clone this repo, then run the following to install dependencies and start the server locally:
```
bundle install
rake db:migrate db:seed
rake server
```
If you haven't already, follow directions for the [Frontend]('https://github.com/matthewkohn/phase-3-allergy_tracker_client').

## Description
"Cliff's Notes for Restaurant Pros" is a full stack CRUD application. This repo is the backend for that project, using Ruby's Active Record to interact with the database, and Sinatra for setting up API routes.

The Dish and Allergy models have a many-to-many relationship, and the Ingredient model is the join table belonging to both.

## Licensing (MIT)
Copyright 2022 Matthew Kohn

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

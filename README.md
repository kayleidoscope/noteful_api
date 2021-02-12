# Noteful API

Used in conjunction with the Noteful app, this API provides the functionality to create, save, edit, and delete notes and folders.

You can also view the [live site](https://noteful-lyart-nine.vercel.app/) or visit the [frontend repo](https://github.com/kayleidoscope/noteful).

This API is not open for public use at this time, but is CORS compatible. The API will respond with a JSON object.

## Endpoints

### /users

Route | Request | Body | Result
----- | ------- | ------ | ------
/notes | GET | | returns all notes
/notes | POST | username | creates a new note
/notes/:id | GET | | returns the note with that ID
/notes/:id | DELETE | | deletes the note with that ID
/notes/:id | PATCH | | updates a note

Query param | Type
----------- | ----
id | number
name | string
content | string
date_modified | date-time
folder | number

### /folders

Route | Request | Body | Query params | Result
----- | ------- | ---- | ------ | ------
/folders | GET | | | returns all folders
/folders | POST | *id, *name | | adds a new folder to the database
/folders/:id | GET | | | returns the folder with that ID
/folders/:id | DELETE | | | deletes the folder with that ID
/folders/:id | PATCH | *id and/or *name | | updates a folder

Query param | Type
----------- | ----
id | number
name | string

## Status codes

Code | Endpoint | Request | Possible reason
---- | --------------- | ------ | -------
500 | any | any | Server error
200 | any | GET | Data was successfully returned.
201 | any | POST | Your POST was successful.
204 | any with an id path param | PATCH | Your entry was successfully updated.
204 | any with an id path param | DELETE | Your entry was successfully deleted.
400 | any | POST | A required query param in the body is missing.
404 | any with an id path param | GET, DELETE, or PATCH | An entry with that ID doesn't exist.
400 | any with an id path param | PATCH | You must include at least one of the query params in the body.

## Tech Stack

* Javascript
* React
* Node.js
* Postgres
* HTML
* CSS
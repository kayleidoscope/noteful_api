CREATE TABLE noteful_notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    content TEXT,
    date_modified TIMESTAMPTZ NOT NULL DEFAULT now(),
    folder INTEGER REFERENCES noteful_folders(id)
);
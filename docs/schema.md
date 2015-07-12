# Schema Information

## songs (also articles/excerpts/poems/texts)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
artist_id   | integer   | not null, foreign key (references artists)
user_id     | integer   | not null, foreign key (references user who transcribed)
title       | string    | not null
description | text      |
raw_contents| text      |

## song_fragment (formatted representation of words/lines for attachment of annotations)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
song_id     | integer   | not null, foreign key (references songs)
contents    | string    | not null
offset      | integer   | not null (offset pointer to character in song.raw_contents)

## annotations
column name      | data type | details
-----------------|-----------|-----------------------
id               | integer   | not null, primary key
song_fragment_id | integer   | not null, foreign key (references song_fragments)
contents         | text      | not null

## contribution (polymorphic, as contributable)
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
user_id       | integer   | not null, foreign key (references users)
contibuted_id | integer   | not null, foreign key (references annotation/song)
diff          | text      | not null (diff generated from submitted vs. previous contributed text)
percent       | integer   | not null (percent of diff present in current version of contributed text)

## comments (polymorphic, as commentable)
column name    | data type | details
---------------|-----------|-----------------------
id             | integer   | not null, primary key
author_id      | integer   | not null, foreign key (references users)
commentable_id | integer   | not null, foreign key (references artists/songs/annotations)
title          | string    | not null
body           | string    |

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
username        | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

## artists
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
name            | string    | not null, unique
description     | text      |
verified_user_id| integer   | unique, foreign key (references users)

## tags (polymorphic, as taggable)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
label       | string    | not null, unique

## taggings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
taggable_id | integer   | not null, foreign key (references artists/songs)
tag_id      | integer   | not null, foreign key (references tags)


## likes (polymorphic, as likeable)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
likeable_id | integer   | not null, foreign key (references artists/songs/annotations/comments)
user_id     | integer   | not null, foreign key (references users)

## followings (polymorphic, as followable)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
followed_id | integer   | not null, foreign key (references users/artists)
follower_id | integer   | not null, foreign key (references users)

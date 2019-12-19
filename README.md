|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|---|
|GET|/stages|READ|Get list of stages|
|GET|/stages/:id|READ|Look at detail page for a single stage|
|POST|/stages|CREATE|Add new stage to the list of stages|
|PATCH|/stages/:id|UPDATE|Update a single stage|
|DELETE|/stages/:id|DELETE|Delete a stage from the list|
|GET|/stages/new|READ|Go to the form page for adding a new stage to the list|
|GET|/stages/:id/edit|READ|Go to the form page for editing a stage


|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|---|
|GET|/stages/:id/artists/:artist_id|READ|Look at detail page for a single artist|
|POST|/stages/:id/artists/:artist_id|CREATE|Add new artist to the list of artists|
|PATCH|/stages/:id/artists/:artist_id|UPDATE|Update a single artist|
|DELETE|/stages/:id/artists/:artist_id|DELETE|Delete an artist from the list|

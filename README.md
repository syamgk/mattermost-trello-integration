# mattermost-trello-integration Dockerfile

## What is Matterllo ?

Simple integration between Trello and Mattermost: send Trello activity notifications to Mattermost channels

### Trello 
To use this project, we need a trello token to create the hook and receive each events from your board.

1. Connect to your trello account
2. Generate a token [Here](https://trello.com/app-key)
 * Note the Key (TRELLO_APIKEY)
 * Manually generate a Token (TRELLO_TOKEN)

### Environment variables
| key           | value             |
|---------------|-------------------|
| TRELLO_APIKEY | \<your_api_key>   |
| TRELLO_TOKEN  | \<your_token>     |
| SECRET        | \<your_secret>    |


### Change your admin password on first login

1. Go to the Admin page
2. Use the default account: `admin`/`admin`
3. Go to the `User` part and change the password through the form

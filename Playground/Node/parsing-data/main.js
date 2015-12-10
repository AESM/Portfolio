// main.js

/// Problem: Need a simple way to look at a Treehouse user's badge
//count, JavaScript points, and Ruby points
/// Solution: Use Node.js to connect to Treehouse's API to get profile
//information to print out

// - Username
var profileName = require('./profile');

// - Multiple users
// var multipleProfileNames = ['SuitAndCape', 'chalkers', 'joykesten2'];
// - Cycle over users in array and run the `get` method on each
// multipleProfileNames.forEach(profileName.get);

// - Enter usernames in the terminal when running `node main.js`
var namesOfUsers = process.argv.slice(2);
// - Cycle over users in array and run the `get` method on each
namesOfUsers.forEach(profileName.get);

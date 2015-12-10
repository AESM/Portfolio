// profile.js

// - Require the API module 'https'
var https = require('https');

// - A function that prints out the desired data to the console
function printInfo(profileName, badgeCount, firstPointCount, secondPointCount) {
  var infoMessage = profileName + ' has ' + badgeCount + ' Treehouse badges, ' + firstPointCount + ' JavaScript points, & ' + secondPointCount + ' Ruby points!';
  console.log(infoMessage);
}

// - A function that prints out error messages to the console
function printError(errorParam) {
  console.error(errorParam.message);
}

function getProfile(profileName) {
  // - Connect to the API URL
  var requestInfo = https.get('https://teamtreehouse.com/' + profileName + '.json', function(responseInfo) {
    // - Var to store/concat the pieces of the response body streaming in
    var responseBody = '';
    // - Print user `statusCode` data to the console
    console.log('Status: ' + responseInfo.statusCode); // => 'Status: 200'
    // - Read the data using a data event on the response
    responseInfo.on('data', function(dataChunk) {
      // - Add the chunks as they stream in
      responseBody += dataChunk;
    });

    // - Print the whole body to the console when the response has fully
    //finished
    responseInfo.on('end', function() {
      // - Print out info if the status code is 200, otherwise print an
      //error message
      if (responseInfo.statusCode === 200) {
        try {
          // - Parse the data into a JSON object
          var profileData = JSON.parse(responseBody);
          // - Print out the desired data to the console
          printInfo(profileName, profileData.badges.length, profileData.points.JavaScript, profileData.points.Ruby);
        } catch(errorMessage) {
          // - Parse the error
          printError(errorMessage);
        }
      } else {
        // - Status code error
        printError({message: 'An error occured when getting the profile for ' + profileName + '.  (Status: ' + responseInfo.statusCode + ')'});
      }
    });
  });

  // - Error handler for connections
  requestInfo.on('error', printError);
}

// Export a function called `get` for the `profile` module
module.exports.get = getProfile;

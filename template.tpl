___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Lucky Orange Session Recording Playback URL",
  "categories": [
    "SESSION_RECORDING"
  ],
  "description": "Get the Lucky Orange session recording URL for the current user\u0027s session.  This URL can be sent anywhere.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const localStorage = require('localStorage');
const JSON = require('JSON');
const makeString = require('makeString');

// Attempt to get the localStorage value for "lo-session"
let loSessionRaw = localStorage.getItem('lo-session');

if (!loSessionRaw) {
  // If the key does not exist or is empty, return undefined
  return;
}

// Try to parse the localStorage value into a JSON object
let parsed = JSON.parse(loSessionRaw);

if (!parsed || !parsed.id) {
  // If parsing fails or 'id' is not present, return undefined
  return;
}

// Get the session ID and ensure it's a string
let lo_sessionID = makeString(parsed.id);

// If after conversion it's still empty or undefined, return undefined
if (!lo_sessionID) {
  return;
}

// Construct the final session replay URL
return 'https://app.luckyorange.com/visitors/sessions/' + lo_sessionID + '/timeline';


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "lo-session"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 6/18/2025, 1:47:46 PM



require("dotenv").config();
const { exec } = require("child_process");

const API_KEY = process.env.API_KEY;

//Project Tracker Base id - appLexF112XsmCdq1

// Use your own Airtable account API KEY

const command = `curl https://api.airtable.com/v0/appLexF112XsmCdq1/Design%20projects \
-H "Authorization: Bearer ${API_KEY}"
-H "Accept: text/plain" -H "Content-Type: application/json"`;

const uniqueNames = [];

exec(command, (err, stdout) => {
  if (err) {
    console.log(err + "-> Error executing command");
    return;
  }
  const jsonData = JSON.parse(stdout);

  projectTrackerNames = jsonData.records
    .map((record) => {
      return record.fields["Project team"].map((team) => team.name);
    })
    .flat()
    .map((name) => {
      let elem = uniqueNames.find((el) => el === name);
      if (!elem) {
        uniqueNames.push(name);
      }
    });
  console.log(uniqueNames);
});

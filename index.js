const fs = require("fs");
const path = require("path");

const myLogs = path.join(__dirname, "mylogs.txt");
const logsArray = [];

const extractIpAddress = () => {
  const ipAddress = [];
  const file = fs.readFileSync(myLogs);
  const splitLogsFile = file.toString().split("\n");

  splitLogsFile.forEach((log) => {
    let eachLog = log.split(/\s+/).filter((elem) => elem !== "");
    logsArray.push(eachLog);

    // Extract all IP Addresses on column 3
    ipAddress.push(eachLog[3]);
  });

  return ipAddress;
};

console.log(extractIpAddress());

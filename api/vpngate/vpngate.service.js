const pool = require("../../config/database");
module.exports = {
  getvpns: callBack => {
    pool.query(
      `select id,country,countryflag,countrycode,regionname,ipaddress,hostname,vpnsessions,linequality,ping,score,portno,totaldownloads,createdat,updatedat from vpngate`,
      [],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
      );
    },
    
    getvpnlinkfromid: (id, callBack) => {
      pool.query(
        `select id,ipaddress,ovpndownloadpath from vpngate WHERE id = ?`,
        [id],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          if(results[0]){
            exec = require('child_process').exec;
            var pingCmd = "ping " + results[0].ipaddress;
            var result = '';
            var resultsip=exec(pingCmd, puts);
            function puts(error, stdout, stderr) {
              if (error) {
                console.log("Error pinging");
                return callBack(null, "Error pinging");
              }
              else {
                console.log("ip success");
                return callBack(null, results[0]);
              }
            }
          }else{
            return callBack(null, "no result found");
          }
          
          
        }
        );
      },
      
      
    };
    
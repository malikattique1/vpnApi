
const {
  getvpns,
  getvpnlinkfromid,
  
} = require("./vpngate.service");
module.exports = {
  getvpns: (req, res) => {
    getvpns((err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      return res.json({
        success: 1,
        data: results
      });
    });
  },

  getvpnlinkfromid: (req, res) => {
    const id = req.params.id;
    getvpnlinkfromid(id, (err, results) => {
      // console.log(results)
      if (err) {
        console.log(err);
        return;
      }
      if (!results) {
        return res.json({
          success: 0,
          message: "Record not Found"
        });
      }
      else if(results=='Error pinging'){
        return res.json({
          success:0,
          data: results
        });
      }
      else if(results=='no result found'){
        return res.json({
          success:0,
          data: results
        });
      }
      results.password = undefined;
      return res.json({
        success:1,
        data: results
      });
    });
  },


};

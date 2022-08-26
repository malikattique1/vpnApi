const router = require("express").Router();
const {
  getvpns,
  getvpnlinkfromid,
} = require("./vpngate.controller");

router.get("/",getvpns);
router.post("/:id",getvpnlinkfromid);

module.exports = router;

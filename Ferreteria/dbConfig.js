module.exports = {
  user          : "ferreteria",
  password      : "ferreteria123",
  connectString : "localhost/xe",
  externalAuth  : process.env.NODE_ORACLEDB_EXTERNALAUTH ? true : false
};

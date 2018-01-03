var DB = require('../config/database');
/**
* All user related methods will be define in this class
* create, update, delete,edit users DB queries
* DB is a object of mysql connection, where you can run all the SQL Queries
*/
var users={
    "username":req.body.reg_UserName,
    "email":req.body.reg_Email,
    "password":req.body.reg_Password,
  }
  DB.query('INSERT INTO user SET ?',users, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
    res.send({
      "code":400,
      "failed":"error ocurred"
    })
  }else{
    console.log('The solution is: ', results);
    res.send({
      "code":200,
      "success":"user registered sucessfully"
        });
  }
  });

module.exports = Users;

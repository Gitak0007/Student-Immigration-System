var db=require('../database'); //reference of dbconnection.js

var users={

    getAllUsers:function(){

        return db.query("select * from user");
    },
    addUser:function(users,callback){
        return db.query("Insert into user values(?,?,?)",[users.username,users.email,users.password],callback);
    }
};
module.exports=users;
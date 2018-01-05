var user = require('../models/users');

var Users = {
    addUser:function(req, res, next) {
        users.addUser(req.body,function(err) {
            if (err) {
                console.log(err);
            }
            else {
                res.json(req.body);
            }
        })
	}
};

module.exports = Users;
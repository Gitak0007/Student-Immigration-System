var user = require('../models/users');

var Users = {
	getUsers:function(req, res, next) {
		//Here we have catch Promise Then from model class 
		user.getUsers().then(function(	){
			//On success we will do some operation 
			//e.g we can render template here etc..
			res.send('respond with a resource');
		}).catch(function(error){
			//Here we have caught error exceptions thrown by Promise
			res.send('respond with error in DB');
		});
		
	}
};

module.exports = Users;
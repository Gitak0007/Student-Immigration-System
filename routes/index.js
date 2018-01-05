var express = require('express');
var router = express.Router();
var db=require("../Config/database");
var passport=require("passport");
var session=require("../Config/passport");

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Student Immigration System' });
});
router.get("/login",function(req,res,next){
	res.render("login",{title:"Login To Your Account"});
})

router.get('/addProfile', function(req, res, next) {
  console.log("post request fetch", req.body); 
  res.render('addProfile', { title: 'Add Profile',data:req.body  });
});

router.get('/ListofUniversities', function(req, res, next) {
  res.render('ListofUniversities', { title: 'List of Universities' });
});

router.get("/signup" ,function(req,res,next){
	res.render("register",{title:"Sign Up here"});
})
router.post("/signup",function(req,res,next){
	console.log(req.body);
	var username=req.body.UserName;
	var email=req.body.UserEmail;
	var password=req.body.UserPassword;
	var users={
		"username":username,
		"email"   :email,
		"password":password
	}
	var newuser=db.query('insert into user SET ?',users,function (error, results, fields){
		if (error) {
			console.log(error);
		}
		
		if(fields){
			console.log(fields);
		}
	});
	if(newuser){
		res.redirect("/addProfile");
	}
	
})
router.post("/login",function(req,res,next){
	var email=req.body.Email;
	var password=req.body.password;

	var checklogin=db.query("Select * from user where email=? and password=?",[email,password],function(error,results,fields){
		if(error){
			console.log(error)
		}
		if(results.length>0)
		{
			
			res.redirect("/addProfile");
		}
		if(results.length==0){
			error="User not exists";
			res.render("login",{title:"login ",error:null})
		}
	})

})
module.exports = router;


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

router.get('/Profile', function(req, res, next) {
  console.log("post request fetch", req.body); 
  res.render('Profile', { title: 'Add Profile',data:req.body  });
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
		res.redirect("/login");
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
			
			res.redirect("/Profile");
		}
		if(results.length==0){
			error="User not exists";
			res.render("login",{title:"login ",error:null})
		}
	})

})

router.post("/Profile",function(req,res,next){
	console.log(req.body);
	var Gre=req.body.Gre;
	var LanguageScore=req.body.LanguageScore;
	var GPA=req.body.GPA;
	var JobExperience=req.body.JobExperience;
	var Internship=req.body.Internship;
	var Publications=req.body.Publications;

	var profile={
		"GREScore":Gre,
		"languageScore":LanguageScore,
		"bachelorCGPA":GPA,
		"JobExp":JobExperience,
		"Internship":Internship,
		"Publication":Publications
	}
	var profileAdd=db.query('insert into profile SET ?',profile,function (error, results, fields){
		if (error) {
			console.log(error);
		}
		
		if(fields){
			console.log(fields);
		}
	});
	if(profileAdd){
		if(GPA>3){
			var uniA=db.query("Select * from university where uniGrade='A'",function(error,results,fields){
				if(results.length>0)
				{
					console.log(results);	
				res.render("ListofUniversities",{title:"Universites Matching Your Profile ",results:results});
				}				
			})
		}
		else {
			var uniA=db.query("Select * from university where uniGrade='B'",function(error,results,fields){
				if(results.length>0)
				{
					console.log(results);	
				res.render("ListofUniversities",{title:"Universites Matching Your Profile ",results:results});
				}				
			})
		}
		}
	}
	
)

module.exports = router;


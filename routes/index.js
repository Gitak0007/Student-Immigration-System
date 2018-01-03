var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Student Immigration System' });
});

router.post('/addProfile', function(req, res, next) {
  console.log("post request fetch", req.body); 
  res.render('addProfile', { title: 'Add Profile',data:req.body  });
});

router.get('/ListofUniversities', function(req, res, next) {
  res.render('ListofUniversities', { title: 'List of Universities' });
});

module.exports = router;


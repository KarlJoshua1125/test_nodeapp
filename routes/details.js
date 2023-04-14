const express = require('express');
const router = express.Router();
const detailsController = require('../controllers/detailsController');

router.get('/', detailsController.getDetails);
router.post('/', detailsController.postDetails);

module.exports = router;

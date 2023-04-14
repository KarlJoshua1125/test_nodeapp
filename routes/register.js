const express = require('express');
const router = express.Router();
const registerController = require('../controllers/registerController');

router.get('/', registerController.getUser);
router.post('/', registerController.postUser);

module.exports = router;

const mongoose = require('mongoose');

const DBconnection = async () => {
  try {
    console.log("Skipping MongoDB connection (no DB configured).");
  } catch (err) {
    console.log("Skipping DB connection due to error:", err);
  }
};

module.exports = DBconnection;

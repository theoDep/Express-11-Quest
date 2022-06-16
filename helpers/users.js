const jwt = require("jsonwebtoken");

const PRIVATE_KEY = "superSecretStringNowoneShouldKnowOrTheyCanGenerateTokens";

const calculateToken = (userEmail = "", user_id = "") => {
  return jwt.sign({ userEmail, user_id }, PRIVATE_KEY);
};

const decodeTokenID = (token) => {
  return jwt.decode(token).user_id;
};

const decodeTokenEmail = (token) => {
  return jwt.decode(token).userEmail;
};

// now some tests:

calculateToken("john.doe@example.com", 1);
// returns eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyRW1haWwiOiJqb2huLmRvZUBleGFtcGxlLmNvbSIsInVzZXJfaWQiOjEsImlhdCI6MTY1NTM3MzMyN30.DOAyAMpAIIOWmJTuQiLFF8LXhFfDkz9ey_lsgN066LE

calculateToken("valeriy.ppius@example.com", 2);
// returns eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyRW1haWwiOiJ2YWxlcml5LnBwaXVzQGV4YW1wbGUuY29tIiwidXNlcl9pZCI6MiwiaWF0IjoxNjU1MzczMzY3fQ.Z1cazU_F0aFa_VilRsWGtA4xG_pKxIi3azFU0mVyZt0

console.log(calculateToken("ralf.geronimo@example.com", 3));
// returns eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyRW1haWwiOiJyYWxmLmdlcm9uaW1vQGV4YW1wbGUuY29tIiwidXNlcl9pZCI6MywiaWF0IjoxNjU1MzczNDE5fQ.2erYAv4PIaqtvm6WotrnNRBqrn43_BHGB_t0Ai3IlDU

module.exports = { calculateToken, decodeTokenEmail, decodeTokenID };

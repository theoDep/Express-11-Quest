const crypto = require("crypto");

const PRIVATE_KEY = "superSecretStringNowoneShouldKnowOrTheyCanGenerateTokens";

const calculateToken = (userEmail = "") => {
  return crypto
    .createHash("md5")
    .update(userEmail + PRIVATE_KEY)
    .digest("hex");
};

// now some tests:

calculateToken("john.doe@example.com");
// returns 446cd3bb8993cd0114a2ce6df0cf4cd1

calculateToken("valeriy.ppius@example.com");
// returns d3caee5b58d232bc516f5cf20f627c5e

console.log(calculateToken("ralf.geronimo@example.com"));
// returns 1baea32247615faa3d046b151a72a10e (just as the first string)

module.exports = { calculateToken };

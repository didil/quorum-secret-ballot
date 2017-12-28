var SecretBallot = artifacts.require("./SecretBallot.sol");

module.exports = function (deployer) {
  deployer.deploy(SecretBallot,
    "0xca843569e3427144cead5e4d5999a3d0ccf92b8e",   // Company A address
    "0x0fbdc686b912d7722dc86510934589e0aaf3b55a",   // Company B address
    "0x9186eb3d20cbd1f5f992a950d808c4495153abd5",   // Company C address
    {
      privateFor: [
        "QfeDAys9MPDs2XHExtc84jKGHxZg/aj52DTh0vtA3Xc=", // Company A Node
        "1iTZde/ndBHvzhcl7V68x44Vx7pl8nwx9LqnM/AfJUg=", // Company B Node
        "oNspPPgszVUFw0qmGFfWwh1uxVUXgvBxleXORHj07g8=", // Company C Node
      ]
    });
};

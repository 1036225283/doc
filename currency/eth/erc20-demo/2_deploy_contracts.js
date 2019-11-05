var DemoToken = artifacts.require("DemoToken");

module.exports = function(deployer) {
    deployer.deploy(DemoToken);
};
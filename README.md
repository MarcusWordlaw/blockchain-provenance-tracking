# blockchain-provenance-tracking
# Step 1 install ganache & run ganache 
# $ sudo npm install -g ganache-cli
# $ ganache-cli

# Step 2 install and initialize truffle
# $ sudo npm install -g truffle
# $ truffle init

# Step 3 Specify the netowork location of ganache
# module.exports = {
#    networks: {
#       development: {
#           host: 'localhost',
#           port: 8545,
#           network_id: '*'
#      }
#    }
# };

# Step 4 Run migrations
# $ truffle migrate

# Step 5 Create contract
# truffle create contract <contractname>

# Step 6 Create new migration file for contract
# var <contractName> = artifacts.require('./<contractName>.sol');
# module.exports = function(deployer) {
#    deployer.deploy(<contractName>);
# };

# Step 7 Rerun truffle migrate to migrate new contract
# $ truffle migrate
# OR
# $ truffle migrate --reset

# Step 8 Interact with your smart contract with Truffle console
# $ truffle console
# var <contName> = await <contractName>.at(<contractName>.address)

# Step 9 Run contract functions via:
# contName.funcName
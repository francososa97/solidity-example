const MyContract = artifacts.require("MyContract");

contract("MyContract", (accounts) => {
  let myContractInstance;

  before(async () => {
    myContractInstance = await MyContract.new(10);
  });

  it("should store the initial number", async () => {
    const storedNumber = await myContractInstance.getNumber();
    assert.equal(storedNumber, 10, "The initial number should be 10");
  });

  it("should update the number", async () => {
    await myContractInstance.setNumber(20);
    const storedNumber = await myContractInstance.getNumber();
    assert.equal(storedNumber, 20, "The number should be updated to 20");
  });
});

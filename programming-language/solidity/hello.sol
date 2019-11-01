pragma solidity ^0.4.21;


contract MultiSigWallet {
    address private owner;

    mapping (address => uint8) private managers;

    // test code start -------------------------------------------------------------------
    struct User {
    string name;
    uint8 age;
    }

    string private title = "test";

    string public  name = "msg";
    // int8 public a;
    bytes28 public b = 0x11;//bytes[n] do not modify
    bytes private data = new bytes(1);

    uint[10] arr;//static array
    uint[] array;

    address public me;//address is uint160

    mapping (address => uint) m;

    // constructor(){
    // me = msg.sender;
    // }

    function test() public view returns (int){
        return b.length;
    }

    function add(int8 _a, int8 _b) public view returns (int){
        return _a + _b;
    }


    function changeData(uint8 index, bytes1 value) public view returns (bytes){
        data[index] = 0x11;
    }

    function getData() public view returns (bytes){
        data[0] = 0x16;
        data.push(0x11);
        data.length = 10;
        return data;
    }

    function getArr() public view returns (uint){
        arr[0] = 12;
        arr[1] = 13;
        return arr[0];
    }

    function getTotaL(uint[] arr) public view returns (uint16){
        uint16 total = 0;
        for (uint8 i = 0; i < arr.length; i++) {
            total = total + uint16(arr[i]);
        }
        return total;
    }

    function pay() payable {

    }

    function getBalance() view returns (uint) {
        return this.balance;
    }

    function getBalanceByAddress(address account) view returns (uint){
        return account.balance;
    }

    function register(){
        m[msg.sender] = 1;
    }

    function getRegister(address account) view returns (uint){
        return m[account];
    }

    function chageName(string _name) isOwner {
        name = _name;
    }

    function kill() isOwner {
        selfdestruct(owner);
    }


    function initUser() view returns (string, uint){
        User memory user = User({name : "xws", age : 26});
        return (user.name, user.age);
    }
    //test code end ----------------------------------------------------------------------

    modifier isOwner{
        require(owner == msg.sender);
        _;
    }

    modifier isManager{
        require(
        msg.sender == owner || managers[msg.sender] == 1);
        _;
    }

    uint constant MIN_SIGNATURES = 3;

    uint private transactionIdx;

    struct Transaction {
    address from;
    address to;
    uint amount;
    uint8 signatureCount;
    mapping (address => uint8) signatures;
    }

    mapping (uint => Transaction) private transactions;

    uint[] private pendingTransactions;

    function MultiSigWallet() public {
        owner = msg.sender;
    }

    event DepositFunds(address from, uint amount);

    event TransferFunds(address to, uint amount);

    event TransactionCreated(
    address from,
    address to,
    uint amount,
    uint transactionId
    );

    function addManager(address manager) public isOwner {
        managers[manager] = 1;
    }

    function removeManager(address manager) public isOwner {
        managers[manager] = 0;
    }

    function() public payable {
        emit DepositFunds(msg.sender, msg.value);
    }

    function withdraw(uint amount) isManager public {
        transferTo(msg.sender, amount);
    }

    function transferTo(address to, uint amount) isManager public {
        require(address(this).balance >= amount);
        uint transactionId = transactionIdx++;

        Transaction memory transaction;
        transaction.from = msg.sender;
        transaction.to = to;
        transaction.amount = amount;
        transaction.signatureCount = 0;
        transactions[transactionId] = transaction;
        pendingTransactions.push(transactionId);
        emit TransactionCreated(msg.sender, to, amount, transactionId);
    }

    function getPendingTransactions() public isManager view returns (uint[]){
        return pendingTransactions;
    }

    function signTransaction(uint transactionId) public isManager {
        Transaction storage transaction = transactions[transactionId];
        require(0x0 != transaction.from);
        require(msg.sender != transaction.from);
        require(transaction.signatures[msg.sender] != 1);
        transaction.signatures[msg.sender] = 1;
        transaction.signatureCount++;

        if (transaction.signatureCount >= MIN_SIGNATURES) {
            require(address(this).balance >= transaction.amount);
            transaction.to.transfer(transaction.amount);
            emit TransferFunds(transaction.to, transaction.amount);
            deleteTransactions(transactionId);
        }
    }

    function deleteTransactions(uint transacionId) public isManager {
        uint8 replace = 0;
        for (uint i = 0; i < pendingTransactions.length; i++) {
            if (1 == replace) {
                pendingTransactions[i - 1] = pendingTransactions[i];
            }
            else if (transacionId == pendingTransactions[i]) {
                replace = 1;
            }
        }
        delete pendingTransactions[pendingTransactions.length - 1];
        pendingTransactions.length--;
        delete transactions[transacionId];
    }

    function walletBalance() public isManager view returns (uint){
        return address(this).balance;
    }
}
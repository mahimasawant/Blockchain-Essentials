pragma solidity >=0.4.22 <0.7.0;

contract Bank
{
     int bal;

    constructor() public //accesibile anywhere
    {
        bal = 1;
    } 
    function getBalance() view public returns(int) //only fetch the value
    {
        return bal;
    }
    
    function withdraw(int amt) public
    {
       bal = bal-amt; 
    }
    
    function deposit(int amt) public
    {
        bal= bal+amt;
    }
         
}
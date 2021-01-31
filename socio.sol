pragma solidity ^0.4.19;

contract point {
    bytes16[] public post;
    int gpoint;
    int epoint;
    int spoint;
    
    
    constructor () public {
        gpoint = 0;
        epoint = 0;
        spoint = 0;
    }
    
    function getgPoint () view public returns (int) {
        return gpoint ;
    }
    function getePoint () view public returns (int) {
        return epoint ;
    }
    function getsPoint () view public returns (int) {
        return spoint ;
    }
    
    function addgPoint () public{
        gpoint += 1;
    }
    
    function addePoint () public{
        epoint += 1;
    }
    
    function addsPoint () public {
        spoint += 1;
    }
}

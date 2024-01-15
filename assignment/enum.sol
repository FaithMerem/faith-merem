// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ShippingStatus {
    enum STATUS {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    STATUS public currentStatus = STATUS.Pending;

    function get() public view returns (STATUS) {
        return currentStatus;
    }

    function set(STATUS _status) public {
        currentStatus = _status;
    }
    function cancel () public {
        currentStatus = STATUS.Canceled;
    }
     function reset() public {
        currentStatus = STATUS.Pending;
    }
}
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract DataLocations {
    struct StudentData {
        string name;
        uint256 rollNumber;
    }

    mapping(address => StudentData) public studentDetails;

    function func() external returns (StudentData memory) {
        studentDetails[msg.sender] = StudentData({
            name: "Ahmad",
            rollNumber: 1
        });

        StudentData storage studentDetail1 = studentDetails[msg.sender];
        studentDetail1.name = "Saif"; // Ahmad is replaced by Saif and stored in studentDetail1, now studentDetail1 contains string "Saif"

        // return studentDetail1;
        StudentData memory readOnlyStudentDetail1 = studentDetails[msg.sender];
        readOnlyStudentDetail1.name = "Yaseen"; // Saif is replaced by Yaseen, but not stored in studentDetail1, now studentDetail1 contains the previos string "Saif"

        return readOnlyStudentDetail1;
    }

    function func2(uint256[] calldata y)
        external
        pure
        returns (uint256[] memory)
    {
        uint256[] memory memArr = new uint256[](3);

        internal1(y);
        memArr[0] = 234;
        return (memArr);
    }

    function internal1(uint256[] calldata y) private pure {
        uint256 x = y[0];
        x = 5;
    }
}

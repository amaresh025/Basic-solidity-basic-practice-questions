// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CertificateGenerator {
    struct Certificate {
        address student;
        bytes32 documentHash;
        uint issueDate;
        string courseName;
    }
    address owner;
    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    mapping(bytes32 => Certificate) public certificates;

    event Tracker(address indexed issuer, address indexed students, uint indexed date, string course);
    uint public totalCertificates;

    function issueCertificates(
        address _student,
        bytes32 _documentHash,
        string memory _courseName
    ) public onlyOwner returns (bool) {
        require(_documentHash != bytes32(0), "invalid hash");
        require(certificates[_documentHash].student == address(0), "Already Exist");

        certificates[_documentHash] = Certificate({
            student: _student,
            documentHash: _documentHash,
            issueDate: block.timestamp,
            courseName: _courseName
        });

        totalCertificates++;
        emit Tracker(msg.sender, _student, block.timestamp, _courseName);
        return true;
    }

    function getCertificate(bytes32 _docHash)
        public
        view
        returns (
            address student,
            bytes32 documentHash,
            uint issueDate,
            string memory courseName
        )
    {
        require(_docHash != bytes32(0), "Invalid hash");

        Certificate memory cert = certificates[_docHash];
        require(cert.student != address(0), "Not Exist");

        return (cert.student, cert.documentHash, cert.issueDate, cert.courseName);
    }

    function revokeCertificate(bytes32 _docHash) public onlyOwner {
        require(certificates[_docHash].student != address(0), "Not Exist");

        delete certificates[_docHash];
        totalCertificates --;
    }

    function verifyCertificate(bytes32 docHash) public view returns (bool) {
        return certificates[docHash].student != address(0);
    }
}

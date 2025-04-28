// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract CertificateVerifier {
    struct Certificate {
        string studentName;
        string course;
        bool isValid;
    }

    mapping(string => Certificate) private certificates; // changed to private
    string[] private certificateIds; // new array to store IDs

    // Issue a certificate
    function issueCertificate(string memory certificateId, string memory studentName, string memory course) public {
        require(bytes(certificates[certificateId].studentName).length == 0, "Certificate already exists");

        certificates[certificateId] = Certificate(studentName, course, true);
        certificateIds.push(certificateId); // Save the ID
    }

    // Verify a certificate
    function verifyCertificate(string memory certificateId) public view returns (string memory studentName, string memory course) {
        Certificate memory cert = certificates[certificateId];
        require(cert.isValid, "Certificate does not exist");
        return (cert.studentName, cert.course);
    }

    // Return all issued certificate IDs
    function getAllCertificates() public view returns (string[] memory) {
        return certificateIds;
    }
}

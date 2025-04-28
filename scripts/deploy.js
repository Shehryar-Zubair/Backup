
const hre = require("hardhat");

async function main() {
    const CertificateVerifier = await hre.ethers.deployContract("CertificateVerifier");
    await CertificateVerifier.waitForDeployment();
    console.log(`✅ Contract deployed at: ${await CertificateVerifier.getAddress()}`);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});

import { Contract, JsonRpcProvider, Wallet, isAddress } from "ethers"
import Main from "../out/Demo.sol/Main.json"

async function work() {
    const mainAddress = process.argv[2]
    const workerAddress = process.argv[3]

    if (!isAddress(mainAddress) || !isAddress(workerAddress)) {
        throw new Error("Invalid address format")
    }

    const signer = new Wallet(
        '0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d',
        new JsonRpcProvider('http://localhost:8545'),
    )
    const main = new Contract(mainAddress, Main.abi, signer)

    // This won't finish the work
    await main.doWork(workerAddress)
    // but this one will
    // await worker.doOptionalWork()
}

work()

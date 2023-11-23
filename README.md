## Usage

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Anvil

```shell
$ anvil
```

### Deploy
Run this after bootstrapping anvil node:

```shell
$ forge script script/Deploy.s.sol:Deploy --broadcast --rpc-url http://localhost:8545 --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d
```

### Run doWork function
```shell
$ bun script/work.ts 0x8464135c8f25da09e49bc8782676a84730c318bc 0x71c95911e9a5d330f4d621842ec243ee1343292e
```

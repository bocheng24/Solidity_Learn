## Define a function

### Start with function keyword

```solidity
function <func-name> {
    ...
}
```
### external - can be accessed 

```solidity
function <func-name> (inputA, inputB, ...) external {
    ...
}
```

### pure - read only, and it only access local variables

```solidity
function <func-name> (inputA, inputB, ...) external pure {
    <local-info>
}
```

### view - read only, and it access global, state, local variables

```solidity
function <func-name> (inputA, inputB, ...) external view {
    <block-info>
    <state-info>
    <local-info>
}
```

### returns - define what types of values are returned for this function

```solidity
function <func-name> external pure returns (uint, int) {
    ...
}
```
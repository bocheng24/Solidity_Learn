## Define a function

### Start with function keyword

```solidity
function <func-name> {
    ...
}
```
### external - can be accessed 

```solidity
function <func-name> external {
    ...
}
```

### pure - read only

```solidity
function <func-name> external pure {
    ...
}
```

### returns - define what types of values are returned for this function

```solidity
function <func-name> external pure returns (uint, int) {
    ...
}
```
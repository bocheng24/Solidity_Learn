## Define a function

**Start with function keyword**

```solidity
function <func-name> {
    ...
}
```
**external - can be accessed outside of the contract**

```solidity
function <func-name> (inputA, inputB, ...) external {
    ...
}
```

**pure - read only, and it only access local variables**

```solidity
function <func-name> (inputA, inputB, ...) external pure {
    <local-info>
}
```

**view - read only, and it access global, state, local variables**

```solidity
function <func-name> (inputA, inputB, ...) external view {
    <block-info>
    <state-info>
    <local-info>
}
```

**returns - define what data types are returned for this function**

```solidity
function <func-name> external pure returns (uint, int) {
    ...
}
```

## Error handling

### Handling error can help save gas fee
* Before Solidity 0.4.10, it uses if ... throw statement to handle error
* Now Solidity has require, revert, assert functions to handle error

**Require**
```solidity
function <func-name> (inputA, inputB, ...) external view {
    require(<valid-condition>, 'error message');
}
```

**Revert**
```solidity
function <func-name> (inputA, inputB, ...) external view {
    if (<invalid-condition>) {
        revert('error message');
    }
}
```

**Assert**
```solidity
function <func-name> (inputA, inputB, ...) external view {
    assert(<valid-condition>);
    // When valid, do something
}
```

**Gas Refund With require**

In the following function, if _i is >= 3, all the increment operations will be undone.

```solidity
function gasRefund(uint _i) public pure returns (uint) {
    
    _i += 1;
    
    require(_i < 3);

    return _i;
}
```

**Custom Error**

> Define a custom error

```solidity
error myError(address caller, uint x);
```

> Use the custom error with a function

```solidity
function incByOne(uint x) public view returns (uint) {
    
    if (x > 10) {
        revert myError(msg.sender, x);
    }

    return x += 1;
}
```

## Modifier

### This can create re-usable functions

**Define a modifier**

```solidity
modifier <modifer-name> {

    ... // codes to run before main function
    _;  // main function codes to run
    ... // optional - codes to run after main function
}
```

> For example
```solidity
modifier validNum(uint num) {
    require (num < 10);
    _;
}
```

**Use a modifier**

```solidity
function incByOne(uint x) public pure validNum(x) returns (uint) {
    return x += 1;
}
```
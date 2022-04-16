## Array

### There are 2 types of array
* Dynamic length
* Fixed length

**Declare an array**

> dynamic length array

```solidity
uint[] public nums = [1, 2, 3];
```

> fixed length array

```solidity
uint[3] public numsFixed = [1, 2, 3];
```

**Get an element from array**

```solidity
uint public x = nums[1];
```

**Get array length**

```solidity
uint public len = nums.length;
```

### Array push, update, pop

> These operation can only be called in an function

**Push**

```solidity
function pushArray(uint n) external {
    nums.push(n);
}
```

**Update**

```solidity
function updateArray(uint idx, uint val) external {
    nums[idx] = val;
}
```

**Pop**

```solidity
function popElem() external {
    nums.pop();
}
```

**Define array in memory**

```solidity
function createMemoryArr() external {
    uint[] memory arrMem = new uint[](5);
}
```



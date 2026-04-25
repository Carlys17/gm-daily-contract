# GM Daily Contract

Daily "GM" check-in smart contract with streak tracking and rewards.

## Features

- 📅 Daily check-in (GM)
- 🔥 Streak tracking
- 🎁 Rewards for streaks

## Contract

```solidity
function gm() external {
    require(!hasCheckedInToday(msg.sender), "Already GM'd today");
    streaks[msg.sender]++;
    emit GM(msg.sender, streaks[msg.sender]);
}
```

## License

MIT

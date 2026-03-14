# Leet-Code-Labs 🚀

> A growing collection of LeetCode challenge write-ups and Zig solutions.

This repo is my algorithm practice space: I solve problems, write up the idea behind each solution, and keep everything organized as a small Zig portfolio over time ⚡

## Highlights ✨

- Focused on LeetCode-style problem solving in Zig
- Includes challenge write-ups, not just raw code
- Organized so each problem can live in its own folder
- Built to grow into a clean, browsable problem archive

## Problem Tracker 📋

| # | Problem | Difficulty | Language | Approach | Status | Notes |
|---|---------|------------|----------|----------|--------|-------|
| 1 | Two Sum | Easy | Zig | Hash map, one pass | Done ✅ | `two_sum/two_sum.zig` |
| 2 | Coming soon | - | - | - | Planned 📝 | Next challenge |
| 3 | Coming soon | - | - | - | Planned 📝 | Next challenge |

## Project Structure 🗂️

```text
.
├── .gitignore
├── README.md
└── two_sum/
    └── two_sum.zig
```

## Featured Challenge: Two Sum 🧩

### Problem

Given an array of integers `nums` and an integer `target`, return the indices of the two numbers such that they add up to `target`.

You may assume that each input has exactly one solution, and you may not use the same element twice.

### Example

```text
nums = [2, 7, 11, 15]
target = 9

Output: [0, 1]
```

### Solution Idea 💡

The Zig implementation uses `std.AutoHashMap` to remember values already seen while scanning the array once.

For each number:

1. Compute the complement: `target - num`
2. Check whether the complement already exists in the hash map
3. If it does, return the saved index and the current index
4. If not, store the current number and continue

This makes the solution efficient and easy to scale for larger inputs.

### Complexity ⏱️

- Time complexity: `O(n)`
- Space complexity: `O(n)`

### Source

- Write-up repo entry: `two_sum/two_sum.zig`
- Current sample output:

```text
Indices found: 0 and 1
```

## Tech Stack 🛠️

- Language: Zig
- Verified locally with: `zig 0.15.2`

## Run ▶️

Run directly from source:

```bash
zig run two_sum/two_sum.zig
```

## Build 🔧

Build into `zig-out/bin`:

```bash
mkdir -p zig-out/bin && zig build-exe two_sum/two_sum.zig -O Debug -femit-bin=zig-out/bin/two_sum
```

Run the built executable:

```bash
./zig-out/bin/two_sum
```

## Vision 🎯

As more challenges are added, this repo will become a small portfolio of:

- problem statements
- solution write-ups
- complexity notes
- clean Zig implementations

## Next Up 🌱

- Add more classic array and hash map problems
- Expand each folder with richer write-ups
- Track difficulty, patterns, and solution techniques across the repo

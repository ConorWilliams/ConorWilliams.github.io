---
author: "Conor Williams"
title: "Libfork v2.0.0"
date: "2023-02-27"
description: "Releasing libfork v2.0.0"
---

I've finally had some time to work on one of my favorite and longest ongoing hobby projects, [libfork](https://github.com/ConorWilliams/libfork), a C++20 library for for strict [fork-join parallelism](https://en.wikipedia.org/wiki/Fork%E2%80%93join_model).

I built libfork when I realized that with the introduction of coroutines in C++20 it was possible to implement continuation-stealing without the use of macros or inline assembly. This is a feature that I have wanted for a long time and I am very happy with the results:

```cpp
auto fib(int n) -> pool_task<int> { 

  if (n < 2) {
    co_return n;
  }

  auto a = co_await fib(n - 1).fork(); // Spawn a child task.
  auto b = co_await fib(n - 2);        // Execute inline.

  co_await lf::join();                 // Wait for children.

  co_return *a + b;                    // Use * to dereference a future.
}
```

Furthermore libfork has acted as a place for me to explore lock-free and wait-free programming, discover the delights of the C11 memory model and try to build a production grade CI/CD pipeline.


This release includes:
- Decoupling scheduling from task graph creation.
- Custom schedulers supported.
- Tasks support allocators.
- Exceptions support removed.
- Void tasks no longer require a future.
- Benchmarks!!
- Many more tests.

Planned for the (near) future:
- More examples.
- No per-task coroutine frame allocations.
- A scheduler that sleeps workers when there is no work based on this paper.



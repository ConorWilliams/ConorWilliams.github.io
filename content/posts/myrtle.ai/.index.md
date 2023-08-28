---
author: "Conor Williams"
title: "Myrtle.ai internship"
date: "2023-08-28"
description: "Internship at Myrtle.ai"
---

This year I had the fantastic opportunity to work with [Myrtle.ai](https://myrtle.ai/) as one of their Machine Learning (ML) Interns. Myrtle.ai is a Cambridge based company that specializes in the development of low-latency ML models for accelerators.

## Long-term short-term RNNs

My first project was to develop a custom LSTM module in CUDA to replace a pytorch implementation. This formed a key component of their FPGA automatic speech recognition pipeline. I delivered a solution that was 7.7x faster than their previous implementation and throughput competitive with NVIDIA's hand-tuned CuDNN library. 

During this project I was re-exposed to the CUDA programming model and gained a deeper understanding of the CUDA memory hierarchy. I also gained experience with the profiling and debugging tools available in the CUDA ecosystem. Furthermore, I worked with pytorch and had the <del>dis</del>pleasure of working with the torch C++ API and extension system.

## Multi-blank and the transducer and loss

After completing the LSTM module in three weeks earlier than expected, I was given the opportunity to work on a more inference focused project. I was tasked with implementing the state-of-the-art [Multi-blank extension](https://arxiv.org/abs/2211.03541) to the transducer loss function. This is a novel extension to the transducer loss function that allows for the use of multiple blank tokens in the output sequence. Using my implementation I trained a model with identical word-error rates to the previous best, with the potential to halve inference-time latency. 

### Memory bottlenecks

During my time working on the transducer loss function (which is the memory bottleneck of most ASR models) I identified several stages in the training pipeline that could be optimized. I implemented a specialized map-reduce algorithm (re-igniting my interest in warp level programming) and by fusing several steps before/after the loss function. Ultimately, I increased the training batch size by 85% which reduced training times/costs by a similar fraction.  

## Summary

In my penultimate week I [presented my work](main.pdf) to the company and received very positive feedback. The code I wrote has been deployed at Myrtle and is currently being used to train models for their clients. 

I am very grateful to Myrtle for the opportunity to work with them and their stellar team. 




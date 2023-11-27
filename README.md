# cs683_project

### The UNSHARED Spectre

### Jai Shree RAM

| **Member Name** | **Member Roll No.** |
| :-------------: | :-----------------: |
| Hrishikesh      |     210050073       |
| Khushang Singla |     210050085       |
| Sankalan Baidya |     210050141       |

<br/>

---

### Proposal or Idea

In this project, we target to implement spectre without use of shared memory.

<br/>

---

### Steps to run the experiments

- The value of Threshold may need change in attacker codes
- The value of malicious_x may need to be changes in attacker.c
- After adding submodule, PrimeProbeSingleProcess/CacheSC/src/device_conf.h may need updates based on device configuration

- SharedMemorySingleProcess
    
    Spectre POC with modification for various analysis
    - `cd SharedMemorySingleProcess`
    - `make`
    - `./exec`
    The other executables are for reperesenting results analysing branch predictor functioning

- SharedMemoryMultiProcess
    
    Spectre used as a Covert channel
    - `cd SharedMemoryMultiProcesses`
    - `make`
    - `./runner`


- PrimeProbe - Failed Attempt to prime probe
- PrimeProbeSingleProcess
    
    Using PrimeProbe to leak data from speculative execution without use of shared memory
    - `git submodule update --init`
    - `cd PrimeProbeSingleProcess/CacheSC`
    - `make`
    - `cd ..`
    - `NORMALIZE=1 make`
    - `./spectre-attacker-victim`

- PrimeProbeMultiProcess
    
    Failed attempt to reduce noise in above when using spectre as side channel
    - `git submodule update --init`
    - `cd PrimeProbeSingleProcess/CacheSC`
    - `make`
    - `cd ../../PrimeProbeMultiProcess`
    - `NORMALIZE=1 make`
    - `./runner`
    
	The value of malicious_x may need to be changes in attacker.c


<br/>

---

### Conclusion

Spectre can be performed without use of shared memory.
But using spectre as side channel includes lot of noise.
The noise is because of Context switch which adds noise to Prime+Probe.

<br/>

---

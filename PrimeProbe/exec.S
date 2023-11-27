
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   QWORD PTR [rip+0x2f62]        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f63]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 3d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f3d]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010c0 <putchar@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3f98 <putchar@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 c5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec5]        # 3fa0 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <printf@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 bd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ebd]        # 3fa8 <printf@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <__assert_fail@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3fb0 <__assert_fail@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <read@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 ad 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ead]        # 3fb8 <read@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <malloc@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 a5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ea5]        # 3fc0 <malloc@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001120 <open@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 9d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e9d]        # 3fc8 <open@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001130 <atoi@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 95 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e95]        # 3fd0 <atoi@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	31 ed                	xor    ebp,ebp
    1146:	49 89 d1             	mov    r9,rdx
    1149:	5e                   	pop    rsi
    114a:	48 89 e2             	mov    rdx,rsp
    114d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1151:	50                   	push   rax
    1152:	54                   	push   rsp
    1153:	45 31 c0             	xor    r8d,r8d
    1156:	31 c9                	xor    ecx,ecx
    1158:	48 8d 3d f6 09 00 00 	lea    rdi,[rip+0x9f6]        # 1b55 <main>
    115f:	ff 15 73 2e 00 00    	call   QWORD PTR [rip+0x2e73]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1165:	f4                   	hlt    
    1166:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    116d:	00 00 00 

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    rdi,[rip+0x2e99]        # 4010 <__TMC_END__>
    1177:	48 8d 05 92 2e 00 00 	lea    rax,[rip+0x2e92]        # 4010 <__TMC_END__>
    117e:	48 39 f8             	cmp    rax,rdi
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 56 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e56]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    118a:	48 85 c0             	test   rax,rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    rax
    1191:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 69 2e 00 00 	lea    rdi,[rip+0x2e69]        # 4010 <__TMC_END__>
    11a7:	48 8d 35 62 2e 00 00 	lea    rsi,[rip+0x2e62]        # 4010 <__TMC_END__>
    11ae:	48 29 fe             	sub    rsi,rdi
    11b1:	48 89 f0             	mov    rax,rsi
    11b4:	48 c1 ee 3f          	shr    rsi,0x3f
    11b8:	48 c1 f8 03          	sar    rax,0x3
    11bc:	48 01 c6             	add    rsi,rax
    11bf:	48 d1 fe             	sar    rsi,1
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e25]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11cb:	48 85 c0             	test   rax,rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    rax
    11d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	80 3d 25 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e25],0x0        # 4010 <__TMC_END__>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   rbp
    11ee:	48 83 3d 02 2e 00 00 	cmp    QWORD PTR [rip+0x2e02],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    rbp,rsp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e06]        # 4008 <__dso_handle>
    1202:	e8 a9 fe ff ff       	call   10b0 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 fd 2d 00 00 01 	mov    BYTE PTR [rip+0x2dfd],0x1        # 4010 <__TMC_END__>
    1213:	5d                   	pop    rbp
    1214:	c3                   	ret    
    1215:	0f 1f 00             	nop    DWORD PTR [rax]
    1218:	c3                   	ret    
    1219:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>

0000000000001229 <rdtsc_nofence>:
    1229:	f3 0f 1e fa          	endbr64 
    122d:	55                   	push   rbp
    122e:	48 89 e5             	mov    rbp,rsp
    1231:	0f 31                	rdtsc  
    1233:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    1237:	48 89 55 f8          	mov    QWORD PTR [rbp-0x8],rdx
    123b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    123f:	48 c1 e0 20          	shl    rax,0x20
    1243:	48 09 45 f0          	or     QWORD PTR [rbp-0x10],rax
    1247:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    124b:	5d                   	pop    rbp
    124c:	c3                   	ret    

000000000000124d <rdtsc>:
    124d:	f3 0f 1e fa          	endbr64 
    1251:	55                   	push   rbp
    1252:	48 89 e5             	mov    rbp,rsp
    1255:	0f ae f0             	mfence 
    1258:	0f 31                	rdtsc  
    125a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    125e:	48 89 55 f8          	mov    QWORD PTR [rbp-0x8],rdx
    1262:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1266:	48 c1 e0 20          	shl    rax,0x20
    126a:	48 09 45 f0          	or     QWORD PTR [rbp-0x10],rax
    126e:	0f ae f0             	mfence 
    1271:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1275:	5d                   	pop    rbp
    1276:	c3                   	ret    

0000000000001277 <rdtsc_begin>:
    1277:	f3 0f 1e fa          	endbr64 
    127b:	55                   	push   rbp
    127c:	48 89 e5             	mov    rbp,rsp
    127f:	53                   	push   rbx
    1280:	0f ae f0             	mfence 
    1283:	0f a2                	cpuid  
    1285:	0f 01 f9             	rdtscp 
    1288:	48 89 d7             	mov    rdi,rdx
    128b:	48 89 c6             	mov    rsi,rax
    128e:	0f ae f0             	mfence 
    1291:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    1295:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    1299:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    129d:	48 c1 e0 20          	shl    rax,0x20
    12a1:	48 09 45 f0          	or     QWORD PTR [rbp-0x10],rax
    12a5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    12a9:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    12ad:	c9                   	leave  
    12ae:	c3                   	ret    

00000000000012af <rdtsc_end>:
    12af:	f3 0f 1e fa          	endbr64 
    12b3:	55                   	push   rbp
    12b4:	48 89 e5             	mov    rbp,rsp
    12b7:	53                   	push   rbx
    12b8:	0f ae f0             	mfence 
    12bb:	0f 01 f9             	rdtscp 
    12be:	48 89 d7             	mov    rdi,rdx
    12c1:	48 89 c6             	mov    rsi,rax
    12c4:	0f a2                	cpuid  
    12c6:	0f ae f0             	mfence 
    12c9:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    12cd:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    12d1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12d5:	48 c1 e0 20          	shl    rax,0x20
    12d9:	48 09 45 f0          	or     QWORD PTR [rbp-0x10],rax
    12dd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    12e1:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    12e5:	c9                   	leave  
    12e6:	c3                   	ret    

00000000000012e7 <maccess>:
    12e7:	f3 0f 1e fa          	endbr64 
    12eb:	55                   	push   rbp
    12ec:	48 89 e5             	mov    rbp,rsp
    12ef:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    12f3:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    12f7:	48 89 d1             	mov    rcx,rdx
    12fa:	48 8b 01             	mov    rax,QWORD PTR [rcx]
    12fd:	90                   	nop
    12fe:	5d                   	pop    rbp
    12ff:	c3                   	ret    

0000000000001300 <flush>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	55                   	push   rbp
    1305:	48 89 e5             	mov    rbp,rsp
    1308:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    130c:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    1310:	48 89 d1             	mov    rcx,rdx
    1313:	0f ae 39             	clflush BYTE PTR [rcx]
    1316:	90                   	nop
    1317:	5d                   	pop    rbp
    1318:	c3                   	ret    

0000000000001319 <prefetch>:
    1319:	f3 0f 1e fa          	endbr64 
    131d:	55                   	push   rbp
    131e:	48 89 e5             	mov    rbp,rsp
    1321:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    1325:	0f 18 55 f8          	prefetcht1 BYTE PTR [rbp-0x8]
    1329:	90                   	nop
    132a:	5d                   	pop    rbp
    132b:	c3                   	ret    

000000000000132c <longnop>:
    132c:	f3 0f 1e fa          	endbr64 
    1330:	55                   	push   rbp
    1331:	48 89 e5             	mov    rbp,rsp
    1334:	90                   	nop
    1335:	90                   	nop
    1336:	90                   	nop
    1337:	90                   	nop
    1338:	90                   	nop
    1339:	90                   	nop
    133a:	90                   	nop
    133b:	90                   	nop
    133c:	90                   	nop
    133d:	90                   	nop
    133e:	90                   	nop
    133f:	90                   	nop
    1340:	90                   	nop
    1341:	90                   	nop
    1342:	90                   	nop
    1343:	90                   	nop
    1344:	90                   	nop
    1345:	90                   	nop
    1346:	90                   	nop
    1347:	90                   	nop
    1348:	90                   	nop
    1349:	90                   	nop
    134a:	90                   	nop
    134b:	90                   	nop
    134c:	90                   	nop
    134d:	90                   	nop
    134e:	90                   	nop
    134f:	90                   	nop
    1350:	90                   	nop
    1351:	90                   	nop
    1352:	90                   	nop
    1353:	90                   	nop
    1354:	90                   	nop
    1355:	90                   	nop
    1356:	90                   	nop
    1357:	90                   	nop
    1358:	90                   	nop
    1359:	90                   	nop
    135a:	90                   	nop
    135b:	90                   	nop
    135c:	90                   	nop
    135d:	90                   	nop
    135e:	90                   	nop
    135f:	90                   	nop
    1360:	90                   	nop
    1361:	90                   	nop
    1362:	90                   	nop
    1363:	90                   	nop
    1364:	90                   	nop
    1365:	90                   	nop
    1366:	90                   	nop
    1367:	90                   	nop
    1368:	90                   	nop
    1369:	90                   	nop
    136a:	90                   	nop
    136b:	90                   	nop
    136c:	90                   	nop
    136d:	90                   	nop
    136e:	90                   	nop
    136f:	90                   	nop
    1370:	90                   	nop
    1371:	90                   	nop
    1372:	90                   	nop
    1373:	90                   	nop
    1374:	90                   	nop
    1375:	5d                   	pop    rbp
    1376:	c3                   	ret    

0000000000001377 <prime_cache_set>:
    1377:	f3 0f 1e fa          	endbr64 
    137b:	55                   	push   rbp
    137c:	48 89 e5             	mov    rbp,rsp
    137f:	48 83 ec 18          	sub    rsp,0x18
    1383:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    1386:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    138d:	e9 c4 01 00 00       	jmp    1556 <prime_cache_set+0x1df>
    1392:	48 8b 0d 97 2c 00 00 	mov    rcx,QWORD PTR [rip+0x2c97]        # 4030 <attacker_array>
    1399:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    139c:	c1 f8 06             	sar    eax,0x6
    139f:	05 c0 00 00 00       	add    eax,0xc0
    13a4:	99                   	cdq    
    13a5:	c1 ea 16             	shr    edx,0x16
    13a8:	01 d0                	add    eax,edx
    13aa:	25 ff 03 00 00       	and    eax,0x3ff
    13af:	29 d0                	sub    eax,edx
    13b1:	c1 e0 0c             	shl    eax,0xc
    13b4:	48 63 d0             	movsxd rdx,eax
    13b7:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    13ba:	48 98                	cdqe   
    13bc:	48 01 d0             	add    rax,rdx
    13bf:	48 01 c8             	add    rax,rcx
    13c2:	48 89 c7             	mov    rdi,rax
    13c5:	e8 1d ff ff ff       	call   12e7 <maccess>
    13ca:	48 8b 0d 5f 2c 00 00 	mov    rcx,QWORD PTR [rip+0x2c5f]        # 4030 <attacker_array>
    13d1:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    13d4:	c1 f8 06             	sar    eax,0x6
    13d7:	05 ed 00 00 00       	add    eax,0xed
    13dc:	99                   	cdq    
    13dd:	c1 ea 16             	shr    edx,0x16
    13e0:	01 d0                	add    eax,edx
    13e2:	25 ff 03 00 00       	and    eax,0x3ff
    13e7:	29 d0                	sub    eax,edx
    13e9:	c1 e0 0c             	shl    eax,0xc
    13ec:	48 63 d0             	movsxd rdx,eax
    13ef:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    13f2:	48 98                	cdqe   
    13f4:	48 01 d0             	add    rax,rdx
    13f7:	48 01 c8             	add    rax,rcx
    13fa:	48 89 c7             	mov    rdi,rax
    13fd:	e8 e5 fe ff ff       	call   12e7 <maccess>
    1402:	48 8b 0d 27 2c 00 00 	mov    rcx,QWORD PTR [rip+0x2c27]        # 4030 <attacker_array>
    1409:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    140c:	c1 f8 06             	sar    eax,0x6
    140f:	05 e2 02 00 00       	add    eax,0x2e2
    1414:	99                   	cdq    
    1415:	c1 ea 16             	shr    edx,0x16
    1418:	01 d0                	add    eax,edx
    141a:	25 ff 03 00 00       	and    eax,0x3ff
    141f:	29 d0                	sub    eax,edx
    1421:	c1 e0 0c             	shl    eax,0xc
    1424:	48 63 d0             	movsxd rdx,eax
    1427:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    142a:	48 98                	cdqe   
    142c:	48 01 d0             	add    rax,rdx
    142f:	48 01 c8             	add    rax,rcx
    1432:	48 89 c7             	mov    rdi,rax
    1435:	e8 ad fe ff ff       	call   12e7 <maccess>
    143a:	48 8b 0d ef 2b 00 00 	mov    rcx,QWORD PTR [rip+0x2bef]        # 4030 <attacker_array>
    1441:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1444:	c1 f8 06             	sar    eax,0x6
    1447:	05 c3 03 00 00       	add    eax,0x3c3
    144c:	99                   	cdq    
    144d:	c1 ea 16             	shr    edx,0x16
    1450:	01 d0                	add    eax,edx
    1452:	25 ff 03 00 00       	and    eax,0x3ff
    1457:	29 d0                	sub    eax,edx
    1459:	c1 e0 0c             	shl    eax,0xc
    145c:	48 63 d0             	movsxd rdx,eax
    145f:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1462:	48 98                	cdqe   
    1464:	48 01 d0             	add    rax,rdx
    1467:	48 01 c8             	add    rax,rcx
    146a:	48 89 c7             	mov    rdi,rax
    146d:	e8 75 fe ff ff       	call   12e7 <maccess>
    1472:	48 8b 0d b7 2b 00 00 	mov    rcx,QWORD PTR [rip+0x2bb7]        # 4030 <attacker_array>
    1479:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    147c:	c1 f8 06             	sar    eax,0x6
    147f:	05 64 03 00 00       	add    eax,0x364
    1484:	99                   	cdq    
    1485:	c1 ea 16             	shr    edx,0x16
    1488:	01 d0                	add    eax,edx
    148a:	25 ff 03 00 00       	and    eax,0x3ff
    148f:	29 d0                	sub    eax,edx
    1491:	c1 e0 0c             	shl    eax,0xc
    1494:	48 63 d0             	movsxd rdx,eax
    1497:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    149a:	48 98                	cdqe   
    149c:	48 01 d0             	add    rax,rdx
    149f:	48 01 c8             	add    rax,rcx
    14a2:	48 89 c7             	mov    rdi,rax
    14a5:	e8 3d fe ff ff       	call   12e7 <maccess>
    14aa:	48 8b 0d 7f 2b 00 00 	mov    rcx,QWORD PTR [rip+0x2b7f]        # 4030 <attacker_array>
    14b1:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    14b4:	c1 f8 06             	sar    eax,0x6
    14b7:	05 18 03 00 00       	add    eax,0x318
    14bc:	99                   	cdq    
    14bd:	c1 ea 16             	shr    edx,0x16
    14c0:	01 d0                	add    eax,edx
    14c2:	25 ff 03 00 00       	and    eax,0x3ff
    14c7:	29 d0                	sub    eax,edx
    14c9:	c1 e0 0c             	shl    eax,0xc
    14cc:	48 63 d0             	movsxd rdx,eax
    14cf:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    14d2:	48 98                	cdqe   
    14d4:	48 01 d0             	add    rax,rdx
    14d7:	48 01 c8             	add    rax,rcx
    14da:	48 89 c7             	mov    rdi,rax
    14dd:	e8 05 fe ff ff       	call   12e7 <maccess>
    14e2:	48 8b 0d 47 2b 00 00 	mov    rcx,QWORD PTR [rip+0x2b47]        # 4030 <attacker_array>
    14e9:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    14ec:	c1 f8 06             	sar    eax,0x6
    14ef:	05 df 01 00 00       	add    eax,0x1df
    14f4:	99                   	cdq    
    14f5:	c1 ea 16             	shr    edx,0x16
    14f8:	01 d0                	add    eax,edx
    14fa:	25 ff 03 00 00       	and    eax,0x3ff
    14ff:	29 d0                	sub    eax,edx
    1501:	c1 e0 0c             	shl    eax,0xc
    1504:	48 63 d0             	movsxd rdx,eax
    1507:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    150a:	48 98                	cdqe   
    150c:	48 01 d0             	add    rax,rdx
    150f:	48 01 c8             	add    rax,rcx
    1512:	48 89 c7             	mov    rdi,rax
    1515:	e8 cd fd ff ff       	call   12e7 <maccess>
    151a:	48 8b 0d 0f 2b 00 00 	mov    rcx,QWORD PTR [rip+0x2b0f]        # 4030 <attacker_array>
    1521:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1524:	c1 f8 06             	sar    eax,0x6
    1527:	05 50 02 00 00       	add    eax,0x250
    152c:	99                   	cdq    
    152d:	c1 ea 16             	shr    edx,0x16
    1530:	01 d0                	add    eax,edx
    1532:	25 ff 03 00 00       	and    eax,0x3ff
    1537:	29 d0                	sub    eax,edx
    1539:	c1 e0 0c             	shl    eax,0xc
    153c:	48 63 d0             	movsxd rdx,eax
    153f:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1542:	48 98                	cdqe   
    1544:	48 01 d0             	add    rax,rdx
    1547:	48 01 c8             	add    rax,rcx
    154a:	48 89 c7             	mov    rdi,rax
    154d:	e8 95 fd ff ff       	call   12e7 <maccess>
    1552:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    1556:	81 7d fc ff e0 f5 05 	cmp    DWORD PTR [rbp-0x4],0x5f5e0ff
    155d:	0f 8e 2f fe ff ff    	jle    1392 <prime_cache_set+0x1b>
    1563:	90                   	nop
    1564:	90                   	nop
    1565:	c9                   	leave  
    1566:	c3                   	ret    

0000000000001567 <onlyreload>:
    1567:	f3 0f 1e fa          	endbr64 
    156b:	55                   	push   rbp
    156c:	48 89 e5             	mov    rbp,rsp
    156f:	48 83 ec 18          	sub    rsp,0x18
    1573:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    1577:	b8 00 00 00 00       	mov    eax,0x0
    157c:	e8 cc fc ff ff       	call   124d <rdtsc>
    1581:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    1585:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1589:	48 89 c7             	mov    rdi,rax
    158c:	e8 56 fd ff ff       	call   12e7 <maccess>
    1591:	b8 00 00 00 00       	mov    eax,0x0
    1596:	e8 b2 fc ff ff       	call   124d <rdtsc>
    159b:	48 2b 45 f0          	sub    rax,QWORD PTR [rbp-0x10]
    159f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    15a3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    15a7:	c9                   	leave  
    15a8:	c3                   	ret    

00000000000015a9 <probe>:
    15a9:	f3 0f 1e fa          	endbr64 
    15ad:	55                   	push   rbp
    15ae:	48 89 e5             	mov    rbp,rsp
    15b1:	48 83 ec 70          	sub    rsp,0x70
    15b5:	89 7d 9c             	mov    DWORD PTR [rbp-0x64],edi
    15b8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    15bf:	00 00 
    15c1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    15c5:	31 c0                	xor    eax,eax
    15c7:	b8 00 00 00 00       	mov    eax,0x0
    15cc:	e8 7c fc ff ff       	call   124d <rdtsc>
    15d1:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
    15d5:	48 8b 0d 54 2a 00 00 	mov    rcx,QWORD PTR [rip+0x2a54]        # 4030 <attacker_array>
    15dc:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    15df:	c1 f8 06             	sar    eax,0x6
    15e2:	05 c0 00 00 00       	add    eax,0xc0
    15e7:	99                   	cdq    
    15e8:	c1 ea 16             	shr    edx,0x16
    15eb:	01 d0                	add    eax,edx
    15ed:	25 ff 03 00 00       	and    eax,0x3ff
    15f2:	29 d0                	sub    eax,edx
    15f4:	c1 e0 0c             	shl    eax,0xc
    15f7:	89 c2                	mov    edx,eax
    15f9:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    15fc:	01 d0                	add    eax,edx
    15fe:	48 98                	cdqe   
    1600:	48 01 c8             	add    rax,rcx
    1603:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1606:	0f be d0             	movsx  edx,al
    1609:	8b 05 19 2a 00 00    	mov    eax,DWORD PTR [rip+0x2a19]        # 4028 <temp>
    160f:	01 d0                	add    eax,edx
    1611:	89 05 11 2a 00 00    	mov    DWORD PTR [rip+0x2a11],eax        # 4028 <temp>
    1617:	b8 00 00 00 00       	mov    eax,0x0
    161c:	e8 2c fc ff ff       	call   124d <rdtsc>
    1621:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
    1625:	48 29 d0             	sub    rax,rdx
    1628:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
    162c:	b8 00 00 00 00       	mov    eax,0x0
    1631:	e8 17 fc ff ff       	call   124d <rdtsc>
    1636:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    163a:	48 8b 0d ef 29 00 00 	mov    rcx,QWORD PTR [rip+0x29ef]        # 4030 <attacker_array>
    1641:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    1644:	c1 f8 06             	sar    eax,0x6
    1647:	05 ed 00 00 00       	add    eax,0xed
    164c:	99                   	cdq    
    164d:	c1 ea 16             	shr    edx,0x16
    1650:	01 d0                	add    eax,edx
    1652:	25 ff 03 00 00       	and    eax,0x3ff
    1657:	29 d0                	sub    eax,edx
    1659:	c1 e0 0c             	shl    eax,0xc
    165c:	89 c2                	mov    edx,eax
    165e:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    1661:	01 d0                	add    eax,edx
    1663:	48 98                	cdqe   
    1665:	48 01 c8             	add    rax,rcx
    1668:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    166b:	0f be d0             	movsx  edx,al
    166e:	8b 05 b4 29 00 00    	mov    eax,DWORD PTR [rip+0x29b4]        # 4028 <temp>
    1674:	01 d0                	add    eax,edx
    1676:	89 05 ac 29 00 00    	mov    DWORD PTR [rip+0x29ac],eax        # 4028 <temp>
    167c:	b8 00 00 00 00       	mov    eax,0x0
    1681:	e8 c7 fb ff ff       	call   124d <rdtsc>
    1686:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
    168a:	48 29 d0             	sub    rax,rdx
    168d:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    1691:	b8 00 00 00 00       	mov    eax,0x0
    1696:	e8 b2 fb ff ff       	call   124d <rdtsc>
    169b:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    169f:	48 8b 0d 8a 29 00 00 	mov    rcx,QWORD PTR [rip+0x298a]        # 4030 <attacker_array>
    16a6:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    16a9:	c1 f8 06             	sar    eax,0x6
    16ac:	05 e2 02 00 00       	add    eax,0x2e2
    16b1:	99                   	cdq    
    16b2:	c1 ea 16             	shr    edx,0x16
    16b5:	01 d0                	add    eax,edx
    16b7:	25 ff 03 00 00       	and    eax,0x3ff
    16bc:	29 d0                	sub    eax,edx
    16be:	c1 e0 0c             	shl    eax,0xc
    16c1:	89 c2                	mov    edx,eax
    16c3:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    16c6:	01 d0                	add    eax,edx
    16c8:	48 98                	cdqe   
    16ca:	48 01 c8             	add    rax,rcx
    16cd:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    16d0:	0f be d0             	movsx  edx,al
    16d3:	8b 05 4f 29 00 00    	mov    eax,DWORD PTR [rip+0x294f]        # 4028 <temp>
    16d9:	01 d0                	add    eax,edx
    16db:	89 05 47 29 00 00    	mov    DWORD PTR [rip+0x2947],eax        # 4028 <temp>
    16e1:	b8 00 00 00 00       	mov    eax,0x0
    16e6:	e8 62 fb ff ff       	call   124d <rdtsc>
    16eb:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
    16ef:	48 29 d0             	sub    rax,rdx
    16f2:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    16f6:	b8 00 00 00 00       	mov    eax,0x0
    16fb:	e8 4d fb ff ff       	call   124d <rdtsc>
    1700:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1704:	48 8b 0d 25 29 00 00 	mov    rcx,QWORD PTR [rip+0x2925]        # 4030 <attacker_array>
    170b:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    170e:	c1 f8 06             	sar    eax,0x6
    1711:	05 c3 03 00 00       	add    eax,0x3c3
    1716:	99                   	cdq    
    1717:	c1 ea 16             	shr    edx,0x16
    171a:	01 d0                	add    eax,edx
    171c:	25 ff 03 00 00       	and    eax,0x3ff
    1721:	29 d0                	sub    eax,edx
    1723:	c1 e0 0c             	shl    eax,0xc
    1726:	89 c2                	mov    edx,eax
    1728:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    172b:	01 d0                	add    eax,edx
    172d:	48 98                	cdqe   
    172f:	48 01 c8             	add    rax,rcx
    1732:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1735:	0f be d0             	movsx  edx,al
    1738:	8b 05 ea 28 00 00    	mov    eax,DWORD PTR [rip+0x28ea]        # 4028 <temp>
    173e:	01 d0                	add    eax,edx
    1740:	89 05 e2 28 00 00    	mov    DWORD PTR [rip+0x28e2],eax        # 4028 <temp>
    1746:	b8 00 00 00 00       	mov    eax,0x0
    174b:	e8 fd fa ff ff       	call   124d <rdtsc>
    1750:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
    1754:	48 29 d0             	sub    rax,rdx
    1757:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    175b:	b8 00 00 00 00       	mov    eax,0x0
    1760:	e8 e8 fa ff ff       	call   124d <rdtsc>
    1765:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1769:	48 8b 0d c0 28 00 00 	mov    rcx,QWORD PTR [rip+0x28c0]        # 4030 <attacker_array>
    1770:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    1773:	c1 f8 06             	sar    eax,0x6
    1776:	05 64 03 00 00       	add    eax,0x364
    177b:	99                   	cdq    
    177c:	c1 ea 16             	shr    edx,0x16
    177f:	01 d0                	add    eax,edx
    1781:	25 ff 03 00 00       	and    eax,0x3ff
    1786:	29 d0                	sub    eax,edx
    1788:	c1 e0 0c             	shl    eax,0xc
    178b:	89 c2                	mov    edx,eax
    178d:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    1790:	01 d0                	add    eax,edx
    1792:	48 98                	cdqe   
    1794:	48 01 c8             	add    rax,rcx
    1797:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    179a:	0f be d0             	movsx  edx,al
    179d:	8b 05 85 28 00 00    	mov    eax,DWORD PTR [rip+0x2885]        # 4028 <temp>
    17a3:	01 d0                	add    eax,edx
    17a5:	89 05 7d 28 00 00    	mov    DWORD PTR [rip+0x287d],eax        # 4028 <temp>
    17ab:	b8 00 00 00 00       	mov    eax,0x0
    17b0:	e8 98 fa ff ff       	call   124d <rdtsc>
    17b5:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
    17b9:	48 29 d0             	sub    rax,rdx
    17bc:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    17c0:	b8 00 00 00 00       	mov    eax,0x0
    17c5:	e8 83 fa ff ff       	call   124d <rdtsc>
    17ca:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    17ce:	48 8b 0d 5b 28 00 00 	mov    rcx,QWORD PTR [rip+0x285b]        # 4030 <attacker_array>
    17d5:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    17d8:	c1 f8 06             	sar    eax,0x6
    17db:	05 18 03 00 00       	add    eax,0x318
    17e0:	99                   	cdq    
    17e1:	c1 ea 16             	shr    edx,0x16
    17e4:	01 d0                	add    eax,edx
    17e6:	25 ff 03 00 00       	and    eax,0x3ff
    17eb:	29 d0                	sub    eax,edx
    17ed:	c1 e0 0c             	shl    eax,0xc
    17f0:	89 c2                	mov    edx,eax
    17f2:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    17f5:	01 d0                	add    eax,edx
    17f7:	48 98                	cdqe   
    17f9:	48 01 c8             	add    rax,rcx
    17fc:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    17ff:	0f be d0             	movsx  edx,al
    1802:	8b 05 20 28 00 00    	mov    eax,DWORD PTR [rip+0x2820]        # 4028 <temp>
    1808:	01 d0                	add    eax,edx
    180a:	89 05 18 28 00 00    	mov    DWORD PTR [rip+0x2818],eax        # 4028 <temp>
    1810:	b8 00 00 00 00       	mov    eax,0x0
    1815:	e8 33 fa ff ff       	call   124d <rdtsc>
    181a:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
    181e:	48 29 d0             	sub    rax,rdx
    1821:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1825:	b8 00 00 00 00       	mov    eax,0x0
    182a:	e8 1e fa ff ff       	call   124d <rdtsc>
    182f:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    1833:	48 8b 0d f6 27 00 00 	mov    rcx,QWORD PTR [rip+0x27f6]        # 4030 <attacker_array>
    183a:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    183d:	c1 f8 06             	sar    eax,0x6
    1840:	05 df 01 00 00       	add    eax,0x1df
    1845:	99                   	cdq    
    1846:	c1 ea 16             	shr    edx,0x16
    1849:	01 d0                	add    eax,edx
    184b:	25 ff 03 00 00       	and    eax,0x3ff
    1850:	29 d0                	sub    eax,edx
    1852:	c1 e0 0c             	shl    eax,0xc
    1855:	89 c2                	mov    edx,eax
    1857:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    185a:	01 d0                	add    eax,edx
    185c:	48 98                	cdqe   
    185e:	48 01 c8             	add    rax,rcx
    1861:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1864:	0f be d0             	movsx  edx,al
    1867:	8b 05 bb 27 00 00    	mov    eax,DWORD PTR [rip+0x27bb]        # 4028 <temp>
    186d:	01 d0                	add    eax,edx
    186f:	89 05 b3 27 00 00    	mov    DWORD PTR [rip+0x27b3],eax        # 4028 <temp>
    1875:	b8 00 00 00 00       	mov    eax,0x0
    187a:	e8 ce f9 ff ff       	call   124d <rdtsc>
    187f:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
    1883:	48 29 d0             	sub    rax,rdx
    1886:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    188a:	b8 00 00 00 00       	mov    eax,0x0
    188f:	e8 b9 f9 ff ff       	call   124d <rdtsc>
    1894:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1898:	48 8b 0d 91 27 00 00 	mov    rcx,QWORD PTR [rip+0x2791]        # 4030 <attacker_array>
    189f:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    18a2:	c1 f8 06             	sar    eax,0x6
    18a5:	05 50 02 00 00       	add    eax,0x250
    18aa:	99                   	cdq    
    18ab:	c1 ea 16             	shr    edx,0x16
    18ae:	01 d0                	add    eax,edx
    18b0:	25 ff 03 00 00       	and    eax,0x3ff
    18b5:	29 d0                	sub    eax,edx
    18b7:	c1 e0 0c             	shl    eax,0xc
    18ba:	89 c2                	mov    edx,eax
    18bc:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    18bf:	01 d0                	add    eax,edx
    18c1:	48 98                	cdqe   
    18c3:	48 01 c8             	add    rax,rcx
    18c6:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    18c9:	0f be d0             	movsx  edx,al
    18cc:	8b 05 56 27 00 00    	mov    eax,DWORD PTR [rip+0x2756]        # 4028 <temp>
    18d2:	01 d0                	add    eax,edx
    18d4:	89 05 4e 27 00 00    	mov    DWORD PTR [rip+0x274e],eax        # 4028 <temp>
    18da:	b8 00 00 00 00       	mov    eax,0x0
    18df:	e8 69 f9 ff ff       	call   124d <rdtsc>
    18e4:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    18e8:	48 29 d0             	sub    rax,rdx
    18eb:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    18ef:	c7 45 ac 00 00 00 00 	mov    DWORD PTR [rbp-0x54],0x0
    18f6:	eb 27                	jmp    191f <probe+0x376>
    18f8:	8b 45 ac             	mov    eax,DWORD PTR [rbp-0x54]
    18fb:	48 98                	cdqe   
    18fd:	48 8b 54 c5 b0       	mov    rdx,QWORD PTR [rbp+rax*8-0x50]
    1902:	8b 45 ac             	mov    eax,DWORD PTR [rbp-0x54]
    1905:	89 c6                	mov    esi,eax
    1907:	48 8d 05 fa 06 00 00 	lea    rax,[rip+0x6fa]        # 2008 <_IO_stdin_used+0x8>
    190e:	48 89 c7             	mov    rdi,rax
    1911:	b8 00 00 00 00       	mov    eax,0x0
    1916:	e8 c5 f7 ff ff       	call   10e0 <printf@plt>
    191b:	83 45 ac 01          	add    DWORD PTR [rbp-0x54],0x1
    191f:	83 7d ac 07          	cmp    DWORD PTR [rbp-0x54],0x7
    1923:	7e d3                	jle    18f8 <probe+0x34f>
    1925:	90                   	nop
    1926:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    192a:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1931:	00 00 
    1933:	74 05                	je     193a <probe+0x391>
    1935:	e8 96 f7 ff ff       	call   10d0 <__stack_chk_fail@plt>
    193a:	c9                   	leave  
    193b:	c3                   	ret    

000000000000193c <probe_asm>:
    193c:	f3 0f 1e fa          	endbr64 
    1940:	55                   	push   rbp
    1941:	48 89 e5             	mov    rbp,rsp
    1944:	48 83 ec 18          	sub    rsp,0x18
    1948:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    194c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    1950:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
    1953:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1956:	c1 f8 06             	sar    eax,0x6
    1959:	05 c0 00 00 00       	add    eax,0xc0
    195e:	99                   	cdq    
    195f:	c1 ea 16             	shr    edx,0x16
    1962:	01 d0                	add    eax,edx
    1964:	25 ff 03 00 00       	and    eax,0x3ff
    1969:	29 d0                	sub    eax,edx
    196b:	c1 e0 0c             	shl    eax,0xc
    196e:	48 63 d0             	movsxd rdx,eax
    1971:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1974:	48 98                	cdqe   
    1976:	48 01 c2             	add    rdx,rax
    1979:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    197d:	48 01 d0             	add    rax,rdx
    1980:	48 89 c7             	mov    rdi,rax
    1983:	e8 df fb ff ff       	call   1567 <onlyreload>
    1988:	48 89 c2             	mov    rdx,rax
    198b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    198f:	48 89 10             	mov    QWORD PTR [rax],rdx
    1992:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1995:	c1 f8 06             	sar    eax,0x6
    1998:	05 ed 00 00 00       	add    eax,0xed
    199d:	99                   	cdq    
    199e:	c1 ea 16             	shr    edx,0x16
    19a1:	01 d0                	add    eax,edx
    19a3:	25 ff 03 00 00       	and    eax,0x3ff
    19a8:	29 d0                	sub    eax,edx
    19aa:	c1 e0 0c             	shl    eax,0xc
    19ad:	48 63 d0             	movsxd rdx,eax
    19b0:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    19b3:	48 98                	cdqe   
    19b5:	48 01 c2             	add    rdx,rax
    19b8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    19bc:	48 01 d0             	add    rax,rdx
    19bf:	48 89 c7             	mov    rdi,rax
    19c2:	e8 a0 fb ff ff       	call   1567 <onlyreload>
    19c7:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    19cb:	48 83 c2 08          	add    rdx,0x8
    19cf:	48 89 02             	mov    QWORD PTR [rdx],rax
    19d2:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    19d5:	c1 f8 06             	sar    eax,0x6
    19d8:	05 e2 02 00 00       	add    eax,0x2e2
    19dd:	99                   	cdq    
    19de:	c1 ea 16             	shr    edx,0x16
    19e1:	01 d0                	add    eax,edx
    19e3:	25 ff 03 00 00       	and    eax,0x3ff
    19e8:	29 d0                	sub    eax,edx
    19ea:	c1 e0 0c             	shl    eax,0xc
    19ed:	48 63 d0             	movsxd rdx,eax
    19f0:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    19f3:	48 98                	cdqe   
    19f5:	48 01 c2             	add    rdx,rax
    19f8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    19fc:	48 01 d0             	add    rax,rdx
    19ff:	48 89 c7             	mov    rdi,rax
    1a02:	e8 60 fb ff ff       	call   1567 <onlyreload>
    1a07:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1a0b:	48 83 c2 10          	add    rdx,0x10
    1a0f:	48 89 02             	mov    QWORD PTR [rdx],rax
    1a12:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1a15:	c1 f8 06             	sar    eax,0x6
    1a18:	05 c3 03 00 00       	add    eax,0x3c3
    1a1d:	99                   	cdq    
    1a1e:	c1 ea 16             	shr    edx,0x16
    1a21:	01 d0                	add    eax,edx
    1a23:	25 ff 03 00 00       	and    eax,0x3ff
    1a28:	29 d0                	sub    eax,edx
    1a2a:	c1 e0 0c             	shl    eax,0xc
    1a2d:	48 63 d0             	movsxd rdx,eax
    1a30:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1a33:	48 98                	cdqe   
    1a35:	48 01 c2             	add    rdx,rax
    1a38:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1a3c:	48 01 d0             	add    rax,rdx
    1a3f:	48 89 c7             	mov    rdi,rax
    1a42:	e8 20 fb ff ff       	call   1567 <onlyreload>
    1a47:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1a4b:	48 83 c2 18          	add    rdx,0x18
    1a4f:	48 89 02             	mov    QWORD PTR [rdx],rax
    1a52:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1a55:	c1 f8 06             	sar    eax,0x6
    1a58:	05 64 03 00 00       	add    eax,0x364
    1a5d:	99                   	cdq    
    1a5e:	c1 ea 16             	shr    edx,0x16
    1a61:	01 d0                	add    eax,edx
    1a63:	25 ff 03 00 00       	and    eax,0x3ff
    1a68:	29 d0                	sub    eax,edx
    1a6a:	c1 e0 0c             	shl    eax,0xc
    1a6d:	48 63 d0             	movsxd rdx,eax
    1a70:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1a73:	48 98                	cdqe   
    1a75:	48 01 c2             	add    rdx,rax
    1a78:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1a7c:	48 01 d0             	add    rax,rdx
    1a7f:	48 89 c7             	mov    rdi,rax
    1a82:	e8 e0 fa ff ff       	call   1567 <onlyreload>
    1a87:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1a8b:	48 83 c2 20          	add    rdx,0x20
    1a8f:	48 89 02             	mov    QWORD PTR [rdx],rax
    1a92:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1a95:	c1 f8 06             	sar    eax,0x6
    1a98:	05 18 03 00 00       	add    eax,0x318
    1a9d:	99                   	cdq    
    1a9e:	c1 ea 16             	shr    edx,0x16
    1aa1:	01 d0                	add    eax,edx
    1aa3:	25 ff 03 00 00       	and    eax,0x3ff
    1aa8:	29 d0                	sub    eax,edx
    1aaa:	c1 e0 0c             	shl    eax,0xc
    1aad:	48 63 d0             	movsxd rdx,eax
    1ab0:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1ab3:	48 98                	cdqe   
    1ab5:	48 01 c2             	add    rdx,rax
    1ab8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1abc:	48 01 d0             	add    rax,rdx
    1abf:	48 89 c7             	mov    rdi,rax
    1ac2:	e8 a0 fa ff ff       	call   1567 <onlyreload>
    1ac7:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1acb:	48 83 c2 28          	add    rdx,0x28
    1acf:	48 89 02             	mov    QWORD PTR [rdx],rax
    1ad2:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1ad5:	c1 f8 06             	sar    eax,0x6
    1ad8:	05 df 01 00 00       	add    eax,0x1df
    1add:	99                   	cdq    
    1ade:	c1 ea 16             	shr    edx,0x16
    1ae1:	01 d0                	add    eax,edx
    1ae3:	25 ff 03 00 00       	and    eax,0x3ff
    1ae8:	29 d0                	sub    eax,edx
    1aea:	c1 e0 0c             	shl    eax,0xc
    1aed:	48 63 d0             	movsxd rdx,eax
    1af0:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1af3:	48 98                	cdqe   
    1af5:	48 01 c2             	add    rdx,rax
    1af8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1afc:	48 01 d0             	add    rax,rdx
    1aff:	48 89 c7             	mov    rdi,rax
    1b02:	e8 60 fa ff ff       	call   1567 <onlyreload>
    1b07:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1b0b:	48 83 c2 30          	add    rdx,0x30
    1b0f:	48 89 02             	mov    QWORD PTR [rdx],rax
    1b12:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1b15:	c1 f8 06             	sar    eax,0x6
    1b18:	05 50 02 00 00       	add    eax,0x250
    1b1d:	99                   	cdq    
    1b1e:	c1 ea 16             	shr    edx,0x16
    1b21:	01 d0                	add    eax,edx
    1b23:	25 ff 03 00 00       	and    eax,0x3ff
    1b28:	29 d0                	sub    eax,edx
    1b2a:	c1 e0 0c             	shl    eax,0xc
    1b2d:	48 63 d0             	movsxd rdx,eax
    1b30:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1b33:	48 98                	cdqe   
    1b35:	48 01 c2             	add    rdx,rax
    1b38:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1b3c:	48 01 d0             	add    rax,rdx
    1b3f:	48 89 c7             	mov    rdi,rax
    1b42:	e8 20 fa ff ff       	call   1567 <onlyreload>
    1b47:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1b4b:	48 83 c2 38          	add    rdx,0x38
    1b4f:	48 89 02             	mov    QWORD PTR [rdx],rax
    1b52:	90                   	nop
    1b53:	c9                   	leave  
    1b54:	c3                   	ret    

0000000000001b55 <main>:
    1b55:	f3 0f 1e fa          	endbr64 
    1b59:	55                   	push   rbp
    1b5a:	48 89 e5             	mov    rbp,rsp
    1b5d:	48 83 ec 70          	sub    rsp,0x70
    1b61:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1b68:	00 00 
    1b6a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1b6e:	31 c0                	xor    eax,eax
    1b70:	be 00 00 00 00       	mov    esi,0x0
    1b75:	48 8d 05 9c 04 00 00 	lea    rax,[rip+0x49c]        # 2018 <_IO_stdin_used+0x18>
    1b7c:	48 89 c7             	mov    rdi,rax
    1b7f:	b8 00 00 00 00       	mov    eax,0x0
    1b84:	e8 97 f5 ff ff       	call   1120 <open@plt>
    1b89:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
    1b8c:	c7 45 90 ff ff ff ff 	mov    DWORD PTR [rbp-0x70],0xffffffff
    1b93:	83 45 90 01          	add    DWORD PTR [rbp-0x70],0x1
    1b97:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1b9a:	48 98                	cdqe   
    1b9c:	48 8d 55 ee          	lea    rdx,[rbp-0x12]
    1ba0:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
    1ba4:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
    1ba7:	ba 01 00 00 00       	mov    edx,0x1
    1bac:	48 89 ce             	mov    rsi,rcx
    1baf:	89 c7                	mov    edi,eax
    1bb1:	e8 4a f5 ff ff       	call   1100 <read@plt>
    1bb6:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1bb9:	48 98                	cdqe   
    1bbb:	0f b6 44 05 ee       	movzx  eax,BYTE PTR [rbp+rax*1-0x12]
    1bc0:	3c 4b                	cmp    al,0x4b
    1bc2:	75 cf                	jne    1b93 <main+0x3e>
    1bc4:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1bc7:	48 98                	cdqe   
    1bc9:	c6 44 05 ee 00       	mov    BYTE PTR [rbp+rax*1-0x12],0x0
    1bce:	48 8d 45 ee          	lea    rax,[rbp-0x12]
    1bd2:	48 89 c7             	mov    rdi,rax
    1bd5:	e8 56 f5 ff ff       	call   1130 <atoi@plt>
    1bda:	c1 e0 0a             	shl    eax,0xa
    1bdd:	89 05 35 24 00 00    	mov    DWORD PTR [rip+0x2435],eax        # 4018 <cache_size>
    1be3:	8b 05 2f 24 00 00    	mov    eax,DWORD PTR [rip+0x242f]        # 4018 <cache_size>
    1be9:	89 c6                	mov    esi,eax
    1beb:	48 8d 05 55 04 00 00 	lea    rax,[rip+0x455]        # 2047 <_IO_stdin_used+0x47>
    1bf2:	48 89 c7             	mov    rdi,rax
    1bf5:	b8 00 00 00 00       	mov    eax,0x0
    1bfa:	e8 e1 f4 ff ff       	call   10e0 <printf@plt>
    1bff:	be 00 00 00 00       	mov    esi,0x0
    1c04:	48 8d 05 4d 04 00 00 	lea    rax,[rip+0x44d]        # 2058 <_IO_stdin_used+0x58>
    1c0b:	48 89 c7             	mov    rdi,rax
    1c0e:	b8 00 00 00 00       	mov    eax,0x0
    1c13:	e8 08 f5 ff ff       	call   1120 <open@plt>
    1c18:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
    1c1b:	c7 45 90 ff ff ff ff 	mov    DWORD PTR [rbp-0x70],0xffffffff
    1c22:	83 45 90 01          	add    DWORD PTR [rbp-0x70],0x1
    1c26:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1c29:	48 98                	cdqe   
    1c2b:	48 8d 55 ee          	lea    rdx,[rbp-0x12]
    1c2f:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
    1c33:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
    1c36:	ba 01 00 00 00       	mov    edx,0x1
    1c3b:	48 89 ce             	mov    rsi,rcx
    1c3e:	89 c7                	mov    edi,eax
    1c40:	e8 bb f4 ff ff       	call   1100 <read@plt>
    1c45:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1c48:	48 98                	cdqe   
    1c4a:	0f b6 44 05 ee       	movzx  eax,BYTE PTR [rbp+rax*1-0x12]
    1c4f:	84 c0                	test   al,al
    1c51:	75 cf                	jne    1c22 <main+0xcd>
    1c53:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1c56:	48 98                	cdqe   
    1c58:	c6 44 05 ee 00       	mov    BYTE PTR [rbp+rax*1-0x12],0x0
    1c5d:	48 8d 45 ee          	lea    rax,[rbp-0x12]
    1c61:	48 89 c7             	mov    rdi,rax
    1c64:	e8 c7 f4 ff ff       	call   1130 <atoi@plt>
    1c69:	89 05 ad 23 00 00    	mov    DWORD PTR [rip+0x23ad],eax        # 401c <number_of_sets>
    1c6f:	8b 05 a7 23 00 00    	mov    eax,DWORD PTR [rip+0x23a7]        # 401c <number_of_sets>
    1c75:	89 c6                	mov    esi,eax
    1c77:	48 8d 05 13 04 00 00 	lea    rax,[rip+0x413]        # 2091 <_IO_stdin_used+0x91>
    1c7e:	48 89 c7             	mov    rdi,rax
    1c81:	b8 00 00 00 00       	mov    eax,0x0
    1c86:	e8 55 f4 ff ff       	call   10e0 <printf@plt>
    1c8b:	be 00 00 00 00       	mov    esi,0x0
    1c90:	48 8d 05 11 04 00 00 	lea    rax,[rip+0x411]        # 20a8 <_IO_stdin_used+0xa8>
    1c97:	48 89 c7             	mov    rdi,rax
    1c9a:	b8 00 00 00 00       	mov    eax,0x0
    1c9f:	e8 7c f4 ff ff       	call   1120 <open@plt>
    1ca4:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
    1ca7:	c7 45 90 ff ff ff ff 	mov    DWORD PTR [rbp-0x70],0xffffffff
    1cae:	83 45 90 01          	add    DWORD PTR [rbp-0x70],0x1
    1cb2:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1cb5:	48 98                	cdqe   
    1cb7:	48 8d 55 ee          	lea    rdx,[rbp-0x12]
    1cbb:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
    1cbf:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
    1cc2:	ba 01 00 00 00       	mov    edx,0x1
    1cc7:	48 89 ce             	mov    rsi,rcx
    1cca:	89 c7                	mov    edi,eax
    1ccc:	e8 2f f4 ff ff       	call   1100 <read@plt>
    1cd1:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1cd4:	48 98                	cdqe   
    1cd6:	0f b6 44 05 ee       	movzx  eax,BYTE PTR [rbp+rax*1-0x12]
    1cdb:	84 c0                	test   al,al
    1cdd:	75 cf                	jne    1cae <main+0x159>
    1cdf:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1ce2:	48 98                	cdqe   
    1ce4:	c6 44 05 ee 00       	mov    BYTE PTR [rbp+rax*1-0x12],0x0
    1ce9:	48 8d 45 ee          	lea    rax,[rbp-0x12]
    1ced:	48 89 c7             	mov    rdi,rax
    1cf0:	e8 3b f4 ff ff       	call   1130 <atoi@plt>
    1cf5:	89 05 25 23 00 00    	mov    DWORD PTR [rip+0x2325],eax        # 4020 <number_of_ways>
    1cfb:	8b 05 1f 23 00 00    	mov    eax,DWORD PTR [rip+0x231f]        # 4020 <number_of_ways>
    1d01:	89 c6                	mov    esi,eax
    1d03:	48 8d 05 de 03 00 00 	lea    rax,[rip+0x3de]        # 20e8 <_IO_stdin_used+0xe8>
    1d0a:	48 89 c7             	mov    rdi,rax
    1d0d:	b8 00 00 00 00       	mov    eax,0x0
    1d12:	e8 c9 f3 ff ff       	call   10e0 <printf@plt>
    1d17:	be 00 00 00 00       	mov    esi,0x0
    1d1c:	48 8d 05 dd 03 00 00 	lea    rax,[rip+0x3dd]        # 2100 <_IO_stdin_used+0x100>
    1d23:	48 89 c7             	mov    rdi,rax
    1d26:	b8 00 00 00 00       	mov    eax,0x0
    1d2b:	e8 f0 f3 ff ff       	call   1120 <open@plt>
    1d30:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
    1d33:	c7 45 90 ff ff ff ff 	mov    DWORD PTR [rbp-0x70],0xffffffff
    1d3a:	83 45 90 01          	add    DWORD PTR [rbp-0x70],0x1
    1d3e:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1d41:	48 98                	cdqe   
    1d43:	48 8d 55 ee          	lea    rdx,[rbp-0x12]
    1d47:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
    1d4b:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
    1d4e:	ba 01 00 00 00       	mov    edx,0x1
    1d53:	48 89 ce             	mov    rsi,rcx
    1d56:	89 c7                	mov    edi,eax
    1d58:	e8 a3 f3 ff ff       	call   1100 <read@plt>
    1d5d:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1d60:	48 98                	cdqe   
    1d62:	0f b6 44 05 ee       	movzx  eax,BYTE PTR [rbp+rax*1-0x12]
    1d67:	84 c0                	test   al,al
    1d69:	75 cf                	jne    1d3a <main+0x1e5>
    1d6b:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
    1d6e:	48 98                	cdqe   
    1d70:	c6 44 05 ee 00       	mov    BYTE PTR [rbp+rax*1-0x12],0x0
    1d75:	48 8d 45 ee          	lea    rax,[rbp-0x12]
    1d79:	48 89 c7             	mov    rdi,rax
    1d7c:	e8 af f3 ff ff       	call   1130 <atoi@plt>
    1d81:	89 05 9d 22 00 00    	mov    DWORD PTR [rip+0x229d],eax        # 4024 <line_size>
    1d87:	8b 05 97 22 00 00    	mov    eax,DWORD PTR [rip+0x2297]        # 4024 <line_size>
    1d8d:	89 c6                	mov    esi,eax
    1d8f:	48 8d 05 a8 03 00 00 	lea    rax,[rip+0x3a8]        # 213e <_IO_stdin_used+0x13e>
    1d96:	48 89 c7             	mov    rdi,rax
    1d99:	b8 00 00 00 00       	mov    eax,0x0
    1d9e:	e8 3d f3 ff ff       	call   10e0 <printf@plt>
    1da3:	8b 15 77 22 00 00    	mov    edx,DWORD PTR [rip+0x2277]        # 4020 <number_of_ways>
    1da9:	8b 05 6d 22 00 00    	mov    eax,DWORD PTR [rip+0x226d]        # 401c <number_of_sets>
    1daf:	0f af d0             	imul   edx,eax
    1db2:	8b 05 6c 22 00 00    	mov    eax,DWORD PTR [rip+0x226c]        # 4024 <line_size>
    1db8:	0f af d0             	imul   edx,eax
    1dbb:	8b 05 57 22 00 00    	mov    eax,DWORD PTR [rip+0x2257]        # 4018 <cache_size>
    1dc1:	39 c2                	cmp    edx,eax
    1dc3:	74 28                	je     1ded <main+0x298>
    1dc5:	48 8d 05 fe 03 00 00 	lea    rax,[rip+0x3fe]        # 21ca <__PRETTY_FUNCTION__.0>
    1dcc:	48 89 c1             	mov    rcx,rax
    1dcf:	ba 90 00 00 00       	mov    edx,0x90
    1dd4:	48 8d 05 72 03 00 00 	lea    rax,[rip+0x372]        # 214d <_IO_stdin_used+0x14d>
    1ddb:	48 89 c6             	mov    rsi,rax
    1dde:	48 8d 05 7b 03 00 00 	lea    rax,[rip+0x37b]        # 2160 <_IO_stdin_used+0x160>
    1de5:	48 89 c7             	mov    rdi,rax
    1de8:	e8 03 f3 ff ff       	call   10f0 <__assert_fail@plt>
    1ded:	bf 00 00 00 01       	mov    edi,0x1000000
    1df2:	e8 19 f3 ff ff       	call   1110 <malloc@plt>
    1df7:	48 89 05 32 22 00 00 	mov    QWORD PTR [rip+0x2232],rax        # 4030 <attacker_array>
    1dfe:	bf 00 40 00 00       	mov    edi,0x4000
    1e03:	e8 08 f3 ff ff       	call   1110 <malloc@plt>
    1e08:	48 89 05 29 22 00 00 	mov    QWORD PTR [rip+0x2229],rax        # 4038 <victim_array>
    1e0f:	48 8b 05 1a 22 00 00 	mov    rax,QWORD PTR [rip+0x221a]        # 4030 <attacker_array>
    1e16:	25 ff 0f 00 00       	and    eax,0xfff
    1e1b:	48 89 c2             	mov    rdx,rax
    1e1e:	48 8b 05 0b 22 00 00 	mov    rax,QWORD PTR [rip+0x220b]        # 4030 <attacker_array>
    1e25:	48 89 c6             	mov    rsi,rax
    1e28:	48 8d 05 67 03 00 00 	lea    rax,[rip+0x367]        # 2196 <_IO_stdin_used+0x196>
    1e2f:	48 89 c7             	mov    rdi,rax
    1e32:	b8 00 00 00 00       	mov    eax,0x0
    1e37:	e8 a4 f2 ff ff       	call   10e0 <printf@plt>
    1e3c:	48 8b 05 f5 21 00 00 	mov    rax,QWORD PTR [rip+0x21f5]        # 4038 <victim_array>
    1e43:	25 ff 0f 00 00       	and    eax,0xfff
    1e48:	48 89 c2             	mov    rdx,rax
    1e4b:	48 8b 05 e6 21 00 00 	mov    rax,QWORD PTR [rip+0x21e6]        # 4038 <victim_array>
    1e52:	48 89 c6             	mov    rsi,rax
    1e55:	48 8d 05 52 03 00 00 	lea    rax,[rip+0x352]        # 21ae <_IO_stdin_used+0x1ae>
    1e5c:	48 89 c7             	mov    rdi,rax
    1e5f:	b8 00 00 00 00       	mov    eax,0x0
    1e64:	e8 77 f2 ff ff       	call   10e0 <printf@plt>
    1e69:	48 8b 05 c0 21 00 00 	mov    rax,QWORD PTR [rip+0x21c0]        # 4030 <attacker_array>
    1e70:	48 25 00 f0 ff ff    	and    rax,0xfffffffffffff000
    1e76:	48 05 00 10 00 00    	add    rax,0x1000
    1e7c:	48 89 05 ad 21 00 00 	mov    QWORD PTR [rip+0x21ad],rax        # 4030 <attacker_array>
    1e83:	48 8b 05 ae 21 00 00 	mov    rax,QWORD PTR [rip+0x21ae]        # 4038 <victim_array>
    1e8a:	48 25 00 f0 ff ff    	and    rax,0xfffffffffffff000
    1e90:	48 05 00 10 00 00    	add    rax,0x1000
    1e96:	48 89 05 9b 21 00 00 	mov    QWORD PTR [rip+0x219b],rax        # 4038 <victim_array>
    1e9d:	48 8b 05 8c 21 00 00 	mov    rax,QWORD PTR [rip+0x218c]        # 4030 <attacker_array>
    1ea4:	25 ff 0f 00 00       	and    eax,0xfff
    1ea9:	48 89 c2             	mov    rdx,rax
    1eac:	48 8b 05 7d 21 00 00 	mov    rax,QWORD PTR [rip+0x217d]        # 4030 <attacker_array>
    1eb3:	48 89 c6             	mov    rsi,rax
    1eb6:	48 8d 05 d9 02 00 00 	lea    rax,[rip+0x2d9]        # 2196 <_IO_stdin_used+0x196>
    1ebd:	48 89 c7             	mov    rdi,rax
    1ec0:	b8 00 00 00 00       	mov    eax,0x0
    1ec5:	e8 16 f2 ff ff       	call   10e0 <printf@plt>
    1eca:	48 8b 05 67 21 00 00 	mov    rax,QWORD PTR [rip+0x2167]        # 4038 <victim_array>
    1ed1:	25 ff 0f 00 00       	and    eax,0xfff
    1ed6:	48 89 c2             	mov    rdx,rax
    1ed9:	48 8b 05 58 21 00 00 	mov    rax,QWORD PTR [rip+0x2158]        # 4038 <victim_array>
    1ee0:	48 89 c6             	mov    rsi,rax
    1ee3:	48 8d 05 c4 02 00 00 	lea    rax,[rip+0x2c4]        # 21ae <_IO_stdin_used+0x1ae>
    1eea:	48 89 c7             	mov    rdi,rax
    1eed:	b8 00 00 00 00       	mov    eax,0x0
    1ef2:	e8 e9 f1 ff ff       	call   10e0 <printf@plt>
    1ef7:	c7 45 9c bc 00 00 00 	mov    DWORD PTR [rbp-0x64],0xbc
    1efe:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    1f01:	89 c7                	mov    edi,eax
    1f03:	e8 6f f4 ff ff       	call   1377 <prime_cache_set>
    1f08:	0f ae f0             	mfence 
    1f0b:	48 8b 15 26 21 00 00 	mov    rdx,QWORD PTR [rip+0x2126]        # 4038 <victim_array>
    1f12:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    1f15:	c1 f8 06             	sar    eax,0x6
    1f18:	83 c0 01             	add    eax,0x1
    1f1b:	c1 e0 06             	shl    eax,0x6
    1f1e:	48 98                	cdqe   
    1f20:	48 01 d0             	add    rax,rdx
    1f23:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1f26:	0f be c0             	movsx  eax,al
    1f29:	89 05 f9 20 00 00    	mov    DWORD PTR [rip+0x20f9],eax        # 4028 <temp>
    1f2f:	48 8b 05 fa 20 00 00 	mov    rax,QWORD PTR [rip+0x20fa]        # 4030 <attacker_array>
    1f36:	8b 55 9c             	mov    edx,DWORD PTR [rbp-0x64]
    1f39:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
    1f3d:	48 89 ce             	mov    rsi,rcx
    1f40:	48 89 c7             	mov    rdi,rax
    1f43:	e8 f4 f9 ff ff       	call   193c <probe_asm>
    1f48:	c7 45 94 00 00 00 00 	mov    DWORD PTR [rbp-0x6c],0x0
    1f4f:	eb 28                	jmp    1f79 <main+0x424>
    1f51:	8b 45 94             	mov    eax,DWORD PTR [rbp-0x6c]
    1f54:	48 98                	cdqe   
    1f56:	48 8b 44 c5 a0       	mov    rax,QWORD PTR [rbp+rax*8-0x60]
    1f5b:	48 f7 d8             	neg    rax
    1f5e:	48 89 c6             	mov    rsi,rax
    1f61:	48 8d 05 5c 02 00 00 	lea    rax,[rip+0x25c]        # 21c4 <_IO_stdin_used+0x1c4>
    1f68:	48 89 c7             	mov    rdi,rax
    1f6b:	b8 00 00 00 00       	mov    eax,0x0
    1f70:	e8 6b f1 ff ff       	call   10e0 <printf@plt>
    1f75:	83 45 94 01          	add    DWORD PTR [rbp-0x6c],0x1
    1f79:	83 7d 94 07          	cmp    DWORD PTR [rbp-0x6c],0x7
    1f7d:	7e d2                	jle    1f51 <main+0x3fc>
    1f7f:	bf 0a 00 00 00       	mov    edi,0xa
    1f84:	e8 37 f1 ff ff       	call   10c0 <putchar@plt>
    1f89:	b8 00 00 00 00       	mov    eax,0x0
    1f8e:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    1f92:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    1f99:	00 00 
    1f9b:	74 05                	je     1fa2 <main+0x44d>
    1f9d:	e8 2e f1 ff ff       	call   10d0 <__stack_chk_fail@plt>
    1fa2:	c9                   	leave  
    1fa3:	c3                   	ret    

Disassembly of section .fini:

0000000000001fa4 <_fini>:
    1fa4:	f3 0f 1e fa          	endbr64 
    1fa8:	48 83 ec 08          	sub    rsp,0x8
    1fac:	48 83 c4 08          	add    rsp,0x8
    1fb0:	c3                   	ret    

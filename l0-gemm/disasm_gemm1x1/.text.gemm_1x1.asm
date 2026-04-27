L0:
(W)     mov (16|M0)              r127.0<1>:ud  0x0:ud                             
(W)     and (1|M0)               r127.2<1>:ud  r0.0<0;1,0>:ud    0xFFFFFFC0:ud             
(W)     and (1|M0)               r127.0<1>:uw  r0.4<0;1,0>:uw    0xFF:uw             
(W)     add (1|M0)               r127.2<1>:ud  r127.2<0;1,0>:ud  0x20:ud              {I@2}
(W)     add (1|M0)               r127.2<1>:ud  r127.2<0;1,0>:ud  0x0:ud              {I@1}
(W)     mad (1|M0)               r127.0<1>:ud  r127.2<0;0>:ud    r127.0<0;0>:uw    0xC0:uw              {I@1}
(W)     mov (8|M0)               r4.0<1>:ud    r1.0<1;1,0>:ud                  
(W)     send.ugm (1|M0)          r1       r127  null:0  0xFF000000            0x6229E500           {A@1,$0} // wr:1+0, rd:2; load.ugm.d32x32t.a32.ca.cc.bti[255]
(W)     send.ugm (1|M0)          r3       r127  null:0  0xFF080000            0x6219D500           {$1} // wr:1+0, rd:1; load.ugm.d32x16t.a32.ca.cc.bti[255][A+0x80]
        nop                    
        nop                    
        nop                    
        sync.nop                             null                             {Compacted,$1.src}
(W)     and (1|M0)               r127.0<1>:ud  r0.0<0;1,0>:ud    0xFFFFFFC0:ud              {$0.src}
(W)     add (1|M0)               r127.0<1>:ud  r127.0<0;1,0>:ud  0x0:ud              {I@1}
(W)     send.ugm (1|M0)          r5       r127  null:0  0xFF000000            0x6219C500           {I@1,$2} // wr:1+0, rd:1; load.ugm.d32x8t.a32.ca.cc.bti[255]
(W)     mov (16|M0)              r1.0<1>:ud    r0.0<1;1,0>:ud                   {Compacted,$0.dst}
(W)     or (1|M0)                cr0.0<1>:ud   cr0.0<0;1,0>:ud   0x400004C0:ud              {A@1}
(W)     shl (1|M0)               r2.0<1>:q     r1.1<0;1,0>:ud    3:w               {A@1}
(W)     mov (1|M0)               r2.1<1>:q     r1.6<0;1,0>:ud                  
(W)     mul (1|M0)               acc0.0<1>:ud  r2.0<0;1,0>:ud    r4.14<0;1,0>:uw  {I@2}
(W)     macl (1|M0)              r34.0<1>:ud   r2.0<0;1,0>:ud    r4.7<0;1,0>:ud   {Compacted}
(W)     shl (1|M0)               r2.2<1>:q     r2.1<0;1,0>:q     4:w               {I@3}
(W)     mov (1|M0)               r2.6<2>:ud    r34.0<0;1,0>:ud                  {I@2}
(W)     mul (1|M0)               acc0.0<1>:ud  r2.0<0;1,0>:ud    r4.14<0;1,0>:uw 
(W)     add (1|M0)               r2.8<2>:d     r2.6<0;1,0>:d     r2.2<0;1,0>:q    {I@2}
(W)     mach (1|M0)              r3.0<1>:ud    r2.0<0;1,0>:ud    r4.7<0;1,0>:ud   {Compacted,$1.dst}
(W)     mul (1|M0)               acc0.0<1>:ud  r2.0<0;1,0>:ud    r4.16<0;1,0>:uw 
(W)     shl (1|M0)               r2.5<1>:q     r2.8<0;1,0>:ud    2:w               {I@3}
(W)     macl (1|M0)              r6.0<1>:ud    r2.0<0;1,0>:ud    r4.8<0;1,0>:ud   {Compacted}
(W)     mul (1|M0)               acc0.0<1>:ud  r2.1<0;1,0>:ud    r4.14<0;1,0>:uw 
(W)     add (1|M0)               r2.6<1>:q     r2.5<0;1,0>:q     r4.2<0;1,0>:q    {I@3}
(W)     add (1|M0)               r3.0<1>:ud    r3.0<0;1,0>:ud    r6.0<0;1,0>:ud   {Compacted,I@3}
(W)     macl (1|M0)              r6.0<1>:ud    r2.1<0;1,0>:ud    r4.7<0;1,0>:ud   {Compacted}
(W)     shl (1|M0)               r2.9<1>:d     r4.7<0;1,0>:d     2:w              
(W)     add (1|M0)               r2.7<2>:ud    r3.0<0;1,0>:ud    r6.0<0;1,0>:ud   {I@2}
(W)     shr (1|M0)               r2.7<1>:ud    r2.12<0;1,0>:ud   2:w              
(W)     mov (1|M0)               r2.15<1>:d    r2.13<0;1,0>:d                  
(W)     and (1|M0)               r2.14<1>:d    r2.12<0;1,0>:d    -64:w              
(W)     add (1|M0)               r5.4<1>:d     r2.9<0;1,0>:d     -1:w               {@5,$2.dst}
(W)     and (1|M0)               r5.5<1>:d     r2.7<0;1,0>:d     15:w               {I@4}
(W)     mov (1|M0)               r7.3<1>:ud    7:w                              
(W)     mov (1|M0)               r7.6<1>:ud    0:w                              
(W)     mov (1|M0)               r7.7<1>:ud    0x70F:uw                             
(W)     mov (1|M0)               r7.0<1>:uq    r2.7<0;1,0>:q                    {I@6}
(W)     mov (1|M0)               r7.2<1>:ud    r5.4<0;1,0>:d                    {I@6}
(W)     mov (2|M0)               r7.4<1>:f     r5.4<1;1,0>:f                    {I@6}
(W)     cmp (16|M0)   (eq)f0.0   null<1>:d     r5.0<0;1,0>:d     0:w              
        send.ugm (1|M0)          r8       r7  null:0  0x0            0x02800403           {A@1,$3} // wr:1+0, rd:8; load_block2d.ugm.d32.a64
(W&f0.0) jmpi                                L1544                                
L744:
(W)     mul (1|M0)               acc0.0<1>:ud  r2.0<0;1,0>:ud    r5.0<0;1,0>:uw  
(W)     macl (1|M0)              r35.0<1>:ud   r2.0<0;1,0>:ud    r5.0<0;1,0>:ud   {Compacted}
(W)     mul (1|M0)               acc0.0<1>:ud  r2.0<0;1,0>:ud    r5.0<0;1,0>:uw  
(W)     mach (1|M0)              r16.0<1>:ud   r2.0<0;1,0>:ud    r5.0<0;1,0>:ud   {Compacted}
(W)     mul (1|M0)               acc0.0<1>:ud  r2.0<0;1,0>:ud    r5.2<0;1,0>:uw  
(W)     macl (1|M0)              r17.0<1>:ud   r2.0<0;1,0>:ud    r5.1<0;1,0>:ud   {Compacted}
(W)     mul (1|M0)               acc0.0<1>:ud  r2.1<0;1,0>:ud    r5.0<0;1,0>:uw  
(W)     add (1|M0)               r16.0<1>:ud   r16.0<0;1,0>:ud   r17.0<0;1,0>:ud  {Compacted,I@2}
(W)     macl (1|M0)              r17.0<1>:ud   r2.1<0;1,0>:ud    r5.0<0;1,0>:ud   {Compacted}
(W)     shl (1|M0)               r3.5<1>:d     r4.7<0;1,0>:d     2:w              
(W)     add (1|M0)               r3.2<2>:ud    r16.0<0;1,0>:ud   r17.0<0;1,0>:ud  {I@2}
(W)     shl (1|M0)               r3.2<1>:d     r5.0<0;1,0>:d     1:w               {Compacted}
(W)     shl (1|M0)               r3.4<1>:d     r4.7<0;1,0>:d     1:w              
(W)     shl (1|M0)               r3.3<1>:q     r2.1<0;1,0>:q     5:w              
(W)     mov (1|M0)               r3.9<1>:d     0:w                              
(W)     mov (1|M0)               r3.1<2>:ud    r35.0<0;1,0>:ud                  {Compacted}
(W)     add (1|M0)               r3.8<1>:d     r3.5<0;1,0>:d     -1:w               {I@7}
(W)     add (1|M0)               r3.3<1>:d     r3.2<0;1,0>:d     -1:w               {I@6}
L976:
(W)     shr (1|M0)               r4.6<1>:ud    r3.9<0;1,0>:ud    1:w               {I@4}
(W)     add (1|M0)               r3.10<1>:d    r3.1<0;1,0>:d     r3.9<0;1,0>:d    {I@4}
(W)     mul (1|M0)               acc0.0<1>:d   r4.6<0;1,0>:d     r3.8<0;1,0>:uw   {I@2}
(W)     macl (1|M0)              r23.0<1>:d    r4.6<0;1,0>:d     r3.4<0;1,0>:d    {Compacted}
(W)     shl (1|M0)               r3.6<1>:q     r3.10<0;1,0>:ud   1:w               {I@3}
(W)     add (1|M0)               r4.10<2>:d    r23.0<0;1,0>:d    r3.3<0;1,0>:q    {I@2}
(W)     add (1|M0)               r3.7<1>:q     r3.6<0;1,0>:q     r4.0<0;1,0>:q    {I@2}
(W)     shl (1|M0)               r4.6<1>:q     r4.10<0;1,0>:ud   1:w               {I@2}
(W)     mov (1|M0)               r4.9<1>:d     r3.15<0;1,0>:d                   {I@2}
(W)     add (1|M0)               r4.7<1>:q     r4.6<0;1,0>:q     r4.1<0;1,0>:q    {I@2}
(W)     and (1|M0)               r4.8<1>:d     r3.14<0;1,0>:d    -64:w              
(W)     shr (1|M0)               r3.11<1>:ud   r3.14<0;1,0>:ud   1:w              
(W)     mov (1|M0)               r5.3<1>:d     r4.15<0;1,0>:d                   {I@3}
(W)     and (1|M0)               r5.2<1>:d     r4.14<0;1,0>:d    -64:w              
(W)     shr (1|M0)               r4.11<1>:ud   r4.14<0;1,0>:ud   1:w              
(W)     mov (1|M0)               r18.2<1>:ud   r3.3<0;1,0>:d                   
(W)     mov (1|M0)               r18.3<1>:ud   7:w                              
(W)     mov (1|M0)               r18.4<1>:ud   r3.3<0;1,0>:d                   
(W)     mov (1|M0)               r18.6<1>:ud   0:w                              
(W)     mov (1|M0)               r18.7<1>:ud   0x70F:uw                             
(W)     mov (1|M0)               r32.2<1>:ud   r3.8<0;1,0>:d                   
(W)     mov (1|M0)               r32.3<1>:ud   15:w                              
(W)     mov (1|M0)               r32.4<1>:ud   r3.8<0;1,0>:d                   
(W)     mov (1|M0)               r32.6<1>:ud   0:w                              
(W)     mov (1|M0)               r32.7<1>:ud   0xF0F:uw                             
(W)     mov (1|M0)               r18.0<1>:uq   r4.4<0;1,0>:q                   
(W)     and (1|M0)               r18.5<1>:ud   r3.11<0;1,0>:d    31:w              
(W)     mov (1|M0)               r32.0<1>:uq   r5.1<0;1,0>:q                   
(W)     and (1|M0)               r32.5<1>:ud   r4.11<0;1,0>:d    31:w              
        sync.nop                             null                             {Compacted,$3.src}
        send.ugm (1|M0)          r19      r18  null:0  0x0            0x02400203           {I@3,$4} // wr:1+0, rd:4; load_block2d.ugm.d16.a64
        send.ugm (1|M0)          r24      r32  null:0  0x0            0x02800283           {I@1,$5} // wr:1+0, rd:8; load_block2d.ugm.d16v.a64
(W)     add (1|M0)               r3.9<1>:d     r3.9<0;1,0>:d     16:w              
(W)     cmp (16|M0)   (lt)f0.1   null<1>:d     r3.9<0;1,0>:ud    r5.0<0;1,0>:ud   {I@1}
        sync.allwr                           ($4,$5)                
        dpas.8x8 (16|M0)         r8:f          r8:f              r24:bf            r19.0:bf         {Compacted,$3}
(W&f0.1) jmpi                                L976                                
L1544:
(W)     mov (1|M0)               r33.0<1>:uq   r2.7<0;1,0>:q                   
(W)     mov (1|M0)               r33.2<1>:ud   r5.4<0;1,0>:d                   
(W)     mov (1|M0)               r33.3<1>:ud   7:w                              
(W)     mov (1|M0)               r33.4<1>:f    r5.4<0;1,0>:f                   
(W)     mov (1|M0)               r33.5<1>:f    r5.5<0;1,0>:f                   
(W)     mov (1|M0)               r33.6<1>:ud   0:w                              
(W)     mov (1|M0)               r33.7<1>:ud   0x70F:uw                             
(W)     mov (16|M0)              r127.0<1>:f   r1.0<1;1,0>:f                    {Compacted}
        send.ugm (1|M0)          null     r33  r8:8  0x0            0x02000407           {A@1,$3} // wr:1+8, rd:0; store_block2d.ugm.d32.a64
(W)     send.gtwy (1|M0)         null     r127  null:0  0x0            0x02000010           {EOT,F@1,$6} // wr:1+0, rd:0; end of thread
L1696:
(W)     mov (16|M0)              null<1>:ud    0x7ADD83AE:ud                             
(W)     mov (16|M0)              null<1>:ud    0xF280A4A2:ud                             
(W)     mov (16|M0)              null<1>:ud    0x0:ud                             
(W)     mov (16|M0)              null<1>:ud    0x1:ud                             
        illegal                
        illegal                
        illegal                
        illegal                
        illegal                
        illegal                
        illegal                
        illegal                
        illegal                
        illegal                

0:      set_floor_handler 00000000, 4
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
1:      
17:     ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
4:      switch_jmp R0, 2:5:6
5:      leti R60, 000000ED
        leti R61, 00000000
        leti R62, 0000014D
        leti R63, FFFFFFF1
        p_setpos 00000000, R60
        leti R60, 000000FF
        leti R61, 00000000
        leti R62, 00000152
        leti R63, FFFFFFD5
        p_setpos 00000001, R60
        leti R60, 000000DE
        leti R61, 00000000
        leti R62, 00000142
        leti R63, 00000019
        p_setpos 00000002, R60
        leti R60, 000000F8
        leti R61, 00000000
        leti R62, 00000143
        leti R63, FFFFFFEC
        p_setpos 00000003, R60
        call 8
        ret 
6:      ret 
        ret 
        ret 
8:      
310:    jmpi_= R0, 00000001, 9
        set_quest_board_handler 00000000, 12, 'RAW Itemmaker'
        set R74
        set R0
        set_mainwarp 00000001
        call 336
        ret 
9:      message 00000064, 'Look into your questboard.'
        mesend 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        ret 
        ret 
12:     disp_msg_qb 'Please select the first digit<cr>of the item.'
        close_msg_qb 
        list R60, 'Weapon Section (00)<cr>Armory Section (01)<cr>MAG Section (02)<cr>Item Section (03)<cr>Cancel Creation'
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        switch_jmp R60, 5:13:14:15:16:17
        clear R0
13:     
14:     
15:     
16:     disp_msg_qb 'Please select the<cr>second itemdigit.'
        close_msg_qb 
        call 20
        let R61, R96
        let R59, R60
        disp_msg_qb 'Please select the<cr>third itemdigit.'
        close_msg_qb 
        call 20
        let R62, R96
        jmp 284
        nop 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
7:      list R112, 'Yes<cr>No'
        switch_jmp R112, 2:10:11
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
10:     jmpi_= R10, 00000001, 304
        leti R10, 00000000
        nop 
        nop 
        disp_msg_qb 'Item has been created.'
        close_msg_qb 
        item_create2 R60, R73
11:     ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
18:     let R60, R59
        jmp 7
        ret 
        ret 
19:     sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
20:     list R32, '00<cr>01<cr>02<cr>03<cr>04<cr>05<cr>06<cr>07<cr>08<cr>09<cr>0A<cr>0B<cr>0C<cr>0D<cr>0E<cr>0F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 24
        jmpi_= R32, 00000001, 25
        jmpi_= R32, 00000002, 26
        jmpi_= R32, 00000003, 27
        jmpi_= R32, 00000004, 28
        jmpi_= R32, 00000005, 29
        jmpi_= R32, 00000006, 30
        jmpi_= R32, 00000007, 31
        jmpi_= R32, 00000008, 32
        jmpi_= R32, 00000009, 33
        jmpi_= R32, 0000000A, 34
        jmpi_= R32, 0000000B, 35
        jmpi_= R32, 0000000C, 36
        jmpi_= R32, 0000000D, 37
        jmpi_= R32, 0000000E, 38
        jmpi_= R32, 0000000F, 39
        jmpi_= R32, 00000010, 320
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
320:    list R32, '10<cr>11<cr>12<cr>13<cr>14<cr>15<cr>16<cr>17<cr>18<cr>19<cr>1A<cr>1B<cr>1C<cr>1D<cr>1E<cr>1F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 40
        jmpi_= R32, 00000001, 41
        jmpi_= R32, 00000002, 42
        jmpi_= R32, 00000003, 43
        jmpi_= R32, 00000004, 44
        jmpi_= R32, 00000005, 45
        jmpi_= R32, 00000006, 46
        jmpi_= R32, 00000007, 47
        jmpi_= R32, 00000008, 48
        jmpi_= R32, 00000009, 49
        jmpi_= R32, 0000000A, 50
        jmpi_= R32, 0000000B, 51
        jmpi_= R32, 0000000C, 52
        jmpi_= R32, 0000000D, 53
        jmpi_= R32, 0000000E, 54
        jmpi_= R32, 0000000F, 55
        jmpi_= R32, 00000010, 321
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
321:    list R32, '20<cr>21<cr>22<cr>23<cr>24<cr>25<cr>26<cr>27<cr>28<cr>29<cr>2A<cr>2B<cr>2C<cr>2D<cr>2E<cr>2F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 56
        jmpi_= R32, 00000001, 57
        jmpi_= R32, 00000002, 58
        jmpi_= R32, 00000003, 59
        jmpi_= R32, 00000004, 60
        jmpi_= R32, 00000005, 61
        jmpi_= R32, 00000006, 62
        jmpi_= R32, 00000007, 63
        jmpi_= R32, 00000008, 64
        jmpi_= R32, 00000009, 65
        jmpi_= R32, 0000000A, 66
        jmpi_= R32, 0000000B, 67
        jmpi_= R32, 0000000C, 68
        jmpi_= R32, 0000000D, 69
        jmpi_= R32, 0000000E, 70
        jmpi_= R32, 0000000F, 71
        jmpi_= R32, 00000010, 322
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
322:    list R32, '30<cr>31<cr>32<cr>33<cr>34<cr>35<cr>36<cr>37<cr>38<cr>39<cr>3A<cr>3B<cr>3C<cr>3D<cr>3E<cr>3F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 72
        jmpi_= R32, 00000001, 73
        jmpi_= R32, 00000002, 74
        jmpi_= R32, 00000003, 75
        jmpi_= R32, 00000004, 76
        jmpi_= R32, 00000005, 77
        jmpi_= R32, 00000006, 78
        jmpi_= R32, 00000007, 79
        jmpi_= R32, 00000008, 80
        jmpi_= R32, 00000009, 81
        jmpi_= R32, 0000000A, 82
        jmpi_= R32, 0000000B, 83
        jmpi_= R32, 0000000C, 84
        jmpi_= R32, 0000000D, 85
        jmpi_= R32, 0000000E, 86
        jmpi_= R32, 0000000F, 87
        jmpi_= R32, 00000010, 323
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
323:    list R32, '40<cr>41<cr>42<cr>43<cr>44<cr>45<cr>46<cr>47<cr>48<cr>49<cr>4A<cr>4B<cr>4C<cr>4D<cr>4E<cr>4F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 88
        jmpi_= R32, 00000001, 89
        jmpi_= R32, 00000002, 90
        jmpi_= R32, 00000003, 91
        jmpi_= R32, 00000004, 92
        jmpi_= R32, 00000005, 93
        jmpi_= R32, 00000006, 94
        jmpi_= R32, 00000007, 95
        jmpi_= R32, 00000008, 96
        jmpi_= R32, 00000009, 97
        jmpi_= R32, 0000000A, 98
        jmpi_= R32, 0000000B, 99
        jmpi_= R32, 0000000C, 100
        jmpi_= R32, 0000000D, 101
        jmpi_= R32, 0000000E, 102
        jmpi_= R32, 0000000F, 103
        jmpi_= R32, 00000010, 324
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
324:    list R32, '50<cr>51<cr>52<cr>53<cr>54<cr>55<cr>56<cr>57<cr>58<cr>59<cr>5A<cr>5B<cr>5C<cr>5D<cr>5E<cr>5F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 104
        jmpi_= R32, 00000001, 105
        jmpi_= R32, 00000002, 106
        jmpi_= R32, 00000003, 107
        jmpi_= R32, 00000004, 108
        jmpi_= R32, 00000005, 109
        jmpi_= R32, 00000006, 110
        jmpi_= R32, 00000007, 111
        jmpi_= R32, 00000008, 112
        jmpi_= R32, 00000009, 113
        jmpi_= R32, 0000000A, 114
        jmpi_= R32, 0000000B, 115
        jmpi_= R32, 0000000C, 116
        jmpi_= R32, 0000000D, 117
        jmpi_= R32, 0000000E, 118
        jmpi_= R32, 0000000F, 119
        jmpi_= R32, 00000010, 325
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
325:    list R32, '60<cr>61<cr>62<cr>63<cr>64<cr>65<cr>66<cr>67<cr>68<cr>69<cr>6A<cr>6B<cr>6C<cr>6D<cr>6E<cr>6F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 120
        jmpi_= R32, 00000001, 121
        jmpi_= R32, 00000002, 122
        jmpi_= R32, 00000003, 123
        jmpi_= R32, 00000004, 124
        jmpi_= R32, 00000005, 125
        jmpi_= R32, 00000006, 126
        jmpi_= R32, 00000007, 127
        jmpi_= R32, 00000008, 128
        jmpi_= R32, 00000009, 129
        jmpi_= R32, 0000000A, 130
        jmpi_= R32, 0000000B, 131
        jmpi_= R32, 0000000C, 132
        jmpi_= R32, 0000000D, 133
        jmpi_= R32, 0000000E, 134
        jmpi_= R32, 0000000F, 135
        jmpi_= R32, 00000010, 326
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
326:    list R32, '70<cr>71<cr>72<cr>73<cr>74<cr>75<cr>76<cr>77<cr>78<cr>79<cr>7A<cr>7B<cr>7C<cr>7D<cr>7E<cr>7F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 136
        jmpi_= R32, 00000001, 137
        jmpi_= R32, 00000002, 138
        jmpi_= R32, 00000003, 139
        jmpi_= R32, 00000004, 140
        jmpi_= R32, 00000005, 141
        jmpi_= R32, 00000006, 142
        jmpi_= R32, 00000007, 143
        jmpi_= R32, 00000008, 144
        jmpi_= R32, 00000009, 145
        jmpi_= R32, 0000000A, 146
        jmpi_= R32, 0000000B, 147
        jmpi_= R32, 0000000C, 148
        jmpi_= R32, 0000000D, 149
        jmpi_= R32, 0000000E, 150
        jmpi_= R32, 0000000F, 151
        jmpi_= R32, 00000010, 327
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
327:    list R32, '80<cr>81<cr>82<cr>83<cr>84<cr>85<cr>86<cr>87<cr>88<cr>89<cr>8A<cr>8B<cr>8C<cr>8D<cr>8E<cr>8F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 152
        jmpi_= R32, 00000001, 153
        jmpi_= R32, 00000002, 154
        jmpi_= R32, 00000003, 155
        jmpi_= R32, 00000004, 156
        jmpi_= R32, 00000005, 157
        jmpi_= R32, 00000006, 158
        jmpi_= R32, 00000007, 159
        jmpi_= R32, 00000008, 160
        jmpi_= R32, 00000009, 161
        jmpi_= R32, 0000000A, 162
        jmpi_= R32, 0000000B, 163
        jmpi_= R32, 0000000C, 164
        jmpi_= R32, 0000000D, 165
        jmpi_= R32, 0000000E, 166
        jmpi_= R32, 0000000F, 167
        jmpi_= R32, 00000010, 328
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
328:    list R32, '90<cr>91<cr>92<cr>93<cr>94<cr>95<cr>96<cr>97<cr>98<cr>99<cr>9A<cr>9B<cr>9C<cr>9D<cr>9E<cr>9F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 168
        jmpi_= R32, 00000001, 169
        jmpi_= R32, 00000002, 170
        jmpi_= R32, 00000003, 171
        jmpi_= R32, 00000004, 172
        jmpi_= R32, 00000005, 173
        jmpi_= R32, 00000006, 174
        jmpi_= R32, 00000007, 175
        jmpi_= R32, 00000008, 176
        jmpi_= R32, 00000009, 177
        jmpi_= R32, 0000000A, 178
        jmpi_= R32, 0000000B, 179
        jmpi_= R32, 0000000C, 180
        jmpi_= R32, 0000000D, 181
        jmpi_= R32, 0000000E, 182
        jmpi_= R32, 0000000F, 183
        jmpi_= R32, 00000010, 329
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
329:    list R32, 'A0<cr>A1<cr>A2<cr>A3<cr>A4<cr>A5<cr>A6<cr>A7<cr>A8<cr>A9<cr>AA<cr>AB<cr>AC<cr>AD<cr>AE<cr>AF<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 184
        jmpi_= R32, 00000001, 185
        jmpi_= R32, 00000002, 186
        jmpi_= R32, 00000003, 187
        jmpi_= R32, 00000004, 188
        jmpi_= R32, 00000005, 189
        jmpi_= R32, 00000006, 190
        jmpi_= R32, 00000007, 191
        jmpi_= R32, 00000008, 192
        jmpi_= R32, 00000009, 193
        jmpi_= R32, 0000000A, 194
        jmpi_= R32, 0000000B, 195
        jmpi_= R32, 0000000C, 196
        jmpi_= R32, 0000000D, 197
        jmpi_= R32, 0000000E, 198
        jmpi_= R32, 0000000F, 199
        jmpi_= R32, 00000010, 330
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
330:    list R32, 'B0<cr>B1<cr>B2<cr>B3<cr>B4<cr>B5<cr>B6<cr>B7<cr>B8<cr>B9<cr>BA<cr>BB<cr>BC<cr>BD<cr>BE<cr>BF<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 200
        jmpi_= R32, 00000001, 201
        jmpi_= R32, 00000002, 202
        jmpi_= R32, 00000003, 203
        jmpi_= R32, 00000004, 204
        jmpi_= R32, 00000005, 205
        jmpi_= R32, 00000006, 206
        jmpi_= R32, 00000007, 207
        jmpi_= R32, 00000008, 208
        jmpi_= R32, 00000009, 209
        jmpi_= R32, 0000000A, 210
        jmpi_= R32, 0000000B, 211
        jmpi_= R32, 0000000C, 212
        jmpi_= R32, 0000000D, 213
        jmpi_= R32, 0000000E, 214
        jmpi_= R32, 0000000F, 215
        jmpi_= R32, 00000010, 331
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
331:    list R32, 'C0<cr>C1<cr>C2<cr>C3<cr>C4<cr>C5<cr>C6<cr>C7<cr>C8<cr>C9<cr>CA<cr>CB<cr>CC<cr>CD<cr>CE<cr>CF<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 216
        jmpi_= R32, 00000001, 217
        jmpi_= R32, 00000002, 218
        jmpi_= R32, 00000003, 219
        jmpi_= R32, 00000004, 220
        jmpi_= R32, 00000005, 221
        jmpi_= R32, 00000006, 222
        jmpi_= R32, 00000007, 223
        jmpi_= R32, 00000008, 224
        jmpi_= R32, 00000009, 225
        jmpi_= R32, 0000000A, 226
        jmpi_= R32, 0000000B, 227
        jmpi_= R32, 0000000C, 228
        jmpi_= R32, 0000000D, 229
        jmpi_= R32, 0000000E, 230
        jmpi_= R32, 0000000F, 231
        jmpi_= R32, 00000010, 332
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
332:    list R32, 'D0<cr>D1<cr>D2<cr>D3<cr>D4<cr>D5<cr>D6<cr>D7<cr>D8<cr>D9<cr>DA<cr>DB<cr>DC<cr>DD<cr>DE<cr>DF<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 232
        jmpi_= R32, 00000001, 233
        jmpi_= R32, 00000002, 234
        jmpi_= R32, 00000003, 235
        jmpi_= R32, 00000004, 236
        jmpi_= R32, 00000005, 237
        jmpi_= R32, 00000006, 238
        jmpi_= R32, 00000007, 239
        jmpi_= R32, 00000008, 240
        jmpi_= R32, 00000009, 241
        jmpi_= R32, 0000000A, 242
        jmpi_= R32, 0000000B, 243
        jmpi_= R32, 0000000C, 244
        jmpi_= R32, 0000000D, 245
        jmpi_= R32, 0000000E, 246
        jmpi_= R32, 0000000F, 247
        jmpi_= R32, 00000010, 333
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
333:    list R32, 'E0<cr>E1<cr>E2<cr>E3<cr>E4<cr>E5<cr>E6<cr>E7<cr>E8<cr>E9<cr>EA<cr>EB<cr>EC<cr>ED<cr>EE<cr>EF<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 248
        jmpi_= R32, 00000001, 249
        jmpi_= R32, 00000002, 250
        jmpi_= R32, 00000003, 251
        jmpi_= R32, 00000004, 252
        jmpi_= R32, 00000005, 253
        jmpi_= R32, 00000006, 254
        jmpi_= R32, 00000007, 255
        jmpi_= R32, 00000008, 256
        jmpi_= R32, 00000009, 257
        jmpi_= R32, 0000000A, 258
        jmpi_= R32, 0000000B, 259
        jmpi_= R32, 0000000C, 260
        jmpi_= R32, 0000000D, 261
        jmpi_= R32, 0000000E, 262
        jmpi_= R32, 0000000F, 263
        jmpi_= R32, 00000010, 334
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
334:    list R32, 'F0<cr>F1<cr>F2<cr>F3<cr>F4<cr>F5<cr>F6<cr>F7<cr>F8<cr>F9<cr>FA<cr>FB<cr>FC<cr>FD<cr>FE<cr>FF<cr>back...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 264
        jmpi_= R32, 00000001, 265
        jmpi_= R32, 00000002, 266
        jmpi_= R32, 00000003, 267
        jmpi_= R32, 00000004, 268
        jmpi_= R32, 00000005, 269
        jmpi_= R32, 00000006, 270
        jmpi_= R32, 00000007, 271
        jmpi_= R32, 00000008, 272
        jmpi_= R32, 00000009, 273
        jmpi_= R32, 0000000A, 274
        jmpi_= R32, 0000000B, 275
        jmpi_= R32, 0000000C, 276
        jmpi_= R32, 0000000D, 277
        jmpi_= R32, 0000000E, 278
        jmpi_= R32, 0000000F, 279
        jmpi_= R32, 00000010, 20
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
420:    list R32, '00<cr>01<cr>02<cr>03<cr>04<cr>05<cr>06<cr>07<cr>08<cr>09<cr>0A<cr>0B<cr>0C<cr>0D<cr>0E<cr>0F<cr>more...'
        nop 
        nop 
        nop 
        nop 
        jmpi_= R32, 00000000, 24
        jmpi_= R32, 00000001, 25
        jmpi_= R32, 00000002, 26
        jmpi_= R32, 00000003, 27
        jmpi_= R32, 00000004, 28
        jmpi_= R32, 00000005, 29
        jmpi_= R32, 00000006, 30
        jmpi_= R32, 00000007, 31
        jmpi_= R32, 00000008, 32
        jmpi_= R32, 00000009, 33
        jmpi_= R32, 0000000A, 34
        jmpi_= R32, 0000000B, 35
        jmpi_= R32, 0000000C, 36
        jmpi_= R32, 0000000D, 37
        jmpi_= R32, 0000000E, 38
        jmpi_= R32, 0000000F, 39
        jmpi_= R32, 00000010, 320
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
421:    nop 
        nop 
422:    nop 
        nop 
423:    nop 
        nop 
424:    nop 
        nop 
425:    nop 
        nop 
426:    nop 
        nop 
427:    nop 
        nop 
428:    nop 
        nop 
429:    nop 
        nop 
430:    nop 
        nop 
431:    nop 
        nop 
432:    nop 
        nop 
433:    nop 
        nop 
434:    nop 
        nop 
24:     leti R96, 00000000
        ret 
25:     leti R96, 00000001
        ret 
26:     leti R96, 00000002
        ret 
27:     leti R96, 00000003
        ret 
28:     leti R96, 00000004
        ret 
29:     leti R96, 00000005
        ret 
30:     leti R96, 00000006
        ret 
31:     leti R96, 00000007
        ret 
32:     leti R96, 00000008
        ret 
33:     leti R96, 00000009
        ret 
34:     leti R96, 0000000A
        ret 
35:     leti R96, 0000000B
        ret 
36:     leti R96, 0000000C
        ret 
37:     leti R96, 0000000D
        ret 
38:     leti R96, 0000000E
        ret 
39:     leti R96, 0000000F
        ret 
40:     leti R96, 00000010
        ret 
41:     leti R96, 00000011
        ret 
42:     leti R96, 00000012
        ret 
43:     leti R96, 00000013
        ret 
44:     leti R96, 00000014
        ret 
45:     leti R96, 00000015
        ret 
46:     leti R96, 00000016
        ret 
47:     leti R96, 00000017
        ret 
48:     leti R96, 00000018
        ret 
49:     leti R96, 00000019
        ret 
50:     leti R96, 0000001A
        ret 
51:     leti R96, 0000001B
        ret 
52:     leti R96, 0000001C
        ret 
53:     leti R96, 0000001D
        ret 
54:     leti R96, 0000001E
        ret 
55:     leti R96, 0000001F
        ret 
56:     leti R96, 00000020
        ret 
57:     leti R96, 00000021
        ret 
58:     leti R96, 00000022
        ret 
59:     leti R96, 00000023
        ret 
60:     leti R96, 00000024
        ret 
61:     leti R96, 00000025
        ret 
62:     leti R96, 00000026
        ret 
63:     leti R96, 00000027
        ret 
64:     leti R96, 00000028
        ret 
65:     leti R96, 00000029
        ret 
66:     leti R96, 0000002A
        ret 
67:     leti R96, 0000002B
        ret 
68:     leti R96, 0000002C
        ret 
69:     leti R96, 0000002D
        ret 
70:     leti R96, 0000002E
        ret 
71:     leti R96, 0000002F
        ret 
72:     leti R96, 00000030
        ret 
73:     leti R96, 00000031
        ret 
74:     leti R96, 00000032
        ret 
75:     leti R96, 00000033
        ret 
76:     leti R96, 00000034
        ret 
77:     leti R96, 00000035
        ret 
78:     leti R96, 00000036
        ret 
79:     leti R96, 00000037
        ret 
80:     leti R96, 00000038
        ret 
81:     leti R96, 00000039
        ret 
82:     leti R96, 0000003A
        ret 
83:     leti R96, 0000003B
        ret 
84:     leti R96, 0000003C
        ret 
85:     leti R96, 0000003D
        ret 
86:     leti R96, 0000003E
        ret 
87:     leti R96, 0000003F
        ret 
88:     leti R96, 00000040
        ret 
89:     leti R96, 00000041
        ret 
90:     leti R96, 00000042
        ret 
91:     leti R96, 00000043
        ret 
92:     leti R96, 00000044
        ret 
93:     leti R96, 00000045
        ret 
94:     leti R96, 00000046
        ret 
95:     leti R96, 00000047
        ret 
96:     leti R96, 00000048
        ret 
97:     leti R96, 00000049
        ret 
98:     leti R96, 0000004A
        ret 
99:     leti R96, 0000004B
        ret 
100:    leti R96, 0000004C
        ret 
101:    leti R96, 0000004D
        ret 
102:    leti R96, 0000004E
        ret 
103:    leti R96, 0000004F
        ret 
104:    leti R96, 00000050
        ret 
105:    leti R96, 00000051
        ret 
106:    leti R96, 00000052
        ret 
107:    leti R96, 00000053
        ret 
108:    leti R96, 00000054
        ret 
109:    leti R96, 00000055
        ret 
110:    leti R96, 00000056
        ret 
111:    leti R96, 00000057
        ret 
112:    leti R96, 00000058
        ret 
113:    leti R96, 00000059
        ret 
114:    leti R96, 0000005A
        ret 
115:    leti R96, 0000005B
        ret 
116:    leti R96, 0000005C
        ret 
117:    leti R96, 0000005D
        ret 
118:    leti R96, 0000005E
        ret 
119:    leti R96, 0000005F
        ret 
120:    leti R96, 00000060
        ret 
121:    leti R96, 00000061
        ret 
122:    leti R96, 00000062
        ret 
123:    leti R96, 00000063
        ret 
124:    leti R96, 00000064
        ret 
125:    leti R96, 00000065
        ret 
126:    leti R96, 00000066
        ret 
127:    leti R96, 00000067
        ret 
128:    leti R96, 00000068
        ret 
129:    leti R96, 00000069
        ret 
130:    leti R96, 0000006A
        ret 
131:    leti R96, 0000006B
        ret 
132:    leti R96, 0000006C
        ret 
133:    leti R96, 0000006D
        ret 
134:    leti R96, 0000006E
        ret 
135:    leti R96, 0000006F
        ret 
136:    leti R96, 00000070
        ret 
137:    leti R96, 00000071
        ret 
138:    leti R96, 00000072
        ret 
139:    leti R96, 00000073
        ret 
140:    leti R96, 00000074
        ret 
141:    leti R96, 00000075
        ret 
142:    leti R96, 00000076
        ret 
143:    leti R96, 00000077
        ret 
144:    leti R96, 00000078
        ret 
145:    leti R96, 00000079
        ret 
146:    leti R96, 0000007A
        ret 
147:    leti R96, 0000007B
        ret 
148:    leti R96, 0000007C
        ret 
149:    leti R96, 0000007D
        ret 
150:    leti R96, 0000007E
        ret 
151:    leti R96, 0000007F
        ret 
152:    leti R96, 00000080
        ret 
153:    leti R96, 00000081
        ret 
154:    leti R96, 00000082
        ret 
155:    leti R96, 00000083
        ret 
156:    leti R96, 00000084
        ret 
157:    leti R96, 00000085
        ret 
158:    leti R96, 00000086
        ret 
159:    leti R96, 00000087
        ret 
160:    leti R96, 00000088
        ret 
161:    leti R96, 00000089
        ret 
162:    leti R96, 0000008A
        ret 
163:    leti R96, 0000008B
        ret 
164:    leti R96, 0000008C
        ret 
165:    leti R96, 0000008D
        ret 
166:    leti R96, 0000008E
        ret 
167:    leti R96, 0000008F
        ret 
168:    leti R96, 00000090
        ret 
169:    leti R96, 00000091
        ret 
170:    leti R96, 00000092
        ret 
171:    leti R96, 00000093
        ret 
172:    leti R96, 00000094
        ret 
173:    leti R96, 00000095
        ret 
174:    leti R96, 00000096
        ret 
175:    leti R96, 00000097
        ret 
176:    leti R96, 00000098
        ret 
177:    leti R96, 00000099
        ret 
178:    leti R96, 0000009A
        ret 
179:    leti R96, 0000009B
        ret 
180:    leti R96, 0000009C
        ret 
181:    leti R96, 0000009D
        ret 
182:    leti R96, 0000009E
        ret 
183:    leti R96, 0000009F
        ret 
184:    leti R96, 000000A0
        ret 
185:    leti R96, 000000A1
        ret 
186:    leti R96, 000000A2
        ret 
187:    leti R96, 000000A3
        ret 
188:    leti R96, 000000A4
        ret 
189:    leti R96, 000000A5
        ret 
190:    leti R96, 000000A6
        ret 
191:    leti R96, 000000A7
        ret 
192:    leti R96, 000000A8
        ret 
193:    leti R96, 000000A9
        ret 
194:    leti R96, 000000AA
        ret 
195:    leti R96, 000000AB
        ret 
196:    leti R96, 000000AC
        ret 
197:    leti R96, 000000AD
        ret 
198:    leti R96, 000000AE
        ret 
199:    leti R96, 000000AF
        ret 
200:    leti R96, 000000B0
        ret 
201:    leti R96, 000000B1
        ret 
202:    leti R96, 000000B2
        ret 
203:    leti R96, 000000B3
        ret 
204:    leti R96, 000000B4
        ret 
205:    leti R96, 000000B5
        ret 
206:    leti R96, 000000B6
        ret 
207:    leti R96, 000000B7
        ret 
208:    leti R96, 000000B8
        ret 
209:    leti R96, 000000B9
        ret 
210:    leti R96, 000000BA
        ret 
211:    leti R96, 000000BB
        ret 
212:    leti R96, 000000BC
        ret 
213:    leti R96, 000000BD
        ret 
214:    leti R96, 000000BE
        ret 
215:    leti R96, 000000BF
        ret 
216:    leti R96, 000000C0
        ret 
217:    leti R96, 000000C1
        ret 
218:    leti R96, 000000C2
        ret 
219:    leti R96, 000000C3
        ret 
220:    leti R96, 000000C4
        ret 
221:    leti R96, 000000C5
        ret 
222:    leti R96, 000000C6
        ret 
223:    leti R96, 000000C7
        ret 
224:    leti R96, 000000C8
        ret 
225:    leti R96, 000000C9
        ret 
226:    leti R96, 000000CA
        ret 
227:    leti R96, 000000CB
        ret 
228:    leti R96, 000000CC
        ret 
229:    leti R96, 000000CD
        ret 
230:    leti R96, 000000CE
        ret 
231:    leti R96, 000000CF
        ret 
232:    leti R96, 000000D0
        ret 
233:    leti R96, 000000D1
        ret 
234:    leti R96, 000000D2
        ret 
235:    leti R96, 000000D3
        ret 
236:    leti R96, 000000D4
        ret 
237:    leti R96, 000000D5
        ret 
238:    leti R96, 000000D6
        ret 
239:    leti R96, 000000D7
        ret 
240:    leti R96, 000000D8
        ret 
241:    leti R96, 000000D9
        ret 
242:    leti R96, 000000DA
        ret 
243:    leti R96, 000000DB
        ret 
244:    leti R96, 000000DC
        ret 
245:    leti R96, 000000DD
        ret 
246:    leti R96, 000000DE
        ret 
247:    leti R96, 000000DF
        ret 
248:    leti R96, 000000E0
        ret 
249:    leti R96, 000000E1
        ret 
250:    leti R96, 000000E2
        ret 
251:    leti R96, 000000E3
        ret 
252:    leti R96, 000000E4
        ret 
253:    leti R96, 000000E5
        ret 
254:    leti R96, 000000E6
        ret 
255:    leti R96, 000000E7
        ret 
256:    leti R96, 000000E8
        ret 
257:    leti R96, 000000E9
        ret 
258:    leti R96, 000000EA
        ret 
259:    leti R96, 000000EB
        ret 
260:    leti R96, 000000EC
        ret 
261:    leti R96, 000000ED
        ret 
262:    leti R96, 000000EE
        ret 
263:    leti R96, 000000EF
        ret 
264:    leti R96, 000000F0
        ret 
265:    leti R96, 000000F1
        ret 
266:    leti R96, 000000F2
        ret 
267:    leti R96, 000000F3
        ret 
268:    leti R96, 000000F4
        ret 
269:    leti R96, 000000F5
        ret 
270:    leti R96, 000000F6
        ret 
271:    leti R96, 000000F7
        ret 
272:    leti R96, 000000F8
        ret 
273:    leti R96, 000000F9
        ret 
274:    leti R96, 000000FA
        ret 
275:    leti R96, 000000FB
        ret 
276:    leti R96, 000000FC
        ret 
277:    leti R96, 000000FD
        ret 
278:    leti R96, 000000FE
        ret 
279:    leti R96, 000000FF
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
284:    jmpi_= R60, 00000000, 285
        jmpi_= R60, 00000001, 286
        jmpi_= R60, 00000002, 287
        jmpi_= R60, 00000003, 288
        disp_msg_qb 'Error while creating item.'
        close_msg_qb 
        jmp 1
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
285:    
286:    
287:    disp_msg_qb 'Please select the<cr>fourth itemdigit.'
        close_msg_qb 
        call 20
        let R63, R96
        disp_msg_qb 'Please select the fifth itemdigit.'
        close_msg_qb 
        call 20
        let R64, R96
        disp_msg_qb 'Please select the<cr>sixth itemdigit.'
        close_msg_qb 
        call 20
        let R65, R96
        disp_msg_qb 'Please select the<cr>seventh itemdigit.'
        close_msg_qb 
        call 20
        let R66, R96
        disp_msg_qb 'Please select the<cr>eigth itemdigit.'
        close_msg_qb 
        call 20
        let R67, R96
        disp_msg_qb 'Please select the<cr>nineth itemdigit.    '
        close_msg_qb 
        call 20
        let R68, R96
        disp_msg_qb 'Please select the<cr>tenth itemdigit.    '
        close_msg_qb 
        call 20
        let R69, R96
        disp_msg_qb 'Please select the eleventh itemdigit.    '
        close_msg_qb 
        call 20
        let R70, R96
        disp_msg_qb 'Whew! You are almost done!<cr>Please select the<cr>last itemdigit!'
        close_msg_qb 
        call 20
        let R71, R96
21:     disp_msg_qb 'Your item is about to be created.<cr>Please verify your item:'
        disp_msg_qb '<color 6>Item:<color 7> <r60>,<r61>,<r62><cr><color 6>Subitem:<color 7> <r63>,<r64>,<r65>,<r66><cr><r67>,<r68>,<r69>,<r70>,<r71>'
        call 19
        sync 
        jmp 7
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
288:    disp_msg_qb 'Please select the<cr>fourth itemdigit.'
        close_msg_qb 
        call 20
        let R63, R96
        disp_msg_qb 'Please select the fifth itemdigit.'
        close_msg_qb 
        call 20
        let R64, R96
        disp_msg_qb 'Please select the<cr>last itemdigit.'
        close_msg_qb 
        call 20
        let R65, R96
        clear R66
        clear R67
        clear R68
        clear R69
        clear R70
        clear R71
        call 296
        jmp 21
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
296:    leti R4, 00000009
        read_global_flag R4, R5
        andi R5, 40000000
        jmpi_= R5, 00000000, 23
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
23:     switch_jmp R60, 4:297:298:299:300
297:    jmpi_>= R61, 00000001, 301
        set R10
301:    ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
298:    ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
299:    jmpi_= R61, 00000030, 302
        ret 
302:    set R10
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
300:    jmpi_>= R62, 00000040, 303
        ret 
303:    set R10
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
304:    se 00000006
        leti R59, 00000003
        leti R61, 0000000A
        leti R62, 00000002
        clear R63
        clear R64
        clear R65
        clear R66
        clear R67
        clear R68
        clear R69
        clear R70
        clear R71
        disp_msg_qb 'Cannot create this item.'
        close_msg_qb 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
336:    set_quest_board_handler 00000001, 18, 'Recreate last Item'
        set R75
        set_quest_board_handler 00000002, 340, 'Read Itemdata'
        set R76
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
340:    open_pack_select 
        get_item_id R111
        jmpi_= R111, FFFFFFFF, 341
        nop 
        get_item_info R111, R130
        nop 
        nop 
        disp_msg_qb 'Item data: <r130>,<r131>,<r132><cr>Parameters: <r133>,<r134>,<r135>,<r136><cr><r137>,<r138>,<r139>,<r140>,<r141>'
        close_msg_qb 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
341:    disp_msg_qb 'Aborted...'
        close_msg_qb 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
312:    leti R4, 00000009
        read_global_flag R4, R5
        andi R5, 40000000
        jmpi_= R5, 00000000, 306
        jmp 307
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
306:    message 00000065, 'I am hiding here.'
        add_msg 'Please don't tell anyone.'
        mesend 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
307:    message 00000065, 'Something to do? '
        mesend 
        open_pack_select 
        get_item_id R111
        jmpi_= R111, FFFFFFFF, 344
        nop 
        get_item_info R111, R130
        nop 
        nop 
        message 00000065, 'Item: <r130>,<r131>,<r132><cr>Subtype: <r133>,<r134>,<r135>,<r136><cr><r137>,<r138>,<r139>,<r140>,<r141>.'
        mesend 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
344:    message 00000065, 'Nothing? Good.'
        mesend 
        ret 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        ret 

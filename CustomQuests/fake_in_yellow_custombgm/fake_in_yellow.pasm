0:      set_floor_handler 00000000, 150
        set_floor_handler 00000001, 151
        set_qt_success 250
        gget 0065, R101
        gget 007F, R102
        gget 0091, R103
        gget 008F, R105
        gget 00CE, R106
        gget 008F, R107
        gget 00CA, R108
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        map_designate R60
        leti R60, 00000001
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000004
        map_designate R60
        get_slotnumber R250
        gget 0096, R205
        set R220
        ret 
1:      ret 
33:     ret 
150:    switch_call R205, 2:1:58
        switch_jmp R90, 2:153:154
        ret 
153:    set R90
        leti R60, 000000ED
        leti R61, 00000000
        leti R62, 0000014D
        leti R63, FFFFFFFA
        p_setpos 00000000, R60
        call 520
        set_mainwarp 00000001
        call 420
        ret 
154:    leti R60, 000000BC
        leti R61, 00000000
        leti R62, 000000A7
        leti R63, 0000001E
        leti R64, 00000139
        at_coords_call R60
        ret 
250:    gset 006F
        window_msg 'You've been awarded 800 Meseta.'
        winend 
        bgm 00000001
        pl_add_meseta 00000000, 00000320
        ret 
151:    call 420
        jmpi_= R255, 00000001, 65
        ret 
520:    jmpi_= R0, 00000001, 1
310:    jmpi_= R255, 00000001, 312
        jmpi_= R0, 00000001, 311
        call 232
        message 0000006A, 'Please, <hero job>!<cr>Help me.'
        add_msg 'I'm Dr. Guls'<cr>assistant.'
        add_msg 'Recently, animal data<cr>from Ragol has been sold<cr>on the black market.'
        add_msg 'Dr. Guls bought this<cr>data and he became<cr>totally engrossed in it.'
        add_msg 'He stared at the data<cr>all day long.'
        add_msg 'And suddenly he told me,<cr>"I'm going to see them!"'
        add_msg 'We heard that Ragol was<cr>dangerous, so I thought<cr>he was just joking.'
        add_msg 'But I haven't seen him<cr>for days.'
        add_msg 'Perhaps he did go down<cr>to Ragol.'
        add_msg 'So I asked the Hunter's<cr>Guild to find Dr. Guls.'
        add_msg 'Please find him, and<cr>have him come back<cr>here!'
        set R0
        mesend 
        bgm 00000001
        call 233
        ret 
311:    message 0000006A, 'I hope you find him.'
        add_msg 'Please find Dr. Guls and<cr>bring him back here!'
        mesend 
        ret 
312:    jmpi_= R200, 00000001, 530
        message 0000006A, 'Finally, he's returned<cr>to the lab.'
        add_msg 'Thank you very much.<cr>Please visit the Guild<cr>to get your Meseta.'
        mesend 
        set R3
        set R200
        bgm 00000000
        playbgm_epi 00000001
        ret 
313:    jmpi_= R255, 00000000, 1
        jmpi_= R3, 00000001, 1
        set R3
        ret 
530:    message 0000006A, 'Please visit the Guild<cr>to get your Meseta.'
        mesend 
        ret 
320:    jmpi_= R255, 00000001, 322
        jmpi_= R1, 00000001, 321
        message 00000065, 'Yes, that's me.'
        add_msg 'I sold the Ragol animal<cr>data to Dr. Guls.<cr>He paid me a lot!'
        add_msg 'He really loved this one<cr>particular animal.'
        set R1
        mesend 
        ret 
321:    message 00000065, 'Sorry, I don't remember<cr>which one he loved.'
        mesend 
        ret 
322:    message 00000065, 'Was it the yellow one<cr>he was infatuated with?'
        add_msg 'For me, it's just a big<cr>and disgusting thing.'
        mesend 
        ret 
330:    jmpi_= R255, 00000001, 331
        message 00000066, 'Hello there.'
        add_msg 'No, I haven't seen<cr>Dr. Guls.'
        add_msg 'Not in the city, and<cr>not on Ragol.'
        mesend 
        ret 
331:    message 00000066, 'Hello, there.'
        add_msg 'Was he on Ragol?<cr>Really?'
        add_msg 'Sorry about that.  I<cr>wasn't aware of it.'
        mesend 
        ret 
340:    jmpi_= R255, 00000001, 341
        message 00000067, 'I don't know.'
        add_msg 'A biologist in white?<cr>Sorry, not interested.'
        mesend 
        ret 
341:    message 00000067, 'I was so surprised!'
        add_msg 'I saw a Rappy enter the<cr>city, and a man emerged<cr>from it.'
        mesend 
        ret 
350:    message 00000068, 'I've had enough fun!'
        set R3
        mesend 
        ret 
360:    jmpi_= R255, 00000001, 361
        jmpi_= R7, 00000001, 363
        jmpi_= R6, 00000001, 362
        call 232
        message 0000006A, '......'
        set R6
        mesend 
        call 233
        ret 
362:    call 232
        message 0000006A, '......<cr>......'
        set R7
        call 233
        mesend 
        ret 
363:    call 232
        message 0000006A, 'Hmm, bingo!'
        add_msg 'You've got a great<cr>eye!'
        add_msg 'How did you know it was<cr>me?  I thought my <cr>disguise was perfect.'
        add_msg 'Don't you think the<cr>Rappy is very cute!?'
        add_msg 'It's hairy, soft, cute,<cr>so lovely and pretty...!'
        add_msg 'I'm in Rappy's group,<cr>I'm playing with Rappy,<cr>I'm living with Rappy!'
        add_msg 'It's the happiest I've<cr>ever been in my life!'
        add_msg 'What?  My assistant's<cr>asking me to go back<cr>now?'
        add_msg 'I've collected enough<cr>data by living among<cr>them.  OK, I'll return.'
        add_msg 'I'll just spend a little<cr>more time here with the<cr>Rappy.  Then I'll leave.'
        mesend 
        set R255
        call 233
        bgm 00000000
        leti R60, FFFFFEF6
        leti R61, 00000012
        leti R62, FFFFFE20
        leti R63, 00000000
        pos_pipe_V3 R60
        ret 
361:    call 232
        message 0000006A, 'I said I'll leave soon.<cr>Don't worry.'
        add_msg 'That's OK.<cr>You can go back now.'
        mesend 
        call 233
        ret 
370:    call 232
        message 0000006A, '......'
        add_msg '!'
        fadeout 
        set R4
        mesend 
        cam_quake 
        cam_quake 
        cam_quake 
        cam_quake 
        cam_quake 
        fadein 
        call 233
        ret 
371:    call 232
        message 0000006A, '......'
        fadeout 
        set R5
        mesend 
        cam_quake 
        cam_quake 
        cam_quake 
        cam_quake 
        cam_quake 
        fadein 
        call 233
        ret 
400:    message 0000006F, 'U...a....'
        add_msg 'Oh, <hero name>!<cr>How have you been?'
        add_msg 'Me?  Of course I'm<cr>fine!'
        add_msg 'I'm doing errands for<cr>Dr. Montague now...'
        add_msg 'Oh, sorry.<cr>It seems that I have to<cr>go right now.'
        add_msg 'See you later.'
        mesend 
        fadeout 
        set R8
        call 207
        fadein 
        ret 
410:    jmpi_= R8, 00000001, 411
        message 0000006E, 'Hey, you!'
        add_msg 'Don't talk to that<cr>android!'
        add_msg 'Know yourself, Hunters!'
        mesend 
        ret 
411:    message 0000006E, 'I have nothing to say <cr>to you.'
        mesend 
        ret 
232:    p_action_disable 
        npc_nont 
        disable_movement1 00000000
        p_look 00000000
        hud_hide 
        cine_enable 
        cam_zmin 
        call 207
        ret 
233:    cam_zmout 
        cine_disable 
        hud_show 
        enable_movement1 00000000
        npc_talk 
        p_action_enable 
        ret 
207:    leti R72, 00000000
208:    sync 
        addi R72, 00000001
        jmpi_<= R72, 0000001E, 208
        ret 
58:     sync 
        leti R60, 00000000
        leti R61, 00000014
        leti R62, 00000001
        unhide_obj R60
        ret 
1100:   message 000000DC, 'I, I saw them!'
        add_msg 'This blue creature that<cr>I've never seen. Moving<cr>around everywhere.'
        add_msg 'What was that?'
        mesend 
        ret 
87:     set R224
        set R221
        set R222
        set R223
        ret 
65:     set R3
        set R221
        set R222
        set R223
        thread_stg 56
        jmpi_= R206, 00000000, 1
        set R224
        call 28
        ret 
56:     clear R201
        clear R202
        clear R203
        clear R204
        jmp 66
66:     jmpi_= R206, 00000001, 1
        clear R36
        jmp 50
50:     sync 
        get_coord_of_player R201, R250
        jmpi_< R201, FFFFFF1F, 66
        jmpi_> R201, FFFFFF65, 66
        jmpi_< R203, FFFFFDC1, 66
        jmpi_> R203, FFFFFE25, 66
        addi R36, 00000001
        jmpi_>= R36, 00000096, 107
        jmp 50
107:    jmp 24
        ret 
10:     thread_stg 11
        ret 
11:     sync 
        get_coord_of_player R45, R250
        jmpi_= R254, 00000001, 1
        jmp 10
        ret 
24:     p_action_disable 
        npc_nont 
        disable_movement1 00000000
        set R205
        gset 0096
        set R206
        set R225
        leti R60, FFFFFF7E
        leti R61, 0000002D
        leti R62, FFFFFDE9
        leti R63, 00000078
        leti R64, 0001869F
        cam_pan_V3 R60
        leti R73, 0000005A
        call 71
        call 88
        call 59
        call 85
        call 59
        call 103
        call 69
        call 2
        call 69
        call 28
        call 112
        leti R60, FFFFFF7E
        leti R61, 0000002D
        leti R62, FFFFFDE9
        leti R63, 00000001
        leti R64, 00000001
        cam_pan_V3 R60
        call 54
        call 98
        set R226
        set R224
        call 74
        call 1200
        fadeout 
        call 51
        call 5
        call 26
        call 43
        fadein 
        call 59
        call 34
        call 1201
        call 1202
        call 45
        bgm 00000001
        call 59
        call 1203
        call 59
        call 82
        sync 
        call 46
        call 31
        ret 
108:    leti R201, FFFFFF33
        leti R202, 0000000E
        leti R203, FFFFFE05
        leti R204, 00000089
        p_setpos 00000000, R201
        ret 
26:     leti R201, FFFFFF4D
        leti R202, 0000000E
        leti R203, FFFFFDFC
        leti R204, 0000007E
        p_setpos 00000000, R201
        ret 
64:     leti R212, FFFFFF29
        leti R213, 00000016
        leti R214, FFFFFDEE
        leti R215, FFFFFF8D
        leti R216, 00000032
        leti R217, FFFFFE02
        ret 
73:     leti R212, FFFFFE81
        leti R213, 0000002A
        leti R214, FFFFFE2D
        leti R215, FFFFFF48
        leti R216, 0000001C
        leti R217, FFFFFE03
        ret 
76:     leti R212, FFFFFED2
        leti R213, 0000002E
        leti R214, FFFFFDDE
        leti R215, FFFFFEFD
        leti R216, 00000020
        leti R217, FFFFFDD3
        ret 
81:     leti R212, FFFFFEA0
        leti R213, 0000001E
        leti R214, FFFFFE0E
        leti R215, FFFFFECC
        leti R216, 0000001D
        leti R217, FFFFFE03
        ret 
84:     leti R212, FFFFFF1E
        leti R213, 0000002D
        leti R214, FFFFFDE4
        leti R215, FFFFFF3D
        leti R216, 00000020
        leti R217, FFFFFE03
        ret 
96:     leti R212, FFFFFF1A
        leti R213, 00000014
        leti R214, FFFFFDFD
        leti R215, FFFFFF8D
        leti R216, 00000032
        leti R217, FFFFFE02
        ret 
112:    leti R212, FFFFFF6A
        leti R213, 00000031
        leti R214, FFFFFDF0
        leti R215, FFFFFFFD
        leti R216, 0000003A
        leti R217, FFFFFDE2
        ret 
5:      leti R212, FFFFFF90
        leti R213, 0000003A
        leti R214, FFFFFDED
        leti R215, FFFFFF71
        leti R216, 0000002E
        leti R217, FFFFFDF2
        ret 
34:     thread_stg 113
        ret 
113:    leti R36, 00000000
        jmp 39
39:     sync 
        jmpi_<= R212, FFFFFF36, 4
        addi R36, 00000001
        jmpi_<= R36, 0000005A, 39
        subi R212, 00000001
        jmp 39
4:      sync 
        jmpi_<= R213, 00000012, 42
        subi R213, 00000001
        addi R214, 00000001
        jmp 4
42:     ret 
88:     leti R60, FFFFFF7E
        leti R61, 0000002D
        leti R62, FFFFFDE9
        leti R63, 00000078
        leti R64, 00000078
        particle_V3 R60
        ret 
103:    leti R28, FFFFFF7E
        leti R29, 0000002D
        leti R30, FFFFFDE9
        leti R31, 00000091
        leti R32, 000000C8
        particle_V3 R28
        ret 
2:      leti R65, FFFFFF7E
        leti R66, 0000002D
        leti R67, FFFFFDE9
        leti R68, 000001FC
        leti R69, 000000C8
        particle_V3 R65
        ret 
85:     leti R60, FFFFFF7D
        leti R61, 0000002D
        leti R62, FFFFFDEA
        leti R63, 0000009E
        leti R64, 00000050
        particle_V3 R60
        ret 
97:     leti R60, FFFFFF42
        leti R61, 00000018
        leti R62, FFFFFDF8
        leti R63, 00000009
        leti R64, 000000C8
        particle_V3 R60
        ret 
114:    ret 
6:      ret 
8:      ret 
25:     leti R60, FFFFFF7E
        leti R61, 0000002D
        leti R62, FFFFFDE9
        leti R63, 00000078
        leti R64, 00000005
        particle_V3 R60
        ret 
45:     leti R28, 00000011
        leti R29, 0000000F
        leti R30, 00000000
        leti R31, 0000000B
        particle_id_V3 R28
        ret 
1160:   jmpi_= R206, 00000000, 1
        jmpi_= R48, 00000001, 1
        set R48
        call 111
        call 27
        call 3
        call 59
        message 000000E0, '!!!'
        mesend 
        call 59
        call 57
        call 78
        clear R48
        ret 
3:      leti R60, FFFFFF82
        leti R61, 00000029
        leti R62, FFFFFDDC
        leti R63, 000000CE
        leti R64, 0000005A
        particle_V3 R60
        sync 
        leti R60, FFFFFF87
        leti R61, 00000029
        leti R62, FFFFFDF1
        leti R63, 000000CE
        leti R64, 0000005A
        particle_V3 R60
        call 59
        leti R65, FFFFFF9E
        leti R66, 0000001D
        leti R67, FFFFFDDC
        leti R68, 00000013
        leti R69, 0000003C
        particle_V3 R65
        ret 
27:     leti R60, FFFFFF7E
        leti R61, 0000002D
        leti R62, FFFFFDE9
        leti R63, 0000001E
        leti R64, 0001869F
        cam_pan_V3 R60
        ret 
78:     leti R60, FFFFFF7E
        leti R61, 0000002D
        leti R62, FFFFFDE9
        leti R63, 00000001
        leti R64, 00000001
        cam_pan_V3 R60
        ret 
31:     leti R60, FFFFFF7E
        leti R61, 0000000F
        leti R62, FFFFFDE9
        leti R63, FFFFFFC4
        leti R64, 00000488
        leti R65, 0000001E
        set_obj_param R60, R85
        ret 
1000:   jmpi_= R205, 00000001, 1001
        message 000000DD, 'Pi Pii!'
        add_msg 'Pii Pii Pii'
        add_msg 'P Pii!'
        mesend 
        ret 
1001:   message 000000DD, 'P Pip<cr>P Pip'
        mesend 
        ret 
1010:   jmpi_= R205, 00000001, 1011
        message 000000DE, 'Pii P P Piip'
        add_msg 'P P'
        add_msg 'P P P P'
        mesend 
        ret 
1011:   message 000000DE, 'P Pip P'
        add_msg 'Piii Pip'
        mesend 
        ret 
1020:   jmpi_= R205, 00000001, 1021
        message 000000DF, 'Pip Pip'
        add_msg 'Piii'
        add_msg 'Pip Pip'
        mesend 
        ret 
1021:   message 000000DF, 'P P Pip Pip'
        add_msg 'P P P Pip'
        mesend 
        ret 
1200:   message 000000E0, '...'
        add_msg '...'
        add_msg '!!!'
        mesend 
        ret 
1201:   message 000000E0, 'I thought nobody would<cr>ever find me!'
        add_msg 'You must be really good!'
        add_msg 'I was trying to see how<cr>long I could hide until<cr>someone discovered me...'
        add_msg 'Oh, well, that's the<cr>record so far.'
        add_msg 'Here, this is a gift for<cr>setting a new record!'
        add_msg 'Received Key item<cr>"Tiny Chao's Garden".'
        add_msg 'You can download games<cr>in the city with this.'
        add_msg 'Have fun!'
        mesend 
        ret 
1202:   sync 
        window_msg 'Received Key item<cr>"TINY CHAO GARDEN".'
        winend 
        ret 
1203:   message 000000E0, 'You can download games<cr>in the city with this.'
        add_msg 'Have fun!'
        mesend 
        ret 
1210:   message 000000E0, 'Have fun!'
        mesend 
        ret 
28:     thread_stg 67
        ret 
67:     create_bgmctrl 
        sync 
        enable_bgmctrl 00000008
        ret 
98:     p_action_disable 
        npc_nont 
        disable_movement1 00000000
        hud_hide 
        cine_enable 
        ret 
46:     cine_disable 
        hud_show 
        enable_movement1 00000000
        npc_talk 
        p_action_enable 
        ret 
91:     p_action_disable 
        npc_nont 
        disable_movement1 00000000
        hud_hide 
        ret 
44:     hud_show 
        enable_movement1 00000000
        npc_talk 
        p_action_enable 
        ret 
111:    p_action_disable 
        npc_nont 
        disable_movement1 00000000
        ret 
57:     enable_movement1 00000000
        npc_talk 
        p_action_enable 
        ret 
54:     sync 
        leti R40, 00000000
        thread_stg 92
        ret 
82:     sync 
        leti R40, 00000001
        ret 
92:     sync 
        jmpi_= R40, 00000001, 68
        leti_fixed_camera_V3 R212
        jmp 92
68:     sync 
        default_camera_pos1 
        ret 
51:     leti R73, 00000005
        jmp 71
        ret 
43:     leti R73, 0000000A
        jmp 71
        ret 
69:     leti R73, 0000000F
        jmp 71
        ret 
52:     leti R73, 00000014
        jmp 71
        ret 
59:     leti R73, 0000001E
        jmp 71
        ret 
61:     leti R73, 00000028
        jmp 71
        ret 
74:     leti R73, 0000003C
        jmp 71
        ret 
89:     leti R73, 0000005A
        jmp 71
        ret 
70:     leti R73, 00000078
        jmp 71
        ret 
71:     sync 
        subi R73, 00000001
        jmpi_> R73, 00000000, 71
        ret 
77:     leti R212, 00000082
        leti R213, 0000001F
        leti R214, 0000004F
        leti R215, 00000077
        leti R216, 00000015
        leti R217, 0000005B
        ret 
79:     leti R212, 0000009B
        leti R213, 00000014
        leti R214, 0000008B
        leti R215, 0000007C
        leti R216, 00000015
        leti R217, 0000006F
        ret 
47:     thread_stg 7
        thread_stg 9
        thread_stg 14
        thread_stg 12
        thread_stg 15
        thread_stg 19
        ret 
53:     thread_stg 13
        thread_stg 16
        thread_stg 20
        thread_stg 17
        thread_stg 21
        thread_stg 22
        ret 
7:      jmp 90
90:     sync 
        jmpi_<= R212, 00000082, 33
        subi R212, 00000001
        jmp 90
        ret 
9:      jmp 93
93:     sync 
        jmpi_>= R213, 0000001E, 33
        addi R213, 00000001
        jmp 93
        ret 
14:     jmp 99
99:     sync 
        jmpi_<= R214, 0000004F, 33
        subi R214, 00000001
        jmp 99
        ret 
12:     jmp 94
94:     sync 
        jmpi_<= R215, 00000078, 33
        subi R215, 00000001
        jmp 94
        ret 
15:     jmp 100
100:    sync 
        jmpi_<= R216, 00000015, 33
        subi R216, 00000001
        jmp 100
        ret 
19:     jmp 104
104:    sync 
        jmpi_<= R217, 0000005B, 33
        subi R217, 00000001
        jmp 104
        ret 
13:     jmp 95
95:     sync 
        jmpi_>= R212, 0000009B, 33
        addi R212, 00000001
        jmp 95
        ret 
16:     jmp 101
101:    sync 
        jmpi_<= R213, 00000014, 33
        subi R213, 00000001
        jmp 101
        ret 
20:     jmp 105
105:    sync 
        jmpi_>= R214, 0000008B, 33
        addi R214, 00000001
        jmp 105
        ret 
17:     jmp 102
102:    sync 
        jmpi_>= R215, 0000007C, 33
        addi R215, 00000001
        jmp 102
        ret 
21:     jmp 106
106:    sync 
        jmpi_>= R217, 00000015, 33
        addi R217, 00000001
        jmp 106
        ret 
22:     jmp 109
109:    sync 
        jmpi_>= R217, 0000006F, 33
        addi R217, 00000001
        jmp 109
        ret 
1150:   jmp 55
55:     call 79
        call 54
        call 91
        se 0000001B
        window_msg 'Gaaaaa...'
        add_msg 'Start up check complete.'
        winend 
        jmp 18
18:     sync 
        window_msg 'This device is used to<cr>download game data into<cr>the Game Boy(R) Advance.'
        winend 
        jmp 32
32:     sync 
        window_msg 'Ready for your order.'
        winend 
        se 00000017
        jmp 62
36:     sync 
        se 00000002
        jmp 32
62:     sync 
        list R41, 'Machine explanation<cr>Download game data<cr>End'
        switch_jmp R41, 3:29:49:110
110:    sync 
        se 0000000A
        window_msg 'Disabling function'
        add_msg 'Gaaaaa...'
        winend 
        jmp 75
75:     se 0000001B
        sync 
        se 00000002
        call 82
        call 44
        ret 
29:     sync 
        se 00000017
        jmp 23
48:     sync 
        se 00000002
        jmp 23
23:     sync 
        list R41, 'Machine explanation<cr>Advice for downloading<cr>Go back'
        switch_jmp R41, 3:40:63:36
40:     se 00000017
        window_msg 'This device is used to<cr>download game data into<cr>the Game Boy(R) Advance.'
        add_msg 'You can download all<cr>kinds of games depending<cr>on the Key Items you get.'
        add_msg 'Please keep in mind that<cr>this device is only for<cr>downloading Chao Games.'
        add_msg 'Setup is easy,'
        add_msg 'first connect the Nintendo<cr>GameCube-Game Boy Advance<cr>cable to the Game Boy Advance...'
        add_msg 'Then plug it into<cr>Controller Socket 4 on<cr>the Nintendo GameCube.'
        add_msg 'Simple enough?'
        winend 
        jmp 48
63:     se 00000017
        window_msg 'The following are <cr>situations when game data<cr>cannot be downloaded. '
        add_msg '1.GBA (Game Boy<cr>Advance) is not connected<cr>to Controller Socket 4.'
        add_msg '2.Connections are not<cr>set up properly.'
        add_msg '3.The power to the GBA is<cr>not turned on.'
        add_msg '4.An unknown error has<cr>occurred on PSO.'
        add_msg '* Other Warnings<cr>If transfer is not completed <cr>after 5 minutes, restart the GBA...'
        add_msg 'And download again.'
        add_msg 'That's it.'
        winend 
        jmp 48
49:     se 00000017
        window_msg 'The following is data<cr>that <hero name> can<cr>download.'
        add_msg '"TINY CHAO GARDEN"'
        winend 
        jmp 72
72:     sync 
        window_msg 'Download this data?'
        winend 
        list R41, 'Yes<cr>No'
        switch_jmp R41, 2:80:36
80:     sync 
        se 00000017
        window_msg 'Transferring data'
        winend 
        call 86
        sync 
        thread_stg 37
        ret 
86:     fadeout 
        call 77
        stack_push R20
        get_lang_setting? R20
        unknownF92F R20, 00000001
        stack_pop R20
        read_disk_file? 'chao.gba'
        gba_unknown1 
        fadein 
        ret 
37:     jmp 60
60:     sync 
        gba_unknown3 
        get_gba_state? R60
        jmpi_= R60, 00000002, 35
        jmpi_= R60, 00000004, 30
        jmp 60
83:     ret 
30:     gba_unknown2 
        bgm 00000001
        sync 
        window_msg 'Download complete'
        add_msg 'Please continue with the<cr>game.'
        add_msg 'Gaaaaa...'
        add_msg 'Disabling function'
        add_msg 'Gaaaaa...'
        winend 
        jmp 75
35:     gba_unknown2 
        se 0000000A
        window_msg 'Failed to download'
        add_msg 'Please download again '
        add_msg 'after checking the<cr>connections and the<cr>power on the GBA.'
        winend 
        jmp 75
38:     se 0000000A
        window_msg 'Game data was not<cr>successfully downloaded.'
        winend 
        jmp 75
41:     se 0000000A
        window_msg 'Gaaaaa...'
        add_msg 'Looks like it won't start<cr>up.'
        winend 
        jmp 75
        nop 
420:    create_bgmctrl 
        sync 
        enable_bgmctrl 0000000E
        ret 
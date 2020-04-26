482:    leti R11, 00000005
        fleti R12, 0.25
        fleti R13, 0
        leti R14, 00000000
        fleti R15, 0
        fleti R16, 0
        fleti R17, 0
        fleti R18, 0
        flet R19, R1
        flet R20, R2
        flet R21, R3
        flet R10, R4
        flet R9, R5
        thread_stg 883
        ret 
883:    sync 
        flet R61, R15
        flet R62, R16
        flet R63, R17
        flet R64, R19
        flet R65, R20
        flet R66, R21
        fleti_fixed_camera R61
        load_unk_data R11, R12, R13, R14, R15, 1000
        fmul R15, R10
        fmul R17, R10
        fadd R15, R19
        fadd R16, R20
        fadd R17, R21
        fadd R13, R9
        jmpi_= R0, 00000001, 1
        jmpi_= R18, 00000000, 883
        ret 
1093:   leti R11, 00000005
        fleti R12, 0.25
        fleti R13, 0
        leti R14, 00000000
        fleti R15, 0
        fleti R16, 0
        fleti R17, 0
        fleti R18, 0
        flet R19, R1
        flet R20, R2
        flet R21, R3
        flet R10, R4
        flet R9, R5
        thread_stg 264
        ret 
264:    sync 
        flet R61, R15
        flet R62, R16
        flet R63, R17
        flet R64, R19
        flet R65, R20
        flet R66, R21
        fleti_fixed_camera R61
        load_unk_data R11, R12, R13, R14, R15, 1019
        fmul R15, R10
        fmul R17, R10
        fadd R15, R19
        fadd R16, R20
        fadd R17, R21
        fadd R13, R9
        jmpi_= R0, 00000001, 1
        jmpi_= R18, 00000000, 264
        ret 
1094:   let R17, R18
        div R17, R19
        mul R17, R19
        sub R18, R17
        let R0, R18
        ret 
452:    leti R51, 00000000
63:     sync 
        addi R51, 00000001
        jmp_<= R51, R52, 63
        ret 
1173:   p_action_disable 
        npc_nont 
        disable_movement2 R250
        hud_hide 
        cine_enable 
        cam_zmin 
        ret 
1152:   cam_zmout 
        cine_disable 
        hud_show 
        enable_movement2 R250
        npc_talk 
        p_action_enable 
        ret 
917:    p_action_disable 
        npc_nont 
        call 2
        hud_hide 
        cine_enable 
        cam_zmin 
        ret 
690:    p_action_disable 
        npc_nont 
        call 1071
        hud_hide 
        cine_enable 
        cam_zmin 
        ret 
931:    cam_zmout 
        cine_disable 
        hud_show 
        call 1153
        npc_talk 
        p_action_enable 
        ret 
1153:   leti R249, 00000000
        enable_movement2 R250
        p_action_enable 
        ret 
2:      leti R249, 00000001
        p_action_disable 
        disable_movement2 R250
        ret 
1071:   leti R249, 00000001
        p_action_disable 
        disable_movement1 R250
        ret 
312:    let R45, R1
        gettime R47
        add R47, R45
        let R49, R47
        clear R43
        clear R44
        clear R40
        thread_stg 265
        ret 
265:    leti R46, 00000000
1131:   sync 
        jmpi_= R44, 00000001, 1
        jmpi_= R40, 00000001, 1
        addi R46, 00000001
        jmpi_< R46, 0000001E, 1131
        jmpi_= R43, 00000001, 313
        jmpi_= R42, 00000001, 294
        window_time 
294:    sync 
        gettime R47
        let R48, R49
        sub R48, R47
        winset_time R48
        jmpi_> R48, 00000000, 265
        jmp 453
        ret 
313:    let R41, R48
        ret 
453:    set R44
        ret 
454:    let R45, R1
        gettime R47
        gettime R49
        add R49, R45
        clear R43
        clear R44
        clear R40
        thread_stg 408
        ret 
408:    leti R46, 00000000
74:     sync 
        jmpi_= R44, 00000001, 1
        jmpi_= R40, 00000001, 1
        addi R46, 00000001
        jmpi_< R46, 0000001E, 74
        jmpi_= R43, 00000001, 313
        jmpi_= R42, 00000001, 361
        window_time 
361:    sync 
        gettime R48
        sub R48, R47
        winset_time R48
        add R48, R47
        jmp_< R48, R49, 408
        jmp 669
        ret 
455:    let R41, R48
        ret 
669:    set R44
        ret 
245:    sync_register R241, 00000001
        ret 
266:    sync_register R242, 00000001
        ret 
295:    sync_register R243, 00000001
        ret 
314:    sync_register R244, 00000001
        ret 
218:    sync_register R241, 00000000
        ret 
246:    sync_register R242, 00000000
        ret 
267:    sync_register R243, 00000000
        ret 
296:    sync_register R244, 00000000
        ret 
390:    sync_register R236, 00000001
        ret 
483:    sync_register R237, 00000001
        ret 
594:    sync_register R238, 00000001
        ret 
691:    sync_register R239, 00000001
        ret 
20:     sync_register R185, 00000000
        ret 
331:    sync_register R186, 00000000
        ret 
692:    sync_register R187, 00000000
        ret 
958:    sync_register R188, 00000000
        ret 
75:     sync 
        floor_player_detect R1
        jmpi_= R1, 00000000, 645
        jmpi_= R241, 00000001, 645
        jmp 75
645:    jmpi_= R2, 00000000, 932
        jmpi_= R242, 00000001, 932
        jmp 75
932:    jmpi_= R3, 00000000, 3
        jmpi_= R243, 00000001, 3
        jmp 75
3:      jmpi_= R4, 00000000, 1056
        jmpi_= R244, 00000001, 1056
        jmp 75
1056:   clear R241
        clear R242
        clear R243
        clear R244
        ret 
1030:   sync_register R230, 00000001
        ret 
1043:   sync_register R231, 00000001
        ret 
1057:   sync_register R232, 00000001
        ret 
1072:   sync_register R233, 00000001
        ret 
884:    sync_register R230, 00000000
        ret 
901:    sync_register R231, 00000000
        ret 
918:    sync_register R232, 00000000
        ret 
933:    sync_register R233, 00000000
        ret 
197:    sync_register R85, 00000001
        ret 
219:    sync_register R86, 00000001
        ret 
247:    sync_register R87, 00000001
        ret 
268:    sync_register R88, 00000001
        ret 
221:    sync 
        floor_player_detect R105
        clear R100
        jmpi_= R105, 00000000, 94
        jmpi_= R85, 00000000, 94
        addi R100, 00000001
94:     jmpi_= R106, 00000000, 115
        jmpi_= R86, 00000000, 115
        addi R100, 00000001
115:    jmpi_= R107, 00000000, 142
        jmpi_= R87, 00000000, 142
        addi R100, 00000001
142:    jmpi_= R108, 00000000, 1154
        jmpi_= R88, 00000000, 1154
        addi R100, 00000001
1154:   get_number_of_player1 R251
        jmp_< R100, R251, 221
        clear R85
        clear R86
        clear R87
        clear R88
        ret 
362:    sync 
        call 375
        get_number_of_player1 R100
        jmp_= R100, R251, 362
        set R253
        p_return_guild 
        ret 
714:    jmpi_< R1, 00000000, 95
        jmp 180
595:    jmpi_< R2, 00000000, 269
        jmp 348
620:    va_start 
        arg_pushr R1
        va_call 765
        va_end 
        let R1, R0
        va_start 
        arg_pushr R2
        va_call 765
        va_end 
        let R2, R0
        add R1, R2
        let R10, R1
        clear R0
        jmp_> R1, R5, 1
        set R0
        ret 
95:     jmpi_< R3, 00000000, 959
        add R1, R3
        jmp 595
959:    sub R1, R3
        jmp 595
180:    jmpi_< R3, 00000000, 1020
        sub R1, R3
        jmp 595
1020:   add R1, R3
        jmp 595
269:    jmpi_< R4, 00000000, 1073
        add R2, R4
        jmp 620
1073:   sub R2, R4
        jmp 620
348:    jmpi_< R4, 00000000, 1155
        sub R2, R4
        jmp 620
1155:   add R2, R4
        jmp 620
621:    clear R119
        leti R102, 00000000
        get_player_status R102, R101
        jmpi_= R101, 00000000, 456
        jmpi_= R34, 00000000, 456
        addi R119, 00000001
456:    leti R102, 00000001
        get_player_status R102, R101
        jmpi_= R101, 00000000, 484
        jmpi_= R35, 00000000, 484
        addi R119, 00000001
484:    leti R102, 00000002
        get_player_status R102, R101
        jmpi_= R101, 00000000, 509
        jmpi_= R36, 00000000, 509
        addi R119, 00000001
509:    leti R102, 00000003
        get_player_status R102, R101
        jmpi_= R101, 00000000, 315
        jmpi_= R37, 00000000, 315
        addi R119, 00000001
315:    ret 
485:    clear R100
        jmpi_= R34, 00000000, 1
        set R100
        ret 
510:    clear R100
        jmpi_= R35, 00000000, 1
        set R100
        ret 
533:    clear R100
        jmpi_= R36, 00000000, 1
        set R100
        ret 
567:    clear R100
        jmpi_= R37, 00000000, 1
        set R100
        ret 
986:    clear R3
        clear R4
        clear R5
        get_coord_of_player R3, R1
        stack_pushm R60, 00000003
        let R60, R12
        let R61, R13
        let R62, R14
        let R63, R2
        switch_call R1, 4:409:428:457:486
        stack_popm R60, 00000003
        ret 
409:    p_setpos 00000000, R60
        ret 
428:    p_setpos 00000001, R60
        ret 
457:    p_setpos 00000002, R60
        ret 
486:    p_setpos 00000003, R60
        ret 
332:    switch_jmp R250, 4:775:790:808:828
        ret 
775:    unknownF80E 00000000
        ret 
790:    unknownF80E 00000001
        ret 
808:    unknownF80E 00000002
        ret 
828:    unknownF80E 00000003
        ret 
765:    jmpi_< R1, 00000000, 333
        let R0, R1
        ret 
333:    muli R1, FFFFFFFF
        let R0, R1
        ret 
349:    clear R0
        floor_player_detect R1
        jmpi_= R2, 00000000, 21
        leti R0, 00000001
        jmp 1
21:     jmpi_= R1, 00000000, 334
        leti R0, 00000000
        jmp 1
334:    jmpi_= R3, 00000000, 693
        leti R0, 00000002
        jmp 1
693:    jmpi_= R4, 00000000, 96
        leti R0, 00000003
        jmp 1
96:     ret 
335:    sync 
        animation_check R250, R101
        jmpi_= R101, 00000001, 222
        jmp 335
        ret 
222:    stop_animation R250
        jmp 335
        ret 
97:     and R1, R2
        jmpi_> R1, 00000000, 960
        leti R0, 00000000
        ret 
960:    leti R0, 00000001
        ret 
766:    clear R0
        floor_player_detect R1
        jmpi_= R2, 00000001, 670
        leti R0, 00000001
        jmp 1
670:    jmpi_= R1, 00000001, 694
        leti R0, 00000000
        jmp 1
694:    jmpi_= R3, 00000001, 715
        leti R0, 00000002
        jmp 1
715:    jmpi_= R4, 00000001, 429
        leti R0, 00000003
        jmp 1
429:    leti R0, FFFFFFFF
        ret 
116:    stack_pushm R10, 00000005
        get_coord_player_detect R1, R10
        get_number_of_player1 R9
        let R14, R10
        add R14, R11
        add R14, R12
        add R14, R13
        jmp_= R9, R14, 961
        leti R0, 00000000
        stack_popm R10, 00000005
        ret 
961:    leti R0, 00000001
        stack_popm R10, 00000005
        ret 
862:    stack_pushm R11, 0000000D
        clear R11
        clear R12
        clear R13
        clear R14
        clear R15
        clear R16
        clear R17
        clear R18
        clear R19
        clear R20
        clear R21
        clear R22
        clear R23
        leti R11, 00000003
        leti R12, 0000000A
        item_create2 R11, R23
        jmpi_= R23, FFFFFFFF, 270
        item_delete2 R11, R23
        stack_popm R11, 0000000D
        leti R0, 00000001
        ret 
270:    leti R0, 00000000
        stack_popm R11, 0000000D
        ret 
35:     stack_pushm R11, 0000000E
        let R11, R1
        let R12, R2
        let R13, R3
        clear R14
        clear R15
        clear R16
        clear R17
        clear R18
        clear R19
        clear R20
        clear R21
        clear R22
        clear R23
        item_delete2 R11, R24
        jmpi_= R24, FFFFFFFF, 534
        item_create2 R11, R24
        stack_popm R11, 0000000E
        leti R0, 00000001
        ret 
534:    stack_popm R11, 0000000E
        leti R0, 00000000
        ret 
1001:   get_stackable_item_count R1, R0
        ret 
36:     stack_pushm R11, 0000000E
        let R11, R1
        let R12, R2
        let R13, R3
        clear R14
        clear R15
        clear R16
        clear R17
        clear R18
        clear R19
        clear R20
        clear R21
        clear R22
        clear R23
        item_create2 R11, R11
        stack_popm R11, 0000000E
        ret 
143:    sync 
        sync 
        sync 
        ret 
316:    sync 
        sync 
        sync 
        sync 
        sync 
        ret 
223:    sync 
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
596:    sync 
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
        sync 
        sync 
        ret 
317:    call 223
        call 223
        ret 
375:    call 223
        call 223
        call 223
        ret 
829:    call 223
        call 223
        call 223
        call 596
        ret 
671:    call 223
        call 223
        call 223
        call 223
        call 223
        call 223
        ret 
885:    call 375
        call 671
        ret 
5000:   QEXIT 
        ret 
0:      set_episode 00000001
        set_qt_exit 10
        set_qt_cancel 10
        set_qt_failure 100
        set_floor_handler 00000000, 100
        set_qt_success 20
        get_slotnumber R250
        get_number_of_player1 R251
        get_difflvl R252
        keyword_detect 
        leti R60, 00000000
        leti R61, 00000012
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        set_mainwarp 00000000
        leti R199, 00000002
        read_global_flag 00000000, R100
        andi R100, 40000000
        jmpi_!= R100, 00000000, 947
        ori R100, 40000000
        write_global_flag 00000000, R100
        leti R100, 000000FF
        leti R101, 00000012
        shift_left R100, R101
        read_global_flag 00000000, R102
        andi R102, FC03FFFF
        or R102, R100
        write_global_flag 00000000, R102
947:    call 793
        ret 
        set_quest_board_handler 00000004, 77, 'Initialize all records'
        set R78
1:      ret 
77:     read_global_flag 00000000, R100
        list R50, 'Data initialization<cr>Points +500'
        switch_jmp R50, 2:78:79
78:     disp_msg_qb 'Current value: <r100> All<cr>records for this quest<cr>will be deleted-Continue?'
        close_msg_qb 
        list R50, 'Yes<cr>No'
        jmpi_= R50, 00000001, 1
        leti R100, 00000000
        write_global_flag 00000000, R100
        clear R210
        clear R211
        clear R212
        clear R213
        read_global_flag 00000000, R100
        disp_msg_qb 'Initialization complete.<cr>Begin the quest again. <cr>Current value: <r100>'
        close_msg_qb 
        ret 
79:     va_start 
        arg_pushl 000001F4
        va_call 101
        va_end 
        disp_msg_qb 'Complete.'
        close_msg_qb 
        ret 
198:    read_global_flag R1, R3
        or R3, R2
        write_global_flag R1, R3
        ret 
1074:   xori R2, FFFFFFFF
        read_global_flag R1, R3
        and R3, R2
        write_global_flag R1, R3
        ret 
487:    clear R0
        read_global_flag R1, R3
        and R3, R2
        jmpi_= R3, 00000000, 1
        leti R0, 00000001
        ret 
10:     ret 
30:     ret 
100:    call 967
        unlock_door2 00000000, 00000064
        leti R60, FFFFF060
        leti R61, 00000000
        leti R62, 00000028
        leti R63, 00000014
        leti R64, 000000C8
        leti R65, 00000008
        set_obj_param R60, R191
        leti R60, FFFFF088
        leti R61, 00000000
        leti R62, 00000028
        leti R63, 00000014
        leti R64, 000000D2
        leti R65, 00000008
        set_obj_param R60, R192
        leti R60, FFFFF060
        leti R61, 00000000
        leti R62, FFFFFFD8
        leti R63, 00000014
        leti R64, 000000DC
        leti R65, 00000008
        set_obj_param R60, R193
        leti R60, FFFFF088
        leti R61, 00000000
        leti R62, FFFFFFD8
        leti R63, 00000014
        leti R64, 000000E6
        leti R65, 00000008
        set_obj_param R60, R194
        thread_stg 791
        leti R60, FFFFF092
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 0000000A
        leti R64, 0000008C
        at_coords_talk R60
        call 1161
        ret 
297:    list R50, 'Go to the shop<cr>Normal'
        switch_jmp R50, 2:902:748
748:    
791:    sync 
        sync 
        sync 
        sync 
        sync 
        leti R60, FFFFF092
        leti R61, 00000003
        leti R62, 00000000
        leti R63, 000000B0
        leti R64, 00000005
        particle_V3 R60
        leti R60, FFFFF092
        leti R61, 0000000A
        leti R62, 00000000
        leti R63, 00000117
        leti R64, 00000005
        particle_V3 R60
        jmp 791
        ret 
140:    call 2
        leti R68, 00000134
        leti R69, 0000001E
        let R70, R250
        leti R71, 0000000A
        particle_id_V3 R68
        fadeout 
        call 596
        leti R60, FFFFFFA6
        leti R61, 00000000
        leti R62, 00000028
        leti R63, 0000005A
        p_setpos R250, R60
        call 699
        call 811
        fadein 
        call 1153
        ret 
902:    leti R60, FFFFF060
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        p_setpos R250, R60
        ret 
1021:   sync 
        stack_pushm R100, 0000000A
        leti R100, FFFFF060
        leti R101, 00000000
        leti R102, 00000064
        get_coord_player_detect R100, R103
        switch_call R250, 4:1109:1132:1156:1174
        jmpi_= R107, 00000000, 729
        let R100, R190
        andi R100, 00000002
        jmpi_> R100, 00000000, 458
        color_change R200, R201, R202, R203, R204
        ori R190, 00000002
        andi R190, FFFFFFFB
        jmp 458
729:    let R100, R190
        andi R100, 00000004
        jmpi_> R100, 00000000, 458
        color_change 00000000, 00000000, 00000000, 00000000, 00000000
        ori R190, 00000004
        andi R190, FFFFFFFD
458:    stack_popm R100, 0000000A
        jmp 1021
        ret 
1109:   let R107, R103
        ret 
1132:   let R107, R104
        ret 
1156:   let R107, R105
        ret 
1174:   let R107, R106
        ret 
120:    jmpi_= R255, 00000001, 1
        message 00000078, 'Hi! This is the Hunter's<cr>Guild reception desk, <cr>here to help you out.'
        add_msg 'Do you want to return to<cr>the lobby?'
        mesend 
        list R50, 'No<cr>Yes'
        switch_jmp R50, 2:76:730
        ret 
730:    message 00000078, 'Very well, let's go back<cr>to the lobby, then.'
        mesend 
        set R255
        QEXIT 
        ret 
76:     message 00000078, 'Please visit the Hunter's<cr>Guild again! Your partner<cr>in questing.'
        mesend 
        ret 
125:    message 0000007D, 'The gate to the lab is<cr>currently inoperable.'
        add_msg 'If you have business in<cr>the lab, I suggest you<cr>come back later.'
        mesend 
        ret 
126:    let R100, R190
        andi R100, 00000008
        jmpi_= R100, 00000000, 535
        message 0000007E, 'Go away! Don't talk to<cr>me! I just got a little<cr>carried away...'
        add_msg 'I just spent all my<cr>money... So I can't<cr>afford to eat right now!'
        mesend 
        ret 
535:    message 0000007E, '... ... '
        mesend 
        ori R190, 00000008
        ret 
127:    message 0000007F, 'Hey, have you heard of a<cr>merchant named Gallon?'
        add_msg 'He's an impressive man,<cr>but arrogant and <cr>overbearing.'
        add_msg 'Not very merchant-like...<cr>Still, he makes lots of<cr>money.'
        add_msg 'It's because he takes<cr>advantage of others. It's<cr>a nasty world we live in.'
        mesend 
        ret 
128:    message 00000080, 'La la la la la... '
        add_msg 'Grownups always complain.'
        add_msg 'Always complaining about<cr>how they lost money,<cr>or how they got duped...'
        add_msg 'Don't they know there's<cr>no such thing as a free<cr>lunch?'
        add_msg 'La la la la la...'
        mesend 
        ret 
129:    message 00000081, '!!'
        add_msg 'Are... are you going<cr>to that shop?'
        add_msg 'No, no, I'm not trying<cr>to stop you, but... '
        add_msg '... ... '
        add_msg 'How much can you put up<cr>with?'
        add_msg 'Are you a patient<cr>person?'
        add_msg '...are your fingers okay?'
        add_msg '... ... '
        add_msg 'No, never mind.<cr>Don't listen to me,<cr>I didn't say anything... '
        mesend 
        ret 
110:    sync 
        jmpi_= R249, 00000001, 1
        clear R205
        message 0000006E, 'Welcome, hunters!'
        add_msg 'This is my secret shop,<cr>with many services! You<cr>should be grateful!'
        add_msg 'What do you want?'
        mesend 
934:    list R50, 'Wrap an item<cr>Buy a CD<cr>Shop with Gallon points<cr>What are Gallon points?<cr>What is Roulette?<cr>Nothing'
        switch_jmp R50, 6:886:1110:1032:411:172:538
        ret 
886:    clear R205
        leti R119, 00002710
        message 0000006E, 'Wrapping costs <r119> <cr>Meseta per item. <cr>Sound good?'
        mesend 
        list R50, 'Yes<cr>No'
        switch_jmp R50, 2:80:538
        ret 
80:     let R100, R250
        leti R101, 00002710
        clear R102
        take_slot_meseta R100, R102
        jmpi_= R102, 00000000, 1002
        leti R119, 00002710
        message 0000006E, 'Very well, that'll be<cr><r119> Meseta.'
        add_msg 'Well then, which item<cr>would you like wrapped?'
        mesend 
919:    clear R50
        open_pack_select 
        get_item_id R111
        jmpi_= R111, FFFFFFFF, 987
        get_wrap_status R111, R113
        jmpi_= R113, 00000001, 749
        get_item_info R111, R160
        jmpi_= R160, 00000000, 248
        jmpi_= R160, 00000001, 161
        jmpi_= R160, 00000002, 749
        jmpi_= R160, 00000003, 622
1133:   jmp 536
        message 0000006E, 'What color ribbon do you<cr>want?'
        mesend 
        list R50, 'Pink<cr>Blue<cr>Yellow<cr>Orange<cr>Green<cr>No, wait, never mind'
        jmpi_= R50, 00000005, 224
        sync 
536:    clear R206
        call 1142
        jmpi_= R205, 00000001, 318
        fadeout 
        fadein 
        message 0000006E, 'There, all done.<cr>Take it.'
        add_msg '...Though I can't imagine<cr>that you'd have anyone to<cr>give it to! Bwahahahaha!'
        add_msg 'Do you want anything<cr>else?'
        mesend 
        jmp 934
318:    ret 
248:    jmpi_= R161, 00000033, 749
        jmpi_< R164, 00000040, 1133
        jmpi_> R164, 0000007F, 1133
        jmp 749
161:    jmpi_= R161, 00000003, 749
        jmpi_< R164, 00000040, 1133
        jmpi_> R164, 0000007F, 1133
        jmp 749
622:    jmpi_!= R161, 00000015, 181
        jmpi_= R162, 00000000, 749
181:    jmpi_< R163, 00000040, 1133
        jmpi_> R163, 0000007F, 1133
        jmp 749
987:    message 0000006E, 'What, you're going to<cr>back out?'
        mesend 
        list R50, 'Yes<cr>No, I'll do it'
        switch_jmp R50, 2:224:919
        ret 
749:    message 0000006E, 'Sorry, we can't wrap that<cr>item. Try something else.'
        mesend 
        jmp 919
        ret 
224:    set R205
        message 0000006E, '... ... '
        add_msg 'Here's your Meseta back.<cr>If you're not buying, go<cr>home.'
        mesend 
        leti R100, 00002710
        leti R55, 00000000
        leti R56, 00000003
        get_random R55, R57
        switch_call R57, 3:271:1:1
        pl_add_meseta R250, R100
        ret 
271:    subi R100, 00000005
        ret 
1002:   message 0000006E, '...You don't have enough<cr>money.'
        add_msg 'I may be a generous and<cr>compassionate man,<cr>but still... '
        add_msg 'I can't give you a<cr>discount.'
        add_msg 'So come back when you've<cr>got some more Meseta<cr>to your name.'
        mesend 
        ret 
1110:   leti R119, 00002710
        message 0000006E, 'Very well. That's <r119><cr>Meseta each, is that<cr>okay?'
        mesend 
        list R50, 'Yes<cr>No'
        jmpi_= R50, 00000001, 538
        let R100, R250
        leti R101, 00002710
        clear R102
        take_slot_meseta R100, R102
        jmpi_= R102, 00000000, 1002
        leti R119, 00002710
        message 0000006E, 'All right, that's <r119><cr>Meseta, exactly. Which CD<cr>do you want to buy?'
        mesend 
        switch_jmp R199, 8:1:1:459:488:511:537:568:597
1031:   leti R11, 00000003
        leti R12, 00000016
        let R13, R50
        clear R14
        clear R15
        clear R16
        clear R17
        clear R18
        clear R19
        clear R20
        clear R21
        clear R22
        clear R23
        item_create2 R11, R24
        jmpi_= R24, FFFFFFFF, 225
        message 0000006E, 'All right, I'll sell it<cr>to you!'
        add_msg 'Anything else?'
        mesend 
        jmp 934
        ret 
459:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.6<cr>DISK Vol.7<cr>No, never mind'
        jmpi_= R50, 00000005, 224
        jmpi_>= R50, 00000003, 809
        jmp 1031
        ret 
809:    addi R50, 00000002
        jmp 1031
        ret 
488:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>No, never mind'
        jmpi_= R50, 00000003, 224
        jmp 1031
        ret 
511:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.4<cr>No, never mind'
        jmpi_= R50, 00000004, 224
        jmp 1031
        ret 
537:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.4<cr>DISK Vol.5<cr>No, never mind'
        jmpi_= R50, 00000005, 224
        jmp 1031
        ret 
568:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.4<cr>DISK Vol.5<cr>DISK Vol.6<cr>No, never mind'
        jmpi_= R50, 00000006, 224
        jmp 1031
        ret 
597:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.4<cr>DISK Vol.5<cr>DISK Vol.6<cr>DISK Vol.7<cr>No, never mind'
        jmpi_= R50, 00000007, 224
        jmp 1031
        ret 
225:    message 0000006E, '...Hey, your inventory's<cr>full.'
        add_msg 'Make some room and then<cr>come back.'
        mesend 
        leti R100, 00002710
        subi R100, 00000005
        pl_add_meseta R250, R100
        ret 
1032:   read_global_flag 00000000, R100
        andi R100, 000003FF
        message 0000006E, 'You have <r100> points<cr>now. What do you want to<cr>buy?'
        mesend 
        list R50, 'Wrap an item<cr>Buy a CD<cr>Nothing'
        switch_jmp R50, 3:4:750:538
        ret 
4:      leti R119, 0000001E
        message 0000006E, 'Wrapping costs <r119><cr>points per item. Sound<cr>good?'
        mesend 
        list R50, 'Yes<cr>No'
        switch_jmp R50, 2:48:538
        ret 
48:     read_global_flag 00000000, R100
        andi R100, 000003FF
        jmpi_< R100, 0000001E, 272
        read_global_flag 00000000, R100
        subi R100, 0000001E
        write_global_flag 00000000, R100
        leti R119, 0000001E
        message 0000006E, 'Very well, that'll be<cr><r119> points.'
        add_msg 'Well then, which item<cr>would you like wrapped?'
        mesend 
972:    clear R50
        open_pack_select 
        get_item_id R111
        jmpi_= R111, FFFFFFFF, 962
        get_wrap_status R111, R113
        jmpi_= R113, 00000001, 570
        get_item_info R111, R160
        jmpi_= R160, 00000000, 512
        jmpi_= R160, 00000001, 569
        jmpi_= R160, 00000002, 570
        jmpi_= R160, 00000003, 1044
410:    jmp 64
        message 0000006E, 'What color ribbon do you<cr>want?'
        mesend 
        list R50, 'Pink<cr>Blue<cr>Yellow<cr>Orange<cr>Green<cr>No, wait, never mind'
        jmpi_= R50, 00000005, 363
        sync 
64:     set R206
        call 1142
        jmpi_= R205, 00000001, 1111
        fadeout 
        fadein 
        message 0000006E, 'There, all done.<cr>Take it.'
        add_msg '...Though I can't imagine<cr>that you'd have anyone to<cr>give it to! Bwahahahaha!'
        add_msg 'Do you want anything<cr>else?'
        mesend 
        jmp 934
1111:   ret 
512:    jmpi_= R161, 00000033, 570
        jmpi_< R164, 00000040, 410
        jmpi_> R164, 0000007F, 410
        jmp 570
569:    jmpi_= R161, 00000003, 570
        jmpi_< R164, 00000040, 410
        jmpi_> R164, 0000007F, 410
        jmp 570
1044:   jmpi_!= R161, 00000015, 973
        jmpi_= R162, 00000000, 570
973:    jmpi_< R163, 00000040, 410
        jmpi_> R163, 0000007F, 410
        jmp 570
962:    message 0000006E, 'What, you're going to<cr>back out?'
        mesend 
        list R50, 'Yes<cr>No, I'll do it'
        switch_jmp R50, 2:363:972
        ret 
570:    message 0000006E, 'Sorry, we can't wrap<cr>that item.<cr>Try something else.'
        mesend 
        jmp 972
        ret 
363:    sync 
        set R205
        message 0000006E, '... ... '
        add_msg 'Here are your points <cr>back. If you're not <cr>buying, go home.'
        mesend 
        va_start 
        arg_pushl 0000001E
        va_call 101
        va_end 
        ret 
272:    message 0000006E, '...You don't have enough<cr>points.'
        add_msg 'I may be a highly<cr>intelligent and<cr>sophisticated man,'
        add_msg 'but still... I can't <cr>give you a discount.'
        add_msg 'So come back when you've<cr>got some more points<cr>to your name.'
        mesend 
        ret 
750:    leti R119, 0000001E
        message 0000006E, 'Very well.<cr>That's <r119> points<cr>each, is that okay?'
        mesend 
        list R50, 'Yes<cr>No'
        jmpi_= R50, 00000001, 538
        read_global_flag 00000000, R100
        andi R100, 000003FF
        jmpi_< R100, 0000001E, 272
        read_global_flag 00000000, R100
        subi R100, 0000001E
        write_global_flag 00000000, R100
        leti R119, 0000001E
        message 0000006E, 'All right, that's <r119><cr>points, exactly. Which CD<cr>do you want to buy?'
        mesend 
        switch_jmp R199, 8:1:1:1045:144:460:810:1058:162
319:    leti R11, 00000003
        leti R12, 00000016
        let R13, R50
        clear R14
        clear R15
        clear R16
        clear R17
        clear R18
        clear R19
        clear R20
        clear R21
        clear R22
        clear R23
        item_create2 R11, R24
        jmpi_= R24, FFFFFFFF, 646
        message 0000006E, 'All right, I'll sell it<cr>to you!'
        add_msg 'Anything else?'
        mesend 
        jmp 934
        ret 
1045:   list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.6<cr>DISK Vol.7<cr>No, never mind'
        jmpi_= R50, 00000005, 363
        jmpi_>= R50, 00000003, 320
        jmp 319
        ret 
320:    addi R50, 00000002
        jmp 319
        ret 
144:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>No, never mind'
        jmpi_= R50, 00000003, 363
        jmp 319
        ret 
460:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.4<cr>No, never mind'
        jmpi_= R50, 00000004, 363
        jmp 319
        ret 
810:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.4<cr>DISK Vol.5<cr>No, never mind'
        jmpi_= R50, 00000005, 363
        jmp 319
        ret 
1058:   list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.4<cr>DISK Vol.5<cr>DISK Vol.6<cr>No, never mind'
        jmpi_= R50, 00000006, 363
        jmp 319
        ret 
162:    list R50, 'DISK Vol.1<cr>DISK Vol.2<cr>DISK Vol.3<cr>DISK Vol.4<cr>DISK Vol.5<cr>DISK Vol.6<cr>DISK Vol.7<cr>No, never mind'
        jmpi_= R50, 00000007, 363
        jmp 319
        ret 
646:    message 0000006E, '...Hey, your inventory's<cr>full.'
        add_msg 'Make some room and then<cr>come back.'
        mesend 
        va_start 
        arg_pushl 0000001E
        va_call 101
        va_end 
        ret 
411:    message 0000006E, 'Gallon points, eh?<cr>You see those computers,<cr>there?'
        add_msg 'You can play a little<cr>game there. For a fee,<cr>of course...'
        add_msg 'If you get a good score,<cr>you earn Gallon points to<cr>shop with.'
        add_msg 'You can use Gallon points<cr>instead of Meseta at this<cr>store. '
        add_msg 'It's a great system for<cr>cash-strapped hunters,<cr>don't you think? Ha ha!'
        add_msg 'Don't forget to <cr>appreciate my generosity<cr>whenever you play!'
        mesend 
        ret 
538:    message 0000006E, '...If you're not buying,<cr>go home!'
        mesend 
        ret 
200:    jmpi_= R249, 00000001, 1
        jmpi_= R197, 00000001, 1
        cam_zmin 
        call 2
        window_msg 'You can play a <cr>button-mashing game here.'
        winend 
        sync 
948:    leti R119, 0000001E
        window_msg 'Do you want to play?<cr>1 play: <r119> Meseta'
        winend 
5:      list R50, 'Play a game<cr>Don't play<cr>Explanation<cr>View records'
        switch_jmp R50, 4:864:863:695:672
        ret 
695:    window_msg 'When you hear "Start!"<cr>press the A Button as<cr>fast as you can.'
        add_msg 'You earn Gallon points<cr>based on how many presses<cr>you get in 10 seconds.'
        add_msg 'You can then use the<cr>Gallon points to shop<cr>at the store.'
        add_msg 'Any physical or mental<cr>problems you may discover<cr>while playing this game,'
        add_msg 'Are not the problem<cr>of Gallon's Shop.<cr>Have a nice day.'
        winend 
        jmp 948
        ret 
863:    clear R197
        call 1153
        cam_zmout 
        ret 
672:    window_msg 'Whose records would you<cr>like to view?'
        winend 
1033:   floor_player_detect R100
        jmpi_= R100, 00000000, 117
        leti R105, 00000000
        get_pl_name? R105
        list R50, '<pl_name><cr>NEXT<cr>EXIT'
        switch_jmp R50, 3:830:117:948
117:    floor_player_detect R100
        jmpi_= R101, 00000000, 430
        leti R105, 00000001
        get_pl_name? R105
        list R50, '<pl_name><cr>NEXT<cr>EXIT'
        switch_jmp R50, 3:1075:430:948
430:    floor_player_detect R100
        jmpi_= R102, 00000000, 792
        leti R105, 00000002
        get_pl_name? R105
        list R50, '<pl_name><cr>NEXT<cr>EXIT'
        switch_jmp R50, 3:182:792:948
792:    floor_player_detect R100
        jmpi_= R103, 00000000, 1033
        leti R105, 00000003
        get_pl_name? R105
        list R50, '<pl_name><cr>NEXT<cr>EXIT'
        switch_jmp R50, 3:513:1033:948
        ret 
830:    let R100, R210
        jmp 98
1075:   let R100, R211
        jmp 98
182:    let R100, R212
        jmp 98
513:    let R100, R213
        jmp 98
98:     andi R100, 0003FC00
        leti R101, 0000000A
        shift_right R100, R101
        window_msg '<pl_name>'s record is... '
        add_msg '<r100>'
        winend 
        jmp 948
        ret 
864:    let R100, R250
        leti R101, 0000001E
        clear R102
        take_slot_meseta R100, R102
        jmpi_= R102, 00000000, 199
        window_msg 'Then get ready, and... '
        winend 
        clear R196
        set R197
        gettime R100
        modi R100, 00000E10
        modi R100, 0000003C
831:    sync 
        gettime R101
        modi R101, 00000E10
        modi R101, 0000003C
        jmp_= R100, R101, 831
        va_start 
        arg_pushl 0000000B
        va_call 312
        va_end 
        call 375
        se 00000007
        window_msg 'START!'
        winend 
        thread_stg 461
        ret 
461:    sync 
        leti R102, 00000000
        get_button_cond R102, R195
        let R101, R195
        andi R101, 00000004
        jmpi_> R101, 00000000, 697
        jmp_off 461, 1:44
        se 0000000B
        clear R42
        set R40
        winend_time 
        call 375
        window_msg 'END!'
        winend 
        call 375
        window_msg 'Your score is... '
        add_msg '<color 4><r196><color 0>!<cr>'
        winend 
        read_global_flag 00000000, R100
        andi R100, 0003FC00
        leti R101, 0000000A
        shift_right R100, R101
        jmp_> R196, R100, 974
696:    jmpi_>= R196, 00000064, 249
        jmpi_>= R196, 0000005A, 598
        jmpi_>= R196, 00000046, 903
        jmpi_>= R196, 00000032, 1157
        jmpi_>= R196, 0000001E, 273
1003:   window_msg 'Play again?'
        winend 
        jmp 5
        ret 
697:    addi R196, 00000001
        jmp 461
        ret 
249:    window_msg 'You got 5 points!'
        winend 
        va_start 
        arg_pushl 00000005
        va_call 101
        va_end 
        jmp 1003
        ret 
598:    window_msg 'You got 4 points!'
        winend 
        va_start 
        arg_pushl 00000004
        va_call 101
        va_end 
        jmp 1003
        ret 
903:    window_msg 'You got 3 points!'
        winend 
        va_start 
        arg_pushl 00000003
        va_call 101
        va_end 
        jmp 1003
        ret 
1157:   window_msg 'You got 2 points!'
        winend 
        va_start 
        arg_pushl 00000002
        va_call 101
        va_end 
        jmp 1003
        ret 
273:    window_msg 'You got 1 point!'
        winend 
        va_start 
        arg_pushl 00000001
        va_call 101
        va_end 
        jmp 1003
        ret 
974:    window_msg 'Congratulations!<cr>You got a new high score!'
        winend 
        let R100, R196
        leti R101, 0000000A
        shift_left R100, R101
        read_global_flag 00000000, R102
        andi R102, FFFC03FF
        or R102, R100
        write_global_flag 00000000, R102
        call 793
        jmp 696
        ret 
199:    window_msg 'You don't have enough<cr>money... '
        winend 
        jmp 863
        ret 
210:    jmpi_= R249, 00000001, 1
        cam_zmin 
        call 2
        jmp 737
        ret 
220:    jmpi_= R249, 00000001, 1
        cam_zmin 
        call 2
        get_guildcard_total R100
        window_msg 'Your current number of<cr>guild cards is... '
        add_msg '<r100>'
        winend 
        read_global_flag 00000000, R102
        jmpi_>= R100, 0000000A, 412
832:    jmpi_>= R100, 0000001E, 623
963:    jmpi_>= R100, 00000032, 776
1076:   jmpi_>= R100, 00000064, 118
1134:   cam_zmout 
        call 1153
        ret 
412:    let R105, R102
        andi R105, 04000000
        jmpi_!= R105, 00000000, 832
        window_msg 'Congratulations! In<cr>recognition of your vast<cr>network of connections,'
        add_msg 'the great Gallon gives<cr>you 10 points!'
        winend 
        ori R102, 04000000
        write_global_flag 00000000, R102
        va_start 
        arg_pushl 0000000A
        va_call 101
        va_end 
        cam_zmout 
        call 1153
        ret 
623:    let R105, R102
        andi R105, 08000000
        jmpi_!= R105, 00000000, 963
        window_msg 'Congratulations! In<cr>recognition of your vast<cr>network of connections,'
        add_msg 'the great Gallon gives<cr>you 30 points!'
        winend 
        ori R102, 08000000
        write_global_flag 00000000, R102
        va_start 
        arg_pushl 0000001E
        va_call 101
        va_end 
        cam_zmout 
        call 1153
        ret 
776:    let R105, R102
        andi R105, 10000000
        jmpi_!= R105, 00000000, 1076
        window_msg 'Congratulations! In<cr>recognition of your vast<cr>network of connections,'
        add_msg 'the great Gallon gives<cr>you 50 points!'
        winend 
        ori R102, 10000000
        write_global_flag 00000000, R102
        va_start 
        arg_pushl 00000032
        va_call 101
        va_end 
        cam_zmout 
        call 1153
        ret 
118:    let R105, R102
        andi R105, 20000000
        jmpi_!= R105, 00000000, 1134
        window_msg 'Congratulations! In<cr>recognition of your vast<cr>network of connections,'
        add_msg 'the great Gallon gives<cr>you 100 points!'
        winend 
        ori R102, 20000000
        write_global_flag 00000000, R102
        va_start 
        arg_pushl 00000064
        va_call 101
        va_end 
        cam_zmout 
        call 1153
        ret 
230:    jmpi_= R249, 00000001, 1
        jmpi_= R197, 00000001, 1
        cam_zmin 
        call 2
        leti R119, 00000008
        window_msg 'You can play a timing<cr>game here.'
        add_msg 'Press the A Button<cr>when the timer reaches<cr><r119> seconds.'
        winend 
        sync 
145:    leti R119, 0000001E
        window_msg 'Do you want to play?<cr>1 play: <r119> Meseta'
        winend 
539:    list R50, 'Play a game<cr>Don't play<cr>Explanation<cr>View records'
        switch_jmp R50, 4:673:863:321:81
        ret 
321:    leti R119, 00000008
        window_msg 'When you hear "Start!"<cr>the timer will start.'
        add_msg 'Press the A Button<cr>when the timer reaches<cr><r119> seconds.'
        add_msg 'The closer you are to<cr><r119> seconds, the more<cr>points you will receive.'
        add_msg 'You can then use the<cr>Gallon points to shop<cr>at the store.'
        add_msg 'Any physical or mental<cr>problems you may discover<cr>while playing this game,'
        add_msg 'are not the problem<cr>of Gallon's Shop.<cr>Have a nice day.'
        winend 
        jmp 145
        ret 
81:     window_msg 'Whose records would you<cr>like to view?'
        winend 
540:    floor_player_detect R100
        jmpi_= R100, 00000000, 865
        leti R105, 00000000
        get_pl_name? R105
        list R50, '<pl_name><cr>NEXT<cr>EXIT'
        switch_jmp R50, 3:274:865:145
865:    floor_player_detect R100
        jmpi_= R101, 00000000, 1112
        leti R105, 00000001
        get_pl_name? R105
        list R50, '<pl_name><cr>NEXT<cr>EXIT'
        switch_jmp R50, 3:624:1112:145
1112:   floor_player_detect R100
        jmpi_= R102, 00000000, 226
        leti R105, 00000002
        get_pl_name? R105
        list R50, '<pl_name><cr>NEXT<cr>EXIT'
        switch_jmp R50, 3:920:226:145
226:    floor_player_detect R100
        jmpi_= R103, 00000000, 540
        leti R105, 00000003
        get_pl_name? R105
        list R50, '<pl_name><cr>NEXT<cr>EXIT'
        switch_jmp R50, 3:1175:540:145
        ret 
274:    let R100, R210
        jmp 846
624:    let R100, R211
        jmp 846
920:    let R100, R212
        jmp 846
1175:   let R100, R213
        jmp 846
846:    andi R100, 03FC0000
        leti R101, 00000012
        shift_right R100, R101
        let R102, R100
        divi R102, 00000064
        let R101, R100
        modi R101, 00000064
        jmpi_< R101, 0000000A, 1158
        let R105, R102
        subi R105, 00000002
        let R106, R101
        subi R106, 00000037
        jmp_off 49, 2:105:106
        window_msg '<pl_name>'s record is... '
        add_msg 'a difference of <r102>.<r101> seconds.'
        winend 
        jmp 145
        ret 
1158:   window_msg '<pl_name>'s record is... '
        add_msg 'a difference of <r102>.0<r101> seconds.'
        winend 
        jmp 145
        ret 
673:    let R100, R250
        leti R101, 0000001E
        clear R102
        take_slot_meseta R100, R102
        jmpi_= R102, 00000000, 199
        window_msg 'Then get ready, and... '
        add_msg 'START!'
        winend 
        clear R196
        set R197
        gettime R100
        modi R100, 00000E10
        modi R100, 0000003C
22:     sync 
        gettime R101
        modi R101, 00000E10
        modi R101, 0000003C
        jmp_= R100, R101, 22
        leti R198, 00000001
        se 00000007
        va_start 
        arg_pushl 0000000A
        va_call 454
        va_end 
        thread_stg 935
        ret 
935:    sync 
        addi R198, 00000001
        leti R102, 00000000
        get_button_cond R102, R195
        let R101, R195
        andi R101, 00000004
        jmpi_> R101, 00000000, 99
        jmp_off 935, 1:44
        se 0000000B
        clear R42
        set R40
        winend_time 
        call 375
        let R100, R198
        divi R100, 0000001E
        jmpi_= R100, 0000000A, 698
        leti R100, 0000001E
        muli R100, 00000008
        sub R100, R198
        va_start 
        arg_pushr R100
        va_call 765
        va_end 
        let R100, R0
        muli R100, 0000014D
        divi R100, 00000064
        jmpi_>= R100, 00000100, 698
        let R102, R100
        divi R102, 00000064
        let R101, R100
        modi R101, 00000064
        let R198, R100
        jmpi_< R101, 0000000A, 847
        window_msg 'That's it!'
        add_msg 'Your time difference<cr>was... '
        add_msg '<color 4><r102>.<r101><color 0> seconds!'
        winend 
866:    read_global_flag 00000000, R105
        andi R105, 03FC0000
        leti R101, 00000012
        shift_right R105, R101
        jmp_< R100, R105, 431
        jmp 1135
        ret 
847:    window_msg 'That's it!'
        add_msg 'Your time difference<cr>was... '
        add_msg '<color 4><r102>.0<r101><color 0> seconds!'
        winend 
        jmp 866
        ret 
698:    se 00000009
        window_msg 'Time difference could not<cr>be calculated.'
        add_msg 'You failed.'
        winend 
        jmp 227
1135:   jmpi_= R198, 00000000, 751
        jmpi_<= R198, 0000000A, 1004
        jmpi_<= R198, 00000019, 82
        jmpi_<= R198, 00000032, 391
227:    window_msg 'Play again?'
        winend 
        jmp 539
        ret 
751:    window_msg 'You got 10 points!'
        winend 
        va_start 
        arg_pushl 0000000A
        va_call 101
        va_end 
        jmp 227
        ret 
1004:   window_msg 'You got 5 points!'
        winend 
        va_start 
        arg_pushl 00000005
        va_call 101
        va_end 
        jmp 227
        ret 
82:     window_msg 'You got 3 points!'
        winend 
        va_start 
        arg_pushl 00000003
        va_call 101
        va_end 
        jmp 227
        ret 
391:    window_msg 'You got 1 point!'
        winend 
        va_start 
        arg_pushl 00000001
        va_call 101
        va_end 
        jmp 227
        ret 
431:    window_msg 'Congratulations!<cr>You got a new high score!'
        winend 
        leti R101, 00000012
        shift_left R100, R101
        read_global_flag 00000000, R102
        andi R102, FC03FFFF
        or R102, R100
        write_global_flag 00000000, R102
        call 793
        jmp 1135
        ret 
99:     set R44
        jmp 935
        ret 
793:    read_global_flag 00000000, R100
        switch_jmp R250, 4:1059:1077:1095:1113
1059:   sync_register R210, R100
        ret 
1077:   sync_register R211, R100
        ret 
1095:   sync_register R212, R100
        ret 
1113:   sync_register R213, R100
        ret 
101:    read_global_flag 00000000, R5
        andi R5, 000003FF
        add R5, R1
        call 163
        let R5, R0
        read_global_flag 00000000, R6
        andi R6, FFFFFC00
        add R6, R5
        write_global_flag 00000000, R6
        ret 
163:    let R0, R5
        jmpi_> R0, 00000064, 1005
        ret 
1005:   leti R0, 00000064
        ret 
794:    sync 
        list R50, 'Gallon's Shop<cr>EXIT'
        switch_jmp R50, 2:887:1078
1006:   sync 
        message 00000082, 'You will be transferred<cr>to the Intelligence<cr>office.'
        mesend 
        va_start 
        arg_pushl FFFFF830
        arg_pushl 00000000
        arg_pushl FFFFFFE1
        arg_pushl FFFFFFAD
        arg_pushr R250
        va_call 904
        va_end 
        ret 
887:    message 00000082, 'You will be transferred<cr>to Gallon's Shop.'
        mesend 
        va_start 
        arg_pushl FFFFF083
        arg_pushl 00000000
        arg_pushl 00000000
        arg_pushl 0000010E
        arg_pushr R250
        va_call 904
        va_end 
        ret 
1078:   call 65
        ret 
130:    
1079:   call 625
        message 00000082, 'Welcome to the<cr>Transport Service.'
        add_msg 'How can we help you?'
        mesend 
        list R50, 'Transport<cr>EXIT'
        switch_jmp R50, 2:975:1078
975:    message 00000082, 'Here is a list of areas<cr>you have been approved to<cr>enter, <hero name>.'
        add_msg 'Where would you like to<cr>be transported to?'
        mesend 
        jmp 794
904:    cam_zmout 
        call 647
        fadeout 
        call 1114
        cine_disable 
        p_setpos R5, R1
        call 699
        call 811
        fadein 
        call 976
        ret 
647:    se 00000019
        leti R60, 000000B0
        leti R61, 0000002D
        let R62, R250
        leti R63, 00000003
        particle_id_V3 R60
        leti R64, 00000035
        leti R65, 0000001E
        let R66, R250
        leti R67, 00000019
        particle_id_V3 R64
        call 1114
        leti R68, 00000134
        leti R69, 0000001E
        let R70, R250
        leti R71, 0000000A
        particle_id_V3 R68
        ret 
699:    se 0000002E
        leti R68, 00000134
        leti R69, 0000001E
        let R70, R250
        leti R71, 0000000A
        particle_id_V3 R68
        leti R64, 000000B0
        leti R65, 0000002D
        let R66, R250
        leti R67, 00000003
        particle_id_V3 R64
        call 1114
        leti R60, 00000117
        leti R61, 0000001E
        let R62, R250
        leti R63, 0000000A
        particle_id_V3 R60
        ret 
625:    p_action_disable 
        npc_nont 
        disable_movement2 R250
        hud_hide 
        cine_enable 
        cam_zmin 
        ret 
65:     cam_zmout 
        cine_disable 
        hud_show 
        enable_movement2 R250
        npc_talk 
        p_action_enable 
        ret 
988:    cine_disable 
        hud_show 
        enable_movement2 R250
        npc_talk 
        p_action_enable 
        ret 
976:    hud_show 
        enable_movement2 R250
        npc_talk 
        p_action_enable 
        ret 
811:    sync 
        sync 
        sync 
        sync 
        sync 
        ret 
1114:   sync 
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
        sync 
        sync 
        ret 
49:     window_msg '<pl_name>'s record is... '
        add_msg 'a difference of  -.-- seconds.'
        winend 
        jmp 145
        ret 
160:    call 2
        let R100, R250
        leti R101, 00000003
        leti R102, 00000010
        leti R103, 00000000
        get_stackable_item_count R100, R141
        let R100, R250
        leti R101, 00000003
        leti R102, 00000010
        leti R103, 00000001
        get_stackable_item_count R100, R142
        let R100, R141
        let R101, R142
        va_start 
        arg_pushl 00000002
        arg_pushl 00000040
        va_call 487
        va_end 
        mul R101, R0
        add R100, R101
        jmpi_= R100, 00000000, 731
        message 000000A0, 'Hey!'
        add_msg 'That precious shiny thing<cr>you have...  My father<cr>collects those!'
        add_msg 'Do you want to meet him<cr>now?'
        mesend 
        list R50, 'No<cr>Yes'
        switch_jmp R50, 2:571:514
        ret 
571:    message 000000A0, 'Hmmm...'
        add_msg 'That's too bad!'
        add_msg 'You're going to regret<cr>this later!'
        mesend 
        call 1153
        ret 
514:    message 000000A0, 'All right!'
        add_msg 'Oh, and uh...'
        add_msg 'My father is very well<cr>respected.'
        add_msg 'So watch your manners!'
        mesend 
        fadeout 
        se 00000019
        switch_call R250, 4:201:228:250:275
        se 0000002E
        call 596
        hud_hide 
        call 596
        fleti R61, -1951.25903320313
        fleti R62, 23.5499992370605
        fleti R63, -0.377999991178513
        fleti R64, -1970.93994140625
        fleti R65, 20
        fleti R66, -0.33500000834465
        fleti_fixed_camera R61
        fadein 
        call 375
        thread_stg 298
        ret 
201:    leti R60, FFFFF844
        leti R61, 00000000
        leti R62, 0000000A
        leti R63, 0000010E
        p_setpos R250, R60
        ret 
228:    leti R60, FFFFF844
        leti R61, 00000000
        leti R62, FFFFFFF6
        leti R63, 0000010E
        p_setpos R250, R60
        ret 
250:    leti R60, FFFFF84E
        leti R61, 00000000
        leti R62, 0000000A
        leti R63, 0000010E
        p_setpos R250, R60
        ret 
275:    leti R60, FFFFF84E
        leti R61, 00000000
        leti R62, FFFFFFF6
        leti R63, 0000010E
        p_setpos R250, R60
        ret 
731:    message 000000A0, 'Well now...'
        add_msg 'I wonder where it<cr>would be...'
        add_msg 'Hey, if you find it,<cr>will you let me know?'
        add_msg 'Promise?'
        mesend 
        call 1153
        ret 
298:    message 000000A5, 'Ha ha ha! <hero name>,<cr>you have something that<cr>I'm interested in.'
        add_msg 'My name is Paganini.'
        add_msg 'Thanks for taking the<cr>time to come see me.'
        add_msg 'Son, thank you for<cr>bringing this hunter<cr>to me.'
        add_msg '...'
        mesend 
        sync 
        fleti R61, -1995.03002929688
        fleti R62, 15.3599996566772
        fleti R63, 1.25999999046326
        fleti R64, -2013.63098144531
        fleti R65, 19.6049995422363
        fleti R66, -5.61399984359741
        fleti_fixed_camera R61
        message 000000A5, 'You have done well.'
        mesend 
        fleti R61, -1951.25903320313
        fleti R62, 23.5499992370605
        fleti R63, -0.377999991178513
        fleti R64, -1970.93994140625
        fleti R65, 20
        fleti R66, -0.33500000834465
        fleti_fixed_camera R61
        message 000000A1, 'All right! '
        mesend 
        message 000000A5, 'This is for you, just as<cr>I promised.'
        add_msg 'Don't lose it now!'
        mesend 
        message 000000A1, 'OK, father!'
        add_msg 'You know I never lose<cr>anything you give to me!'
        mesend 
        message 000000A5, '... ...'
        add_msg 'Very well.'
        mesend 
        sync 
        let R100, R190
        andi R100, 00000010
        jmpi_> R100, 00000000, 277
        va_start 
        arg_pushl 00000002
        arg_pushl 00000040
        va_call 487
        va_end 
        jmpi_!= R0, 00000000, 626
        message 000000A5, 'I collect Photon Drops.'
        add_msg 'Looks like you might have<cr>what I'm looking for.'
        mesend 
        sync 
        ori R190, 00000010
        jmp 277
1159:   message 000000A5, 'Would you like to trade<cr>all of the ones you have<cr>for something of mine?'
        mesend 
1096:   clear R14
        clear R15
        clear R16
        clear R17
        clear R18
        clear R19
        clear R20
        clear R21
        clear R22
        clear R23
        leti R115, 00000005
432:    jmpi_= R115, 00000000, 38
        subi R115, 00000001
        leti R100, 00000014
        leti R55, 00000000
        leti R56, 00000005
        get_random R55, R57
        sub R100, R57
        leti R101, 00000032
        leti R55, 00000000
        leti R56, 00000005
        get_random R55, R57
        sub R101, R57
        leti R102, 00000063
        leti R55, 00000000
        leti R56, 00000005
        get_random R55, R57
        sub R102, R57
        jmp_< R141, R100, 350
        jmp_< R141, R101, 276
        jmp_< R141, R102, 183
        jmp 364
350:    leti R55, 00000000
        leti R56, 00000005
        get_random R55, R57
        sync 
        switch_call R57, 5:103:122:147:164:184
        list R50, 'No<cr>Yes'
        jmpi_= R50, 00000001, 336
        sync 
        message 000000A5, 'Hmm... '
        mesend 
        sync 
        subi R115, 00000001
        jmpi_>= R115, 00000000, 350
        sync 
        jmp 38
276:    leti R55, 00000000
        leti R56, 0000000C
        get_random R55, R57
        sync 
        switch_call R57, 12:103:122:147:164:184:37:50:66:83:102:119:146
        list R50, 'No<cr>Yes'
        jmpi_= R50, 00000001, 336
        sync 
        message 000000A5, 'Hmm... '
        mesend 
        sync 
        subi R115, 00000001
        jmpi_>= R115, 00000000, 276
        sync 
        jmp 38
183:    leti R55, 00000000
        leti R56, 0000000F
        get_random R55, R57
        sync 
        switch_call R57, 15:103:122:147:164:184:37:50:66:83:102:119:146:1160:1176:6
        list R50, 'No<cr>Yes'
        jmpi_= R50, 00000001, 336
        sync 
        message 000000A5, 'Hmm... '
        mesend 
        sync 
        subi R115, 00000001
        jmpi_>= R115, 00000000, 183
        sync 
        jmp 38
364:    leti R55, 00000000
        leti R56, 00000010
        get_random R55, R57
        sync 
        switch_call R57, 16:103:122:147:164:184:37:50:66:83:102:119:146:1160:1176:6:121
        list R50, 'No<cr>Yes'
        jmpi_= R50, 00000001, 336
        sync 
        message 000000A5, 'Hmm... '
        mesend 
        sync 
        subi R115, 00000001
        jmpi_>= R115, 00000000, 364
        sync 
        jmp 38
1160:   message 000000A5, 'Will you trade for a<cr><color 4>magic rock "Heart Key"<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 0000000E
        leti R13, 00000007
        ret 
1176:   message 000000A5, 'Will you trade for a<cr><color 4>Blue-black stone<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 0000000E
        leti R13, 00000003
        ret 
6:      message 000000A5, 'Will you trade for a<cr><color 4>Photon Booster<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 0000000E
        leti R13, 00000027
        ret 
37:     message 000000A5, 'Will you trade for a<cr><color 4>NEI'S CLAW<color 0>?'
        mesend 
        leti R11, 00000000
        leti R12, 0000000D
        leti R13, 00000002
        ret 
50:     message 000000A5, 'Will you trade for a<cr><color 4>Parasitic Cell Type D<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 0000000E
        leti R13, 00000006
        ret 
66:     message 000000A5, 'Will you trade for a<cr><color 4>Berril Photon<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 0000000E
        leti R13, 00000000
        ret 
83:     message 000000A5, 'Will you trade for a<cr><color 4>Magic Water<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 0000000E
        leti R13, 00000005
        ret 
102:    message 000000A5, 'Will you trade for a<cr><color 4>RED BARRIER<color 0>?'
        mesend 
        leti R11, 00000001
        leti R12, 00000002
        leti R13, 0000004C
        ret 
119:    message 000000A5, 'Will you trade for a<cr><color 4>BLUE BARRIER<color 0>?'
        mesend 
        leti R11, 00000001
        leti R12, 00000002
        leti R13, 0000004D
        ret 
146:    message 000000A5, 'Will you trade for a<cr><color 4>YELLOW BARRIER<color 0>?'
        mesend 
        leti R11, 00000001
        leti R12, 00000002
        leti R13, 0000004E
        ret 
121:    let R100, R250
        leti R101, 00000003
        leti R102, 00000010
        leti R103, 00000001
        get_stackable_item_count R100, R11
        jmpi_= R11, 00000063, 1160
        message 000000A5, 'Will you trade for a<cr><color 4>Photon Sphere<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 00000010
        leti R13, 00000001
        ret 
103:    let R100, R250
        leti R101, 00000003
        leti R102, 00000000
        leti R103, 00000000
        get_stackable_item_count R100, R11
        jmpi_= R11, 0000000A, 147
        se 00000008
        message 000000A5, 'Will you trade for a<cr><color 4>Monomate<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 00000000
        leti R13, 00000000
        ret 
122:    let R100, R250
        leti R101, 00000003
        leti R102, 00000001
        leti R103, 00000000
        get_stackable_item_count R100, R11
        jmpi_= R11, 0000000A, 147
        se 00000008
        message 000000A5, 'Will you trade for a<cr><color 4>Monofluid<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 00000001
        leti R13, 00000000
        ret 
147:    message 000000A5, 'Will you trade for an<cr><color 4>AddSlot<color 0>?'
        mesend 
        leti R11, 00000003
        leti R12, 0000000F
        leti R13, 00000000
        ret 
164:    message 000000A5, 'Will you trade for a<cr><color 4>RECOVERY BARRIER<color 0>?'
        mesend 
        leti R11, 00000001
        leti R12, 00000002
        leti R13, 0000004A
        ret 
184:    message 000000A5, 'Will you trade for an<cr><color 4>ASSIST BARRIER<color 0>?'
        mesend 
        leti R11, 00000001
        leti R12, 00000002
        leti R13, 0000004B
        ret 
336:    sync 
        message 000000A5, 'Ah! Excellent! So you're<cr>sure you want to trade<cr>all the ones you have?'
        mesend 
        list R50, 'No<cr>Yes'
        switch_jmp R50, 2:433:376
        ret 
433:    message 000000A5, 'Hmm... '
        mesend 
        jmp 432
        ret 
376:    message 000000A5, 'That's great!'
        add_msg 'With your help, I'm<cr>one step closer to<cr>completing my task.'
        add_msg '....'
        mesend 
        sync 
        fleti R61, -1995.03002929688
        fleti R62, 15.3599996566772
        fleti R63, 1.25999999046326
        fleti R64, -2013.63098144531
        fleti R65, 19.6049995422363
        fleti R66, -5.61399984359741
        fleti_fixed_camera R61
        message 000000A5, 'You have done well.'
        mesend 
        stack_pushm R149, 0000000D
        leti R150, 00000003
        leti R151, 00000010
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        leti R158, 00000000
        leti R159, 00000000
        leti R160, 00000000
        leti R161, 00000000
        leti R162, 00000000
        clear R119
752:    leti R150, 00000003
        leti R151, 00000010
        item_delete2 R150, R149
        jmpi_!= R149, FFFFFFFF, 752
        fleti R61, -1951.25903320313
        fleti R62, 23.5499992370605
        fleti R63, -0.377999991178513
        fleti R64, -1970.93994140625
        fleti R65, 20
        fleti R66, -0.33500000834465
        fleti_fixed_camera R61
        sync 
        item_create2 R11, R24
        ori R190, 00000020
        stack_popm R149, 0000000D
        se 00000012
        sync 
        jmp 1162
716:    message 000000A5, 'I have no idea what some<cr>of the items in my<cr>collection are good for.'
        add_msg 'I'm sure you can figure<cr>out a good use for them<cr>as a <hero job>.'
        add_msg 'Good luck!'
        mesend 
        sync 
        message 000000A5, '... ... '
        add_msg 'This is something<cr>I heard the other day...'
        mesend 
        sync 
        leti R55, 00000000
        leti R56, 00000003
        get_random R55, R57
        switch_call R57, 3:1007:977:989
        sync 
        message 000000A5, '... '
        add_msg 'OK. Maybe I'm saying<cr>too much.'
        mesend 
        sync 
        andi R190, FFFFFFDF
        jmp 299
        ret 
964:    sync 
        message 000000A5, 'I heard the Governor<cr>General is developing<cr>a new weapon.'
        add_msg 'With my current research,'
        add_msg 'I'm sure I can modify it<cr>to make it a much more<cr>powerful weapon.'
        add_msg 'If you ever find yourself<cr>with this weapon in<cr>your hands,'
        add_msg 'come and see me.'
        mesend 
        ret 
977:    sync 
        message 000000A5, 'I still have a long ways<cr>to go to complete my<cr>collection. '
        add_msg 'Not that you would own<cr>anything that I'm looking<cr>for...'
        mesend 
        ret 
989:    sync 
        fleti R61, -1995.03002929688
        fleti R62, 15.3599996566772
        fleti R63, 1.25999999046326
        fleti R64, -2013.63098144531
        fleti R65, 19.6049995422363
        fleti R66, -5.61399984359741
        fleti_fixed_camera R61
        message 000000A5, 'I hear that Pioneer 3 has<cr>already departed...'
        add_msg '...'
        mesend 
        call 375
        fleti R61, -1951.25903320313
        fleti R62, 23.5499992370605
        fleti R63, -0.377999991178513
        fleti R64, -1970.93994140625
        fleti R65, 20
        fleti R66, -0.33500000834465
        fleti_fixed_camera R61
        message 000000A5, 'You must be joking.'
        mesend 
        ret 
38:     sync 
        message 000000A5, 'That's too bad.'
        mesend 
        sync 
        jmp 1162
        let R100, R190
        andi R100, 00000020
        jmpi_> R100, 00000000, 716
        jmp 299
299:    sync 
        message 000000A5, 'When it's completed, of<cr>course. Hopkins, guide<cr>him to the Lab.'
        mesend 
        message 000000A1, 'Yes, father.'
        mesend 
        fadeout 
        call 596
        hud_show 
        call 596
        default_camera_pos2 
        se 00000019
        leti R60, 00000082
        leti R61, FFFFFFE2
        leti R62, FFFFFF24
        leti R63, 0000010E
        p_setpos R250, R60
        se 0000002E
        fadein 
        message 000000A0, 'Thank you.<cr>You've been very helpful.'
        add_msg 'Please let me know if<cr>you get your hands on<cr>it again.'
        mesend 
        call 1153
        ret 
1161:   read_global_flag 00000001, R181
        andi R181, 00000004
        jmpi_> R181, 00000000, 1
        online_check R181
        jmpi_= R181, 00000004, 1
        thread_stg 1177
        jmpi_= R180, 00000001, 1
        leti R60, 00000038
        leti R61, 00000000
        leti R62, FFFFFF27
        leti R63, 00000005
        leti R64, 00000096
        at_coords_talk R60
        leti R180, 00000001
        ret 
1177:   read_global_flag 00000001, R181
        andi R181, 00000004
        jmpi_> R181, 00000000, 1
        sync 
        sync 
        sync 
        sync 
        sync 
        leti R60, 00000038
        leti R61, 00000005
        leti R62, FFFFFF27
        leti R63, 000001CA
        leti R64, 00000005
        particle_V3 R60
        jmp 1177
        ret 
150:    read_global_flag 00000001, R100
        andi R100, 00000004
        jmpi_> R100, 00000000, 1
        call 917
        window_msg 'There is something on the<cr>ground. Someone must have<cr>dropped it...'
        add_msg 'Would you like to pick<cr>it up?'
        winend 
        list R50, 'Yes<cr>No'
        jmpi_= R50, 00000001, 888
        window_msg 'You got <color 1>Puyo Pop<color 0>!'
        winend 
        bgm 00000000
        read_global_flag 00000001, R100
        ori R100, 00000004
        write_global_flag 00000001, R100
888:    call 931
        ret 
1007:   sync 
        message 000000A5, 'Code name, "ES Weapon."'
        add_msg 'This is a new weapon that<cr>was developed by the<cr>Principal.'
        add_msg 'There's been few of<cr>these floating around<cr>already.'
        add_msg 'I hear that this weapon<cr>is still undergoing<cr>further development...'
        mesend 
        ret 
626:    message 000000A5, 'I collect Photon Drops<cr>and Photon Spheres.'
        add_msg 'Looks like you got few<cr>of those yourself.'
        mesend 
        sync 
277:    message 000000A5, 'Would you trade them?'
        add_msg 'This could be a very<cr>profitable opportunity<cr>for you too...'
        mesend 
648:    let R100, R250
        leti R101, 00000003
        leti R102, 00000010
        leti R103, 00000000
        get_stackable_item_count R100, R141
        let R100, R250
        leti R101, 00000003
        leti R102, 00000010
        leti R103, 00000001
        get_stackable_item_count R100, R142
        va_start 
        arg_pushl 00000002
        arg_pushl 00000020
        va_call 487
        va_end 
        jmpi_= R0, 00000000, 627
        va_start 
        arg_pushl 00000002
        arg_pushl 00000040
        va_call 487
        va_end 
        jmpi_= R0, 00000000, 278
        list R50, 'Exchange for an item<cr>Modify ES Weapon<cr>Enhance weapon's Photon<cr>Exit'
        switch_jmp R50, 4:1097:732:165:105
        ret 
278:    list R50, 'Exchange for an item<cr>Modify ES Weapon<cr>Exit'
        switch_jmp R50, 3:1097:732:105
        ret 
627:    list R50, 'Exchange for an item<cr>Exit'
        switch_jmp R50, 2:1097:105
        ret 
1162:   sync 
        message 000000A5, 'Is there anything else<cr>you'd like to exchange?'
        mesend 
        jmp 648
        ret 
700:    message 000000A5, 'Oh well, that's too<cr>bad...'
        mesend 
        jmp 1162
        ret 
649:    message 000000A5, 'You're quitting? <cr>That's too bad...'
        mesend 
        jmp 1162
        ret 
185:    sync 
        message 000000A5, 'Thanks to your exchange,<cr>my project is one step<cr>closer to completion.'
        add_msg '...'
        mesend 
        sync 
        fleti R61, -1995.03002929688
        fleti R62, 15.3599996566772
        fleti R63, 1.25999999046326
        fleti R64, -2013.63098144531
        fleti R65, 19.6049995422363
        fleti R66, -5.61399984359741
        fleti_fixed_camera R61
        message 000000A5, 'You have done well.'
        mesend 
        fleti R61, -1951.25903320313
        fleti R62, 23.5499992370605
        fleti R63, -0.377999991178513
        fleti R64, -1970.93994140625
        fleti R65, 20
        fleti R66, -0.33500000834465
        fleti_fixed_camera R61
        sync 
        ori R190, 00000020
        se 00000012
        jmp 1162
        ret 
104:    message 000000A5, '... ... ...'
        add_msg 'It seems like you're<cr>short of Photon Drops.'
        mesend 
        jmp 1162
        ret 
489:    message 000000A5, '... ... ...'
        add_msg 'It seems like you don't<cr>have any Photon Spheres.'
        mesend 
        jmp 1162
        ret 
105:    message 000000A5, 'Oh, well... I look<cr>forward to seeing you<cr>again soon.'
        mesend 
        sync 
        let R100, R190
        andi R100, 00000020
        jmpi_> R100, 00000000, 716
        jmp 299
        ret 
1097:   message 000000A5, 'So, are you OK with<cr>exchanging <color 1>all Photon<cr>Drops<color 0> with...'
        add_msg 'One of my<cr><color 5>Collection items<color 0>?'
        mesend 
        list R50, 'Yes<cr>No'
        jmpi_= R50, 00000001, 700
        jmpi_= R141, 00000000, 629
        jmp 1096
        ret 
732:    message 000000A5, 'This "ES Weapon" that's<cr>being developed by the<cr>Principal...'
        add_msg 'I discovered a way to<cr>modify the ES weapon...'
        add_msg 'With a certain amount of<cr><color 1>Photon Drops<color 0> you can get<cr>different enhancements.'
        add_msg 'Your ES Weapon will be<cr>enhanced with <cr><color 5>Special Effect<color 0>. This OK?'
        mesend 
        list R50, 'Yes<cr>No'
        jmpi_= R50, 00000001, 700
1060:   message 000000A5, 'OK!'
        add_msg 'Now please select which<cr>ES Weapon you would like<cr>to modify.'
        mesend 
753:    open_pack_select 
        get_item_id R100
        jmpi_= R100, FFFFFFFF, 649
        get_item_info R100, R110
        jmpi_!= R110, 00000000, 51
        jmpi_< R111, 00000070, 51
        jmpi_> R111, 000000A9, 51
        jmpi_> R114, 000000BF, 51
        jmpi_> R114, 0000007F, 51
        jmpi_> R114, 0000003F, 51
        jmpi_< R111, 00000089, 978
        jmpi_> R111, 000000A4, 978
        jmp 51
        ret 
51:     message 000000A5, 'Hmm. I don't think that's<cr>an ES Weapon...'
        add_msg 'I can't modify it unless<cr>it's an ES Weapon.'
        add_msg 'Please select another<cr>weapon.'
        mesend 
        jmp 753
        ret 
650:    message 000000A5, 'Hmm. This weapon seems<cr>like it already has an <cr>enhanced Special Effect.'
        add_msg 'I'll need to remove the<cr>old one to make room.<cr>Is that OK?'
        mesend 
        list R50, 'No<cr>Yes'
        jmpi_= R50, 00000000, 700
        message 000000A5, 'Now, which Enhancement<cr>Ranking would you like?'
        mesend 
        jmp 23
        ret 
978:    jmpi_> R112, 00000000, 650
        message 000000A5, 'Hmm. Yes, this is<cr>certainly a very <cr>nice weapon...'
        add_msg 'So which Enhancement<cr>Ranking would like to<cr>chose?'
        mesend 
23:     jmpi_= R111, 00000083, 107
        jmpi_= R111, 00000085, 1080
        list R50, 'A Rank  (PD X 50)<cr>B Rank  (PD X 40)<cr>C Rank  (PD X 30)<cr>Exit'
        switch_jmp R50, 4:1034:123:434:700
        ret 
1034:   jmpi_< R141, 00000032, 104
        message 000000A5, 'Here's a list of Special<cr>Effects you can enhance<cr>with A Rank. Choose...'
        mesend 
        jmpi_= R111, 00000085, 251
        list R50, 'Arrest<cr>Hell<cr>Demon's<cr>Jellen<cr>Zalure<cr>Go back'
        jmpi_= R50, 00000005, 23
        message 000000A5, 'You need <color 1>50 Photon Drops<color 0>.<cr>Is this OK?'
        mesend 
        list R129, 'No<cr>Yes'
        jmpi_= R129, 00000000, 700
        va_start 
        arg_pushl 00000032
        va_call 965
        va_end 
        switch_jmp R50, 6:7:937:674:733:795:700
        ret 
123:    jmpi_< R141, 00000028, 104
        message 000000A5, 'Here's a list of Special<cr>Effects you can enhance<cr>with B Rank. Choose...'
        mesend 
        list R50, 'Berserk<cr>Spirit<cr>King's<cr>Chaos<cr>Gush<cr>Geist<cr>Go Back'
        jmpi_= R50, 00000006, 23
        message 000000A5, 'You need <color 1>40 Photon Drops<color 0>.<cr>Is this OK?'
        mesend 
        list R129, 'No<cr>Yes'
        jmpi_= R129, 00000000, 700
        va_start 
        arg_pushl 00000028
        va_call 965
        va_end 
        switch_jmp R50, 6:322:8:337:67:949:24
        ret 
434:    jmpi_< R141, 0000001E, 104
        message 000000A5, 'Here's a list of Special<cr>Effects you can enhance<cr>with C Rank. Choose...'
        mesend 
        jmpi_= R111, 00000083, 25
        jmpi_= R111, 00000085, 905
        jmpi_= R111, 000000A8, 980
        list R50, 'Burning<cr>Tempest<cr>Blizzard<cr>HP-Revival<cr>TP-Revival<cr>Go back'
        jmpi_= R50, 00000005, 23
        message 000000A5, 'You need <color 1>30 Photon Drops<color 0>.<cr>Is this OK?'
        mesend 
        list R129, 'No<cr>Yes'
        jmpi_= R129, 00000000, 700
        va_start 
        arg_pushl 0000001E
        va_call 965
        va_end 
        switch_jmp R50, 5:990:1046:1115:867:936
        ret 
733:    leti R0, 00000001
        jmp 1116
        ret 
795:    leti R0, 00000002
        jmp 1116
        ret 
867:    leti R0, 00000003
        jmp 1116
        ret 
936:    leti R0, 00000004
        jmp 1116
        ret 
990:    leti R0, 00000005
        jmp 1116
        ret 
1046:   leti R0, 00000006
        jmp 1116
        ret 
1115:   leti R0, 00000007
        jmp 1116
        ret 
7:      leti R0, 00000008
        jmp 1116
        ret 
67:     leti R0, 00000009
        jmp 1116
        ret 
937:    leti R0, 0000000A
        jmp 1116
        ret 
8:      leti R0, 0000000B
        jmp 1116
        ret 
322:    leti R0, 0000000C
        jmp 1116
        ret 
674:    leti R0, 0000000D
        jmp 1116
        ret 
949:    leti R0, 0000000E
        jmp 1116
        ret 
24:     leti R0, 0000000F
        jmp 1116
        ret 
337:    leti R0, 00000010
        jmp 1116
        ret 
1116:   item_delete21CF R100
        let R112, R0
        clear R114
        clear R115
        item_create2 R110, R120
        call 392
        message 000000A5, 'OK, I've made the<cr>enhancement.'
        add_msg 'Now I must receive an<cr>item from you as I<cr>said earlier. '
        mesend 
        jmp 185
        ret 
392:    leti R60, FFFFF830
        leti R61, 0000000A
        leti R62, 00000000
        leti R63, 0000000E
        leti R64, 0000003C
        particle_V3 R60
        call 375
        se 00000011
        call 375
        ret 
1008:   leti R60, FFFFF830
        leti R61, 0000000A
        leti R62, 00000000
        leti R63, 0000000D
        leti R64, 0000003C
        particle_V3 R60
        call 375
        se 00000011
        call 375
        ret 
165:    message 000000A5, 'I've discovered ways to<cr>modify items as a result<cr>of my research.'
        add_msg 'I've discovered a way to<cr>enhance a weapon's<cr>Photon attribute...'
        add_msg 'With <color 1>20 Photon Drops<color 0>,<cr>I'll increase a weapon's<cr>Photon attribute by <color 5>+5%<color 0>.'
        add_msg 'Or <color 1>1 Photon Sphere<color 0>, and<cr>I'll increase a weapon's<cr>Photon attribute by <color 5>+30%<color 0>.'
        add_msg 'What would you like<cr>to do?'
        mesend 
        list R50, 'P. Drop Upgrade (+5%)<cr>P. Sphere Upgrade (+30%)<cr>Exit'
        switch_jmp R50, 3:186:52:700
        ret 
186:    jmpi_< R141, 00000014, 104
        leti R135, 00000005
        jmp 435
        ret 
52:     jmpi_= R142, 00000000, 489
        leti R135, 0000001E
        jmp 435
        ret 
435:    message 000000A5, 'All right!'
        add_msg 'Now select the weapon<cr>you'd like me to<cr>enhance.'
        mesend 
53:     open_pack_select 
        get_item_id R100
        jmpi_= R100, FFFFFFFF, 649
        get_item_info R100, R110
        jmpi_!= R110, 00000000, 1024
        jmpi_> R114, 000000BF, 1024
        jmpi_> R114, 0000007F, 1138
        jmpi_> R114, 0000003F, 1024
        jmpi_< R111, 00000070, 300
        jmpi_> R111, 000000A9, 300
        jmpi_< R111, 00000089, 1138
        jmpi_> R111, 000000A4, 1138
300:    jmpi_= R116, 00000005, 1010
        jmpi_= R118, 00000005, 84
        jmpi_= R119, 00000005, 393
628:    let R130, R117
        add R130, R119
        add R130, R121
        jmpi_>= R130, 0000012C, 1163
        clear R131
        clear R132
        clear R133
        clear R134
        va_start 
        arg_pushr R116
        arg_pushr R117
        va_call 1023
        va_end 
        let R117, R0
        va_start 
        arg_pushr R118
        arg_pushr R119
        va_call 1023
        va_end 
        let R119, R0
        va_start 
        arg_pushr R120
        arg_pushr R121
        va_call 1023
        va_end 
        let R121, R0
        va_start 
        arg_pushr R116
        arg_pushr R117
        va_call 717
        va_end 
        va_start 
        arg_pushr R118
        arg_pushr R119
        va_call 717
        va_end 
        va_start 
        arg_pushr R120
        arg_pushr R121
        va_call 717
        va_end 
        message 000000A5, 'Which attribute would you<cr>like to enhance?'
        mesend 
436:    list R130, 'Native<cr>A.Beast<cr>Machine<cr>Dark<cr>Go back'
        switch_call R130, 5:279:734:229:1178:700
        ret 
279:    jmpi_= R116, 00000001, 735
        jmpi_= R118, 00000001, 991
        jmpi_= R120, 00000001, 68
        jmp 301
        ret 
734:    jmpi_= R116, 00000002, 735
        jmpi_= R118, 00000002, 991
        jmpi_= R120, 00000002, 68
        jmp 301
        ret 
229:    jmpi_= R116, 00000003, 735
        jmpi_= R118, 00000003, 991
        jmpi_= R120, 00000003, 68
        jmp 301
        ret 
1178:   jmpi_= R116, 00000004, 735
        jmpi_= R118, 00000004, 991
        jmpi_= R120, 00000004, 68
        jmp 301
        ret 
301:    jmpi_= R116, 00000000, 735
        jmpi_= R118, 00000000, 991
        jmpi_= R120, 00000000, 68
        jmp 1011
        ret 
735:    let R136, R117
        add R136, R135
        jmpi_>= R136, 00000069, 351
        call 280
        jmpi_= R0, 00000000, 700
        let R116, R130
        addi R116, 00000001
        let R117, R136
        jmp 1136
        ret 
991:    let R136, R119
        add R136, R135
        jmpi_>= R136, 00000069, 351
        call 280
        jmpi_= R0, 00000000, 700
        let R118, R130
        addi R118, 00000001
        let R119, R136
        jmp 1136
        ret 
68:     let R136, R121
        add R136, R135
        jmpi_>= R136, 00000069, 351
        call 280
        jmpi_= R0, 00000000, 700
        let R120, R130
        addi R120, 00000001
        let R121, R136
        jmp 1136
        ret 
1136:   jmpi_= R135, 00000005, 1009
        jmpi_= R135, 0000001E, 231
868:    sync 
        item_delete21CF R100
        item_create2 R110, R120
        call 1008
        message 000000A5, 'OK, the enhancement is<cr>completed.'
        add_msg 'Now I must receive an<cr>item from you, just as<cr>we agreed to.'
        mesend 
        jmp 185
        ret 
1009:   va_start 
        arg_pushl 00000014
        va_call 965
        va_end 
        jmp 868
231:    va_start 
        arg_pushl 00000001
        va_call 848
        va_end 
        jmp 868
280:    va_start 
        arg_pushr R136
        va_call 796
        va_end 
        let R136, R0
        switch_call R130, 4:1022:979:462:599
        message 000000A5, 'Is this OK?'
        mesend 
        list R50, 'Yes<cr>No'
        switch_call R50, 2:106:413
        ret 
413:    leti R0, 00000000
        ret 
106:    leti R0, 00000001
        ret 
1022:   chat_box 000000A0, 00000078, 00000010, 00000003, 00000001, ' <cr> Native  :  <r131>%  to  <color 6><r136>%<color 0><cr>'
        winend 
        mesend 
        ret 
979:    chat_box 000000A0, 00000078, 00000010, 00000003, 00000001, '<cr>  A.Beast :  <r132>%  to  <color 6><r136>%<color 0><cr>'
        winend 
        ret 
462:    chat_box 000000A0, 00000078, 00000010, 00000003, 00000001, '<cr>  Machine :  <r133>%  to  <color 6><r136>%<color 0><cr>'
        winend 
        ret 
599:    chat_box 000000A0, 00000078, 00000010, 00000003, 00000001, '<cr>  Dark    :  <r134>%  to  <color 6><r136>%<color 0><cr>'
        winend 
        ret 
796:    jmpi_> R1, 00000064, 1137
        let R0, R1
        ret 
1137:   leti R0, 00000064
        ret 
1023:   let R0, R2
        jmpi_!= R1, 00000000, 1
        leti R0, 00000000
        ret 
717:    switch_call R1, 5:1:777:736:166:281
        ret 
777:    let R131, R2
        ret 
736:    let R132, R2
        ret 
166:    let R133, R2
        ret 
281:    let R134, R2
        ret 
1024:   message 000000A5, '... ... ...'
        add_msg 'That is not a weapon.'
        add_msg 'Please select a weapon.'
        mesend 
        jmp 53
        ret 
1010:   let R130, R119
        add R130, R121
        jmpi_>= R130, 000000C8, 1163
        jmp 628
        ret 
84:     let R130, R117
        add R130, R121
        jmpi_>= R130, 000000C8, 1163
        jmp 628
        ret 
393:    let R130, R117
        add R130, R119
        jmpi_>= R130, 000000C8, 1163
        jmp 628
        ret 
1163:   message 000000A5, 'I'm sorry, but I can't<cr>enhance this weapon's<cr>Photon attribute.'
        add_msg 'Would you like to select<cr>another weapon?'
        mesend 
        jmp 53
        ret 
1011:   message 000000A5, 'I'm sorry, but I can't<cr>increase this Photon<cr>attribute any higher.'
        add_msg 'Would you like to select<cr>another attribute?'
        mesend 
        jmp 436
        ret 
1138:   message 000000A5, 'Hmm. I'm sorry, but I am<cr>unable to increase the<cr>Photon attribute.'
        add_msg 'Would you like to<cr>select another weapon?'
        mesend 
        jmp 53
        ret 
351:    message 000000A5, 'Hmm. I'm sorry but that<cr>Photon attribute is <cr>already at its maximum.'
        add_msg 'Can you select another<cr>attribute to modify?'
        mesend 
        jmp 436
        ret 
629:    message 000000A5, '... ... ...'
        add_msg 'It seems like you don't<cr>have any Photon Drops.'
        mesend 
        jmp 1162
        ret 
965:    stack_pushm R149, 0000000F
        leti R163, 00000000
778:    leti R150, 00000003
        leti R151, 00000010
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        leti R158, 00000000
        leti R159, 00000000
        leti R160, 00000000
        leti R161, 00000000
        leti R162, 00000000
        item_delete2 R150, R149
        addi R163, 00000001
        jmp_< R163, R1, 778
        stack_popm R149, 0000000F
        ret 
848:    stack_pushm R149, 0000000F
        leti R163, 00000000
572:    leti R150, 00000003
        leti R151, 00000010
        leti R152, 00000001
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        leti R158, 00000000
        leti R159, 00000000
        leti R160, 00000000
        leti R161, 00000000
        leti R162, 00000000
        item_delete2 R150, R149
        addi R163, 00000001
        jmp_< R163, R1, 572
        stack_popm R149, 0000000F
        ret 
107:    list R50, 'C Rank  (PD X 30)<cr>Exit'
        switch_jmp R50, 2:434:700
        ret 
1080:   list R50, 'A Rank  (PD X 50)<cr>C Rank  (PD X 30)<cr>Exit'
        switch_jmp R50, 3:1034:434:700
        ret 
251:    list R50, 'Jellen<cr>Zalure<cr>Go back'
        jmpi_= R50, 00000002, 1080
        message 000000A5, 'You need <color 1>50 Photon Drops<color 0>.<cr>Is this OK?'
        mesend 
        list R129, 'No<cr>Yes'
        jmpi_= R129, 00000000, 700
        va_start 
        arg_pushl 00000032
        va_call 965
        va_end 
        switch_jmp R50, 3:733:795:700
        ret 
25:     list R50, 'HP-Revival<cr>TP-Revival<cr>Go back'
        jmpi_= R50, 00000002, 107
        message 000000A5, 'You need <color 1>30 Photon Drops<color 0>.<cr>Is this OK?'
        mesend 
        list R129, 'No<cr>Yes'
        jmpi_= R129, 00000000, 700
        va_start 
        arg_pushl 0000001E
        va_call 965
        va_end 
        switch_jmp R50, 2:867:936
        ret 
905:    list R50, 'HP-Revival<cr>TP-Revival<cr>Go back'
        jmpi_= R50, 00000002, 1080
        message 000000A5, 'You need <color 1>30 Photon Drops<color 0>.<cr>Is this OK?'
        mesend 
        list R129, 'No<cr>Yes'
        jmpi_= R129, 00000000, 700
        va_start 
        arg_pushl 0000001E
        va_call 965
        va_end 
        switch_jmp R50, 2:867:936
        ret 
980:    list R50, 'Burning<cr>Tempest<cr>Blizzard<cr>Go back'
        jmpi_= R50, 00000003, 23
        message 000000A5, 'You need <color 1>30 Photon Drops<color 0>.<cr>Is this OK?'
        mesend 
        list R129, 'No<cr>Yes'
        jmpi_= R129, 00000000, 700
        va_start 
        arg_pushl 0000001E
        va_call 965
        va_end 
        switch_jmp R50, 3:990:1046:1115
        ret 
737:    call 439
        jmpi_= R183, 00000000, 9
        get_chara_class R250, R144
        jmpi_= R145, 00000003, 9
        call 283
        jmp 541
9:      window_msg '<br><cr>Lucky Roulette'
        add_msg 'You'll need a Lucky Coin<cr>to play roulette.'
        winend 
        call 1153
        cam_zmout 
        ret 
541:    window_msg 'You can play a Roulette<cr>game here. Do you want<cr>to play?'
        add_msg '1 play requires 1 Lucky<cr>Coin. (You have currently<cr>: <r183> coin(s))'
        winend 
        list R69, 'Play<cr>Don't play'
        jmpi_= R69, 00000001, 437
        cam_zmout 
        call 738
833:    list R50, 'Start Roulette<cr>Check prizes'
        switch_jmp R50, 2:938:701
938:    call 812
        va_start 
        arg_pushl 00000001
        arg_pushl 00000064
        va_call 992
        va_end 
        sync 
        call 739
        call 799
        sync 
        call 1035
        jmp 132
        ret 
437:    call 1153
        cam_zmout 
        ret 
701:    window_msg 'Information on prizes:'
        add_msg 'The prize you get is<cr>determined by the figure<cr>the Roulette stops at.'
        add_msg 'Prize for each figure<cr>is as follows:'
        add_msg 'Boy<cr>1 item either <cr>"Star/ Sol Atomizer" '
        add_msg 'Natasha Milarose<cr>1 item either<cr>"HP/ TP Material" '
        add_msg 'Nurse<cr>1 "Scape Doll"'
        add_msg 'Nol Rinale<cr>Lab Researcher<cr>1 "SPECIAL WEAPON" '
        add_msg 'Paganini<cr>???'
        add_msg 'Gallon<cr>???'
        winend 
        jmp 833
        ret 
738:    p_action_disable 
        disable_movement2 R250
        hud_hide 
        fadeout 
        fleti R60, -10203.1201171875
        fleti R61, 96.9599990844727
        fleti R62, 54.4000015258789
        fleti R63, -10224.23046875
        fleti R64, 80.9100036621094
        fleti R65, 2.23000001907349
        fleti_fixed_camera R60
        fadein 
        ret 
754:    fadeout 
        default_camera_pos2 
        fadein 
        hud_show 
        call 1153
        ret 
812:    clear R146
        clear R147
        clear R148
        clear R150
        clear R151
        clear R152
        clear R153
        clear R154
        clear R155
        clear R156
        clear R157
        ret 
992:    leti R55, 00000000
        leti R56, 0000FFFF
        get_random R55, R57
        sync 
        jmpi_= R57, 00000000, 992
        jmpi_= R57, 0000FFFE, 992
        let R143, R57
        gettime R46
        mul R143, R46
        muli R143, 00000049
        jmpi_>= R143, 00000000, 834
        muli R143, FFFFFFFF
834:    mod R143, R2
        add R143, R1
        ret 
739:    jmpi_<= R143, 00000005, 1013
        jmpi_<= R143, 0000001B, 85
        jmpi_<= R143, 00000031, 394
        jmpi_<= R143, 0000003F, 767
        jmpi_<= R143, 0000004D, 1025
        jmpi_<= R143, 00000059, 108
        jmpi_<= R143, 00000061, 414
        jmpi_<= R143, 00000064, 779
        ret 
1012:   jmpi_<= R143, 00000006, 797
        jmpi_<= R143, 0000001A, 1047
        jmpi_<= R143, 00000042, 148
        jmpi_<= R143, 00000051, 463
        jmpi_<= R143, 0000005B, 814
        jmpi_<= R143, 00000060, 1061
        jmpi_<= R143, 00000063, 167
        jmpi_<= R143, 00000064, 490
        ret 
54:     jmpi_<= R143, 00000010, 168
        jmpi_<= R143, 0000001A, 187
        jmpi_<= R143, 00000022, 202
        jmpi_<= R143, 00000031, 252
        jmpi_<= R143, 0000003B, 282
        jmpi_<= R143, 00000043, 302
        jmpi_<= R143, 00000052, 338
        jmpi_<= R143, 0000005C, 352
        jmpi_<= R143, 00000064, 365
        ret 
1013:   leti R177, 00000000
        ret 
85:     leti R177, 00000001
        ret 
394:    leti R177, 00000002
        ret 
767:    leti R177, 00000003
        ret 
1025:   leti R177, 00000004
        ret 
108:    leti R177, 00000005
        ret 
414:    jmpi_= R159, 00000001, 813
        leti R177, 00000006
        ret 
813:    sync 
        va_start 
        arg_pushl 00000001
        arg_pushl 00000064
        va_call 992
        va_end 
        jmpi_<= R143, 00000002, 124
        leti R177, 00000007
        ret 
124:    leti R177, 00000006
        ret 
779:    sync 
        va_start 
        arg_pushl 00000001
        arg_pushl 00000064
        va_call 992
        va_end 
        call 1012
        sync 
        va_start 
        arg_pushl 00000001
        arg_pushl 00000064
        va_call 992
        va_end 
        call 54
        ret 
797:    leti R182, 0000000A
        ret 
1047:   leti R182, 00000014
        ret 
148:    leti R182, 0000001E
        ret 
463:    leti R182, 00000028
        ret 
814:    leti R182, 00000032
        ret 
1061:   leti R182, 0000003C
        ret 
167:    leti R182, 00000046
        ret 
490:    leti R182, 00000050
        ret 
168:    switch_jmp R145, 3:203:377:1179
        ret 
187:    leti R148, 00000006
        switch_jmp R145, 3:303:464:55
        ret 
202:    leti R148, 00000007
        switch_jmp R145, 3:366:573:131
        ret 
252:    leti R148, 00000005
        switch_jmp R145, 3:438:675:149
        ret 
282:    leti R148, 00000006
        switch_jmp R145, 3:542:1139:232
        ret 
302:    leti R148, 00000007
        switch_jmp R145, 3:651:26:323
        ret 
338:    leti R148, 00000005
        switch_jmp R145, 3:1117:339:86
        ret 
352:    leti R148, 00000006
        switch_jmp R145, 3:11:395:169
        ret 
365:    leti R148, 00000007
        switch_jmp R145, 3:69:491:253
        ret 
1179:   leti R177, 00000008
        ret 
55:     leti R177, 00000009
        ret 
131:    leti R177, 0000000A
        ret 
203:    leti R177, 0000000B
        ret 
303:    leti R177, 0000000C
        ret 
366:    leti R177, 0000000D
        ret 
438:    leti R177, 0000000E
        ret 
542:    leti R177, 0000000F
        ret 
651:    leti R177, 00000010
        ret 
1117:   leti R177, 00000011
        ret 
11:     leti R177, 00000012
        ret 
69:     leti R177, 00000013
        ret 
149:    leti R177, 00000014
        ret 
232:    leti R177, 00000015
        ret 
323:    leti R177, 00000016
        ret 
377:    leti R177, 00000017
        ret 
464:    leti R177, 00000018
        ret 
573:    leti R177, 00000019
        ret 
675:    leti R177, 0000001A
        ret 
1139:   leti R177, 0000001B
        ret 
26:     leti R177, 0000001C
        ret 
86:     leti R177, 0000001D
        ret 
169:    leti R177, 0000001E
        ret 
253:    leti R177, 0000001F
        ret 
339:    leti R177, 00000020
        ret 
395:    leti R177, 00000021
        ret 
491:    leti R177, 00000022
        ret 
87:     leti R146, 00000003
        leti R147, 00000000
        leti R148, 00000000
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>Monomate<color 0>...'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
652:    leti R146, 00000003
        leti R147, 00000003
        leti R148, 00000000
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        window_msg 'You've won <color 1>Sol Atomizer<color 0>.'
        winend 
        sync 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
981:    leti R146, 00000003
        leti R147, 00000005
        leti R148, 00000000
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>Star Atomizer<color 0>.'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
415:    leti R146, 00000003
        leti R147, 0000000B
        leti R148, 00000003
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>HP Material<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
718:    leti R146, 00000003
        leti R147, 0000000B
        leti R148, 00000004
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>TP Material<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
39:     leti R146, 00000003
        leti R147, 00000009
        leti R148, 00000000
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>Scape Doll<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
40:     call 416
        sync 
        leti R146, 00000001
        leti R147, 00000002
        leti R148, 00000050
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        let R156, R173
        let R157, R174
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>BLACK GEAR<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        set R159
        call 719
        sync 
        ret 
416:    get_guildcard_num R250, R175
        let R60, R175
        modi R60, 00007FFF
        leti R100, 00000008
        shift_right R60, R100
        addi R60, 00000080
        let R173, R60
        let R60, R175
        modi R60, 00007FFF
        andi R60, 000000FF
        let R174, R60
        ret 
1062:   leti R146, 00000003
        leti R147, 00000010
        leti R148, 00000000
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000000
        leti R153, 00000000
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>Photon Drop<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
950:    leti R146, 00000000
        leti R147, 00000001
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>DB'S SABER<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
378:    leti R146, 00000000
        leti R147, 00000001
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>KALADBOLG<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
780:    leti R146, 00000000
        leti R147, 00000001
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>DURANDAL<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
204:    leti R146, 00000000
        leti R147, 00000002
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>FLOWEN'S SWORD<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
993:    leti R146, 00000000
        leti R147, 00000002
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>LAST SURVIVOR<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
1081:   leti R146, 00000000
        leti R147, 00000002
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>DRAGON SLAYER<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
1082:   leti R146, 00000000
        leti R147, 00000003
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>BLADE DANCE<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
906:    leti R146, 00000000
        leti R147, 00000003
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>BLOODY ART<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
465:    leti R146, 00000000
        leti R147, 00000003
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>CROSS SCAR<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
543:    leti R146, 00000000
        leti R147, 00000004
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>BRIONAC<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
27:     leti R146, 00000000
        leti R147, 00000004
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>VJAYA<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
966:    leti R146, 00000000
        leti R147, 00000004
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>GAE BOLG<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
353:    leti R146, 00000000
        leti R147, 00000005
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>SLICER OF ASSASSIN<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
869:    leti R146, 00000000
        leti R147, 00000005
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>DISKA OF LIBERATOR<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
354:    leti R146, 00000000
        leti R147, 00000005
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>DISKA OF BRAVEMAN<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
815:    leti R146, 00000000
        leti R147, 00000006
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>VARISTA<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
151:    leti R146, 00000000
        leti R147, 00000006
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>CUSTOM RAY ver.OO<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
1118:   leti R146, 00000000
        leti R147, 00000006
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>BRAVACE<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
340:    leti R146, 00000000
        leti R147, 00000007
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>VISK-235W<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
152:    leti R146, 00000000
        leti R147, 00000007
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>WALS-MK2<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
492:    leti R146, 00000000
        leti R147, 00000007
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>JUSTY-23ST<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
205:    leti R146, 00000000
        leti R147, 00000008
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>M&A60 VISE<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
1098:   leti R146, 00000000
        leti R147, 00000008
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>H&S25 JUSTICE<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
56:     leti R146, 00000000
        leti R147, 00000008
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>L&K14 COMBAT<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
417:    leti R146, 00000000
        leti R147, 00000009
        leti R148, 00000005
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>CRUSH BULLET<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
676:    leti R146, 00000000
        leti R147, 00000009
        leti R148, 00000006
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>METEOR SMASH<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
396:    leti R146, 00000000
        leti R147, 00000009
        leti R148, 00000007
        leti R149, 00000000
        leti R150, 00000000
        leti R151, 00000000
        leti R152, 00000005
        let R153, R182
        leti R154, 00000000
        leti R155, 00000000
        leti R156, 00000000
        leti R157, 00000000
        item_create2 R146, R158
        sync 
        window_msg 'You've won <color 1>FINAL IMPACT<color 0>!'
        winend 
        jmpi_= R158, FFFFFFFF, 1083
        ret 
1083:   window_msg 'It seems that your<cr>inventory is full.'
        add_msg 'Will you give up the<cr>obtained item?'
        add_msg 'We can hand the item<cr>you have won over to<cr>you...'
        add_msg 'If you sell off an<cr>unnecessary item to our<cr>shop for 5 Meseta.'
        winend 
88:     window_msg 'What would you like to<cr>do?'
        winend 
        list R50, 'Give it up<cr>Sell off an item<cr>'
        jmpi_= R50, 00000001, 1140
171:    window_msg 'Your declined the prize.'
        winend 
        ret 
1140:   clear R158
        open_pack_select 
        get_item_id R176
        jmpi_= R176, FFFFFFFF, 88
        stack_pushm R146, 0000000D
        get_item_info R176, R146
        let R70, R146
        let R71, R147
        stack_popm R146, 0000000D
        jmpi_!= R70, 00000002, 544
        jmpi_<= R71, 00000041, 1140
544:    clear R70
        clear R71
        window_msg 'Are you fine with this?'
        winend 
        list R50, 'No<cr>Yes<cr>'
        jmpi_= R50, 00000000, 1140
        item_delete21CF R176
        sync 
        pl_add_meseta R250, 00000005
        sync 
        call 57
        ret 
57:     let R60, R177
        jmpi_<= R60, 00000007, 341
        jmpi_<= R60, 0000000F, 397
        jmpi_<= R60, 00000017, 493
        jmpi_<= R60, 0000001F, 600
        jmp 702
341:    switch_call R60, 8:87:652:981:415:718:39:40:1062
        sync 
        ret 
397:    subi R60, 00000008
        switch_call R60, 8:950:378:780:204:993:1081:1082:906
        sync 
        ret 
493:    subi R60, 00000010
        switch_call R60, 8:465:543:27:966:353:869:354:815
        sync 
        ret 
600:    subi R60, 00000018
        switch_call R60, 8:151:1118:340:152:492:205:1098:56
        sync 
        ret 
702:    subi R60, 00000020
        switch_call R60, 3:417:676:396
        sync 
        ret 
1035:   clear R65
1036:   va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 3F800000
        va_call 798
        va_end 
        addi R65, 00000001
        jmpi_<= R65, 00000005, 1036
        jmpi_>= R177, 00000008, 41
        switch_jmp R177, 8:515:379:703:398:704:466:109:994
        ret 
515:    call 835
        sync 
        call 57
        ret 
379:    va_start 
        arg_pushl 00000000
        arg_pushl 00000005
        va_call 992
        va_end 
        sync 
        switch_call R143, 5:870:907:939:817:850
        sync 
        call 57
        ret 
703:    va_start 
        arg_pushl 00000000
        arg_pushl 00000005
        va_call 992
        va_end 
        sync 
        switch_call R143, 5:870:907:939:817:850
        sync 
        call 57
        ret 
398:    va_start 
        arg_pushl 00000000
        arg_pushl 00000002
        va_call 992
        va_end 
        sync 
        switch_call R143, 2:889:836
        sync 
        call 57
        ret 
704:    va_start 
        arg_pushl 00000000
        arg_pushl 00000002
        va_call 992
        va_end 
        sync 
        switch_call R143, 2:889:836
        call 57
        ret 
466:    va_start 
        arg_pushl 00000000
        arg_pushl 00000002
        va_call 992
        va_end 
        sync 
        switch_call R143, 2:849:951
        call 57
        ret 
109:    call 816
        call 57
        ret 
994:    call 816
        call 57
        ret 
41:     call 921
        call 57
        ret 
816:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        va_call 851
        va_end 
        sync 
        call 1099
        ret 
835:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        va_call 851
        va_end 
        sync 
        call 1119
        ret 
849:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        va_call 851
        va_end 
        sync 
        call 1141
        ret 
870:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        va_call 851
        va_end 
        sync 
        call 1164
        ret 
889:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        va_call 851
        va_end 
        sync 
        call 1180
        ret 
907:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        va_call 851
        va_end 
        sync 
        call 12
        ret 
921:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        va_call 851
        va_end 
        sync 
        call 28
        ret 
939:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        va_call 851
        va_end 
        sync 
        call 42
        ret 
951:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        va_call 851
        va_end 
        sync 
        call 58
        ret 
817:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        va_call 851
        va_end 
        sync 
        call 188
        ret 
836:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        va_call 851
        va_end 
        sync 
        call 206
        ret 
850:    va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 3F800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40400000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620305C
        arg_pushl C1F1AE14
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FFE29
        arg_pushl C216999A
        arg_pushl 40800000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB70A
        arg_pushl C212B852
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F8914
        arg_pushl C1F2147B
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F65E1
        arg_pushl C194CCCD
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F5E8F
        arg_pushl BF6B851F
        arg_pushl 40A00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61F80CD
        arg_pushl 411E147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FB0F6
        arg_pushl 419A147B
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C61FF2D7
        arg_pushl 41A6B852
        arg_pushl 40C00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C620293D
        arg_pushl 4148F5C3
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204F9A
        arg_pushl 3F8E147B
        arg_pushl 40E00000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        arg_pushl 41000000
        va_call 798
        va_end 
        va_start 
        arg_pushl C6204FE1
        arg_pushl C160CCCD
        va_call 851
        va_end 
        sync 
        call 233
        ret 
798:    sync 
        se 00000000
        flet R60, R1
        fleti R61, 70
        flet R62, R2
        leti R63, 00000001
        flet R64, R3
        particle2 R60, R63, R64
        float2dec R179, R64
        clear R178
367:    sync 
        addi R178, 00000001
        jmp_!= R178, R179, 367
        ret 
851:    sync 
        se 00000008
        flet R60, R1
        fleti R61, 60
        flet R62, R2
        fleti R64, 10
        leti R63, 00000131
        particle2 R60, R63, R64
        call 316
        call 316
        leti R63, 000000A0
        particle2 R60, R63, R64
        call 316
        call 316
        ret 
1099:   fleti R60, -10250.1201171875
        fleti R61, 72.620002746582
        fleti R62, -23.9099998474121
        fleti R63, -10255.7802734375
        fleti R64, 79.3099975585938
        fleti R65, -41.8899993896484
        fleti_fixed_camera R60
        ret 
1119:   fleti R60, -10236.3896484375
        fleti R61, 81.7200012207031
        fleti R62, -26.5499992370605
        fleti R63, -10241.349609375
        fleti R64, 72.9100036621094
        fleti R65, -43.810001373291
        fleti_fixed_camera R60
        ret 
1141:   fleti R60, -10217.8603515625
        fleti R61, 75.3000030517578
        fleti R62, -28.6200008392334
        fleti R63, -10229.990234375
        fleti R64, 75.4499969482422
        fleti R65, -56.0499992370605
        fleti_fixed_camera R60
        ret 
1164:   fleti R60, -10210.7001953125
        fleti R61, 70
        fleti R62, -17.1700000762939
        fleti R63, -10209.2001953125
        fleti R64, 69.8899993896484
        fleti R65, -37.1199989318848
        fleti_fixed_camera R60
        ret 
1180:   fleti R60, -10196.7900390625
        fleti R61, 77.879997253418
        fleti R62, -8.68000030517578
        fleti R63, -10207.1201171875
        fleti R64, 73.4800033569336
        fleti R65, -25.2299995422363
        fleti_fixed_camera R60
        ret 
12:     fleti R60, -10192.8798828125
        fleti R61, 75.7900009155273
        fleti R62, 8.47000026702881
        fleti R63, -10203.7998046875
        fleti R64, 68.0800018310547
        fleti R65, -6.40999984741211
        fleti_fixed_camera R60
        ret 
28:     fleti R60, -10206.5498046875
        fleti R61, 76.879997253418
        fleti R62, 21.25
        fleti R63, -10208.1298828125
        fleti R64, 68.0800018310547
        fleti R65, 3.35999989509583
        fleti_fixed_camera R60
        ret 
42:     fleti R60, -10219.150390625
        fleti R61, 76.870002746582
        fleti R62, 26.6499996185303
        fleti R63, -10220.740234375
        fleti R64, 68.0800018310547
        fleti R65, 8.76000022888184
        fleti_fixed_camera R60
        ret 
58:     fleti R60, -10231.0595703125
        fleti R61, 76.3300018310547
        fleti R62, 32.3499984741211
        fleti R63, -10239.8095703125
        fleti R64, 72.25
        fleti R65, 14.8400001525879
        fleti_fixed_camera R60
        ret 
188:    fleti R60, -10243.6201171875
        fleti R61, 63.6300010681152
        fleti R62, 20.6499996185303
        fleti R63, -10253.259765625
        fleti R64, 74.120002746582
        fleti R65, 6.61999988555908
        fleti_fixed_camera R60
        ret 
206:    fleti R60, -10257.1904296875
        fleti R61, 78.2600021362305
        fleti R62, 9.93000030517578
        fleti R63, -10265.3798828125
        fleti R64, 71.3600006103516
        fleti R65, -11.539999961853
        fleti_fixed_camera R60
        ret 
233:    fleti R60, -10257.5703125
        fleti R61, 70.5500030517578
        fleti R62, -8.14000034332275
        fleti R63, -10263.4296875
        fleti R64, 77.2699966430664
        fleti R65, -26.0400009155273
        fleti_fixed_camera R60
        ret 
439:    sync 
        read_global_flag 0000000B, R185
        let R183, R185
        andi R183, 000001FC
        leti R60, 00000002
        shift_right R183, R60
        ret 
799:    clear R184
        let R184, R183
        subi R184, 00000001
        sync 
        read_global_flag 0000000B, R185
        andi R185, FFFFFFFB
        andi R185, FFFFFFF7
        andi R185, FFFFFFEF
        andi R185, FFFFFFDF
        andi R185, FFFFFFBF
        andi R185, FFFFFF7F
        andi R185, FFFFFEFF
        leti R60, 00000002
        shift_left R184, R60
        or R185, R184
        write_global_flag 0000000B, R185
        ret 
283:    read_global_flag 0000000B, R185
        andi R185, 00000001
        let R159, R185
        ret 
719:    read_global_flag 0000000B, R185
        ori R185, 00000001
        write_global_flag 0000000B, R185
        ret 
132:    call 439
        jmpi_= R183, 00000000, 940
        sync 
        window_msg 'You still have <r183> <cr>Lucky Coin(s) remaining.'
        add_msg 'Do you want to continue?'
        winend 
        list R69, 'Continue<cr>Quit'
        switch_jmp R69, 2:89:940
        ret 
89:     call 738
        sync 
        jmp 833
        ret 
940:    call 754
        ret 
172:    message 0000006E, 'On this little computer<cr>here, we have...<cr>Roulette!'
        add_msg 'Oh, there's a bunch of<cr>other little games you<cr>can play here...'
        add_msg 'But to play Roulette, you<cr>need a "<color 1>Lucky Coin<color 0>".'
        add_msg 'A "Lucky Coin" is a coin<cr>that I give only to my<cr>best customers. '
        add_msg 'Without these coins, you<cr>can't play Roulette. '
        add_msg 'Oh, and the prizes I've<cr>prepared for my<cr>preferred customers, '
        add_msg 'are items that I've<cr>obtained through secret<cr>channels.  '
        add_msg 'It means it's possible<cr>you could win something<cr>you've never seen before.'
        add_msg 'I suppose you poor<cr>hunters will never see<cr>a Lucky Coin, though!'
        add_msg 'Ha ha ha!'
        mesend 
        ret 
967:    call 908
        jmpi_= R0, 00000002, 1
        call 720
        call 1084
        call 13
        ret 
908:    leti R60, 0000000B
        read_global_flag R60, R61
        andi R61, 00000002
        let R0, R61
        ret 
720:    leti R60, 00000001
        read_global_flag R60, R61
        andi R61, 003F8000
        leti R62, 0000000F
        shift_right R61, R62
        leti R62, 00000002
        shift_left R61, R62
        leti R60, 0000000B
        read_global_flag R60, R63
        andi R63, FFFFFFFB
        andi R63, FFFFFFF7
        andi R63, FFFFFFEF
        andi R63, FFFFFFDF
        andi R63, FFFFFFBF
        andi R63, FFFFFF7F
        andi R63, FFFFFEFF
        or R63, R61
        write_global_flag R60, R63
        ret 
1084:   leti R60, 00000001
        read_global_flag R60, R61
        andi R61, FFFFF7FF
        andi R61, FFFFEFFF
        andi R61, FFFFDFFF
        andi R61, FFFFBFFF
        andi R61, FFFF7FFF
        andi R61, FFFEFFFF
        andi R61, FFFDFFFF
        andi R61, FFFBFFFF
        andi R61, FFF7FFFF
        andi R61, FFEFFFFF
        andi R61, FFDFFFFF
        write_global_flag R60, R61
        ret 
13:     leti R60, 0000000B
        read_global_flag R60, R61
        ori R61, 00000002
        write_global_flag R60, R61
        ret 
170:    jmpi_= R188, 00000001, 380
        jmpi_= R188, 00000002, 133
        message 000000AA, 'What should I do?<cr>I was asked to do a <cr>strange thing.'
        add_msg '... ... ...'
        add_msg 'Oh?'
        add_msg 'Hey, you're a <hero job>,<cr>right? Could you lend me<cr>a helping hand?  '
        mesend 
418:    list R50, 'Yes<cr>No'
        jmpi_= R50, 00000000, 677
        message 000000AA, 'Oh no, can't I even get<cr>a bit of advice from the<cr>Guild!? You stingy...'
        mesend 
        set R188
        ret 
380:    message 000000AA, 'Oh?'
        add_msg 'Have you changed your<cr>mind? Will you help<cr>me out?'
        mesend 
        jmp 418
133:    message 000000AA, 'Oh? '
        add_msg 'You have a nice present? '
        mesend 
        jmp 871
        ret 
677:    message 000000AA, 'To tell the truth, I've<cr>got ideas about dealing<cr>with wrapped presents. '
        add_msg 'It's not like Gallon<cr>provides many options<cr>for this, you know?'
        add_msg 'So, I'm thinking about<cr>presents with more <cr>originality. '
        add_msg 'You, a Hunters, must <cr>have some idea, right?'
        add_msg 'If you have a present,<cr>can you show it to me?'
        mesend 
781:    list R50, 'Yes<cr>No<cr>'
        jmpi_= R50, 00000000, 871
        message 000000AA, 'What, how can you be so<cr>mean! You stingy...'
        mesend 
        ret 
871:    clear R50
        open_pack_select 
        get_item_id R111
        jmpi_= R111, FFFFFFFF, 995
        get_item_info R111, R146
        jmpi_= R146, 00000000, 1120
        jmpi_= R146, 00000001, 782
        jmpi_= R146, 00000002, 871
        jmpi_= R146, 00000003, 545
        ret 
1120:   let R187, R150
        jmpi_< R187, 00000040, 871
        jmpi_> R187, 0000007F, 871
        let R187, R151
        jmp 922
782:    let R187, R150
        jmpi_< R187, 00000040, 871
        jmpi_> R187, 0000007F, 871
        subi R187, 00000040
        jmp 922
545:    jmpi_!= R147, 00000015, 653
        jmpi_= R148, 00000000, 284
653:    let R187, R149
        jmpi_< R187, 00000040, 871
        jmpi_> R187, 0000007F, 871
        subi R187, 00000040
        jmp 922
922:    jmpi_= R187, 00000000, 755
        jmpi_= R187, 00000005, 284
        switch_jmp R187, 11:783:1037:134:440:800:783:1048:153:467:818:1063
783:    ret 
1037:   leti R189, 00100000
        jmp 43
134:    leti R189, 00200000
        jmp 43
440:    leti R189, 00400000
        jmp 43
800:    leti R189, 00800000
        jmp 43
1048:   leti R189, 01000000
        jmp 43
153:    leti R189, 02000000
        jmp 43
467:    leti R189, 04000000
        jmp 43
818:    leti R189, 08000000
        jmp 43
1063:   leti R189, 10000000
        jmp 43
43:     read_global_flag 0000000B, R185
        let R61, R185
        and R61, R189
        jmpi_!= R61, 00000000, 755
        or R185, R189
        write_global_flag 0000000B, R185
399:    message 000000AA, 'Oh!<cr>This... is!!'
        add_msg 'Gorgeous colors that are<cr>dazzling! '
        add_msg 'And the smooth texture!!'
        add_msg 'Such a classy wrapping<cr>that makes you eager<cr>to open it!'
        add_msg 'Excellent!! '
        add_msg 'If I give a present like<cr>this, people will look<cr>favorably upon me.'
        add_msg 'I'm glad I was shown <cr>such a good item! <cr>Thank you!! '
        mesend 
        leti R188, 00000002
        ret 
755:    message 000000AA, 'Oh!<cr>This is!!'
        add_msg 'Well, hey, this is <cr>exactly what you can<cr>get from Gallon!'
        add_msg 'Don't you have anything<cr>else? '
        mesend 
        jmp 871
995:    message 000000AA, 'Oh?'
        add_msg 'What? You don't have any?<cr>Well then, that's OK.'
        add_msg 'Sorry for asking.'
        mesend 
        ret 
284:    message 000000AA, 'Oh! <cr>This..., this is!! '
        add_msg 'It must be the legendary<cr>Christmas present!!! '
        add_msg 'I, I never thought I <cr>would ever see this!'
        add_msg 'Well, that... that was<cr>breathtaking. Thank you!'
        add_msg '...'
        add_msg 'I feel I cannot use a <cr>rare item like this...'
        mesend 
        ret 
1142:   message 0000006E, 'Which piece of paper <cr>and ribbon will you take? '
        mesend 
        read_global_flag 0000000B, R185
        let R186, R185
        andi R186, 1FF00000
135:    jmpi_= R186, 00000000, 355
        jmpi_= R186, 00100000, 368
        jmpi_= R186, 00200000, 381
        jmpi_= R186, 00300000, 400
        jmpi_= R186, 00400000, 419
        jmpi_= R186, 00500000, 441
        jmpi_= R186, 00600000, 468
        jmpi_= R186, 00700000, 494
        jmpi_= R186, 00800000, 516
        jmpi_= R186, 00900000, 546
        jmpi_= R186, 00A00000, 369
        jmpi_= R186, 00B00000, 382
        jmpi_= R186, 00C00000, 401
        jmpi_= R186, 00D00000, 420
        jmpi_= R186, 00E00000, 442
        jmpi_= R186, 00F00000, 469
        jmpi_= R186, 01000000, 495
        jmpi_= R186, 01100000, 517
        jmpi_= R186, 01200000, 547
        jmpi_= R186, 01300000, 574
        jmpi_= R186, 01400000, 383
        jmpi_= R186, 01500000, 402
        jmpi_= R186, 01600000, 421
        jmpi_= R186, 01700000, 443
        jmpi_= R186, 01800000, 470
        jmpi_= R186, 01900000, 496
        jmpi_= R186, 01A00000, 518
        jmpi_= R186, 01B00000, 548
        jmpi_= R186, 01C00000, 575
        jmpi_= R186, 01D00000, 601
        jmpi_= R186, 01E00000, 403
        jmpi_= R186, 01F00000, 422
        jmpi_= R186, 02000000, 444
        jmpi_= R186, 02100000, 471
        jmpi_= R186, 02200000, 497
        jmpi_= R186, 02300000, 519
        jmpi_= R186, 02400000, 549
        jmpi_= R186, 02500000, 576
        jmpi_= R186, 02600000, 602
        jmpi_= R186, 02700000, 630
        jmpi_= R186, 02800000, 423
        jmpi_= R186, 02900000, 445
        jmpi_= R186, 02A00000, 472
        jmpi_= R186, 02B00000, 498
        jmpi_= R186, 02C00000, 520
        jmpi_= R186, 02D00000, 550
        jmpi_= R186, 02E00000, 577
        jmpi_= R186, 02F00000, 603
        jmpi_= R186, 03000000, 631
        jmpi_= R186, 03100000, 654
        jmpi_= R186, 03200000, 446
        jmpi_= R186, 03300000, 473
        jmpi_= R186, 03400000, 499
        jmpi_= R186, 03500000, 521
        jmpi_= R186, 03600000, 551
        jmpi_= R186, 03700000, 578
        jmpi_= R186, 03800000, 604
        jmpi_= R186, 03900000, 632
        jmpi_= R186, 03A00000, 655
        jmpi_= R186, 03B00000, 678
        jmpi_= R186, 03C00000, 474
        jmpi_= R186, 03D00000, 500
        jmpi_= R186, 03E00000, 522
        jmpi_= R186, 03F00000, 552
        jmpi_= R186, 04000000, 579
        jmpi_= R186, 04100000, 605
        jmpi_= R186, 04200000, 633
        jmpi_= R186, 04300000, 656
        jmpi_= R186, 04400000, 679
        jmpi_= R186, 04500000, 705
        jmpi_= R186, 04600000, 501
        jmpi_= R186, 04700000, 523
        jmpi_= R186, 04800000, 553
        jmpi_= R186, 04900000, 580
        jmpi_= R186, 04A00000, 606
        jmpi_= R186, 04B00000, 634
        jmpi_= R186, 04C00000, 657
        jmpi_= R186, 04D00000, 680
        jmpi_= R186, 04E00000, 706
        jmpi_= R186, 04F00000, 721
        jmpi_= R186, 05000000, 524
        jmpi_= R186, 05100000, 554
        jmpi_= R186, 05200000, 581
        jmpi_= R186, 05300000, 607
        jmpi_= R186, 05400000, 635
        jmpi_= R186, 05500000, 658
        jmpi_= R186, 05600000, 681
        jmpi_= R186, 05700000, 707
        jmpi_= R186, 05800000, 722
        jmpi_= R186, 05900000, 740
        jmpi_= R186, 05A00000, 555
        jmpi_= R186, 05B00000, 582
        jmpi_= R186, 05C00000, 608
        jmpi_= R186, 05D00000, 636
        jmpi_= R186, 05E00000, 659
        jmpi_= R186, 05F00000, 682
        jmpi_= R186, 06000000, 708
        jmpi_= R186, 06100000, 723
        jmpi_= R186, 06200000, 741
        jmpi_= R186, 06300000, 756
        jmpi_= R186, 06400000, 724
        jmpi_= R186, 06500000, 742
        jmpi_= R186, 06600000, 757
        jmpi_= R186, 06700000, 768
        jmpi_= R186, 06800000, 784
        jmpi_= R186, 06900000, 801
        jmpi_= R186, 06A00000, 819
        jmpi_= R186, 06B00000, 837
        jmpi_= R186, 06C00000, 852
        jmpi_= R186, 06D00000, 872
        jmpi_= R186, 06E00000, 743
        jmpi_= R186, 06F00000, 758
        jmpi_= R186, 07000000, 769
        jmpi_= R186, 07100000, 785
        jmpi_= R186, 07200000, 802
        jmpi_= R186, 07300000, 820
        jmpi_= R186, 07400000, 838
        jmpi_= R186, 07500000, 853
        jmpi_= R186, 07600000, 873
        jmpi_= R186, 07700000, 890
        jmpi_= R186, 07800000, 759
        jmpi_= R186, 07900000, 770
        jmpi_= R186, 07A00000, 786
        jmpi_= R186, 07B00000, 803
        jmpi_= R186, 07C00000, 821
        jmpi_= R186, 07D00000, 839
        jmpi_= R186, 07E00000, 854
        jmpi_= R186, 07F00000, 874
        jmpi_= R186, 08000000, 891
        jmpi_= R186, 08100000, 909
        jmpi_= R186, 08200000, 771
        jmpi_= R186, 08300000, 787
        jmpi_= R186, 08400000, 804
        jmpi_= R186, 08500000, 822
        jmpi_= R186, 08600000, 840
        jmpi_= R186, 08700000, 855
        jmpi_= R186, 08800000, 875
        jmpi_= R186, 08900000, 892
        jmpi_= R186, 08A00000, 910
        jmpi_= R186, 08B00000, 923
        jmpi_= R186, 08C00000, 788
        jmpi_= R186, 08D00000, 805
        jmpi_= R186, 08E00000, 823
        jmpi_= R186, 08F00000, 841
        jmpi_= R186, 09000000, 856
        jmpi_= R186, 09100000, 876
        jmpi_= R186, 09200000, 893
        jmpi_= R186, 09300000, 911
        jmpi_= R186, 09400000, 924
        jmpi_= R186, 09500000, 941
        jmpi_= R186, 09600000, 806
        jmpi_= R186, 09700000, 824
        jmpi_= R186, 09800000, 842
        jmpi_= R186, 09900000, 857
        jmpi_= R186, 09A00000, 877
        jmpi_= R186, 09B00000, 894
        jmpi_= R186, 09C00000, 912
        jmpi_= R186, 09D00000, 925
        jmpi_= R186, 09E00000, 942
        jmpi_= R186, 09F00000, 952
        jmpi_= R186, 0A000000, 825
        jmpi_= R186, 0A100000, 843
        jmpi_= R186, 0A200000, 858
        jmpi_= R186, 0A300000, 878
        jmpi_= R186, 0A400000, 895
        jmpi_= R186, 0A500000, 913
        jmpi_= R186, 0A600000, 926
        jmpi_= R186, 0A700000, 943
        jmpi_= R186, 0A800000, 953
        jmpi_= R186, 0A900000, 968
        jmpi_= R186, 0AA00000, 844
        jmpi_= R186, 0AB00000, 859
        jmpi_= R186, 0AC00000, 879
        jmpi_= R186, 0AD00000, 896
        jmpi_= R186, 0AE00000, 914
        jmpi_= R186, 0AF00000, 927
        jmpi_= R186, 0B000000, 944
        jmpi_= R186, 0B100000, 954
        jmpi_= R186, 0B200000, 969
        jmpi_= R186, 0B300000, 982
        jmpi_= R186, 0B400000, 860
        jmpi_= R186, 0B500000, 880
        jmpi_= R186, 0B600000, 897
        jmpi_= R186, 0B700000, 915
        jmpi_= R186, 0B800000, 928
        jmpi_= R186, 0B900000, 945
        jmpi_= R186, 0BA00000, 955
        jmpi_= R186, 0BB00000, 970
        jmpi_= R186, 0BC00000, 983
        jmpi_= R186, 0BD00000, 996
        jmpi_= R186, 0BE00000, 881
        jmpi_= R186, 0BF00000, 898
        jmpi_= R186, 0C000000, 916
        jmpi_= R186, 0C100000, 929
        jmpi_= R186, 0C200000, 946
        jmpi_= R186, 0C300000, 956
        jmpi_= R186, 0C400000, 971
        jmpi_= R186, 0C500000, 984
        jmpi_= R186, 0C600000, 997
        jmpi_= R186, 0C700000, 1014
        jmpi_= R186, 0C800000, 985
        jmpi_= R186, 0C900000, 998
        jmpi_= R186, 0CA00000, 1015
        jmpi_= R186, 0CB00000, 1026
        jmpi_= R186, 0CC00000, 1038
        jmpi_= R186, 0CD00000, 1049
        jmpi_= R186, 0CE00000, 1064
        jmpi_= R186, 0CF00000, 1085
        jmpi_= R186, 0D000000, 1100
        jmpi_= R186, 0D100000, 1121
        jmpi_= R186, 0D200000, 999
        jmpi_= R186, 0D300000, 1016
        jmpi_= R186, 0D400000, 1027
        jmpi_= R186, 0D500000, 1039
        jmpi_= R186, 0D600000, 1050
        jmpi_= R186, 0D700000, 1065
        jmpi_= R186, 0D800000, 1086
        jmpi_= R186, 0D900000, 1101
        jmpi_= R186, 0DA00000, 1122
        jmpi_= R186, 0DB00000, 1143
        jmpi_= R186, 0DC00000, 1017
        jmpi_= R186, 0DD00000, 1028
        jmpi_= R186, 0DE00000, 1040
        jmpi_= R186, 0DF00000, 1051
        jmpi_= R186, 0E000000, 1066
        jmpi_= R186, 0E100000, 1087
        jmpi_= R186, 0E200000, 1102
        jmpi_= R186, 0E300000, 1123
        jmpi_= R186, 0E400000, 1144
        jmpi_= R186, 0E500000, 1165
        jmpi_= R186, 0E600000, 1029
        jmpi_= R186, 0E700000, 1041
        jmpi_= R186, 0E800000, 1052
        jmpi_= R186, 0E900000, 1067
        jmpi_= R186, 0EA00000, 1088
        jmpi_= R186, 0EB00000, 1103
        jmpi_= R186, 0EC00000, 1124
        jmpi_= R186, 0ED00000, 1145
        jmpi_= R186, 0EE00000, 1166
        jmpi_= R186, 0EF00000, 1181
        jmpi_= R186, 0F000000, 1042
        jmpi_= R186, 0F100000, 1053
        jmpi_= R186, 0F200000, 1068
        jmpi_= R186, 0F300000, 1089
        jmpi_= R186, 0F400000, 1104
        jmpi_= R186, 0F500000, 1125
        jmpi_= R186, 0F600000, 1146
        jmpi_= R186, 0F700000, 1167
        jmpi_= R186, 0F800000, 1182
        jmpi_= R186, 0F900000, 14
        jmpi_= R186, 0FA00000, 1054
        jmpi_= R186, 0FB00000, 1069
        jmpi_= R186, 0FC00000, 1090
        jmpi_= R186, 0FD00000, 1105
        jmpi_= R186, 0FE00000, 1126
        jmpi_= R186, 0FF00000, 1147
        jmpi_= R186, 10000000, 1168
        jmpi_= R186, 10100000, 1183
        jmpi_= R186, 10200000, 15
        jmpi_= R186, 10300000, 29
        jmpi_= R186, 10400000, 1070
        jmpi_= R186, 10500000, 1091
        jmpi_= R186, 10600000, 1106
        jmpi_= R186, 10700000, 1127
        jmpi_= R186, 10800000, 1148
        jmpi_= R186, 10900000, 1169
        jmpi_= R186, 10A00000, 1184
        jmpi_= R186, 10B00000, 16
        jmpi_= R186, 10C00000, 31
        jmpi_= R186, 10D00000, 44
        jmpi_= R186, 10E00000, 1092
        jmpi_= R186, 10F00000, 1107
        jmpi_= R186, 11000000, 1128
        jmpi_= R186, 11100000, 1149
        jmpi_= R186, 11200000, 1170
        jmpi_= R186, 11300000, 1185
        jmpi_= R186, 11400000, 17
        jmpi_= R186, 11500000, 32
        jmpi_= R186, 11600000, 45
        jmpi_= R186, 11700000, 59
        jmpi_= R186, 11800000, 1108
        jmpi_= R186, 11900000, 1129
        jmpi_= R186, 11A00000, 1150
        jmpi_= R186, 11B00000, 1171
        jmpi_= R186, 11C00000, 1186
        jmpi_= R186, 11D00000, 18
        jmpi_= R186, 11E00000, 33
        jmpi_= R186, 11F00000, 46
        jmpi_= R186, 12000000, 60
        jmpi_= R186, 12100000, 70
        jmpi_= R186, 12200000, 1130
        jmpi_= R186, 12300000, 1151
        jmpi_= R186, 12400000, 1172
        jmpi_= R186, 12500000, 1187
        jmpi_= R186, 12600000, 19
        jmpi_= R186, 12700000, 34
        jmpi_= R186, 12800000, 47
        jmpi_= R186, 12900000, 61
        jmpi_= R186, 12A00000, 71
        jmpi_= R186, 12B00000, 90
        jmpi_= R186, 12C00000, 62
        jmpi_= R186, 12D00000, 72
        jmpi_= R186, 12E00000, 91
        jmpi_= R186, 12F00000, 111
        jmpi_= R186, 13000000, 136
        jmpi_= R186, 13100000, 154
        jmpi_= R186, 13200000, 173
        jmpi_= R186, 13300000, 189
        jmpi_= R186, 13400000, 207
        jmpi_= R186, 13500000, 234
        jmpi_= R186, 13600000, 73
        jmpi_= R186, 13700000, 92
        jmpi_= R186, 13800000, 112
        jmpi_= R186, 13900000, 137
        jmpi_= R186, 13A00000, 155
        jmpi_= R186, 13B00000, 174
        jmpi_= R186, 13C00000, 190
        jmpi_= R186, 13D00000, 208
        jmpi_= R186, 13E00000, 235
        jmpi_= R186, 13F00000, 254
        jmpi_= R186, 14000000, 93
        jmpi_= R186, 14100000, 113
        jmpi_= R186, 14200000, 138
        jmpi_= R186, 14300000, 156
        jmpi_= R186, 14400000, 175
        jmpi_= R186, 14500000, 191
        jmpi_= R186, 14600000, 209
        jmpi_= R186, 14700000, 236
        jmpi_= R186, 14800000, 255
        jmpi_= R186, 14900000, 285
        jmpi_= R186, 14A00000, 114
        jmpi_= R186, 14B00000, 139
        jmpi_= R186, 14C00000, 157
        jmpi_= R186, 14D00000, 176
        jmpi_= R186, 14E00000, 192
        jmpi_= R186, 14F00000, 211
        jmpi_= R186, 15000000, 237
        jmpi_= R186, 15100000, 256
        jmpi_= R186, 15200000, 286
        jmpi_= R186, 15300000, 304
        jmpi_= R186, 15400000, 141
        jmpi_= R186, 15500000, 158
        jmpi_= R186, 15600000, 177
        jmpi_= R186, 15700000, 193
        jmpi_= R186, 15800000, 212
        jmpi_= R186, 15900000, 238
        jmpi_= R186, 15A00000, 257
        jmpi_= R186, 15B00000, 287
        jmpi_= R186, 15C00000, 305
        jmpi_= R186, 15D00000, 324
        jmpi_= R186, 15E00000, 159
        jmpi_= R186, 15F00000, 178
        jmpi_= R186, 16000000, 194
        jmpi_= R186, 16100000, 213
        jmpi_= R186, 16200000, 239
        jmpi_= R186, 16300000, 258
        jmpi_= R186, 16400000, 288
        jmpi_= R186, 16500000, 306
        jmpi_= R186, 16600000, 325
        jmpi_= R186, 16700000, 342
        jmpi_= R186, 16800000, 179
        jmpi_= R186, 16900000, 195
        jmpi_= R186, 16A00000, 214
        jmpi_= R186, 16B00000, 240
        jmpi_= R186, 16C00000, 259
        jmpi_= R186, 16D00000, 289
        jmpi_= R186, 16E00000, 307
        jmpi_= R186, 16F00000, 326
        jmpi_= R186, 17000000, 343
        jmpi_= R186, 17100000, 356
        jmpi_= R186, 17200000, 196
        jmpi_= R186, 17300000, 215
        jmpi_= R186, 17400000, 241
        jmpi_= R186, 17500000, 260
        jmpi_= R186, 17600000, 290
        jmpi_= R186, 17700000, 308
        jmpi_= R186, 17800000, 327
        jmpi_= R186, 17900000, 344
        jmpi_= R186, 17A00000, 357
        jmpi_= R186, 17B00000, 370
        jmpi_= R186, 17C00000, 216
        jmpi_= R186, 17D00000, 242
        jmpi_= R186, 17E00000, 261
        jmpi_= R186, 17F00000, 291
        jmpi_= R186, 18000000, 309
        jmpi_= R186, 18100000, 328
        jmpi_= R186, 18200000, 345
        jmpi_= R186, 18300000, 358
        jmpi_= R186, 18400000, 371
        jmpi_= R186, 18500000, 384
        jmpi_= R186, 18600000, 243
        jmpi_= R186, 18700000, 262
        jmpi_= R186, 18800000, 292
        jmpi_= R186, 18900000, 310
        jmpi_= R186, 18A00000, 329
        jmpi_= R186, 18B00000, 346
        jmpi_= R186, 18C00000, 359
        jmpi_= R186, 18D00000, 372
        jmpi_= R186, 18E00000, 385
        jmpi_= R186, 18F00000, 404
        jmpi_= R186, 19000000, 373
        jmpi_= R186, 19100000, 386
        jmpi_= R186, 19200000, 405
        jmpi_= R186, 19300000, 424
        jmpi_= R186, 19400000, 447
        jmpi_= R186, 19500000, 475
        jmpi_= R186, 19600000, 502
        jmpi_= R186, 19700000, 525
        jmpi_= R186, 19800000, 556
        jmpi_= R186, 19900000, 583
        jmpi_= R186, 19A00000, 387
        jmpi_= R186, 19B00000, 406
        jmpi_= R186, 19C00000, 425
        jmpi_= R186, 19D00000, 448
        jmpi_= R186, 19E00000, 476
        jmpi_= R186, 19F00000, 503
        jmpi_= R186, 1A000000, 526
        jmpi_= R186, 1A100000, 557
        jmpi_= R186, 1A200000, 584
        jmpi_= R186, 1A300000, 609
        jmpi_= R186, 1A400000, 407
        jmpi_= R186, 1A500000, 426
        jmpi_= R186, 1A600000, 449
        jmpi_= R186, 1A700000, 477
        jmpi_= R186, 1A800000, 504
        jmpi_= R186, 1A900000, 527
        jmpi_= R186, 1AA00000, 558
        jmpi_= R186, 1AB00000, 585
        jmpi_= R186, 1AC00000, 610
        jmpi_= R186, 1AD00000, 637
        jmpi_= R186, 1AE00000, 427
        jmpi_= R186, 1AF00000, 450
        jmpi_= R186, 1B000000, 478
        jmpi_= R186, 1B100000, 505
        jmpi_= R186, 1B200000, 528
        jmpi_= R186, 1B300000, 559
        jmpi_= R186, 1B400000, 586
        jmpi_= R186, 1B500000, 611
        jmpi_= R186, 1B600000, 638
        jmpi_= R186, 1B700000, 660
        jmpi_= R186, 1B800000, 451
        jmpi_= R186, 1B900000, 479
        jmpi_= R186, 1BA00000, 506
        jmpi_= R186, 1BB00000, 529
        jmpi_= R186, 1BC00000, 560
        jmpi_= R186, 1BD00000, 587
        jmpi_= R186, 1BE00000, 612
        jmpi_= R186, 1BF00000, 639
        jmpi_= R186, 1C000000, 661
        jmpi_= R186, 1C100000, 683
        jmpi_= R186, 1C200000, 480
        jmpi_= R186, 1C300000, 507
        jmpi_= R186, 1C400000, 530
        jmpi_= R186, 1C500000, 561
        jmpi_= R186, 1C600000, 588
        jmpi_= R186, 1C700000, 613
        jmpi_= R186, 1C800000, 640
        jmpi_= R186, 1C900000, 662
        jmpi_= R186, 1CA00000, 684
        jmpi_= R186, 1CB00000, 709
        jmpi_= R186, 1CC00000, 508
        jmpi_= R186, 1CD00000, 531
        jmpi_= R186, 1CE00000, 562
        jmpi_= R186, 1CF00000, 589
        jmpi_= R186, 1D000000, 614
        jmpi_= R186, 1D100000, 641
        jmpi_= R186, 1D200000, 663
        jmpi_= R186, 1D300000, 685
        jmpi_= R186, 1D400000, 710
        jmpi_= R186, 1D500000, 725
        jmpi_= R186, 1D600000, 532
        jmpi_= R186, 1D700000, 563
        jmpi_= R186, 1D800000, 590
        jmpi_= R186, 1D900000, 615
        jmpi_= R186, 1DA00000, 642
        jmpi_= R186, 1DB00000, 664
        jmpi_= R186, 1DC00000, 686
        jmpi_= R186, 1DD00000, 711
        jmpi_= R186, 1DE00000, 726
        jmpi_= R186, 1DF00000, 744
        jmpi_= R186, 1E000000, 564
        jmpi_= R186, 1E100000, 591
        jmpi_= R186, 1E200000, 616
        jmpi_= R186, 1E300000, 643
        jmpi_= R186, 1E400000, 665
        jmpi_= R186, 1E500000, 687
        jmpi_= R186, 1E600000, 712
        jmpi_= R186, 1E700000, 727
        jmpi_= R186, 1E800000, 745
        jmpi_= R186, 1E900000, 760
        jmpi_= R186, 1EA00000, 592
        jmpi_= R186, 1EB00000, 617
        jmpi_= R186, 1EC00000, 644
        jmpi_= R186, 1ED00000, 667
        jmpi_= R186, 1EE00000, 688
        jmpi_= R186, 1EF00000, 713
        jmpi_= R186, 1F000000, 728
        jmpi_= R186, 1F100000, 746
        jmpi_= R186, 1F200000, 761
        jmpi_= R186, 1F300000, 772
        jmpi_= R186, 1F400000, 747
        jmpi_= R186, 1F500000, 762
        jmpi_= R186, 1F600000, 773
        jmpi_= R186, 1F700000, 789
        jmpi_= R186, 1F800000, 807
        jmpi_= R186, 1F900000, 826
        jmpi_= R186, 1FA00000, 845
        jmpi_= R186, 1FB00000, 861
        jmpi_= R186, 1FC00000, 882
        jmpi_= R186, 1FD00000, 899
        jmpi_= R186, 1FE00000, 763
        jmpi_= R186, 1FF00000, 774
355:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:217:217:217:217:618
        ret 
368:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:217:217:217:217:618
        ret 
381:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:217:217:217:217:618
        ret 
400:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:217:217:217:217:618
        ret 
419:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:217:217:217:217:618
        ret 
441:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:217:217:217:217:618
        ret 
468:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:217:217:217:217:618
        ret 
494:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:217:217:217:217:618
        ret 
516:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:217:217:217:217:618
        ret 
546:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:217:217:217:217:618
        ret 
369:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:217:217:217:217:618
        ret 
382:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:217:217:217:217:618
        ret 
401:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:217:217:217:217:618
        ret 
420:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:217:217:217:217:618
        ret 
442:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:217:217:217:217:618
        ret 
469:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:217:217:217:217:618
        ret 
495:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:217:217:217:217:618
        ret 
517:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:217:217:217:217:618
        ret 
547:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:217:217:217:217:618
        ret 
574:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:217:217:217:217:618
        ret 
383:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:217:217:217:217:618
        ret 
402:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:217:217:217:217:618
        ret 
421:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:217:217:217:217:618
        ret 
443:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:217:217:217:217:618
        ret 
470:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:217:217:217:217:618
        ret 
496:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:217:217:217:217:618
        ret 
518:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:217:217:217:217:618
        ret 
548:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:217:217:217:217:618
        ret 
575:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:217:217:217:217:618
        ret 
601:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:217:217:217:217:618
        ret 
403:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:217:217:217:217:618
        ret 
422:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:217:217:217:217:618
        ret 
444:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:360:217:217:217:618
        ret 
471:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:360:217:217:217:618
        ret 
497:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:360:217:217:217:618
        ret 
519:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:360:217:217:217:618
        ret 
549:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:360:217:217:217:618
        ret 
576:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:360:217:217:217:618
        ret 
602:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:360:217:217:217:618
        ret 
630:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:360:217:217:217:618
        ret 
423:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:360:217:217:217:618
        ret 
445:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:360:217:217:217:618
        ret 
472:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:360:217:217:217:618
        ret 
498:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:360:217:217:217:618
        ret 
520:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:360:217:217:217:618
        ret 
550:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:360:217:217:217:618
        ret 
577:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:360:217:217:217:618
        ret 
603:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:360:217:217:217:618
        ret 
631:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:360:217:217:217:618
        ret 
654:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:360:217:217:217:618
        ret 
446:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:360:217:217:217:618
        ret 
473:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:360:217:217:217:618
        ret 
499:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:360:217:217:217:618
        ret 
521:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:360:217:217:217:618
        ret 
551:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:360:217:217:217:618
        ret 
578:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:360:217:217:217:618
        ret 
604:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:360:217:217:217:618
        ret 
632:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:360:217:217:217:618
        ret 
655:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:360:217:217:217:618
        ret 
678:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:360:217:217:217:618
        ret 
474:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:360:217:217:217:618
        ret 
500:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:360:217:217:217:618
        ret 
522:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:360:217:217:217:618
        ret 
552:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:360:217:217:217:618
        ret 
579:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:217:374:217:217:618
        ret 
605:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:217:374:217:217:618
        ret 
633:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:217:374:217:217:618
        ret 
656:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:217:374:217:217:618
        ret 
679:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:217:374:217:217:618
        ret 
705:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:217:374:217:217:618
        ret 
501:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:217:374:217:217:618
        ret 
523:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:217:374:217:217:618
        ret 
553:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:217:374:217:217:618
        ret 
580:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:217:374:217:217:618
        ret 
606:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:217:374:217:217:618
        ret 
634:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:217:374:217:217:618
        ret 
657:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:217:374:217:217:618
        ret 
680:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:217:374:217:217:618
        ret 
706:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:217:374:217:217:618
        ret 
721:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:217:374:217:217:618
        ret 
524:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:217:374:217:217:618
        ret 
554:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:217:374:217:217:618
        ret 
581:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:217:374:217:217:618
        ret 
607:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:217:374:217:217:618
        ret 
635:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:217:374:217:217:618
        ret 
658:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:217:374:217:217:618
        ret 
681:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:217:374:217:217:618
        ret 
707:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:217:374:217:217:618
        ret 
722:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:217:374:217:217:618
        ret 
740:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:217:374:217:217:618
        ret 
555:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:217:374:217:217:618
        ret 
582:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:217:374:217:217:618
        ret 
608:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:217:374:217:217:618
        ret 
636:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:217:374:217:217:618
        ret 
659:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:217:374:217:217:618
        ret 
682:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:217:374:217:217:618
        ret 
708:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:360:374:217:217:618
        ret 
723:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:360:374:217:217:618
        ret 
741:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:360:374:217:217:618
        ret 
756:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:360:374:217:217:618
        ret 
724:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:360:374:217:217:618
        ret 
742:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:360:374:217:217:618
        ret 
757:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:360:374:217:217:618
        ret 
768:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:360:374:217:217:618
        ret 
784:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:360:374:217:217:618
        ret 
801:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:360:374:217:217:618
        ret 
819:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:360:374:217:217:618
        ret 
837:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:360:374:217:217:618
        ret 
852:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:360:374:217:217:618
        ret 
872:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:360:374:217:217:618
        ret 
743:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:360:374:217:217:618
        ret 
758:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:360:374:217:217:618
        ret 
769:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:360:374:217:217:618
        ret 
785:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:360:374:217:217:618
        ret 
802:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:360:374:217:217:618
        ret 
820:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:360:374:217:217:618
        ret 
838:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:360:374:217:217:618
        ret 
853:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:360:374:217:217:618
        ret 
873:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:360:374:217:217:618
        ret 
890:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:360:374:217:217:618
        ret 
759:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:360:374:217:217:618
        ret 
770:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:360:374:217:217:618
        ret 
786:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:360:374:217:217:618
        ret 
803:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:360:374:217:217:618
        ret 
821:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:360:374:217:217:618
        ret 
839:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:360:374:217:217:618
        ret 
854:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:360:374:217:217:618
        ret 
874:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:360:374:217:217:618
        ret 
891:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:217:217:388:217:618
        ret 
909:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:217:217:388:217:618
        ret 
771:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:217:217:388:217:618
        ret 
787:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:217:217:388:217:618
        ret 
804:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:217:217:388:217:618
        ret 
822:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:217:217:388:217:618
        ret 
840:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:217:217:388:217:618
        ret 
855:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:217:217:388:217:618
        ret 
875:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:217:217:388:217:618
        ret 
892:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:217:217:388:217:618
        ret 
910:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:217:217:388:217:618
        ret 
923:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:217:217:388:217:618
        ret 
788:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:217:217:388:217:618
        ret 
805:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:217:217:388:217:618
        ret 
823:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:217:217:388:217:618
        ret 
841:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:217:217:388:217:618
        ret 
856:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:217:217:388:217:618
        ret 
876:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:217:217:388:217:618
        ret 
893:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:217:217:388:217:618
        ret 
911:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:217:217:388:217:618
        ret 
924:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:217:217:388:217:618
        ret 
941:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:217:217:388:217:618
        ret 
806:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:217:217:388:217:618
        ret 
824:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:217:217:388:217:618
        ret 
842:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:217:217:388:217:618
        ret 
857:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:217:217:388:217:618
        ret 
877:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:217:217:388:217:618
        ret 
894:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:217:217:388:217:618
        ret 
912:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:217:217:388:217:618
        ret 
925:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:217:217:388:217:618
        ret 
942:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:217:217:388:217:618
        ret 
952:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:217:217:388:217:618
        ret 
825:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:360:217:388:217:618
        ret 
843:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:360:217:388:217:618
        ret 
858:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:360:217:388:217:618
        ret 
878:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:360:217:388:217:618
        ret 
895:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:360:217:388:217:618
        ret 
913:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:360:217:388:217:618
        ret 
926:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:360:217:388:217:618
        ret 
943:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:360:217:388:217:618
        ret 
953:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:360:217:388:217:618
        ret 
968:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:360:217:388:217:618
        ret 
844:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:360:217:388:217:618
        ret 
859:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:360:217:388:217:618
        ret 
879:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:360:217:388:217:618
        ret 
896:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:360:217:388:217:618
        ret 
914:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:360:217:388:217:618
        ret 
927:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:360:217:388:217:618
        ret 
944:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:360:217:388:217:618
        ret 
954:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:360:217:388:217:618
        ret 
969:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:360:217:388:217:618
        ret 
982:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:360:217:388:217:618
        ret 
860:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:360:217:388:217:618
        ret 
880:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:360:217:388:217:618
        ret 
897:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:360:217:388:217:618
        ret 
915:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:360:217:388:217:618
        ret 
928:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:360:217:388:217:618
        ret 
945:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:360:217:388:217:618
        ret 
955:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:360:217:388:217:618
        ret 
970:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:360:217:388:217:618
        ret 
983:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:360:217:388:217:618
        ret 
996:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:360:217:388:217:618
        ret 
881:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:360:217:388:217:618
        ret 
898:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:360:217:388:217:618
        ret 
916:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:217:374:388:217:618
        ret 
929:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:217:374:388:217:618
        ret 
946:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:217:374:388:217:618
        ret 
956:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:217:374:388:217:618
        ret 
971:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:217:374:388:217:618
        ret 
984:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:217:374:388:217:618
        ret 
997:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:217:374:388:217:618
        ret 
1014:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:217:374:388:217:618
        ret 
985:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:217:374:388:217:618
        ret 
998:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:217:374:388:217:618
        ret 
1015:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:217:374:388:217:618
        ret 
1026:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:217:374:388:217:618
        ret 
1038:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:217:374:388:217:618
        ret 
1049:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:217:374:388:217:618
        ret 
1064:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:217:374:388:217:618
        ret 
1085:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:217:374:388:217:618
        ret 
1100:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:217:374:388:217:618
        ret 
1121:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:217:374:388:217:618
        ret 
999:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:217:374:388:217:618
        ret 
1016:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:217:374:388:217:618
        ret 
1027:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:217:374:388:217:618
        ret 
1039:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:217:374:388:217:618
        ret 
1050:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:217:374:388:217:618
        ret 
1065:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:217:374:388:217:618
        ret 
1086:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:217:374:388:217:618
        ret 
1101:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:217:374:388:217:618
        ret 
1122:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:217:374:388:217:618
        ret 
1143:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:217:374:388:217:618
        ret 
1017:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:217:374:388:217:618
        ret 
1028:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:217:374:388:217:618
        ret 
1040:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:217:374:388:217:618
        ret 
1051:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:217:374:388:217:618
        ret 
1066:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:360:374:388:217:618
        ret 
1087:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:360:374:388:217:618
        ret 
1102:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:360:374:388:217:618
        ret 
1123:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:360:374:388:217:618
        ret 
1144:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:360:374:388:217:618
        ret 
1165:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:360:374:388:217:618
        ret 
1029:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:360:374:388:217:618
        ret 
1041:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:360:374:388:217:618
        ret 
1052:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:360:374:388:217:618
        ret 
1067:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:360:374:388:217:618
        ret 
1088:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:360:374:388:217:618
        ret 
1103:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:360:374:388:217:618
        ret 
1124:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:360:374:388:217:618
        ret 
1145:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:360:374:388:217:618
        ret 
1166:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:360:374:388:217:618
        ret 
1181:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:360:374:388:217:618
        ret 
1042:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:360:374:388:217:618
        ret 
1053:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:360:374:388:217:618
        ret 
1068:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:360:374:388:217:618
        ret 
1089:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:360:374:388:217:618
        ret 
1104:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:360:374:388:217:618
        ret 
1125:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:360:374:388:217:618
        ret 
1146:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:360:374:388:217:618
        ret 
1167:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:360:374:388:217:618
        ret 
1182:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:360:374:388:217:618
        ret 
14:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:360:374:388:217:618
        ret 
1054:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:360:374:388:217:618
        ret 
1069:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:360:374:388:217:618
        ret 
1090:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:360:374:388:217:618
        ret 
1105:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:360:374:388:217:618
        ret 
1126:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:360:374:388:217:618
        ret 
1147:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Undecided<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:360:374:388:217:618
        ret 
1168:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:217:217:217:565:618
        ret 
1183:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:217:217:217:565:618
        ret 
15:     list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:217:217:217:565:618
        ret 
29:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:217:217:217:565:618
        ret 
1070:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:217:217:217:565:618
        ret 
1091:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:217:217:217:565:618
        ret 
1106:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:217:217:217:565:618
        ret 
1127:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:217:217:217:565:618
        ret 
1148:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:217:217:217:565:618
        ret 
1169:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:217:217:217:565:618
        ret 
1184:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:217:217:217:565:618
        ret 
16:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:217:217:217:565:618
        ret 
31:     list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:217:217:217:565:618
        ret 
44:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:217:217:217:565:618
        ret 
1092:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:217:217:217:565:618
        ret 
1107:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:217:217:217:565:618
        ret 
1128:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:217:217:217:565:618
        ret 
1149:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:217:217:217:565:618
        ret 
1170:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:217:217:217:565:618
        ret 
1185:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:217:217:217:565:618
        ret 
17:     list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:217:217:217:565:618
        ret 
32:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:217:217:217:565:618
        ret 
45:     list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:217:217:217:565:618
        ret 
59:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:217:217:217:565:618
        ret 
1108:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:217:217:217:565:618
        ret 
1129:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:217:217:217:565:618
        ret 
1150:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:217:217:217:565:618
        ret 
1171:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:217:217:217:565:618
        ret 
1186:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:217:217:217:565:618
        ret 
18:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:217:217:217:565:618
        ret 
33:     list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:217:217:217:565:618
        ret 
46:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:217:217:217:565:618
        ret 
60:     list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:360:217:217:565:618
        ret 
70:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:360:217:217:565:618
        ret 
1130:   list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:360:217:217:565:618
        ret 
1151:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:360:217:217:565:618
        ret 
1172:   list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:360:217:217:565:618
        ret 
1187:   list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:360:217:217:565:618
        ret 
19:     list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:360:217:217:565:618
        ret 
34:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:360:217:217:565:618
        ret 
47:     list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:360:217:217:565:618
        ret 
61:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:360:217:217:565:618
        ret 
71:     list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:360:217:217:565:618
        ret 
90:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:360:217:217:565:618
        ret 
62:     list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:360:217:217:565:618
        ret 
72:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:360:217:217:565:618
        ret 
91:     list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:360:217:217:565:618
        ret 
111:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:360:217:217:565:618
        ret 
136:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:360:217:217:565:618
        ret 
154:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:360:217:217:565:618
        ret 
173:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:360:217:217:565:618
        ret 
189:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:360:217:217:565:618
        ret 
207:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:360:217:217:565:618
        ret 
234:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:360:217:217:565:618
        ret 
73:     list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:360:217:217:565:618
        ret 
92:     list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:360:217:217:565:618
        ret 
112:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:360:217:217:565:618
        ret 
137:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:360:217:217:565:618
        ret 
155:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:360:217:217:565:618
        ret 
174:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:360:217:217:565:618
        ret 
190:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:360:217:217:565:618
        ret 
208:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:360:217:217:565:618
        ret 
235:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:360:217:217:565:618
        ret 
254:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:360:217:217:565:618
        ret 
93:     list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:217:374:217:565:618
        ret 
113:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:217:374:217:565:618
        ret 
138:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:217:374:217:565:618
        ret 
156:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:217:374:217:565:618
        ret 
175:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:217:374:217:565:618
        ret 
191:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:217:374:217:565:618
        ret 
209:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:217:374:217:565:618
        ret 
236:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:217:374:217:565:618
        ret 
255:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:217:374:217:565:618
        ret 
285:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:217:374:217:565:618
        ret 
114:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:217:374:217:565:618
        ret 
139:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:217:374:217:565:618
        ret 
157:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:217:374:217:565:618
        ret 
176:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:217:374:217:565:618
        ret 
192:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:217:374:217:565:618
        ret 
211:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:217:374:217:565:618
        ret 
237:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:217:374:217:565:618
        ret 
256:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:217:374:217:565:618
        ret 
286:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:217:374:217:565:618
        ret 
304:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:217:374:217:565:618
        ret 
141:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:217:374:217:565:618
        ret 
158:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:217:374:217:565:618
        ret 
177:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:217:374:217:565:618
        ret 
193:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:217:374:217:565:618
        ret 
212:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:217:374:217:565:618
        ret 
238:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:217:374:217:565:618
        ret 
257:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:217:374:217:565:618
        ret 
287:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:217:374:217:565:618
        ret 
305:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:217:374:217:565:618
        ret 
324:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:217:374:217:565:618
        ret 
159:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:217:374:217:565:618
        ret 
178:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:217:374:217:565:618
        ret 
194:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:360:374:217:565:618
        ret 
213:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:360:374:217:565:618
        ret 
239:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:360:374:217:565:618
        ret 
258:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:360:374:217:565:618
        ret 
288:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:360:374:217:565:618
        ret 
306:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:360:374:217:565:618
        ret 
325:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:360:374:217:565:618
        ret 
342:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:360:374:217:565:618
        ret 
179:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:360:374:217:565:618
        ret 
195:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:360:374:217:565:618
        ret 
214:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:360:374:217:565:618
        ret 
240:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:360:374:217:565:618
        ret 
259:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:360:374:217:565:618
        ret 
289:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:360:374:217:565:618
        ret 
307:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:360:374:217:565:618
        ret 
326:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:360:374:217:565:618
        ret 
343:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:360:374:217:565:618
        ret 
356:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:360:374:217:565:618
        ret 
196:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:360:374:217:565:618
        ret 
215:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:360:374:217:565:618
        ret 
241:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:360:374:217:565:618
        ret 
260:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:360:374:217:565:618
        ret 
290:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:360:374:217:565:618
        ret 
308:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:360:374:217:565:618
        ret 
327:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:360:374:217:565:618
        ret 
344:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:360:374:217:565:618
        ret 
357:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:360:374:217:565:618
        ret 
370:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:360:374:217:565:618
        ret 
216:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:360:374:217:565:618
        ret 
242:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:360:374:217:565:618
        ret 
261:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:360:374:217:565:618
        ret 
291:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Undecided<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:360:374:217:565:618
        ret 
309:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:217:217:388:565:618
        ret 
328:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:217:217:388:565:618
        ret 
345:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:217:217:388:565:618
        ret 
358:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:217:217:388:565:618
        ret 
371:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:217:217:388:565:618
        ret 
384:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:217:217:388:565:618
        ret 
243:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:217:217:388:565:618
        ret 
262:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:217:217:388:565:618
        ret 
292:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:217:217:388:565:618
        ret 
310:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:217:217:388:565:618
        ret 
329:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:217:217:388:565:618
        ret 
346:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:217:217:388:565:618
        ret 
359:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:217:217:388:565:618
        ret 
372:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:217:217:388:565:618
        ret 
385:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:217:217:388:565:618
        ret 
404:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:217:217:388:565:618
        ret 
373:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:217:217:388:565:618
        ret 
386:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:217:217:388:565:618
        ret 
405:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:217:217:388:565:618
        ret 
424:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:217:217:388:565:618
        ret 
447:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:217:217:388:565:618
        ret 
475:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:217:217:388:565:618
        ret 
502:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:217:217:388:565:618
        ret 
525:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:217:217:388:565:618
        ret 
556:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:217:217:388:565:618
        ret 
583:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:217:217:388:565:618
        ret 
387:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:217:217:388:565:618
        ret 
406:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:217:217:388:565:618
        ret 
425:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:217:217:388:565:618
        ret 
448:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:217:217:388:565:618
        ret 
476:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:217:217:388:565:618
        ret 
503:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:217:217:388:565:618
        ret 
526:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:360:217:388:565:618
        ret 
557:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:360:217:388:565:618
        ret 
584:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:360:217:388:565:618
        ret 
609:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:360:217:388:565:618
        ret 
407:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:360:217:388:565:618
        ret 
426:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:360:217:388:565:618
        ret 
449:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:360:217:388:565:618
        ret 
477:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:360:217:388:565:618
        ret 
504:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:360:217:388:565:618
        ret 
527:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:360:217:388:565:618
        ret 
558:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:360:217:388:565:618
        ret 
585:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:360:217:388:565:618
        ret 
610:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:360:217:388:565:618
        ret 
637:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:360:217:388:565:618
        ret 
427:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:360:217:388:565:618
        ret 
450:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:360:217:388:565:618
        ret 
478:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:360:217:388:565:618
        ret 
505:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:360:217:388:565:618
        ret 
528:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:360:217:388:565:618
        ret 
559:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:360:217:388:565:618
        ret 
586:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:360:217:388:565:618
        ret 
611:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:360:217:388:565:618
        ret 
638:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:360:217:388:565:618
        ret 
660:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:360:217:388:565:618
        ret 
451:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:360:217:388:565:618
        ret 
479:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:360:217:388:565:618
        ret 
506:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:360:217:388:565:618
        ret 
529:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:360:217:388:565:618
        ret 
560:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:360:217:388:565:618
        ret 
587:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:360:217:388:565:618
        ret 
612:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:360:217:388:565:618
        ret 
639:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Undecided<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:360:217:388:565:618
        ret 
661:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:217:374:388:565:618
        ret 
683:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:217:374:388:565:618
        ret 
480:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:217:374:388:565:618
        ret 
507:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:217:374:388:565:618
        ret 
530:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:217:374:388:565:618
        ret 
561:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:217:374:388:565:618
        ret 
588:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:217:374:388:565:618
        ret 
613:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:217:374:388:565:618
        ret 
640:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:217:374:388:565:618
        ret 
662:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:217:374:388:565:618
        ret 
684:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:217:374:388:565:618
        ret 
709:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:217:374:388:565:618
        ret 
508:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:217:374:388:565:618
        ret 
531:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:217:374:388:565:618
        ret 
562:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:217:374:388:565:618
        ret 
589:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:217:374:388:565:618
        ret 
614:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:217:374:388:565:618
        ret 
641:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:217:374:388:565:618
        ret 
663:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:217:374:388:565:618
        ret 
685:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:217:374:388:565:618
        ret 
710:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:217:374:388:565:618
        ret 
725:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:217:374:388:565:618
        ret 
532:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:217:374:388:565:618
        ret 
563:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:217:374:388:565:618
        ret 
590:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:217:374:388:565:618
        ret 
615:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:217:374:388:565:618
        ret 
642:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:217:374:388:565:618
        ret 
664:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:217:374:388:565:618
        ret 
686:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:217:374:388:565:618
        ret 
711:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:217:374:388:565:618
        ret 
726:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:217:374:388:565:618
        ret 
744:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Undecided<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:217:374:388:565:618
        ret 
564:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:217:360:374:388:565:618
        ret 
591:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:217:360:374:388:565:618
        ret 
616:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:217:360:374:388:565:618
        ret 
643:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:217:360:374:388:565:618
        ret 
665:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:217:360:374:388:565:618
        ret 
687:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:217:360:374:388:565:618
        ret 
712:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:217:360:374:388:565:618
        ret 
727:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:217:360:374:388:565:618
        ret 
745:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:217:360:374:388:565:618
        ret 
760:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:217:360:374:388:565:618
        ret 
592:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:217:360:374:388:565:618
        ret 
617:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:217:360:374:388:565:618
        ret 
644:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:217:360:374:388:565:618
        ret 
667:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:217:360:374:388:565:618
        ret 
688:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:217:360:374:388:565:618
        ret 
713:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Undecided<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:217:360:374:388:565:618
        ret 
728:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:217:347:360:374:388:565:618
        ret 
746:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:217:347:360:374:388:565:618
        ret 
761:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:217:347:360:374:388:565:618
        ret 
772:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:217:347:360:374:388:565:618
        ret 
747:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:217:347:360:374:388:565:618
        ret 
762:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:217:347:360:374:388:565:618
        ret 
773:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:217:347:360:374:388:565:618
        ret 
789:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Undecided<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:217:347:360:374:388:565:618
        ret 
807:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:217:330:347:360:374:388:565:618
        ret 
826:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:217:330:347:360:374:388:565:618
        ret 
845:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:217:330:347:360:374:388:565:618
        ret 
861:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Undecided<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:217:330:347:360:374:388:565:618
        ret 
882:    list R129, 'White/Pink<cr>Undecided<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:217:311:330:347:360:374:388:565:618
        ret 
899:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Undecided<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:217:311:330:347:360:374:388:565:618
        ret 
763:    list R129, 'White/Pink<cr>Undecided<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:217:293:311:330:347:360:374:388:565:618
        ret 
774:    list R129, 'White/Pink<cr>Yellow/Blue<cr>Black/Yellow<cr>Light-blue/Orange<cr>Pink/Yellow-green<cr>Magenta<cr>Blue<cr>Yellow<cr>Vermilion<cr>Green<cr>No, wait, never mind<cr>'
        switch_jmp R129, 11:244:263:293:311:330:347:360:374:388:565:618
        ret 
618:    switch_jmp R206, 2:224:363
        ret 
244:    item_packing1 R111
        ret 
263:    leti R187, 00000001
        item_packing2 R111, R187
        ret 
293:    leti R187, 00000002
        item_packing2 R111, R187
        ret 
311:    leti R187, 00000003
        item_packing2 R111, R187
        ret 
330:    leti R187, 00000004
        item_packing2 R111, R187
        ret 
347:    leti R187, 00000006
        item_packing2 R111, R187
        ret 
360:    leti R187, 00000007
        item_packing2 R111, R187
        ret 
374:    leti R187, 00000008
        item_packing2 R111, R187
        ret 
388:    leti R187, 00000009
        item_packing2 R111, R187
        ret 
565:    leti R187, 0000000A
        item_packing2 R111, R187
        ret 
217:    jmp 135
        ret 
666:    window_msg '11/4 12:20'
        winend 
        list R50, 'ShowQuestwork<cr>Format<cr>All_ON<cr>RibonFlg_1<cr>RibonFlg_2<cr>RibonFlg_3<cr>RibonFlg_4<cr>RibonFlg_5<cr>RibonFlg_6<cr>RibonFlg_7<cr>RibonFlg_8<cr>RibonFlg_9<cr>'
        switch_jmp R50, 12:930:668:1055:1666:2666:3666:4666:5666:6666:7666:8666:9666
930:    read_global_flag 0000000B, R185
        window_msg '<r185>'
        winend 
        ret 
668:    read_global_flag 0000000B, R185
        andi R185, FFEFFFFF
        andi R185, FFDFFFFF
        andi R185, FFBFFFFF
        andi R185, FF7FFFFF
        andi R185, FEFFFFFF
        andi R185, FDFFFFFF
        andi R185, FBFFFFFF
        andi R185, F7FFFFFF
        andi R185, EFFFFFFF
        write_global_flag 0000000B, R185
        ret 
1055:   read_global_flag 0000000B, R185
        ori R185, 00100000
        ori R185, 00200000
        ori R185, 00400000
        ori R185, 00800000
        ori R185, 01000000
        ori R185, 02000000
        ori R185, 04000000
        ori R185, 08000000
        ori R185, 10000000
        write_global_flag 0000000B, R185
        ret 
566:    list R129, 'ON<cr>OFF<cr>'
        let R60, R129
        ret 
1666:   call 566
        jmpi_= R60, 00000001, 389
        read_global_flag 0000000B, R185
        ori R185, 00100000
        write_global_flag 0000000B, R185
        ret 
389:    read_global_flag 0000000B, R185
        andi R185, FFEFFFFF
        write_global_flag 0000000B, R185
        ret 
2666:   call 566
        jmpi_= R60, 00000001, 481
        read_global_flag 0000000B, R185
        ori R185, 00200000
        write_global_flag 0000000B, R185
        ret 
481:    read_global_flag 0000000B, R185
        andi R185, FFDFFFFF
        write_global_flag 0000000B, R185
        ret 
3666:   call 566
        jmpi_= R60, 00000001, 593
        read_global_flag 0000000B, R185
        ori R185, 00400000
        write_global_flag 0000000B, R185
        ret 
593:    read_global_flag 0000000B, R185
        andi R185, FFBFFFFF
        write_global_flag 0000000B, R185
        ret 
4666:   call 566
        jmpi_= R60, 00000001, 689
        read_global_flag 0000000B, R185
        ori R185, 00800000
        write_global_flag 0000000B, R185
        ret 
689:    read_global_flag 0000000B, R185
        andi R185, FF7FFFFF
        write_global_flag 0000000B, R185
        ret 
5666:   call 566
        jmpi_= R60, 00000001, 764
        read_global_flag 0000000B, R185
        ori R185, 01000000
        write_global_flag 0000000B, R185
        ret 
764:    read_global_flag 0000000B, R185
        andi R185, FEFFFFFF
        write_global_flag 0000000B, R185
        ret 
6666:   call 566
        jmpi_= R60, 00000001, 827
        read_global_flag 0000000B, R185
        ori R185, 02000000
        write_global_flag 0000000B, R185
        ret 
827:    read_global_flag 0000000B, R185
        andi R185, FDFFFFFF
        write_global_flag 0000000B, R185
        ret 
7666:   call 566
        jmpi_= R60, 00000001, 900
        read_global_flag 0000000B, R185
        ori R185, 04000000
        write_global_flag 0000000B, R185
        ret 
900:    read_global_flag 0000000B, R185
        andi R185, FBFFFFFF
        write_global_flag 0000000B, R185
        ret 
8666:   call 566
        jmpi_= R60, 00000001, 957
        read_global_flag 0000000B, R185
        ori R185, 08000000
        write_global_flag 0000000B, R185
        ret 
957:    read_global_flag 0000000B, R185
        andi R185, F7FFFFFF
        write_global_flag 0000000B, R185
        ret 
9666:   call 566
        jmpi_= R60, 00000001, 1018
        read_global_flag 0000000B, R185
        ori R185, 10000000
        write_global_flag 0000000B, R185
        ret 
1018:   read_global_flag 0000000B, R185
        andi R185, EFFFFFFF
        write_global_flag 0000000B, R185
        ret 
619:    
5500:   nop 
        nop 
        nop 
        nop 
1000:   HEX: 38 5E C5 BE 2E 33 73 3F B5 74 C4 41 4E 30 C9 41 91
        HEX: CC C4 41 2E 33 73 3F 53 92 AD 41 00 20 B2 41 41 C9
        HEX: BD 41 2E 33 73 3F 4C 4A 0D BF AB B5 A6 41 E7 5B 48
        HEX: 41 2E 33 73 3F D1 FE 90 C1 D0 C2 89 41 E4 82 3B C0
        HEX: 2E 33 73 3F 7C CB CD C1 F9 61 49 42 00 00 00 00
1019:   HEX: 4B CC 7C 41 60 32 B3 3D 63 6A BE BE 29 4B 5F 41 7F
        HEX: 04 09 41 60 32 B3 3D D7 E1 44 C1 72 7C 15 41 3D AA
        HEX: D3 BE 60 32 B3 3D 4C 4E 6E C1 46 B8 35 41 02 72 36
        HEX: C1 60 32 B3 3D 3A 6B 40 C1 BC E5 6B 41 EB AE 9C C1
        HEX: 60 32 B3 3D F0 13 74 3E EC 8F 0D 42

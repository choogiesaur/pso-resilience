0:      get_difflvl2 R250
        get_slotnumber R251
        set_floor_handler 00000000, 1
        set_floor_handler 00000011, 12
        set_floor_handler 00000010, 29
        leti R60, 00000011
        leti R61, 0000000B
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000001
        leti R61, 00000001
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000002
        leti R61, 00000002
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000003
        leti R61, 00000003
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000004
        leti R61, 00000004
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000005
        leti R61, 00000005
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000006
        leti R61, 00000006
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000007
        leti R61, 00000007
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000008
        leti R61, 00000008
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000009
        leti R61, 00000009
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 0000000A
        leti R61, 0000000A
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 0000000B
        leti R61, 0000000B
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 0000000C
        leti R61, 0000000C
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 0000000D
        leti R61, 0000000D
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 0000000E
        leti R61, 0000000E
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 0000000F
        leti R61, 0000000F
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        leti R60, 00000010
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        map_designate R60
        leti R60, 00000012
        leti R61, 00000013
        leti R62, 00000001
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        jmpi_= R250, 00000000, 46
        jmpi_= R250, 00000001, 46
        jmpi_= R250, 00000002, 46
        jmpi_= R250, 00000003, 47
        ret 
1:      call_image_data 00002020, 48
        leti R40, 00000000
        leti R41, 00000001
        leti R42, 00000001
        unhide_obj R40
        jmpi_= R232, 00000001, 30
        thread_stg 20
        leti R40, 00000000
        leti R41, 00000000
        leti R42, 00000000
        leti R43, 00000010
        leti R44, 00000013
        at_coords_call R40
        call 31
        call 32
        set_quest_board_handler 00000000, 7, 'exit_quest'
        set R74
        set_quest_board_handler 00000001, 17, 'move_character_X'
        set R75
        set_quest_board_handler 00000002, 18, 'move_character_Y'
        set R76
        leti R60, 00000090
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000110
        p_setpos 00000000, R60
        ret 
2:      enable_movement1 00000000
        jmpi_= R250, 00000000, 3
        jmpi_= R250, 00000001, 4
        jmpi_= R250, 00000002, 5
        jmpi_= R250, 00000003, 6
        ret 
3:      gset 0035
        window_msg 'Hard mode unlocked!'
        winend 
        bgm 00000001
        ret 
4:      gset 0037
        window_msg 'Very Hard mode unlocked'
        winend 
        bgm 00000001
        ret 
5:      gset 0037
        window_msg 'Ultimate mode unlocked'
        winend 
        bgm 00000001
        ret 
6:      window_msg 'No more modes to unlock'
        winend 
        ret 
7:      QEXIT 
        disp_msg_qb 'ending quest...'
        close_msg_qb 
        ret 
8:      disable_movement1 00000000
        window_msg 'This machine will unlock things <cr>for you. <cr>Choose what you'd like to unlock:'
        winend 
        list R50, 'Unlock Next Difficulty Mode <cr>Unlock Caves/Mines/Ruins <cr>Unlock VR Spaceship/CCA/Seabed <cr>Unlock all quests <cr>End.'
        jmpi_= R50, 00000000, 2
        jmpi_= R50, 00000001, 9
        jmpi_= R50, 00000002, 11
        jmpi_= R50, 00000003, 10
        enable_movement1 00000000
        ret 
9:      gset 0018
        gset 0021
        gset 0030
        window_msg 'All areas unlocked on <cr><color 5>current difficulty<color 0>!'
        winend 
        bgm 00000001
        enable_movement1 00000000
        ret 
10:     gset 0064
        gset 0065
        gset 0066
        gset 0067
        gset 0068
        gset 0069
        gset 006A
        gset 006B
        gset 006C
        gset 006D
        gset 006E
        gset 006F
        gset 0070
        gset 0071
        gset 0072
        gset 0073
        gset 0074
        gset 0075
        gset 0076
        gset 0077
        gset 0078
        gset 0079
        gset 007A
        gset 007B
        gset 007C
        gset 007D
        gset 007E
        gset 007F
        gset 0080
        gset 0081
        gset 0082
        gset 0083
        gset 0084
        gset 0085
        gset 0086
        gset 0087
        gset 0088
        gset 0089
        gset 008A
        gset 008B
        gset 008C
        gset 008D
        gset 008E
        gset 008F
        gset 0090
        gset 0091
        gset 0092
        gset 0093
        gset 0094
        gset 0095
        window_msg 'All quests unlocked on <cr><color 5>current difficulty<color 0>!'
        winend 
        bgm 00000001
        enable_movement1 00000000
        ret 
11:     gset 004D
        gset 004E
        gset 004F
        gset 0050
        gset 0051
        gset 0052
        gset 0053
        gset 0054
        gset 0055
        gset 0056
        gset 0057
        gset 0058
        gset 0059
        gset 005A
        gset 005B
        gset 01AD
        window_msg 'All EP2 areas unlocked on <cr><color 5>current difficulty<color 0>!'
        winend 
        bgm 00000001
        enable_movement1 00000000
        ret 
12:     thread_stg 43
        call 31
        call 38
        window_msg 'There are two dragons, <cr>but they're stuck inside <cr>each other'
        winend 
        thread_stg 13
        thread_stg 15
        ret 
13:     jmpi_= R25, 00000001, 14
        sync 
        leti R240, 00000011
        leti R241, 00000001
        if_zone_clear R242, R240
        jmpi_= R242, 00000000, 13
        sync_register R25, 00000001
        ret 
14:     ret 
15:     sync 
        jmpi_= R25, 00000000, 15
        window_msg 'good job, you killed both dragons'
        window_msg 'go talk to the principal now <cr>for your reward'
        winend 
        set R90
        ret 
16:     HEX: 43 41 4C 55 53 00 00 00 00 00 00 00 00 00 00 00 00
        HEX: 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 00 00
        HEX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 0A 00
        HEX: 02 85 00 00 00 0F 00 00 00 03 00 00 00 05 00 D3 00
        HEX: CC 00 FA 00 00 2A BF 3E EB A4 D9 3E 00 00 00 00
17:     nop 
        list R70, '0 <cr>1 <cr>2 <cr>3 <cr>4 <cr>5 <cr>6 <cr>7 <cr>8 <cr>9 <cr>a <cr>b <cr>c <cr>d <cr>e <cr>f'
        list R71, '0 <cr>1 <cr>2 <cr>3 <cr>4 <cr>5 <cr>6 <cr>7 <cr>8 <cr>9 <cr>a <cr>b <cr>c <cr>d <cr>e <cr>f'
        muli R70, 00000010
        add R70, R71
        let R60, R70
        leti R61, 00000000
        let R62, R72
        leti R63, 00000014
        p_setpos 00000000, R60
        ret 
18:     list R72, '0 <cr>1 <cr>2 <cr>3 <cr>4 <cr>5 <cr>6 <cr>7 <cr>8 <cr>9 <cr>a <cr>b <cr>c <cr>d <cr>e <cr>f'
        list R73, '0 <cr>1 <cr>2 <cr>3 <cr>4 <cr>5 <cr>6 <cr>7 <cr>8 <cr>9 <cr>a <cr>b <cr>c <cr>d <cr>e <cr>f'
        muli R72, 00000010
        add R72, R73
        let R60, R70
        leti R61, 00000000
        let R62, R72
        leti R63, 00000014
        p_setpos 00000000, R60
        ret 
19:     window_msg 'get out of here u cheater'
        winend 
        call 20
        ret 
20:     scroll_text 000000F5, 00000087, 00000014, 0000000A, 00000002, 0.5, R230, 'Quest made by <color 4>soulja224466<color 7> <cr>Visit my forums at <cr>http://s13.invisionfree.com/soulja'
        ret 
21:     HEX: 46 4C 4F 57 45 4E 00 00 00 00 00 00 00 00 00 00 00
        HEX: 00 00 00 00 00 00 00 FF FF FF FF 05 00 00 00 00 00
        HEX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 06
        HEX: 02 8A 00 00 00 00 00 00 00 00 00 00 00 00 00 FF 00
        HEX: FF 00 FF 00 AB AA AA 3E 00 00 00 3F 00 00 00 00
22:     HEX: 68 65 61 74 65 64 20 68 65 61 76 79 00 00 00 00 00
        HEX: 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 00 00
        HEX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 04 00
        HEX: 03 51 00 00 00 00 00 0F 00 00 00 00 00 00 00 00 00
        HEX: 00 00 00 00 A4 70 7D 3F 00 00 00 00 00 00 00 00
23:     jmpi_= R98, 00000001, 50
        jmpi_= R77, 00000001, 49
        message 00000065, 'Did you defeat the <cr>double dragons?'
        jmpi_= R90, 00000000, 45
        add_msg 'Ok cool, well here u go'
        add_msg 'Recieved <color 2>BGM changer!'
        mesend 
        set_quest_board_handler 00000003, 35, 'BGM changer'
        set R77
        se 00000019
        ret 
24:     call 33
        p_look 00000002
        message 00000002, 'Two shops, plus the bank <cr>are accessible from the lobby  <cr>counter over there.'
        add_msg 'I also heard that if <cr>you defeat the double dragons, <cr>you'll get something special'
        sync 
        sync 
        sync 
        sync 
        sync 
        add_msg 'But I could be wrong...'
        mesend 
        leti R60, 000000CA
        leti R61, 00000004
        leti R62, 00000000
        leti R63, 00000000
        particle_id_V3 R60
        call 34
        ret 
25:     disable_movement1 00000000
        p_look 00000003
        window_msg '  soulja224466  <cr>Item Generator v1.0'
        winend 
        message 00000003, 'Start up the <cr><color 2>Item Generator?'
        mesend 
        list R10, 'No <cr>Yes'
        enable_movement1 00000000
        jmpi_= R10, 00000000, 14
        disable_movement1 00000000
        se 00000019
        list R10, '0 <cr>1 <cr>2 <cr>3'
        list R11, '0 <cr>1 <cr>2 <cr>3 <cr>4 <cr>5 <cr>6 <cr>7 <cr>8 <cr>9 <cr>a <cr>b <cr>c <cr>d <cr>e <cr>f'
        list R12, '0 <cr>1 <cr>2 <cr>3 <cr>4 <cr>5 <cr>6 <cr>7 <cr>8 <cr>9 <cr>a <cr>b <cr>c <cr>d <cr>e <cr>f'
        muli R11, 00001000
        muli R12, 00000100
        add R11, R12
        divi R11, 00000100
        list R13, '0 <cr>1 <cr>2 <cr>3 <cr>4 <cr>5 <cr>6 <cr>7 <cr>8 <cr>9 <cr>a <cr>b <cr>c <cr>d <cr>e <cr>f'
        list R14, '0 <cr>1 <cr>2 <cr>3 <cr>4 <cr>5 <cr>6 <cr>7 <cr>8 <cr>9 <cr>a <cr>b <cr>c <cr>d <cr>e <cr>f'
        muli R13, 00000010
        add R13, R14
        let R12, R13
        jmpi_= R10, 00000002, 28
        item_create R10, R12
        se 00000008
        enable_movement1 00000000
        ret 
26:     call 33
        p_look 00000001
        window_msg 'Hello, <hero name> <cr>I can make you <color 1>level 200'
        window_msg 'BUT, deposit all your inventory, <cr>or you will <color 2>lose it.'
        window_msg 'If you choose to level up, <cr><color 4>the quest will end.'
        window_msg 'OK, ready to level up?'
        winend 
        list R231, 'No <cr>Yes'
        call 34
        jmpi_= R231, 00000000, 14
        leti R233, 00000000
        leti R234, 00000010
        go_floor R233, R234
        ret 
27:     leti R13, 000000BE
        leti R14, 000000FF
        leti R15, 0000007F
        leti R16, 000000FF
        leti R17, 0000007F
        leti R18, 000000FF
        leti R19, 0000007F
        leti R20, 000000FF
        leti R21, 0000007F
        item_create2 R10, R22
        se 00000008
        enable_movement1 00000000
        ret 
28:     window_msg 'make this mag 1308?'
        winend 
        list R26, 'No <cr>Yes'
        call 34
        jmpi_= R26, 00000001, 27
        item_create R10, R12
        se 00000008
        enable_movement1 00000000
        ret 
29:     set_ba_rules 
        unknownF812 00000002
        unknownF813 00000002
        unknownF814 00000000
        unknownF815 00000002
        unknownF817 00000000
        unknownF816 00000001
        unknownF818 00000002
        unknownF819 00000001
        unknownF81A 00000001
        unknownF81B 00000001
        unknownF852 00000001
        death_lvl_up 00000003
        death_tech_lvl_up 00000002
        unknownF858 
        unknownF85E 00000000
        ba_set_lives 0000000A
        ba_set_tech_lvl 00000004
        set R232
        leti R233, 00000000
        leti R234, 00000000
        go_floor R233, R234
        ba_set_lvl 000000C7
        ba_set_time_limit 0000000A
        leti R0, 00000006
        unknownF86B R0
        unknownF86D 
        unknownF89E 00000001
        unknownF8A8 00000001
        leti R100, 00000000
        leti R101, 00000001
        leti R102, 00000064
        give_damage_score R100
        leti R100, 00000000
        leti R101, 00000001
        leti R102, 00000064
        take_damage_score R100
        leti R100, 00000000
        leti R101, 00000000
        leti R102, 00000001
        unk_score_F84A R100
        leti R100, 00000000
        leti R101, 00000000
        leti R102, 00000001
        unk_score_F84B R100
        leti R100, 000003E8
        leti R101, 00000000
        leti R102, 00000001
        kill_score R100
        leti R100, 000003E8
        leti R101, 00000000
        leti R102, 00000001
        death_score R100
        leti R100, 00000000
        leti R101, 00000000
        leti R102, 00000001
        unk_score_F84E R100
        leti R100, 000003E8
        leti R101, 00000000
        leti R102, 00000001
        enemy_death_score R100
        leti R100, 00000000
        leti R101, 00000000
        leti R102, 00000001
        meseta_score R100
        leti R100, 00000000
        leti R101, 00000005
        unknownF851 R100
        leti R100, 00000003
        leti R101, 00000005
        unknownF851 R100
        leti R100, 00000064
        leti R101, 00000000
        leti R102, 00000001
        unknownF880 R100
        unknownF860 
        unknownF861 00000001
        unknownF861 00000003
        unknownF861 00000005
        unknownF861 00000007
        unknownF861 00000009
        ba_disp_msg '[....<cr>'
        ba_close_msg 
        ret 
30:     QEXIT 
        ret 
31:     load_npc_data 
        get_npc_data 16
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 000000A0
        leti R63, 000000C0
        leti R64, 00000000
        leti R65, 00000001
        leti R66, 00000024
        npc_crp_id_v3 R60
        npc_stop 00000001
        load_npc_data 
        get_npc_data 21
        leti R60, 00000025
        leti R61, 00000000
        leti R62, 00000080
        leti R63, FFFFFFA0
        leti R64, 00000000
        leti R65, 00000002
        leti R66, 00000036
        npc_crp_id_v3 R60
        npc_stop 00000002
        load_npc_data 
        get_npc_data 22
        leti R60, FFFFFFDB
        leti R61, 00000000
        leti R62, 00000080
        leti R63, 00000060
        leti R64, 00000000
        leti R65, 00000003
        leti R66, 00000015
        npc_crp_id_v3 R60
        npc_stop 00000003
        ret 
32:     leti R60, 00000000
        leti R61, 00000000
        leti R62, 000000A0
        leti R63, 00000014
        leti R64, 0000001A
        leti R65, 0000000A
        set_obj_param R60, R70
        leti R60, 00000025
        leti R61, 00000000
        leti R62, 00000080
        leti R63, 00000014
        leti R64, 00000018
        leti R65, 0000000A
        set_obj_param R60, R70
        leti R60, FFFFFFDB
        leti R61, 00000000
        leti R62, 00000080
        leti R63, 00000014
        leti R64, 00000019
        leti R65, 0000000A
        set_obj_param R60, R70
        ret 
33:     disable_movement1 00000000
        cine_enable 
        cam_zmin 
        hud_hide 
        ret 
34:     enable_movement1 00000000
        cine_disable 
        cam_zmout 
        hud_show 
        ret 
35:     disp_msg_qb 'Select ur BGM'
        close_msg_qb 
        list R80, 'nothing <cr>epi1.adx <cr>epi2.adx <cr>ED_PIANO.adx <cr>matter.adx <cr>open.adx <cr>dreams.adx <cr>mambo.adx <cr>carnaval.adx <cr>hearts.adx <cr>NEXT'
        jmpi_= R80, 0000000A, 36
        call 37
        ret 
36:     list R81, 'nothing <cr>smile.adx <cr>nomal.adx <cr>chu_f.adx <cr>ENDING_LOOP.adx <cr>DreamS_KIDS.adx <cr>ESCAPE.adx <cr>LIVE.adx <cr>MILES.adx'
        jmpi_= R81, 00000000, 14
        addi R81, 00000009
        enable_bgmctrl R81
        ret 
37:     create_bgmctrl 
        enable_bgmctrl R80
        ret 
38:     npc_play 00000001
        npc_play 00000002
        npc_play 00000003
        ret 
39:     message 00000066, 'If you notice any bugs <cr>in this quest, soulja told <cr>me to report them at:'
        add_msg 'http://s13.invisionfree.com/soulja'
        add_msg 'OR at schtacks board, <cr>and he'll try to fix them'
        mesend 
        ret 
40:     message 00000067, 'greetz: <cr>schtack, cry0, alexh'
        add_msg 'they all helped soulja <cr>build his quest editor into <cr>something halfway useful.'
        add_msg 'To show his appreciation...'
        add_msg 'soulja even had schtacks <cr>picture framed and put onto <cr>the walls lol'
        mesend 
        ret 
41:     message 00000068, 'Information on the <cr>item generator?'
        add_msg 'Well, it's pretty easy.'
        add_msg 'Every item in PSO <cr>contains 6 digits.'
        add_msg 'But since the first <cr>digit is always 0, I omitted it.'
        add_msg 'So for your item, <cr>you'll only need the last 5 digits.'
        add_msg 'Example: <cr>Let's say you want <cr>a Red Partisan'
        add_msg 'Find the hex digits <cr>for that item'
        add_msg 'In this case: <cr>003E00 = RED PARTISAN'
        add_msg 'We will input 0, then 3, <cr>then E, then 0, then 0.'
        add_msg 'A Red partisan will then <cr>be in your inventory!'
        add_msg 'If you need a list of <cr>items, i have one <cr>located here:'
        add_msg 'http://home.comcast.net/~soulja224466/itemlist.html'
        add_msg 'Easy!'
        mesend 
        ret 
42:     message 00000069, 'Hey, I lost my Heat sword again!'
        sync 
        sync 
        sync 
        sync 
        sync 
        sync 
        add_msg '....'
        add_msg 'But I used soulja's <cr>item generator to get <cr>it back lol'
        add_msg 'That damn soulja, <cr>he's ruining the pso economy!'
        mesend 
        ret 
43:     sync 
        sync 
        jmpi_= R52, 00000001, 43
        enable_movement1 041D0A1C
        ujmp_< R1, R0, 29485
        let R0, R0
        nop 
        jmp_= R0, R40, 43
        ret 
44:     leti R52, 00000001
        let R111, R110
        addi R111, 00000001
        let R110, R111
        window_msg 'You are dead...'
        winend 
        ret 
45:     message 00000065, 'No? <cr>Well, talk to me <cr>after you do...'
        add_msg 'I'm just getting my <cr>viagra prescription refilled lol'
        mesend 
        ret 
46:     leti R60, 00000000
        leti R61, 00000000
        leti R62, 0000003E
        leti R63, 00000000
        map_designate R60
        ret 
47:     leti R60, 00000000
        leti R61, 00000000
        leti R62, 0000002F
        leti R63, 00000000
        map_designate R60
        ret 
48:     HEX: FF 47 42 49 58 08 00 00 00 4F 00 0C 40 B8 F9 3F 47
        HEX: 56 52 54 08 20 FD F6 00 0E 00 80 00 80 FF C6 16 C6
        HEX: 16 FD FD FF CF F8 F8 17 40 43 C0 FF 0C C6 16 CE 16
        HEX: 54 54 5F E9 03 E8 01 0F 00 F1 C0 F8 36 55 55 D3 3D
        HEX: C5 F8 7F 7D E9 7F F0 16 00 01 D3 30 40 F0 3F 00 D3
        HEX: 00 73 F0 FF 07 FF FC 00 C5 F5 C6 36 FD FF D3 FC 7F
        HEX: F0 4C 50 FF CF CC 42 29 C6 16 55 57 63 5C 5C F8 36
        HEX: FC F8 70 29 26 73 AE F1 40 8B 31 87 9C E9 D2 F8 29
        HEX: 05 39 FF 88 DC 1C DC D0 29 46 39 FF 67 C0 00 30 F1
        HEX: 31 47 8B FF 8D 0F 0D 3D 35 29 46 52 FF 08 03 03 01
        HEX: 0D 5A 08 93 FF AD 05 0D 0D 0D 83 4B 9B FF EE 00 3F
        HEX: 3F 55 72 CA 93 FF CD 00 F0 7C 54 93 AD A4 FF 2E 3F
        HEX: 35 0F 0F 93 CD A4 FF 2E C0 7F 73 D7 5A 08 83 FF 8C
        HEX: 00 CC FC 5C 49 C8 62 FF 6A D0 1C 0C C0 72 CA 9C FF
        HEX: 0F F0 DC 57 57 49 87 83 FF 2B C0 F0 F0 7C 29 05 51
        HEX: FF E9 C0 C0 70 70 18 C5 29 E3 05 00 F7 31 46 FF 5A
        HEX: 29 F0 00 C0 70 18 C6 A7 39 67 00 F8 C5 FF 18 C5 0F
        HEX: 00 00 70 18 A4 FF 18 C5 70 FF FF 00 18 C5 EF 20 C5
        HEX: F0 C0 84 FF 03 0C 8F FF F5 10 A5 E0 8F C3 70 5F 10
        HEX: F0 1F F5 03 00 03 18 9F F0 30 DF C7 5C 1E E8 00 00
        HEX: F0 D7 FF E8 E5 3D 03 03 03 18 E5 3F 21 26 D5 DF 0F
        HEX: 03 FD E8 D1 30 00 37 18 A5 FF 20 E5 D5 03 00 00 21
        HEX: 25 FF B5 B5 05 0D 01 00 B5 B4 FF BD D6 00 C0 40 30
        HEX: 18 A5 FF 31 86 3D 0C 00 00 18 E5 3F BD D5 D5 35 35
        HEX: 0D 7E E8 B5 FC 50 F3 15 FA F8 FF 3C C0 7C B5 7F 94
        HEX: BD B5 D5 FD 3D 35 FA F0 7C 7C 7C 40 B5 FF B4 B5 B5
        HEX: F7 C0 F3 3F AD FF 74 B5 B5 5D 54 54 5C B5 7F 94 B5
        HEX: B5 F3 C7 37 3C 3A F8 DF F3 5C FE 08 D6 99 40 40 70
        HEX: 70 FF 49 87 6A 29 00 FF FD 55 8F 5A 29 D6 77 08 1F
        HEX: D0 62 08 72 8A FF 28 5D 31 04 6A 48 D4 FC FF 7C 5C
        HEX: 31 46 52 09 01 03 FF 03 00 31 05 7A E9 FC FC FF FC
        HEX: 5C 29 26 39 88 3C 05 FF 0D 03 C6 15 C6 16 0D 0D FB
        HEX: 73 50 82 F1 15 3D 01 0D F8 F0 36 0F 0D 0D E9 0F F0
        HEX: 35 7D 7D E9 3F F8 D4 CC 10 A9 13 F8 73 79 F6 F4 F8
        HEX: 00 40 F0 00 F4 C8 D4 3C 07 D0 BF C5 F6 C6 16 C3 FC
        HEX: C2 F1 FF C5 F6 70 40 C0 C0 94 71 FF C6 36 57 54 54
        HEX: 54 21 26 BF 63 2C 40 C0 00 C0 01 F1 DF C8 35 35 35
        HEX: 37 81 F0 87 E8 59 C1 EF 39 88 4F D7 F3 F0 C0 F0 FF
        HEX: C0 C3 03 01 31 26 62 8A FF 03 00 3D 3D 62 89 8B 6C
        HEX: FE 89 F0 0D 49 C8 83 4C 00 FF 0F 0F 31 7B 0B 9B CE
        HEX: 00 FF 30 1F 15 93 8C 9C 0E 0D FF 3F 3F 3F 9B EE A4
        HEX: 4F 30 7F 17 14 0C 93 8C A4 2E FC E0 C5 9B ED AC 4F
        HEX: FF 0C 00 0C F5 93 CD 9C 0F FF F4 F7 0C 00 62 69 93
        HEX: CD FF F0 70 70 5F 9B CD A4 2F FE 41 F3 7C 83 4C 9B
        HEX: EE FC FF 5C 57 55 49 A8 7B 0B 00 7F C0 F0 70 28 E5
        HEX: 62 68 FF 09 F0 57 72 AA 8B AC F0 FC FF 77 55 62 69
        HEX: 8B 8C 00 F0 3F FF 71 18 C5 39 66 36 29 7C 41 F0 E5
        HEX: FE B0 4C 39 26 8B 4D 00 7F F0 5F 55 20 E5 72 EB 8C
        HEX: E8 7F E8 9F E6 F0 FC FF DD 7E E0 00 F0 F0 5F 20 E5
        HEX: FF 42 EE 00 70 20 E5 29 06 00 E3 F0 3C E0 18 C5 FF
        HEX: 0C 3C FC 4C 10 A4 10 C5 CF 5C D5 FD FC D0 E8 77 02
        HEX: EE D4 DC FB 00 40 81 EE E5 03 31 0D BF 03 18 C6 9C
        HEX: F3 01 81 EF F4 E8 FF 3F F5 FF DF 18 C4 20 E6 05 81
        HEX: F3 4A 7F 6A BD B5 55 55 D5 35 FF 41 F0 B4 40 F0 0F
        HEX: 3F 18 C5 FB B5 75 81 EE 03 B5 74 B5 DF B4 15 15 15
        HEX: C5 C1 F0 B4 FB 70 F3 43 F0 B4 7C 7C FF F1 DC F8 95
        HEX: 57 70 E3 FC C4 E0 94 30 FF 0F 01 CD 83 2A E6 B9 D0
        HEX: FF D0 C0 FC 7B 08 93 AB C0 FF 7F 4F 70 52 27 F7 7B
        HEX: DC FD DC 01 F5 47 8B AB 70 C0 FE 81 E4 23 93 C9 5C
        HEX: 5C 5C C7 F0 31 26 48 34 FF 4F 43 29 26 41 67 77 C0
        HEX: 7F C0 30 29 26 31 87 70 F4 37 41 E2 16 15 35 7B 0D
        HEX: 00 42 E2 75 55 55 9F 83 EF 55 F0 03 3F EE F8 F3 C0
        HEX: C1 C3 DF 40 10 E9 10 E0 36 0C CC D3 15 0C D0 0F F3
        HEX: D3 43 C0 F8 FC 50 BF 70 7C 8C 51 C6 36 49 EB DE 81
        HEX: ED 4A 49 40 F9 EF 84 EB 0E C6 01 DE 01 F0 05 42 FF
        HEX: 08 70 C0 C0 40 18 E5 29 FF 27 5F 70 F0 F0 20 E6 52
        HEX: DF 49 03 01 01 01 C1 E3 26 F1 70 E7 20 E5 6A F1 EB
        HEX: F0 0D 62 6A BB 9B CD 42 E0 93 8D 41 E1 FF 3F 35 35
        HEX: 7B 2B A4 0E 0D FF 0D 3D 3D 9B EE AC 6F 0F FF 0F 0D
        HEX: 0F A4 0E B4 8F 0F FF 35 35 31 A4 2E B4 8F CD FF 7F
        HEX: 5C 5C 7B 0B AC 70 55 1F 55 57 70 5A 28 8F F8 7F C3
        HEX: 00 D8 8F 70 70 5C FC F8 FF A4 0E 00 70 5F D7 62 48
        HEX: FF 9B EE 55 F5 CF 00 83 2C FF 9C 0E 55 DF 3F 0F 93
        HEX: AD 7E 01 DE F3 5F 70 93 8D FC F8 57 CF 00 8B 6C FF
        HEX: 9B EE 57 57 FC 3C 51 C8 FF 93 AD 53 7C 70 C0 8B 6D
        HEX: FF 93 AD 00 7C 7C C0 6A AA FF 8B 8D F0 57 55 75 39
        HEX: 46 EF 83 4C 55 F0 01 DB 06 83 FF 2C 55 FF 00 00 39
        HEX: 66 83 FD 6C 89 ED 57 21 06 5A 29 3F 00 C0 FC 7F 29
        HEX: 26 FE E0 FF 0F 00 49 C8 6A FF AA 70 5C F7 0D 18 C4
        HEX: 41 AD 87 01 ED 7C 41 E0 01 EF BF 7C 40 29 26 5A 49
        HEX: 89 EC FF 7C 10 A4 29 25 C0 00 40 7E 02 F0 C5 CC 33
        HEX: 37 3F 2C E0 A5 41 E4 FE E8 18 C5 3D 0D 03 03 FE 42
        HEX: DE 70 5C DC D7 18 C5 77 4A 6A 01 C1 F3 39 C8 8F C1
        HEX: EF D5 15 15 E8 FF E6 3D 0C 03 00 18 A5 B5 DF B4 35
        HEX: 05 05 05 01 E0 B4 75 40 41 E5 C3 EF 40 C0 BF 82 DF
        HEX: B4 34 14 04 0F 02 F0 FF DC DC 7C 77 52 AA B5 94 FF
        HEX: 70 7C 5C 54 29 48 39 C8 18 D9 40 FF F0 B4 54 5C 50
        HEX: 50 29 66 FB 42 09 49 D8 40 29 66 31 FF 67 F0 33 3F
        HEX: 0D 29 46 29 FF 67 00 FD 0F 43 29 46 31 DF A7 CD F7
        HEX: FF 03 C1 E3 87 F7 7F 35 0F C3 E1 03 75 F7 FD 01 82
        HEX: F1 FD D4 F7 7F C5 7F F5 C5 F6 3C 00 00 57 7A F0 35
        HEX: 3F 0C 0F FA E0 CC 00 CF D5 BD 68 F0 89 F6 43 FA F8
        HEX: 51 33 30 10 BD FF D5 C6 15 7D FF F0 F0 63 F7 0B C5
        HEX: F5 83 F0 06 4A 08 F8 58 F0 31 86 BD E9 F5 80 21 26
        HEX: 39 EB C7 5C F9 D9 01 E7 E5 C0 BE 79 D1 20 E6 73 2C
        HEX: 02 E1 FF 18 C5 21 06 03 0D 0D 35 D2 C2 F5 F0 83 6C
        HEX: FD 9C 89 F0 3F 3C 49 E7 A4 EF 0E 55 7F F0 41 F5 93
        HEX: CD FF 57 5C 50 70 39 87 6A AA FF C0 C0 03 35 31 26
        HEX: 93 AD 7D 5C C2 E9 46 52 29 0D FF 79 EF 31 46 72 AA
        HEX: 00 00 FF FF 55 41 87 72 AA 0F 0F FF FF 57 51 C7 62
        HEX: 49 C3 00 30 FF D7 62 49 8B 8D 35 3D 0D FF 0D 6A 69
        HEX: 6A 8A 3C 3D 0D 9F 00 6A 8A 8B 8C BE A0 7A EB 93 8D
        HEX: 54 39 F4 6F 49 A7 7A EA 49 EC C0 DC F0 CD F0 01 D8
        HEX: 59 FF E8 72 AA C0 70 40 40 39 FD 67 41 F1 FC FF 55
        HEX: 29 06 FD 5A C9 C6 FC 55 62 08 62 FF 49 C0 70 F1 01
        HEX: 5A 28 72 47 CB 00 00 58 F1 42 F0 90 39 46 62 7B 8A
        HEX: 0D 01 E2 62 49 7A 7F 41 DF DF 57 49 C7 6A AA FF 01
        HEX: E0 7C 41 A7 62 69 70 70 1D F0 41 E1 49 C7 FF A1 40
        HEX: 49 C7 59 E8 0F 00 FD 30 41 CD 51 E8 70 70 50 FF 5C
        HEX: 10 84 18 C5 7F 50 50 3D DC 03 CE 0D 3D 00 3D F8 3C
        HEX: D4 FC 0F DD F8 01 FC FC 02 CE C5 7E 41 DB 30 10 64
        HEX: B5 B5 4C 51 01 F0 FF DC D4 1C FC 10 84 B5 95 FE 89
        HEX: E6 03 AD 73 B5 95 14 B7 35 30 3F 82 F0 7F F9 EF F8
        HEX: F0 B4 FD 0F 03 FF 43 B5 73 B5 94 40 7F FF FF 7F 5A
        HEX: CB B5 95 50 50 50 DF 50 31 87 52 8B 89 C9 70 B8 F0
        HEX: B5 50 79 E0 FF 41 A8 63 0D C0 40 40 40 BF 29 46 41
        HEX: E8 00 70 01 E3 FF 46 39 88 00 00 0F D5 31 FF 67 41
        HEX: C8 F0 70 00 C0 31 7F 47 31 88 00 C0 5F 50 DF 82 F0
        HEX: FF 0C D0 D0 42 F1 3C E3 FC D4 F8 C5 F6 4F D7 CF 00
        HEX: 30 F8 FF D4 30 00 00 BD D5 C5 F6 FF DF 1C 10 50 BD
        HEX: B5 C5 F5 8F FC FC DC DC D8 FF 15 50 DF DC 70 7B CE
        HEX: C5 FB F5 55 B9 D0 31 87 BD B5 FE C9 EC C0 21 05 39
        HEX: A7 7C 5D C0 01 F0 66 6B 42 D0 D7 01 E6 31 67 82 F4
        HEX: C1 D6 26 7F 3F 3F 1F DF 29 05 83 FD 03 D1 02 E0 57
        HEX: 70 40 70 20 F7 C5 73 0D 09 E9 05 52 08 D3 7B 2B D8
        HEX: 5A 29 FF 83 4B 0F 3D 35 D7 62 69 FE 41 D4 0D 0C CC
        HEX: 49 C8 7B FF 2B 5F 7F FF 3C 72 8A 8B FF 6C FF 5F 5C
        HEX: 00 59 C7 83 FF 2B 5F 5F FF 00 20 E5 83 77 0C 57 7C
        HEX: 02 BE 62 29 EC F9 0C C1 F1 89 53 F8 E8 6A 89 93 CE
        HEX: FE 41 CA 01 39 26 62 4A 0F 7F 03 00 01 62 49 93 AD
        HEX: FF C2 DD 8B 6C AC 4F F0 5C 5C DF DC 59 C7 7A C9 89
        HEX: F7 40 FF 9B CD AC 4F DC 3C 3C 3C AF 49 A7 93 4C 02
        HEX: F7 41 F1 FF 29 F5 FF F0 C0 41 46 6A FF 8A D5 0D 0D
        HEX: 00 31 06 51 FF C8 C0 00 F0 70 29 06 52 FE 41 F0 30
        HEX: 1C 49 C7 72 AA FF 55 57 57 00 51 C7 6A 89 F7 5F CF
        HEX: C0 41 C2 29 06 7D FF C0 00 03 20 E5 49 C8 15 FE 79
        HEX: EF 49 A7 5A 08 F0 7C FF 5C D7 20 E5 51 E8 5C 50 7F
        HEX: 54 54 39 66 5A 29 35 FC 18 41 86 5A 28 FC F7 70 54
        HEX: 57 C3 BD FD FD 7F 74 F8 3F C3 40 B7 41 CF 31 46 41
        HEX: CD 40 C2 F0 EF 70 FC 0C 0C 82 BE FF D3 BF 17 15 10
        HEX: 84 7B EF 89 F0 A9 00 F0 D7 81 DF EF 10 A4 31 A7 81
        HEX: C2 03 AD AF 94 BD D6 C0 79 F5 03 F0 7F F0 C0 30 7B
        HEX: EF B5 B4 FF C9 DE 15 B5 93 B5 94 CF 75 BF FF FF 52
        HEX: 69 B5 B5 89 F0 DF 5C 41 C8 5A EC 09 E4 F0 EF 62 EB
        HEX: B5 94 82 E3 41 C8 FB 6B 0D C2 CB 31 87 41 C9 6F C0
        HEX: F0 FF 75 41 F0 A8 3F 82 B8 41 A8 41 C8 41 BE 1F 39
        HEX: 87 41 C8 01 F8 25 71 82 F1 90 DF 81 F0 F5 34 F7 30
        HEX: 81 F0 BD 1F F5 30 10 FD 17 3F F8 D6 0C CC 5C 5C FD
        HEX: E8 C5 CF 00 00 42 28 4A 41 E1 B9 D0 E0 FF F7 0F 03
        HEX: 30 39 E7 C5 F6 FA C9 E0 82 C1 A8 50 D0 70 FF 70 21
        HEX: 05 31 46 5F F3 C3 B1 C3 F0 C8 89 D0 F7 F0 29 05 71
        HEX: B0 70 F0 C0 FA 82 E0 01 EF 40 18 C5 7B 3B 4C 05 B9
        HEX: BF 10 A4 E2 F0 50 21 06 C7 83 8C 05 38 62 8F 28 72
        HEX: EA FC 57 FF 39 25 6A 8A 50 40 C0 03 FE 81 B1 4C F0
        HEX: C0 C3 7D 49 FD 86 C1 BF 00 FF 5F 18 E6 FB 41 C8 41
        HEX: B2 73 21 06 6A 7F 8A 0F 0F 0F 35 4A 0A FF 81 C1 00
        HEX: 00 7D 5A 28 93 6D FF 00 03 3D D5 39 06 83 4C FF 03
        HEX: 0D F5 F5 7B 2B 9B CE FD 03 39 DD 7A CA 9B CD 03 FF
        HEX: 0D FD D5 8B 6C A3 EE 0D F7 3D F5 F5 C1 BE 30 0C 04
        HEX: BF 07 07 59 E8 93 8D 89 F0 BF 70 A3 CE AC 2F 37 C1
        HEX: DD EF 6A 6A A3 CE 42 B6 51 C8 FE 81 E1 FF F7 D5 39
        HEX: 66 72 DF CA 3C FC 5F 57 81 EC 4C FF 0F 31 35 0D 82
        HEX: EA 8B 4C FF 00 FF 57 53 29 06 6A 48 BA 41 DF 41 D0
        HEX: 51 C8 C2 DF FF 6A 69 8B 2B C0 7F 57 55 B7 62 49 83
        HEX: 41 BD 3F 41 DF BB 5A 08 C1 EC D5 52 41 DE 6F CC CC
        HEX: F3 DF 01 DF EA BC D8 57 62 48 C1 DA 7F 30 FC 5C 18
        HEX: A4 52 08 FD C2 EC 01 F0 A5 07 0C 40 3F 6F 18 A4 62
        HEX: 68 41 DF 50 FF 03 AE C0 00 7C 10 84 10 A5 6F 3D F0
        HEX: 0C C0 81 CE 66 1D 82 E0 42 EF 00 00 DF E0 84 21 05
        HEX: 0D F9 B1 7B B7 CE B5 94 C9 F6 05 41 E0 FF 94 FF 3F
        HEX: 70 30 52 8B B5 B1 95 F0 15 81 AF FF 94 5F 7F 70 70
        HEX: 7B AE B5 DD B5 84 F0 62 CC 82 C0 8C FF 50 B5 B5 F4
        HEX: F4 F4 F4 41 7F C8 52 8A F0 50 70 D7 F7 C1 F0 E8 FC
        HEX: 41 DF 39 67 52 DF 29 3F 0D 0D 03 81 DA 6A C7 00 00
        HEX: 3F E8 49 DF E8 00 C0 CC 05 C2 F0 D7 C7 0C 00 FC F8
        HEX: D5 E7 CC C1 CF F8 55 F7 C3 C0 40 C2 F0 54 5C 0F E9
        HEX: 03 F0 50 40 03 DF 30 31 A7 BD F6 09 B2 40 E3 B5 B5
        HEX: F0 70 FC 1F 70 29 45 BD D6 FB F0 73 41 C0 29 00 30
        HEX: F0 FB 5C 21 81 F0 C0 70 4F 75 EF 29 45 9C B2 C2 A4
        HEX: 29 05 DF 31 67 3C 1C DC 81 E8 29 FF 26 F0 F0 F3 F1
        HEX: 52 6A 9B FF EE 0F 1D 15 D5 10 A5 52 FB 09 00 81 CF
        HEX: 83 6D A4 0E BF 3F 1F D5 55 83 4C 41 A1 DF C0 70 53
        HEX: 83 2A C1 C3 00 EF CF 45 93 CE C1 C1 3F FD FF D5 9B
        HEX: CD A3 EE 00 FC 7C F7 7C 83 2A 81 F1 FD 55 55 E3 93
        HEX: 8D F0 00 0D F9 05 E8 00 03 0D FE C1 B0 0E 05 35 FD
        HEX: 5F 9B FF AE A3 EE 3C DC 5C 70 9B 7F AD A3 CE 04 D7
        HEX: 13 C3 8C F8 EE 68 FF 70 82 EB 9B AE 7D 7F FF DF F0
        HEX: 9B AE AC 30 41 EE 05 D3 72 8A E8 7C 7C DF 7A 89 AC
        HEX: 0F D5 41 C1 61 AF C8 9B AE 5C C1 C0 82 F0 FE 49 F7
        HEX: 03 83 0B 8B 6C F0 FF F0 3F 15 61 E8 7A EB FD FE 42
        HEX: CB 0B 93 6C 37 3D 3D D1 35 E8 C3 EB 7B FF 0B 8B 2C
        HEX: FC FC 73 55 8B F7 2C 93 6C 01 C1 7F 82 EB FF 8B 2C
        HEX: FF 3F 30 70 72 CA FB 83 2C 82 AE 6A 89 7B 0B F8 E8
        HEX: 70 82 CA 8B EF 2C 7F FC FC 81 DB 83 0B BA C1 B8 81
        HEX: DA 6A 69 02 E3 F7 10 A4 20 C1 D0 40 40 41 7D 66 84
        HEX: FF 18 A4 28 E5 BD C2 F6 83 D0 DC FC 3C C2 EF FB F4
        HEX: F4 81 DF A4 18 A6 3C A7 14 D4 F4 F0 FF DF FD 3D 07
        HEX: 21 46 02 F0 35 FF 35 AD 73 AD 74 10 F0 C0 7F 7C 29
        HEX: 87 AD 94 35 35 F1 01 F0 F0 4D 0D 03 7F C3 A5 13 B5
        HEX: 94 F4 FC EF C1 DF 8A 73 4C 49 DD 40 AD F7 53 B5 94
        HEX: 41 B5 03 62 8B 93 94 4F 90 41 EB BD 8A 01 E5 5F 51
        HEX: E7 81 CA FF 00 FF 15 62 69 6A AA D7 FF D4 3C 00 5A
        HEX: 49 6A CA DF FF D0 30 F0 BD B4 BD D5 5C A7 43 40 3C
        HEX: F8 0D A7 CD 0D 03 F8 74 D3 30 3F E8 B5 55 F7 F5 0F
        HEX: FF 82 F0 70 70 FC F7 C0 42 27 01 F0 73 43 5F 84 E8
        HEX: 28 FF 70 94 70 BD B5 50 50 5C 5F 5F 31 66 A5 13 89
        HEX: D1 C7 81 F0 39 87 01 70 8F 41 C7 AD 53 F9 DF 5C 20
        HEX: E5 4A 28 82 C7 20 F7 C4 6A CB 42 B0 9B ED 9C 5F 0F
        HEX: 00 CC 40 CC 42 B0 3C F1 01 9B EE FE F0 74 4F C0 A3
        HEX: CE A3 DF EF 0C 3C D3 DC 02 F2 70 FF 30 C0 03 9B ED
        HEX: A4 0E 5C FF 7F 5F 00 A3 AE A3 EF 03 FF 03 3D 0D A3
        HEX: AE AC 2F 03 FF 0F 0D 35 A3 EE AC 2F 00 A7 DC 5C F0
        HEX: F8 37 D7 DF 50 F0 02 F0 49 8D F0 DF 93 6D A3 EE 40
        HEX: 01 DE 38 FF E4 93 8D 5F 5C 7C 70 82 FF CB A3 EE 5F
        HEX: 7C 7C 5C 30 EB C4 8B 01 F4 41 AC 83 7A FF AA 57 FF
        HEX: 0F 0F 20 A4 6A ED 28 C3 AB A4 41 97 3F 17 FF D7 28
        HEX: A4 59 E8 5C 5C 54 FF 57 39 26 7A AA FD 3D 3D DF 3F
        HEX: 7A CA 8B 6C C9 F4 3D FF 39 06 6A 49 35 3D 3F 0F 6F
        HEX: 6A 49 8B 4C 89 DA 0D 7F 81 F0 4C 7F 07 F7 C0 8B ED
        HEX: 01 F0 89 C1 7F 41 EF 4C FD E2 01 F5 F8 6D FC BE B9
        HEX: F7 72 AA 83 2C 02 8D 7E 41 CA 8A 7C 7C F0 F0 72 F0
        HEX: 01 F8 C0 6A F4 F0 41 CC 40 51 E8 7A 82 F0 C1 B7 A5
        HEX: 30 E5 D7 02 CC 5A 08 82 BE 02 F0 31 C9 05 F0 C2 DF
        HEX: 04 F7 0C FC C3 82 F0 04 04 04 FD F4 84 BF CC F4 10
        HEX: A3 21 FD 05 C1 D8 01 31 A7 AD 54 FE 83 E0 53 AD 74
        HEX: 55 54 FC DF 7C 42 08 B5 94 09 F0 D5 F8 F0 73 7C FC
        HEX: 7F 75 00 82 F0 42 DE 52 49 91 41 85 B0 FE D8 01 C1
        HEX: F3 00 4A 09 AD E9 53 F0 52 08 5A 1F 6A 57 00 0D 3D
        HEX: FF F8 4A F0 0F CF 0D 51 E8 F7 5A 6A FC B9 F2 49 C7
        HEX: 5A DF 49 FD F3 FC 00 43 F0 35 FB FD 5C C2 F0 75 FD
        HEX: FD DC 3E 42 8C 55 FF 3F C0 3D F8 F4 30 00 0C FA F8
        HEX: 01 F0 70 F0 AD 73 BF BD B4 4C 54 13 4D 02 8B EF D0
        HEX: FC F0 40 02 8C 4C DC 3F 0C 00 6B 2C B5 74 7E 31 54
        HEX: 29 05 52 49 DF 02 D5 94 70 B5 94 49 F5 55 57 31 46
        HEX: 7B 51 CE 01 F0 FD 86 F0 01 F0 4F 7F 40 40 20 F7 C5
        HEX: 62 8A 42 C9 93 CE 9C ED 2F 83 C3 CE 41 A3 CF 34 FB
        HEX: 00 9B 41 E0 01 00 03 00 FE 81 A2 CE 75 40 CC 03 9B
        HEX: FF CD 9B EE FD 00 F0 00 A3 F8 E8 40 CC 1C 3C D6 82
        HEX: F0 3C F9 D0 02 E0 77 FA B9 DF 03 E0 05 35 D5 82 FF
        HEX: EB A4 0E 7C 5C 5C 5F 61 FD A8 82 CF C3 70 8B 6C A4
        HEX: DF 0E 5F 5F 5F 5C 01 7E AE 3E C2 9C 5A 08 7A EC FE
        HEX: 41 30 51 A7 62 28 FF F7 FF 70 40 81 AE 69 57 FC 3B
        HEX: 30 03 41 D2 29 7C 62 27 E8 29 F7 42 CE 62 48 C2 DF
        HEX: 0D 01 41 FE 81 BF 3D 0D 0F 03 62 28 FB 83 0B C9 87
        HEX: 03 83 2B 8B 7F 6C 00 C0 30 7F 83 4B C5 01 DF 82 DB
        HEX: F0 F5 B7 17 17 17 81 DF 6C B9 CA DF C0 72 A9 83 0B
        HEX: 42 89 62 FF 49 72 89 7C 7C FC F0 62 3F 49 7B 0B 5F
        HEX: 5F 7C FE F0 6A 8A F0 7C 7C 70 D6 81 F0 49 01 F0 41
        HEX: 8F 39 C5 46 82 E7 80 48 A2 89 BB F0 41 CF BB 70 50
        HEX: 01 D7 21 06 C1 F0 5F D0 10 84 4A 4A 42 D7 FF 41 BD
        HEX: A8 00 30 3C 17 10 A4 FB 9C D2 C2 77 8C 51 AD 74 EF
        HEX: 15 15 1F 1D 41 F1 53 55 FF 73 C0 70 A4 F2 AD 53 35
        HEX: DF F0 FF FF A5 33 C1 E4 F0 C7 F0 00 A5 E8 C3 7F C1
        HEX: 00 00 4A 07 B5 74 FB 03 F0 32 49 99 4D C1 F5 52 11
        HEX: 49 F0 FF 68 52 09 5A 4A 50 F0 F0 DF FC 49 C7 52 09
        HEX: 09 BF 7F BB 5A 29 42 AA 30 5C 81 EF EF 49 C1 0F 0C
        HEX: 41 7B B5 B5 EF CC 55 5C CF 02 9D 3D C0 FD F0 02 8D
        HEX: B5 C3 FD 03 00 74 F8 FF 5C FF 7A F8 B4 43 0F 33 3E
        HEX: F0 7F D5 00 7D F8 94 50 5C F4 57 DF C2 8B C0 C0 00
        HEX: 7F 42 BB 70 7F C3 C0 F0 21 26 AD 74 FB C9 E7 50 42
        HEX: CB 5C 54 FC C0 FE 42 9B 5C 5C 57 57 29 25 FF 49 E8
        HEX: 01 03 0F 0F 83 8D F7 94 0F 7F 79 D6 41 25 83 75 AE
        HEX: 01 83 01 F7 93 CE FF C2 B9 8B 8C 93 CE 57 FC C0 FD
        HEX: F0 01 93 CD CF 03 15 3D 71 83 F0 DC 3F FF 01 71 AD
        HEX: 9B CD 01 0D 33 01 BA C2 EF 01 C5 FD 83 41 8F BF 55
        HEX: 53 5C 70 83 2B 41 91 AA 79 6D C2 90 09 F1 C1 D4 EF
        HEX: 9B EE 5C 7C 41 9E C7 72 6D CA 01 98 00 41 78 EB FF
        HEX: 82 A3 59 67 6A 69 FF DC FC EE 01 B3 7B 2C 41 F5 0D
        HEX: 41 F7 66 7B 2C 01 D3 5C 59 67 FB 83 0C 49 98 00 51
        HEX: 47 82 7B EB 5C 42 94 67 51 C7 6C F9 50 82 9D 3D DF
        HEX: 39 AE 49 A7 61 E9 82 8D 39 FD 45 C1 AF F0 70 50 5A
        HEX: 28 FF 83 4C D5 F5 3D 0D 7B 0B 6E 42 E1 FC C0 41 E9
        HEX: 0B F7 89 CE 00 62 81 D0 57 FF FF DF 3C 62 28 7B 0B
        HEX: C9 87 7C FB 62 48 C2 E0 1C DC 6A 89 BB 72 CB 42 DC
        HEX: 5A 28 C2 E0 BB 7C 70 81 E4 28 47 C1 EF FD 31 02 9D
        HEX: C0 C3 4D 51 E9 BF 5A 48 70 F0 10 50 C2 9C EF 1D 33
        HEX: 33 D0 01 78 29 0C FF 3C D4 54 20 E4 AD 54 0D FA F9
        HEX: B6 81 AB 09 7C C4 F4 5F 54 29 25 A5 33 42 E0 FF C1
        HEX: F0 33 FC 5F 10 0F A5 33 BF A5 53 17 D7 54 7F 42 F0
        HEX: F7 4D 7D FD 01 F0 A5 53 C0 27 CC 01 00 E0 BF 89 C7
        HEX: 00 5A 29 AD 54 89 F0 F1 50 E8 33 D4 54 BF 7F FC 41
        HEX: A7 AD 74 42 9F 3E 02 D0 4F 73 43 00 7D F8 C0 73 43
        HEX: 0F 49 FD 01 E0 41 98 00 39 87 62 8A 6F F5 FC 3C FC
        HEX: 82 F1 F7 F4 38 C1 F1 95 0F CF 93 DF 03 F0 01 C0 E9
        HEX: F4 F8 F0 50 F3 2E C2 7B 94 73 81 72 9D F8 5C F0 03
        HEX: ED F8 41 A7 70 C1 F0 74 45 27 1F 70 03 F8 7F 81 F6
        HEX: C0 A5 12 B5 73 7C E9 41 B7 F0 CF CD 43 FD CC C2 DB
        HEX: 73 43 01 3F 6A FF 49 A4 B1 F0 7F 7F 73 6A FF 8A 93
        HEX: 8D 15 55 77 F7 83 EF 4C AD 33 C0 39 EB 8B 4C DB A3
        HEX: EE 09 CB C0 81 F0 CD FA 02 C4 81 F0 ED 30 C7 07 DF
        HEX: 3F 83 6D 8B CD 42 B8 83 8F AD 93 CD 35 E8 DF 5A 28
        HEX: 9B ED 5C 81 8F 49 FE 81 A5 57 F0 F3 C0 51 A7 D3 93
        HEX: AD 28 41 45 55 72 C1 B4 41 F1 01 93 BF 01 EE 00 30
        HEX: C5 6A 2A 09 B8 FF 3D 39 05 9B AE 00 0F F5 DF D5 72
        HEX: 6B 93 8E 02 72 41 F7 26 6A 4A 01 F1 5F 30 E5 FD 62
        HEX: 01 91 F0 55 82 8B 8A F1 EC B9 70 72 49 FB 8A AB C2
        HEX: F2 30 E5 59 A8 7E C1 59 7C 30 E5 49 87 FF 89 E8 00
        HEX: 51 67 72 8B F0 F0 BF FF 55 38 E6 72 8A C2 B1 FE 41
        HEX: 76 66 C1 43 73 3F 41 F7 A7 72 E9 C1 C3 05 39 45 FB
        HEX: 49 C6 09 EA 70 39 46 6A FD AA 01 5B 0F 5A 49 72 AA
        HEX: FD 4C C2 DC 29 62 49 70 30 A9 F0 F8 69 C2 EB FF 5A
        HEX: 29 5A 29 C0 77 57 DC B8 48 29 5F F9 82 F6 42 DD 55
        HEX: 39 BC 18 A3 5A FD 28 82 76 08 63 20 C5 D7 FF 0F 03
        HEX: 03 28 C5 6B 4E FC 7F F0 C0 01 5A CC A5 34 7F 49 D1
        HEX: D5 08 64 A5 14 01 DF 31 97 9C F2 A5 33 41 87 3F 3E
        HEX: 82 F1 CC 3C 10 1F FD F8 0C 1C 1C D4 A5 12 9E 01 F1
        HEX: 4C CC 03 FE F8 15 3F 00 CF A5 13 A5 FF 33 F4 D4 F5
        HEX: 77 39 46 B5 FD 74 42 90 A5 32 A5 33 37 7F CC 03 00
        HEX: 39 86 AD 53 FC F1 54 41 C7 5A 29 FF DF F0 1F 14 29
        HEX: 26 52 09 F6 89 C6 F0 C1 DF 29 3F CD 7F CD 01 29 25
        HEX: 5A 6A F0 7D 81 DE C2 F0 54 57 30 00 4B 42 F2 5D 41
        HEX: 79 F8 6F DD 03 34 05 C1 F0 74 BD 02 6F 41 AC 74 5F
        HEX: DC 02 D0 9B B5 74 81 CF CD DE F8 53 5C 53 70 02 F1
        HEX: FD FF FC C0 C0 AD 54 AD 74 F4 E2 41 5A F0 54 D7 52
        HEX: 81 DB F8 77 FD 81 DC 82 DA 53 5C FC FF 7A FD EB C1
        HEX: DA 50 57 55 39 65 7F 8C 0F FD CD C1 41 AD FB 01 EA
        HEX: 50 B9 76 21 23 AD 53 FD 43 B9 C7 83 6C 83 8D 73 7E
        HEX: B9 B3 83 6C 8B AD F5 FF B9 F3 7B 4B 83 8C 35 43 40
        HEX: FF 00 73 2B 83 6C 5F C3 03 EE 41 94 8B 8C 02 CC 51
        HEX: A6 FE 02 5F 35 35 5A 06 7B 4B FE 02 B1 6A 89 8B 6B
        HEX: 35 35 7B 3F 34 81 71 CE 35 35 DF C1 B1 CA 9B AE 7F
        HEX: 01 7E 72 BF CA 8B 6B 57 DF FC 41 D0 DB 7B 0A 01 D1
        HEX: C0 41 7F 2C 7B 5F 7C 81 F3 28 7A AB BD C1 BF C1 DE
        HEX: 62 68 57 41 B0 5F 49 A6 5A 08 F1 39 AF FB 41 D2 8B
        HEX: C1 B8 00 5A 08 72 FF AA 5C 5C FC FC 51 E7 62 EB 49
        HEX: FD 01 CB 02 E2 7F FF AF C0 00 31 25 01 91 C2 95 37
        HEX: 25 62 69 89 8A 0D 79 F0 02 C1 21 06 52 E3 41 A0 01
        HEX: D8 5A 49 EF 70 CC 1C DC 81 D5 48 55 F7 33 F1 00 81
        HEX: E0 29 57 CF F1 0F F8 52 08 55 7F 57 33 00 10 64 5A
        HEX: 28 F7 C1 F3 50 08 01 C1 05 C7 C4 3F F4 10 64 51 E8
        HEX: 50 BE BF 08 84 31 A7 02 C1 AF 10 A4 A5 53 82 B1 81
        HEX: F1 FF 12 14 0D C3 C0 5A ED 9C FF F3 15 1D 3F FF 8C
        HEX: 70 A5 F5 12 C1 C3 C2 F0 32 D3 50 D3 C3 0F F8 55 00
        HEX: 7F 40 5F 9C D2 A5 12 F5 FD C1 EA 01 EF 12 7F 30 30
        HEX: 3F B8 E8 13 53 79 4A EF 4A 07 AD 33 C2 9F 9C F2 FF
        HEX: 9D 12 7D 7F 4F 00 5A AA D3 AD 34 F0 39 66 FF 62 8A
        HEX: 3F 3D 35 37 21 26 EE 02 C3 C0 00 01 45 4A 14 7F 10
        HEX: 00 0C 21 26 29 47 FD 02 C8 01 BE 74 55 C3 00 C0 64
        HEX: F8 49 67 30 DF 42 F1 C3 7F 74 C3 02 BD 54 FB 1C 3C
        HEX: C2 F1 54 53 F0 30 29 0C F8 F3 D2 C0 F8 FD FF FB FF
        HEX: FC C1 F1 54 55 FF CC 78 C8 AD 53 54 B1 C2 EE F8 FD
        HEX: 81 8F 7D A5 01 CC 55 FC 00 DF 47 C2 DA 5F 30 A8 5D
        HEX: 01 DB C2 ED 39 C6 81 EB FF 41 E8 A5 13 AD 33 77 F4
        HEX: D4 CB 5C 39 C1 AE 60 FF A6 7B 4B D5 D5 15 35 72 FF
        HEX: EA 7B 2B 71 7F FF 30 20 EF E4 73 0B 35 F9 57 6A AA
        HEX: FB 73 2B 41 B5 40 39 66 73 1D 0B 49 B1 70 41 FF D8
        HEX: 35 35 0F 03 29 05 6A 7B CA 50 82 AC 06 5A 28 FC F1
        HEX: 03 62 48 7B 0B 7D 73 81 F1 5A 08 6A 89 5D 82 C7 01
        HEX: 99 49 F5 C2 D1 FB C1 F1 C7 B9 69 41 86 52 08 F1 5C
        HEX: D0 41 66 49 7B C7 35 41 CD 49 A7 52 FF 01 F2 73 C3
        HEX: 39 46 49 C7 F7 F7 7F 73 40 C1 82 08 FD 3F FB 0F 03
        HEX: 42 82 55 5F FC C0 F1 39 D8 34 F7 FC 5F 00 29 25 41
        HEX: A7 09 8A F7 01 A2 49 E7 03 71 C5 41 A8 AE 04 7A 31
        HEX: 25 81 C5 81 89 FB 39 A7 01 F0 01 41 A7 51 EF E8 F5
        HEX: 37 17 01 DF 51 E8 FF 5F 5C FC F0 41 A7 49 C8 4F 35
        HEX: 0F 30 1C B8 FF 5F F0 F0 C0 10 84 49 C7 E2 09 88 F8
        HEX: 84 30 BE 82 C1 10 84 39 88 C2 C2 EF 08 43 7B EF 01
        HEX: BA 35 7B FF EE 84 50 7F CF 0F 0F 84 EF 2F 94 91 0D
        HEX: C1 F6 7B AE 8B 84 0F 02 CB E8 FF 4F C5 3C 0F 00 84
        HEX: 4F 9C BB F2 F5 39 CB 9C B1 81 EF 7F 3F FF 03 84 0F
        HEX: 94 70 3F C2 6B 84 0F 9C B1 F5 FA 30 82 F0 74 55 55
        HEX: 17 EF 7B CE A5 53 42 90 94 90 FF 9C F2 55 FD 0F 00
        HEX: 94 90 EF A5 12 F4 FF 41 60 25 41 EF C9 3C 10 D0 01
        HEX: C3 29 47 BE C2 72 18 A4 4A 69 C1 BB 8B 0D 19 81 52
        HEX: 91 2D 7F C2 F0 7D 81 3B 29 F8 01 A7 43 E2 7E C1 00
        HEX: AD 52 AD 53 7B C1 6F FC C3 F1 FF C0 F3 9F 42 E2 40
        HEX: 40 04 45 9E F0 31 F0 00 F0 5E F8 55 7F C0 C0 02 CC
        HEX: 69 02 F1 F8 DF 5F 7D 81 BB 01 F1 FF FF 30 DC 4B 02
        HEX: DB 5C F9 72 E8 DE C2 94 4A 69 A5 02 EB 57 84 E8 D9
        HEX: FF C0 94 D2 A5 33 7C 00 3C ED 03 C1 B7 49 02 58 29
        HEX: 46 FB 73 0B 01 58 37 18 C4 9C 75 F2 81 8F 01 35 6A
        HEX: EC 5B 09 E3 07 C1 70 CA 49 C9 B7 81 F0 39 87 01 60
        HEX: 0F 01 32 F7 69 5C 4C 84 7C D5 3F 0F B8 C8 49 C8 89
        HEX: BA EE C1 52 49 E8 C9 3F 00 21 7F 06 31 46 4C FF 70
        HEX: 00 EB C1 7B 66 01 99 C1 6E 41 C8 EB 55 F3 41 E8 01
        HEX: 9B 73 C3 5E 01 44 C5 31 46 42 D0 3F C1 6B 06 35 3D
        HEX: 0F 0F A6 E8 A7 60 18 AF E5 31 46 73 39 F7 C2 89 C7
        HEX: 4D 73 3C D8 21 E3 05 43 F0 18 C4 8B 29 25 82 69 C8
        HEX: B5 A7 C2 A9 C2 50 73 79 9C FB 10 A5 02 F0 0D 0D 39
        HEX: 86 DF 41 C8 DF 71 73 41 EE 51 FD E8 89 CB 0D 39 66
        HEX: 39 87 5F 4C 70 5F F0 39 41 EC FF 02 6C 10 83 42 29
        HEX: C0 40 43 5F 41 29 67 73 AE 09 D1 FF 41 3D 62 EC C3
        HEX: C1 CD CD 6B EF 4C 73 8D F5 79 F0 73 AD FB 7B AE C2
        HEX: 4C 73 AD 7C 0E FF F5 3F 03 00 73 8C 73 AD F9 5D F0
        HEX: 7B AE FD BE B9 F0 7B CE 84 0E 82 8A 2F 7B EE 94 70
        HEX: 42 EF FE E8 EE FD FC 0F 00 7B B7 CD 84 0E 01 DA 00
        HEX: 41 EE BF 90 55 D5 3C 0F 8C 31 AF FD 0D B9 94 7B EE
        HEX: 8C 50 3D EE 03 EF 94 D1 C2 4C 28 E4 EF 6B 0B 35 7C
        HEX: C2 5F 6A C9 5D 5F 81 E7 20 E4 01 63 FF 01 EC 21 06
        HEX: 39 A8 30 F0 F4 7D 34 02 AE FF FC D0 D0 EF 82 F1 F5
        HEX: 00 54 83 F0 DC F4 FD 3C 41 F2 A5 53 5F FC 3C DD D7
        HEX: 02 F2 50 F3 C2 F1 A5 DF 53 70 43 CD CF C2 CB 3F B7
        HEX: 0D 0F 71 C2 F0 D0 81 D5 F4 F8 1C 30 F0 CC EA C2 DB
        HEX: 49 55 01 CC AD 33 4F D4 C0 C0 7F F0 1F D4 FF F0 5C
        HEX: 9D 1F F8 5F 70 00 0F 3F F8 12 00 C3 DF C0 45 F0 7F
        HEX: F0 FF 02 DA 4C F0 FC 70 5A EB A5 FF 13 5C 5C 77 7D
        HEX: 4A 29 73 FF 6D 04 F7 17 F7 63 0B A5 FF 12 71 50 5C
        HEX: 57 52 8A 94 6B 91 C0 C1 2C 41 32 69 DF 83 35 C5 21
        HEX: 25 05 01 F8 29 F7 05 73 2B 09 45 4F 18 C4 6B 39 86
        HEX: 02 9D C2 F2 5C 5D 41 F6 41 63 26 D7 C1 F6 EF 82 95
        HEX: 7D 7D C1 C2 54 E5 55 FB F7 CC C1 45 21 06 5C 5C 7D
        HEX: 70 41 E8 21 06 01 01 AD 01 23 01 95 7C 41 E1 42 53
        HEX: 75 3D 81 CC 02 6B 53 DF F7 02 52 18 E5 01 CE F0 10
        HEX: 85 8F 18 C5 5F FD B8 28 E0 41 E8 F7 B0 50 01 EF 10
        HEX: A5 31 55 67 02 CC 42 73 42 BC FF C1 2F 66 0D 3F 3D
        HEX: FD 31 46 DA C1 75 41 E1 49 81 D0 3D F7 37 37 35 C2
        HEX: EF 0F 0F 3F FF 0D 52 07 52 28 0F 1C DF F5 5D 41 73
        HEX: 01 98 31 33 6B FF 4C 6B 6C D5 D5 4F C3 29 FF 25 62
        HEX: EB C1 C3 C1 C1 63 FF 2C 6B 6C F5 3D 3D FF 6B FF 6C
        HEX: 73 8D C1 C1 F0 00 6B 7F 6D 73 AD C4 37 03 00 5C D8
        HEX: 6D FF F9 F1 FC F0 8D DD 5D FF 3F DF 73 8D 73 AD F5
        HEX: B9 B7 73 2F 8D 7B CE D5 F9 EF 7D E8 F7 37 0C 03 6B
        HEX: F2 E8 C1 D8 73 CD 7C 6B 0E 35 81 3E 41 F0 30 2D 02
        HEX: 2D 01 EF CE C1 E6 D5 F8 EF 09 CB 81 F0 73 BD 8E 84
        HEX: F0 29 27 54 01 F0 CF 21 26 7B AE F0 7F 05 21 26 FC
        HEX: FC F7 F7 DF 82 F2 F4 0F 30 33 C2 BD 7D EB CD FF 41
        HEX: E1 01 BE F7 D7 69 3C F8 7C FC 95 41 F0 82 E2 81 A7
        HEX: EE F8 40 54 FF 43 BC F5 FD FB FF F0 02 BB 45 54 C7
        HEX: 30 7E 81 F1 33 57 C4 CC 3C 5A F8 5F DC 01 E0 DF C1
        HEX: F0 57 7F 7C 3C 41 DB 13 DF DF 5F 01 03 A4 C1 F0 55
        HEX: FB F5 35 C1 EA A5 13 5D 71 FB 7F 55 42 F0 F0 C0 70
        HEX: C0 FF 9C F2 A4 F2 73 C0 7C D0 EF 9C D1 9D 12 41 4E
        HEX: 00 62 F7 EA 9C D2 49 E0 5C 49 88 FB A4 F2 82 0E 28
        HEX: C5 9C D1 7D 57 81 F1 5A 49 7B 6D FD 41 9D C1 3D 52
        HEX: 28 C0 30 70 DF 7C 62 89 83 6D 41 95 7C AB 41 86 01
        HEX: 3F 41 EF 41 66 E2 82 55 F8 10 A5 FF 10 4C 30 CF 18
        HEX: E5 41 A7 6A 02 34 C2 4C 09 B0 55 BA E8 00 00 3C 81
        HEX: 65 1B 10 A5 09 EE D0 DD D0 81 94 F0 57 C4 FF FF E9
        HEX: 55 E8 3C 0C 4C 6D FF 81 F0 E5 C9 DB 0D 6C E8 26 09
        HEX: 67 55 3F 81 E0 26 0F 3F F5 FD D9 F0 49 5C D5 41 26
        HEX: C8 D7 03 03 0F 41 3A 41 EC 03 FB 0F 3D 81 55 C7 31
        HEX: 3D 3D BD 15 C3 E0 3D 3D F5 C2 A0 EF F5 D7 54 54 C2
        HEX: 94 35 05 FB 35 0F 02 C0 5C 7F CF 30 6F 39 66 63 0C
        HEX: C9 28 01 F7 81 F0 4C 7D B9 E1 41 E8 6B FD 2C 82 8C
        HEX: 4A 49 6B 4C 55 F7 55 55 40 42 EF 3D 3D 30 FF 10 6B
        HEX: 6C 6B 6D D5 07 0F 52 01 07 E8 5D C7 01 82 6B 6D E0
        HEX: 35 F8 E8 8D 35 35 3C F5 00 C2 EE 81 6F 00 6B 4D 8B
        HEX: 6B 6D C9 26 F0 DB 6B 8D 41 4D 00 C1 EF 8D F7 D5 3F
        HEX: 30 C2 EE AE DF 33 D3 30 30 E8 C5 FD 7D 33 C2 EE 8E
        HEX: D7 D4 D0 EB C1 D7 7B C1 58 82 F0 31 87 BF 00 00 F4
        HEX: 30 29 45 C1 03 FA 41 C0 82 E6 DC 7C 40 00 02 00 00
        HEX: 00 00 01 01
49:     message 00000065, 'I bet that thing will <cr>come in handy since <cr>every area is now open.'
        mesend 
        bgm 00000001
        set_mainwarp 00000001
        set_mainwarp 00000002
        set_mainwarp 00000003
        set_mainwarp 00000004
        set_mainwarp 00000005
        set_mainwarp 00000006
        set_mainwarp 00000007
        set_mainwarp 00000008
        set_mainwarp 00000009
        set_mainwarp 0000000A
        leti R98, 00000001
        ret 
50:     message 00000065, 'Boner time.'
        se 00000008
        mesend 
        ret 

0:      set_ult_map 
        set_episode 00000000
        set_floor_handler 00000000, 1
        ret 
1:      jmpi_= R16, 00000001, 0
        disable_movement1 00000000
        cam_zmin 
        cine_enable 
        hud_hide 
        load_npc_data 
        get_npc_data 54
        leti R60, 000000E2
        leti R61, 00000000
        leti R62, 00000162
        leti R63, FFFFFF3F
        leti R64, 00000000
        leti R65, 00000011
        npc_crp_V3 R60
        npc_stop 00000002
        leti R60, 000000ED
        leti R61, 00000000
        leti R62, 0000014D
        leti R63, FFFFFFF1
        p_setpos 00000000, R60
        message 00000002, 'Hey, my name's Alex <cr>BEYATCH!'
        add_msg 'Welcome to the Construct!'
        add_msg 'This is my special quest <cr>named after the Construct <cr>in the Matrix because I use <cr>it to load stuff.'
        add_msg 'It's basically a replacement <cr>for Action Replay.'
        add_msg 'Most of the stuff is pretty <cr>self-explanatory, so just <cr>try to figure it out!  I'll <cr>follow you while you're here.'
        mesend 
        hud_show 
        cine_disable 
        cam_zmout 
        enable_movement1 00000000
        set R16
        call 55
        ret 
2:      disable 03D7630C
        unknown4F R85, R0
        Unknow_Opcode (FF)
        Unknow_Opcode (FF)
        Unknow_Opcode (FF)
        Unknow_Opcode (FF)
        Unknow_Opcode (0A)
        leti R0, 00005102
        gget 0000, R0
        Unknow_Opcode (0B)
        close_msg_qb 
        clr_qt_failure 
        jmp_<= R74, R27, 16104
3:      disp_msg_qb 'Select NPC's equipment.'
        close_msg_qb 
        list R2, 'Handgun <cr>Staff <cr>Mace <cr>Inferno Bazooka <cr>Lockgun <cr>H&S25 Justice <cr>Zanba <cr>Lockgun <cr>Mace <cr>Stag Cutlery <cr>Saber <cr>Nei's Claw (Fake) <cr>Soul Eater <cr>Flame Visit <cr>Inferno Bazooka <cr>more....'
        jmpi_= R2, 0000000F, 5
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
4:      disp_msg_qb 'Select item type.'
        close_msg_qb 
        list R3, 'Dark Weapons <cr>Armory <cr>1308 (200) MAGs <cr>Items'
        switch_jmp R3, 4:21:22:23:24
        ret 
5:      list R2, 'Sniper <cr>Stick <cr>Bringer's Rifle <cr>Mace <cr>Staff <cr>Knife <cr>Halbert <cr>Saber <cr>Sniper <cr>Sniper <cr>Spread <cr>Saber <cr>Handgun <cr>Staff <cr>Sniper <cr>more....'
        jmpi_= R2, 0000000F, 6
        addi R2, 0000000F
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
6:      list R2, 'Cutter <cr>Stick <cr>Nothing? <cr>Nothing? <cr>Sange & Yasha <cr>Nei's Claw (Fake) <cr>Staff <cr>Red Scorpio <cr>Soul Eater <cr>Flame Visit <cr>Gigush <cr>Brand <cr>Mace <cr>Blaster <cr>Brand <cr>more....'
        jmpi_= R2, 0000000F, 7
        addi R2, 0000001E
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
7:      list R2, 'Lockgun <cr>Blade <cr>Victor Axe <cr>Blaster <cr>Sniper <cr>Bringer's Rifle <cr>Assault <cr>Assault <cr>Agito (AUW 1975) <cr>Assault <cr>Inferno Bazooka <cr>Bringer's Rifle <cr>Akiko's Frying Pan <cr>Lockgun <cr>Gigush <cr>more....'
        jmpi_= R2, 0000000F, 8
        addi R2, 0000002D
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
8:      list R2, 'Breaker <cr>Breaker <cr>Spread <cr>Akiko's Frying Pan <cr>Autogun <cr>Staff <cr>Mace <cr>Inferno Bazooka <cr>Railgun <cr>H&S25 Justice <cr>Zanba <cr>Railgun <cr>Mace <cr>Twin Brand <cr>Brand <cr>more....'
        jmpi_= R2, 0000000F, 9
        addi R2, 0000003C
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
9:      list R2, 'Nei's Claw (Fake) <cr>Soul Eater <cr>Flame Visit <cr>Inferno Bazooka <cr>Sniper <cr>Mace <cr>Bringer's Rifle <cr>Mace <cr>Baton <cr>Blade <cr>Glaive <cr>Buster <cr>Blaster <cr>Blaster <cr>Cannon <cr>more....'
        jmpi_= R2, 0000000F, 10
        addi R2, 0000004B
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
10:     list R2, 'Brand <cr>Lockgun <cr>Baton <cr>Sniper <cr>Sawcer & Shield of Delsaber <cr>Mace <cr>Nothing? <cr>Nothing? <cr>Sange & Yasha <cr>Nei's Claw (Fake) <cr>Staff <cr>Red Scorpio <cr>Soul Eater <cr>Flame Visit <cr>Breaker <cr>more....'
        jmpi_= R2, 0000000F, 11
        addi R2, 0000005A
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
11:     list R2, 'Buster <cr>Mace <cr>Beam <cr>Buster <cr>Railgun <cr>Edge & Shield of Delsaber <cr>???? <cr>Beam & Shield of Delsaber <cr>Beam ^^ <cr>Bringer's Rifle <cr>Repeater <cr>Repeater <cr>Agito (AUW 1975) <cr>Repeater <cr>Inferno Bazooka <cr>more....'
        jmpi_= R2, 0000000F, 12
        addi R2, 00000069
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
12:     list R2, 'Mace <cr>Akiko's Frying Pan <cr>Railgun <cr>Breaker <cr>Claymore <cr>Claymore <cr>Cannon <cr>Akiko's Frying Pan <cr>Lockgun <cr>Staff <cr>Mace <cr>Inferno Bazooka <cr>Railgun <cr>H&S25 Justice <cr>Zanba <cr>more....'
        jmpi_= R2, 0000000F, 13
        addi R2, 00000078
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
13:     list R2, 'Railgun <cr>Ice Staff: Dagon <cr>Twin Brand <cr>Brand <cr>Nei's claw (Fake) <cr>Soul Banish <cr>Burning Visit <cr>Inferno Bazooka <cr>Laser <cr>Ice Staff: Dagon <cr>Bringer's Rifle <cr>Mace <cr>Baton <cr>Blade <cr>Glaive <cr>more....'
        jmpi_= R2, 0000000F, 14
        addi R2, 00000087
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
14:     list R2, 'Buster <cr>Blaster <cr>Blaster <cr>Cannon <cr>Brand <cr>Autogun <cr>Baton <cr>Sniper <cr>Sawcer & Shield of Delsaber <cr>Mace <cr>Nothing? <cr>Nothing? <cr>Sange & Yasha <cr>Nei's Claw (Fake) <cr>Staff <cr>more....'
        jmpi_= R2, 0000000F, 15
        addi R2, 00000096
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
15:     list R2, 'Red Scorpio <cr>Soul Banish <cr>Burning Visit <cr>Breaker <cr>Buster <cr>Mace <cr>Beam <cr>Buster <cr>Railgun <cr>Edge & Shield of Delsaber <cr>???? <cr>Beam & Shield of Delsaber <cr>Beam ^^ <cr>Bringer's Rifle <cr>Repeater <cr>more....'
        jmpi_= R2, 0000000F, 16
        addi R2, 000000A5
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
16:     list R2, 'Repeater <cr>Agito (AUW 1975) <cr>Repeater <cr>Inferno Bazooka <cr>Bringer's Rifle <cr>Akiko's Frying Pan <cr>Railgun <cr>Breaker <cr>Claymore <cr>Claymore <cr>Cannon <cr>Akiko's Frying Pan <cr>Autogun <cr>Staff <cr>Mace <cr>more....'
        jmpi_= R2, 0000000F, 17
        addi R2, 000000B4
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
17:     list R2, 'Inferno Bazooka <cr>Railgun <cr>H&S25 Justice <cr>Zanba <cr>Railgun <cr>Ice Staff <cr>Twin Brand <cr>Brand <cr>Nei's Claw (Fake) <cr>Soul Banish <cr>Burning Visit <cr>Inferno Bazooka <cr>Laser <cr>Ice Staff <cr>Bringer's Rifle <cr>more....'
        jmpi_= R2, 0000000F, 18
        addi R2, 000000C3
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
18:     list R2, 'Mace <cr>Baton <cr>Blade <cr>Glaive <cr>Buster <cr>Blaster <cr>Blaster <cr>Cannon <cr>Brand <cr>Autogun <cr>Baton <cr>Sniper <cr>Sawcer & Shield of Delsaber <cr>Mace <cr>Nothing? <cr>more....'
        jmpi_= R2, 0000000F, 19
        addi R2, 000000D2
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
19:     list R2, 'Nothing? <cr>Sange & Yasha <cr>Nei's Claw (Fake) <cr>Staff <cr>Red Scorpio <cr>Soul Banish <cr>Burning Visit <cr>Breaker <cr>Buster <cr>Mace <cr>Beam & Shield <cr>Buster <cr>Railgun <cr>Edge & Shield <cr>???? <cr>more....'
        jmpi_= R2, 0000000F, 20
        addi R2, 000000E1
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
20:     list R2, 'Beam & Shield of Delsaber <cr>Beam ^^ <cr>Bringer's Rifle <cr>Repeater <cr>Repeater <cr>Agito (AUW 1975) <cr>Repeater <cr>Bazooka <cr>Bringer's Rifle <cr>Frying Pan <cr>Railgun <cr>Breaker <cr>Claymore <cr>Claymore <cr>Cannon <cr>Frying Pan'
        addi R2, 000000F0
        let R65, R2
        load_npc_data 
        get_npc_data 2
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        npc_crp_V3 R60
        npc_stop 00000002
        ret 
21:     list R4, 'Dark Flow <cr>Dark Meteor <cr>Dark Bridge'
        addi R4, 0000009D
        leti R5, 00000000
        leti R6, 00000000
        leti R7, 00000000
        leti R8, 00000000
        list R9, 'None <cr>Native <cr>A. Beast <cr>Machine <cr>Dark <cr>Hit'
        list R10, '0 <cr>20 <cr>40 <cr>60 <cr>80 <cr>100 <cr>127'
        jmpi_= R10, 00000000, 25
        jmpi_= R10, 00000001, 26
        jmpi_= R10, 00000002, 27
        jmpi_= R10, 00000003, 28
        jmpi_= R10, 00000004, 29
        jmpi_= R10, 00000005, 30
        jmpi_= R10, 00000006, 31
        ret 
22:     list R4, 'None <cr>Armor <cr>Shield <cr>Unit'
        jmpi_= R4, 00000000, 49
        jmpi_= R4, 00000001, 50
        jmpi_= R4, 00000002, 51
        jmpi_= R4, 00000003, 52
        ret 
23:     list R4, 'Deva <cr>Rati <cr>Savitri <cr>Rukmin <cr>Pushan <cr>Dewari <cr>Sato <cr>Bhima <cr>Nidra'
        addi R4, 00000039
        leti R5, 000000C8
        leti R6, 000000BE
        leti R7, 000000FF
        leti R8, 0000007F
        leti R9, 000000FF
        leti R10, 0000007F
        leti R11, 000000FF
        leti R12, 0000007F
        leti R13, 000000FF
        leti R14, 0000007F
        item_create2 R3, R15
        ret 
24:     list R4, 'Trimate <cr>Trifluid <cr>Scape Doll <cr>Trigrinder <cr>AddSlot <cr>Photon Drop <cr>Photon Sphere <cr>Photon Crystal'
        jmpi_= R4, 00000000, 56
        jmpi_= R4, 00000001, 57
        jmpi_= R4, 00000002, 58
        jmpi_= R4, 00000003, 59
        jmpi_= R4, 00000004, 60
        jmpi_= R4, 00000005, 61
        jmpi_= R4, 00000006, 62
        jmpi_= R4, 00000007, 63
        ret 
25:     leti R10, 00000000
        call 32
        ret 
26:     leti R10, 00000014
        call 32
        ret 
27:     leti R10, 00000028
        call 32
        ret 
28:     leti R10, 0000003C
        call 32
        ret 
29:     leti R10, 00000050
        call 32
        ret 
30:     leti R10, 00000064
        call 32
        ret 
31:     leti R10, 0000007F
        call 32
        ret 
32:     list R11, 'None <cr>Native <cr>A. Beast <cr>Machine <cr>Dark <cr>Hit'
        list R12, '0 <cr>20 <cr>40 <cr>60 <cr>80 <cr>100 <cr>127'
        jmpi_= R12, 00000000, 33
        jmpi_= R12, 00000001, 34
        jmpi_= R12, 00000002, 35
        jmpi_= R12, 00000003, 36
        jmpi_= R12, 00000004, 37
        jmpi_= R12, 00000005, 38
        jmpi_= R12, 00000006, 39
        ret 
33:     leti R12, 00000000
        call 40
        ret 
34:     leti R12, 00000014
        call 40
        ret 
35:     leti R12, 00000028
        call 40
        ret 
36:     leti R12, 0000003C
        call 40
        ret 
37:     leti R12, 00000050
        call 40
        ret 
38:     leti R12, 00000064
        call 40
        ret 
39:     leti R12, 0000007F
        call 40
        ret 
40:     list R13, 'None <cr>Native <cr>A. Beast <cr>Machine <cr>Dark <cr>Hit'
        list R14, '0 <cr>20 <cr>40 <cr>60 <cr>80 <cr>100 <cr>127'
        jmpi_= R14, 00000000, 41
        jmpi_= R14, 00000001, 42
        jmpi_= R14, 00000002, 43
        jmpi_= R14, 00000003, 44
        jmpi_= R14, 00000004, 45
        jmpi_= R14, 00000005, 46
        jmpi_= R14, 00000006, 47
        ret 
41:     leti R14, 00000000
        call 48
        ret 
42:     leti R14, 00000014
        call 48
        ret 
43:     leti R14, 00000028
        call 48
        ret 
44:     leti R14, 0000003C
        call 48
        ret 
45:     leti R14, 00000050
        call 48
        ret 
46:     leti R14, 00000064
        call 48
        ret 
47:     leti R14, 0000007F
        call 48
        ret 
48:     item_create2 R3, R15
        ret 
49:     list R5, '???? <cr>(may FSOD)'
        call 53
        ret 
50:     list R5, 'Guard Wave <cr>DF Field <cr>Luminous Field <cr>Chu Chu Fever <cr>Love Heart <cr>Flame Garment <cr>Virus Armor: Lafuteria <cr>Brightness Circle <cr>Aura Field <cr>Electro Frame <cr>Sacred Cloth <cr>Smoking Plate'
        addi R5, 00000029
        call 53
        ret 
51:     list R5, 'Red Ring <cr>Tripolic Shield <cr>Standstill Shield <cr>Safety Heart <cr>Kasami Bracer <cr>Suzaku <cr>Genbu <cr>Byakko <cr>Seiryu <cr>Hunter's Shell <cr>Rico's Glasses <cr>Rico's Earings <cr>Blue Ring'
        addi R5, 00000027
        call 53
        ret 
52:     list R5, 'God/Battle <cr>Cure/Poison <cr>Cure/Shock <cr>Cure/Paralysis <cr>Cure/Confusion <cr>Cure/Slow <cr>Cure/Frozen <cr>??? <cr>Mag (Al Rappy)'
        addi R5, 00000041
        call 53
        ret 
53:     item_create R3, R5
        ret 
54:     HEX: 41 6C 65 78 00 00 00 00 00 00 00 00 00 00 00 00 00
        HEX: 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 00 00
        HEX: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 04 00 00
        HEX: 02 25 00 00 00 05 00 01 00 00 00 00 00 04 00 00 00
        HEX: 00 00 00 00 8C 25 BF 3E A4 70 7D 3F
55:     set_quest_board_handler 00000000, 3, 'Spawn ILOVEYOU (P2)'
        set R74
        set_quest_board_handler 00000001, 4, 'Item Generator'
        set R75
        set_quest_board_handler 00000002, 65, 'Music Player'
        set R76
        set_quest_board_handler 00000003, 71, 'HACKER'S AXE'
        set R77
        set_quest_board_handler 00000004, 74, 'Miscellaneous'
        set R78
        ret 
56:     leti R4, 00000000
        leti R5, 00000002
        call 64
        ret 
57:     leti R4, 00000001
        leti R5, 00000002
        call 64
        ret 
58:     leti R4, 00000009
        leti R5, 00000000
        call 64
        ret 
59:     leti R4, 0000000A
        leti R5, 00000002
        call 64
        ret 
60:     leti R4, 0000000F
        leti R5, 00000000
        call 64
        ret 
61:     leti R4, 00000010
        leti R5, 00000000
        call 64
        ret 
62:     leti R4, 00000010
        leti R5, 00000001
        call 64
        ret 
63:     leti R4, 00000010
        leti R5, 00000002
        call 64
        ret 
64:     item_create R3, R5
        ret 
65:     disp_msg_qb 'Select background music.'
        close_msg_qb 
        list R18, 'It Doesn't Matter <cr>Open Your Heart <cr>City Escape <cr>Live and Learn <cr>Believe in Myself'
        jmpi_= R18, 00000000, 66
        jmpi_= R18, 00000001, 67
        jmpi_= R18, 00000002, 68
        jmpi_= R18, 00000003, 69
        jmpi_= R18, 00000004, 70
        ret 
66:     enable_bgmctrl 00000004
        ret 
67:     enable_bgmctrl 00000005
        ret 
68:     enable_bgmctrl 0000000F
        ret 
69:     enable_bgmctrl 00000010
        ret 
70:     enable_bgmctrl 00000011
        ret 
71:     disp_msg_qb 'Take the illegitimate <cr>S-Rank Charge Axe?'
        close_msg_qb 
        list R19, 'Yes <cr>No'
        jmpi_= R19, 00000000, 72
        jmpi_= R19, 00000001, 73
        ret 
72:     leti R3, 00000000
        leti R4, 000000A9
        leti R5, 00000000
        leti R6, 00000000
        leti R7, 0000000C
        leti R8, 00000000
        leti R9, 00000081
        leti R10, 00000001
        leti R11, 0000008D
        leti R12, 00000065
        leti R13, 000000CB
        leti R14, 000000D3
        item_create2 R3, R15
        ret 
73:     nop 
        ret 
74:     disp_msg_qb 'Other stuff.'
        close_msg_qb 
        list R20, 'Rare Enemies <cr>Unlock Next Difficulty <cr>Unlock All Ep1 Levels <cr>End the Quest'
        jmpi_= R20, 00000000, 75
        jmpi_= R20, 00000001, 76
        jmpi_= R20, 00000002, 77
        jmpi_= R20, 00000003, 79
        jmpi_= R20, 00000004, 79
        ret 
75:     disp_msg_qb 'Forest area opened.'
        close_msg_qb 
        set_mainwarp 00000001
        ret 
76:     call 101
        jmpi_= R252, 00000000, 80
        jmpi_= R252, 00000001, 81
        jmpi_= R252, 00000002, 82
        jmpi_= R252, 00000003, 83
        ret 
77:     gset 0018
        gset 0021
        gset 0030
        disp_msg_qb 'All Ep1 levels unlocked <cr>on the current difficulty.'
        close_msg_qb 
        ret 
78:     call 84
        ret 
79:     QEXIT 
        ret 
80:     gset 0035
        disp_msg_qb 'Hard Mode unlocked. <cr>(may not work correctly)'
        close_msg_qb 
        ret 
81:     gset 0037
        disp_msg_qb 'Very Hard Mode unlocked. <cr>(may not work correctly)'
        close_msg_qb 
        ret 
82:     gset 0037
        disp_msg_qb 'Ultimate mod unlocked. <cr>(may not work correctly)'
        close_msg_qb 
        ret 
83:     disp_msg_qb 'No more modes to unlock. <cr>(may not work correctly)'
        close_msg_qb 
        ret 
84:     call 78
        ret 
101:    get_difflvl2 R252
        ret 
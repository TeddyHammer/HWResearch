//COOP���[�h��3���i15vs15) 
//�쐬�F�����E�� 
//
gTeamSet_num <- 0;
function initMission() 
{
	//�G�`�[�����m�肷��(���[�h�̋��ԁj 
	print("[CoopM] unit()\n");

	//�����Q��A���ŋ��`�[���ɓ������Ă���ꍇ�A1/10�̊m���ōŋ��`�[���Ɠ��Ă� 
	local Log_num = 0;
	Log_num = scr_GetCoopStrongBotTeamCount();
	if(Log_num == 2)
	{
		local Random_num = 0;
		Random_num = scr_GetCoopBotTeamRandomIndex( 1, 10 );
		if(Random_num == 1)
		{
			//�哖����B�ŋ��R�Ɛ퓬 
			print("teamno9()\n");
			gTeamSet_num = 9;
			scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
			scr_SetCoopBotTeamNameTextId( "$TXCET01025" );
			
			scr_BotPlayerRegistCoopProfile( "MOST_ODIN_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_ODIN_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_ODIN_03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_ODIN_04" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_YAHWEH_01" );	// 6�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_YAHWEH_02" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_YAHWEH_03" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_YAHWEH_04" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_PLUTO_01" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_PLUTO_02" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_PLUTO_03" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_PLUTO_04" );	//14�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_ODIN_05" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_YAHWEH_05" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_PLUTO_05" );	//15�l�� 
		}
	}
	if(gTeamSet_num != 9)	//��L�̍ŋ��R�ɓ������Ă��Ȃ��ꍇ 
	{
	//	local TeamSet_num = 0;	//�`�[������̂��߂̃��[�J���ϐ� 
	//	TeamSet_num = scr_GetCoopBotTeamRandomIndex( 1, 4 );	//�����_���Ń`�[���������肷�� 
		gTeamSet_num = scr_GetCoopBotTeamRandomIndex( 1, 8 );	//�����_���Ń`�[���������肷�� 
	
	
		if(gTeamSet_num == 1)
		{
			print("teamNo01()\n");
			//�`�[�����P �F���΂��i���j�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01017" );

			scr_BotPlayerRegistCoopProfile( "GHOS_GHOSTKING" );	//15�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THOR_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THOR_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THOR_03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THOR_04" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_01" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_02" );	// 6�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_03" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_04" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THUNDER_01" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THUNDER_02" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_05" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THUNDER_03" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_06" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THUNDER_04" );	//14�l�� 
		}
		if(gTeamSet_num == 2)
		{
			print("teamNo02()\n");
			//�`�[����2 �F�X�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01018" );
	
			scr_BotPlayerRegistCoopProfile( "ICED_FROSTDEMON" );	//15�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROSTKNIGHT_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROSTKNIGHT_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROSTKNIGHT_03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_01" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_02" );	// 6�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_03" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_04" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_05" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_BLIZZARD_01" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_BLIZZARD_02" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_BLIZZARD_03" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_06" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_BLIZZARD_04" );	//14�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROSTKNIGHT_04" );	// 4�l�� 
		}
		if(gTeamSet_num == 3)
		{
			print("teamNo03()\n");
			//�`�[����3 �F�T�����C�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01019" );
	
			scr_BotPlayerRegistCoopProfile( "SAMU_BOSS_FUDO" );	//15�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_04" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_05" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_NINJA_01" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_NINJA_02" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_DRAGONKNIGHT_01" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_DRAGONKNIGHT_02" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_DRAGONKNIGHT_03" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_DRAGONKNIGHT_04" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_NINJA_03" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_DRAGONKNIGHT_05" );	//14�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_06" );	// 6�l�� 
		}
		if(gTeamSet_num == 4)
		{
			print("teamNo04()\n");
			//�`�[����4 �F�]���r�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01020" );
	
			scr_BotPlayerRegistCoopProfile( "ZOMB_BLUE01" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BLUE02" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_ZOMBIEMAKER" );	//14�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BOSS_ZOMBIEDr" );	//15�l�� 	
			scr_BotPlayerRegistCoopProfile( "ZOMB_BERSERK_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BERSERK_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BERSERK_03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_STUNHUMMER_01" );	// 6�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_STUNHUMMER_02" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_HAVENOT_01" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_HAVENOT_02" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BERSERK_05" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_STUNHUMMER_03" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_HAVENOT_03" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BERSERK_04" );	// 4�l�� 
		}
		if(gTeamSet_num == 5)
		{
			print("teamNo05()\n");
			//�`�[����5 �F���،R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01021" );
	
			
			scr_BotPlayerRegistCoopProfile( "FIGH_BOSS_IDATEN" );	//14�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_BOSS_KOMEI" );	//15�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_BERSERK01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_BERSERK02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_GOLDENHUMMER" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_SPIN" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_STONEMAN" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_DRAGON01" );	// 6�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_DRAGON02" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_DRAGON03" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_STUNHUMMER01" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_STUNHUMMER02" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_STUNHUMMER03" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_DRAGON04" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_BERSERK03" );	// 3�l�� 
		}
		if(gTeamSet_num == 6)
		{
			print("teamNo06()\n");
			//�`�[����6 �F�X�s�i�[�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01022" );
	
	
			scr_BotPlayerRegistCoopProfile( "SPIN_CLOWN01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_CLOWN02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_CLOWN03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_ROUGH01" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_ROUGH02" );	// 6�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_ROUGH03" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_ROUGH04" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS01" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS02" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS03" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS04" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS05" );	//14�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_CLOWN04" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_ROUGH05" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS06" );	//15�l�� 
		}
		if(gTeamSet_num == 7)
		{
			print("teamNo07()\n");
			//�`�[����7 �F���̍��R�c 
			scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
			scr_SetCoopBotTeamNameTextId( "$TXCET01023" );
	
	
			scr_BotPlayerRegistCoopProfile( "LIGH_GOLDENKIGHT" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_MASTER" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_NOMAGIC" );	//14�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_FUNNY" );	//15�l�� 	
			scr_BotPlayerRegistCoopProfile( "LIGH_ALLSKILL_M_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_ALLSKILL_C_01" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_BERSERK" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_ALLROUNDER" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_WIZARD" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_GUARDNER01" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_GUARDNER02" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_ALLSKILL_M_03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_ALLSKILL_C_03" );	// 6�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_ALLSKILL_M_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_ALLSKILL_C_02" );	// 5�l�� 
		}
		if(gTeamSet_num == 8)
		{
			print("teamNo08_Strong()\n");
			//�`�[����8 �F�ł̍��R�c�i���G�j 
			scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
			scr_SetCoopBotTeamNameTextId( "$TXCET01024" );
	
			scr_BotPlayerRegistCoopProfile( "DARK_DRAGONKNIGHT" );	// 7�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_DEADMASTER" );	// 8�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_KNIGHT" );	// 9�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_BERSERK" );	//10�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_GHOSTKING" );	//11�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_FROSTDEMON" );	//12�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_PRINCESS_DUMMY" );	//13�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_BUTLER" );	//14�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_DARKLOAD" );	//15�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_HAVENOT_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_THUNDER_01" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_THUNDER_02" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_HAVENOT_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_HAVENOT_03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_THUNDER_03" );	// 6�l�� 
		}
	}
}
function loadMission() 
{
	print("[CoopM] load()\n");

}
function startMission() 
{
	print("[CoopM] start()\n");

	scr_SetMessageCallback( "miscb_GameSetWinWhite", 1000, CB_TYPE_ONCE, MESSAGE_GAME_SET_WIN_WHITE );	
	scr_SetMessageCallback( "miscb_GameSetWinBlack", 1100, CB_TYPE_ONCE, MESSAGE_GAME_SET_WIN_BLACK );
	
	
	local union_color = scr_PlayerGetPowerColor();	//�v���C���[�J���[�ɂ���ď������� 
	//�v���C���[�̐F�̐ݒ��҂� 
	while( !scr_PlayerIsCreateBody(0) )
	{
		suspend();
	}
	//�G�`�[���ɂ���Ă̓��X�|�[�����Ԃ�ύX���� 
	if( union_color == POWER_COLOR_WHITE )
	{
	//�v���C���[�����̏ꍇ 
	
	
	
	}
	else
	{
	//�v���C���[�����̏ꍇ 
	
	
	
	}
	//BOT�̃��x���A�b�v���̃X�L��������֎~���� 
	scr_BotPlayerDisableLearningSkillByLevelUp();
	
}
function miscb_GameSetWinWhite()
{
	print( "Game Set Win White!\n" );
	scr_RemoveCallbackAll();
	
	local union_color = scr_PlayerGetPowerColor();	//�v���C���[�J���[�ɂ���ď��s���� 
	if( union_color == POWER_COLOR_WHITE )
	{
		scr_GameSetMissionClear();	
	}
	else
	{
		scr_GameSetMissionFailure();
	}
}
function miscb_GameSetWinBlack()
{
	print( "Game Set Win BLACK!\n" );
	scr_RemoveCallbackAll();
	local union_color = scr_PlayerGetPowerColor();	//�v���C���[�J���[�ɂ���ď��s���� 
	if( union_color == POWER_COLOR_BLACK )
	{
		scr_GameSetMissionClear();	
	}
	else
	{
		scr_GameSetMissionFailure();
	}
}

//COOP���[�h��3���i8vs8) 
//�쐬�F�����E�� 
//
gTeamSet_num <- 0;
function initMission() 
{
	//�G�`�[�����m�肷��(���[�h�̋��ԁj 
	print("[CoopS] unit()\n");


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
			scr_BotPlayerRegistCoopProfile( "MOST_YAHWEH_01" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_YAHWEH_02" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_YAHWEH_03" );	// 6�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_PLUTO_04" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "MOST_PLUTO_05" );	//8�l�� 
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
	
	
			scr_BotPlayerRegistCoopProfile( "GHOS_THOR_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THOR_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_01" );	//3 �l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_02" );	//4 �l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_LIGHTNING_03" );	//5�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THUNDER_01" );	//6�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_THUNDER_02" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "GHOS_GHOSTKING" );	//8�l�� 
		}
		if(gTeamSet_num == 2)
		{
			print("teamNo02()\n");
			//�`�[����2 �F�X�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01018" );
	
			scr_BotPlayerRegistCoopProfile( "ICED_FROSTKNIGHT_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROSTKNIGHT_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_01" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_02" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROST_03" );	//5�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_BLIZZARD_01" );	//6�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_BLIZZARD_02" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "ICED_FROSTDEMON" );	//8�l�� 
		}
		if(gTeamSet_num == 3)
		{
			print("teamNo03()\n");
			//�`�[����3 �F�T�����C�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01019" );
	
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_SAMURAI_03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_NINJA_01" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_NINJA_02" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_DRAGONKNIGHT_01" );	//6�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_DRAGONKNIGHT_02" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "SAMU_BOSS_FUDO" );	//8�� 
		}
		if(gTeamSet_num == 4)
		{
			print("teamNo04()\n");
			//�`�[����4 �F�]���r�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01020" );
	
			scr_BotPlayerRegistCoopProfile( "ZOMB_BERSERK_01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BERSERK_02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_STUNHUMMER" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_HAVENOT" );	//4�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BLUE01" );	//5�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BLUE02" );	//6�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_ZOMBIEMAKER" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "ZOMB_BOSS_ZOMBIEDr" );	//8�l�� 
		}
		if(gTeamSet_num == 5)
		{
			print("teamNo05()\n");
			//�`�[����5 �F���،R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01021" );
	
			scr_BotPlayerRegistCoopProfile( "FIGH_BERSERK01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_BERSERK03" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_DRAGON03" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_STUNHUMMER01" );	//4�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_STUNHUMMER03" );	//5�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_GOLDENHUMMER" );	//6�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_BOSS_IDATEN" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "FIGH_BOSS_KOMEI" );	//8�l�� 
		}
		if(gTeamSet_num == 6)
		{
			print("teamNo06()\n");
			//�`�[����6 �F�X�s�i�[�R�c 
			scr_SetCoopBotTeamNameTextId( "$TXCET01022" );
	
			scr_BotPlayerRegistCoopProfile( "SPIN_CLOWN01" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_CLOWN02" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_ROUGH01" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_ROUGH02" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_ROUGH03" );	// 5�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS02" );	//6�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS03" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "SPIN_WAITRESS04" );	//8�l�� 
		}
		if(gTeamSet_num == 7)
		{
			print("teamNo07()\n");
			//�`�[����7 �F���̍��R�c 
			scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
			scr_SetCoopBotTeamNameTextId( "$TXCET01023" );
	
			scr_BotPlayerRegistCoopProfile( "LIGH_BERSERK" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_ALLROUNDER" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_WIZARD" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_GUARDNER01" );	//4�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_GUARDNER02" );	//5�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_GOLDENKIGHT" );	//6�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_NOMAGIC" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "LIGH_FUNNY" );	//8�l�� 
		}
		if(gTeamSet_num == 8)
		{
			print("teamNo08_Strong()\n");
			print("teamNo08_Strong()\n");
			//�`�[����8 �F�ł̍��R�c�i���G�j 
			scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
			scr_SetCoopBotTeamNameTextId( "$TXCET01024" );
	
			
			scr_BotPlayerRegistCoopProfile( "DARK_THUNDER" );	// 1�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_DRAGONKNIGHT" );	// 2�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_DEADMASTER" );	// 3�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_KNIGHT" );	// 4�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_BERSERK" );	//5�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_PRINCESS_DUMMY" );	//6�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_BUTLER" );	//7�l�� 
			scr_BotPlayerRegistCoopProfile( "DARK_DARKLOAD" );	//8�l�� 
		}
	}
}
function loadMission() 
{
	print("[CoopS] load()\n");

}
function startMission() 
{
	print("[CoopS] start()\n");

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

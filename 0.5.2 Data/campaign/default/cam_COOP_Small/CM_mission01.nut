//COOP���[�h��2���i8vs8) 
//�쐬�F�����E�� 
//
gTeamSet_num <- 0;
function initMission() 
{
	//�G�`�[�����m�肷��(���[�h�̋��ԁj 
	print("[CoopS] unit()\n");
	
//	local TeamSet_num = 0;	//�`�[������̂��߂̃��[�J���ϐ� 
//	TeamSet_num = scr_GetCoopBotTeamRandomIndex( 1, 4 );	//�����_���Ń`�[���������肷�� 
	gTeamSet_num = scr_GetCoopBotTeamRandomIndex( 1, 8 );	//�����_���Ń`�[���������肷�� 

	if(gTeamSet_num == 1)
	{
		print("teamNo01()\n");
		//�`�[�����P �F�Ή��R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01009" );

		scr_BotPlayerRegistCoopProfile( "FIRE_FRAMEKNIGHT_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FRAMEKNIGHT_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_02" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_03" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_BURN_01" );	//6�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_BURN_02" );	//7�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_BURN_03" );	//8�l�� 
	}
	if(gTeamSet_num == 2)
	{
		print("teamNo02()\n");
		//�`�[����2 �F���R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01010" );

		scr_BotPlayerRegistCoopProfile( "WIND_STORMKNIGHT_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORMKNIGHT_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_02" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_03" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_04" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORM_01" );	//7�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORM_02" );	//8�l�� 
	}
	if(gTeamSet_num == 3)
	{
		print("teamNo03()\n");
		//�`�[����3 �F��H�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01011" );

		scr_BotPlayerRegistCoopProfile( "CARP_CARPENTER01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_SMITH01" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_SMITH02" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_TOWERBUILDER01" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_TOWERBUILDER02" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_MECHANIC01" );	//6�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_MECHANIC02" );	//7�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_MASTER" );	//8�l�� 
	}
	if(gTeamSet_num == 4)
	{
		print("teamNo04()\n");
		//�`�[����4 �F�F���l�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01012" );

		scr_BotPlayerRegistCoopProfile( "ALIE_ROKETMAN_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_ROKETMAN_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_MEDIC_01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_MEDIC_02" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_MEDIC_03" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_METEOMASTER_01" );	//6�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_METEOMASTER_02" );	//7�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_CREATURE" );	//8�l�� 
	}
	if(gTeamSet_num == 5)
	{
		print("teamNo05()\n");
		//�`�[����5 �F�E�K�E�K�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01013" );

		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_TOWERBUILDER01" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_TOWERBUILDER02" );	//5�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_HAVENOT02" );	//6�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_HAVENOT03" );	//7�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_HEAD" );	//8�l�� 
	}
	if(gTeamSet_num == 6)
	{
		print("teamNo06()\n");
		//�`�[����6 �F���h�m�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01014" );

		scr_BotPlayerRegistCoopProfile( "SMOK_CRUSHER01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_CRUSHER02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_STUNHUMMER01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_STUNHUMMER02" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_TOWERBUILDER01" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_TOWERBUILDER02" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_FRAMEKNIGHT" );	//7�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_BURN" );	//8�l�� 
	}
	if(gTeamSet_num == 7)
	{
		print("teamNo07()\n");
		//�`�[����7 �F�X�p���{�R�c�i���G�j 
		scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
		scr_SetCoopBotTeamNameTextId( "$TXCET01015" );


		scr_BotPlayerRegistCoopProfile( "SROB_THOR" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_ROKETMAN" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_MECHANIC_01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_MECHANIC_02" );	//4�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_LIGHTNING" );	//5�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_BOSS_IQ9" );	//6�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_BOSS_IQ9" );	//7�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_BOSS_Dr" );	//8�l�� 
	}
	if(gTeamSet_num == 8)
	{
		print("teamNo08_Strong()\n");
		//�`�[����8 �F�����R�m�R�c�i���G�j 
		scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
		scr_SetCoopBotTeamNameTextId( "$TXCET01016" );

		
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_A_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_A_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_B_01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_B_02" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_B_03" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_C_01" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_C_02" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_C_03" );	// 8�l�� 

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
	if(gTeamSet_num != 8)
	{
		scr_BotPlayerDisableLearningSkillByLevelUp();
	}
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

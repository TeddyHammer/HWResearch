//COOP���[�h��2���i15vs15) 
//�쐬�F�����E�� 
//
gTeamSet_num <- 0;
function initMission() 
{
	//�G�`�[�����m�肷��(���[�h�̋��ԁj 
	print("[CoopM] unit()\n");
	
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
		scr_BotPlayerRegistCoopProfile( "FIRE_FRAMEKNIGHT_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_01" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_02" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_03" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_04" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_05" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_BURN_01" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_BURN_02" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_BURN_03" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_BURN_04" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_BURN_05" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FIRE_06" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "FIRE_FRAMEKNIGHT_04" );	// 4�l�� 
	}
	if(gTeamSet_num == 2)
	{
		print("teamNo02()\n");
		//�`�[����2 �F���R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01010" );


		scr_BotPlayerRegistCoopProfile( "WIND_STORMKNIGHT_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORMKNIGHT_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORMKNIGHT_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_01" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_02" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_03" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_04" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_05" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORM_01" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORM_02" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORM_03" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORM_04" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORM_05" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_BLASTER_06" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "WIND_STORMKNIGHT_04" );	// 4�l�� 
	}
	if(gTeamSet_num == 3)
	{
		print("teamNo03()\n");
		//�`�[����3 �F��H�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01011" );

		scr_BotPlayerRegistCoopProfile( "CARP_MASTER" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_CARPENTER01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_CARPENTER02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_SMITH01" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_SMITH02" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_TOWERBUILDER01" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_TOWERBUILDER02" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_TOWERBUILDER03" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_MECHANIC01" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_MECHANIC02" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_HEALER01" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_HEALER02" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_MECHANIC03" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_SMITH03" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "CARP_CARPENTER03" );	// 3�l�� 
	}
	if(gTeamSet_num == 4)
	{
		print("teamNo04()\n");
		//�`�[����4 �F�F���l�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01012" );

		scr_BotPlayerRegistCoopProfile( "ALIE_CREATURE" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_ROKETMAN_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_ROKETMAN_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_ROKETMAN_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_SPIN_01" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_SPIN_02" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_MEDIC_01" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_MEDIC_02" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_MEDIC_03" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_METEOMASTER_01" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_METEOMASTER_02" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_METEOMASTER_03" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_METEOMASTER_04" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_METEOMASTER_05" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "ALIE_MEDIC_04" );	// 9�l�� 
	}
	if(gTeamSet_num == 5)
	{
		print("teamNo05()\n");
		//�`�[����5 �F�E�K�E�K�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01013" );

		scr_BotPlayerRegistCoopProfile( "UGAU_HEAD" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK04" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK05" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK06" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_TOWERBUILDER01" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_TOWERBUILDER02" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_TOWERBUILDER03" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_HAVENOT01" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_HAVENOT02" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK07" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_HAVENOT03" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "UGAU_BERSERK08" );	// 8�l�� 

	}
	if(gTeamSet_num == 6)
	{
		print("teamNo06()\n");
		//�`�[����6 �F���h�m�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01014" );

		
		scr_BotPlayerRegistCoopProfile( "SMOK_CRUSHER01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_CRUSHER02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_STUNHUMMER01" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_STUNHUMMER02" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_STUNHUMMER03" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_TOWERBUILDER01" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_TOWERBUILDER02" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_TOWERBUILDER03" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_FRAMEKNIGHT_01" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_FRAMEKNIGHT_02" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_BURN_01" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_BURN_02" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_CRUSHER03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_BURN_03" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "SMOK_FRAMEKNIGHT_03" );	//12�l�� 
	}
	if(gTeamSet_num == 7)
	{
		print("teamNo07()\n");
		//�`�[����7 �F�X�p���{�R�c�i���G�j 
		scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
		scr_SetCoopBotTeamNameTextId( "$TXCET01015" );


		scr_BotPlayerRegistCoopProfile( "SROB_BOSS_IQ9_01" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_BOSS_IQ9_02" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_BOSS_Dr" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_THOR_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_THOR_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_ROKETMAN_01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_ROKETMAN_02" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_ROKETMAN_03" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_ROKETMAN_04" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_MECHANIC_01" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_LIGHTNING_01" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_LIGHTNING_02" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_ROKETMAN_05" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_MECHANIC_02" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "SROB_MECHANIC_03" );	//10�l�� 
	}
	if(gTeamSet_num == 8)
	{
		print("teamNo08_Strong()\n");
		//�`�[����8 �F�R�m�R�c�i���G�j 
		scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
		scr_SetCoopBotTeamNameTextId( "$TXCET01016" );

		
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_A_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_A_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_A_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_A_04" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_B_01" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_B_02" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_B_03" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_B_04" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_C_01" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_C_02" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_C_03" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_C_04" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_A_05" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_B_05" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "DKIG_DARKKIGHT_C_05" );	//15�l�� 
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

//COOP���[�h�����i15vs15) 
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
		//�`�[�����P �F�G���R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01001" );

		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_04" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_05" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_A_01" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_A_02" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_A_03" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_06" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_07" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_08" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_09" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_A_04" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_10" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "STEEL_HEAD_A_05" );	//15�l�� 
	}
	if(gTeamSet_num == 2)
	{
		print("teamNo02()\n");
		//�`�[����2 �F��m�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01002" );

		scr_BotPlayerRegistCoopProfile( "WARR_DRAGON_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_DRAGON_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_GUARDNER_01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_GUARDNER_02" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_KNIGHT_01" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_KNIGHT_02" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_KNIGHT_03" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_DR_KNIGHT_01" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_DR_KNIGHT_02" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_DR_KNIGHT_03" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_SPIN_01" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_SPIN_02" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_KNIGHT_04" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_DR_KNIGHT_04" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "WARR_SPIN_03" );	//15�l�� 
	}
	if(gTeamSet_num == 3)
	{
		print("teamNo03()\n");
		scr_SetCoopBotTeamNameTextId( "$TXCET01003" );
		//�`�[����3 �F���@�g���R�c 
		scr_BotPlayerRegistCoopProfile( "MAGE_FIRE_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_FIRE_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_LIGHTNING" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_FROST" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_BLASTER" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_WIZARD_01" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_WIZARD_02" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_UNLIMITED" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_HAVENOT_01" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_HAVENOT_02" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_HAVENOT_03" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_HAVENOT_04" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_HAVENOT_05" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_FIRE_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "MAGE_HAVENOT_06" );	//14�l�� 
	}
	if(gTeamSet_num == 4)
	{
		print("teamNo04()\n");
		//�`�[����4 �F�m���R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01004" );


		scr_BotPlayerRegistCoopProfile( "CLER_HEALER_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_HEALER_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_CARPENTER_01" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_CARPENTER_02" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_STUNHUMMER_01" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_STUNHUMMER_02" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_STUNHUMMER_03" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_STUNHUMMER_04" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_ALLROUNDER_01" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_ALLROUNDER_02" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_DEADMASTER_01" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_DEADMASTER_02" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_ALLROUNDER_03" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_ALLROUNDER_04" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "CLER_STUNHUMMER_05" );	// 9�l�� 
	}
	if(gTeamSet_num == 5)
	{
		print("teamNo05()\n");
		//�`�[����5 �F�g�}�g�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01005" );

		scr_BotPlayerRegistCoopProfile( "TOMA_STONEMAN_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_STONEMAN_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_STONEMAN_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_SPIN_01" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_SPIN_02" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_FATMAN_01" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_FUNNY_01" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_FUNNY_02" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_TOWERBUILDER_01" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_TOWERBUILDER_02" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_HAVENOT_01" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_HAVENOT_02" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_HAVENOT_03" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_FATMAN_02" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "TOMA_SPIN_03" );	// 6�l�� 
	}
	if(gTeamSet_num == 6)
	{
		print("teamNo06()\n");
		//�`�[����6 �F���{�b�g�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01006" );

		scr_BotPlayerRegistCoopProfile( "ROBO_BOSS_UNLIMITED" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_04" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_05" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_06" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_07" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_08" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_MECHANIC_01" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_MECHANIC_02" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_MECHANIC_03" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_MECHANIC_04" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_ROKETMAN_09" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "ROBO_MECHANIC_05" );	//14�l�� 
	}
	if(gTeamSet_num == 7)
	{
		print("teamNo07()\n");
		//�`�[����7 �F�얞�R�c 
		scr_SetCoopBotTeamNameTextId( "$TXCET01007" );


		scr_BotPlayerRegistCoopProfile( "HEAV_FATMAN_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_FATMAN_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_FATMAN_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_FATMAN_04" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_FATMAN_05" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_SMITH_01" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_SMITH_02" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_SMITH_03" );	//10�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_SMITH_04" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_NOMAGIC_01" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_NOMAGIC_02" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_NOMAGIC_03" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_NOMAGIC_04" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_FATMAN_07" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "HEAV_FATMAN_06" );	// 6�l�� 
	}
	if(gTeamSet_num == 8)
	{
		print("teamNo08_Strong()\n");
		//�`�[����8 �F�E�ҌR�c�i���G�j 
		scr_SetCoopBotTeamNameTextId( "$TXCET01008" );

		scr_NotifyStrongCoopMission();	//���̃`�[���͋��`�[���ݒ�Ȃ̂ŉ��oON 
		
		scr_BotPlayerRegistCoopProfile( "NINJ_BOSS_HANZO" );	//15�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_01" );	// 1�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_02" );	// 2�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_03" );	// 3�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_04" );	// 4�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_05" );	// 5�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_06" );	// 6�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_07" );	// 7�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_08" );	// 8�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_09" );	// 9�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_KUNOICHI_01" );	//11�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_KUNOICHI_02" );	//12�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_KUNOICHI_03" );	//13�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_KUNOICHI_04" );	//14�l�� 
		scr_BotPlayerRegistCoopProfile( "NINJ_NINJA_10" );	//10�l�� 
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

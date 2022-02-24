///////////////////////////////////////////////////////////////////////////////////////////////
//
//	�t�@�C�����Fcam_on_0102\mission00.nut 
//	�T�v	�F�I�t���C���L�����y�[�� ���x��2 �L�����y�[��2 �~�b�V����3 
//	�쐬	�F���� 
//	�쐬��	�F110606 
//	�ړI	�F�m�����n�w��̓G��|�� 
//
///////////////////////////////////////////////////////////////////////////////////////////////


function loadMission() 
{
	print("[sample mission] load()\n");
//�~�b�V�����̃X�e�[�W��ǂݍ��ޑO�̏�����ݒ肵�悤�I 

	//�J��O�o���P�[�h���� 
	scr_SetDisableGimmickType( GIMMICK_KEEP_OUT );
	scr_SetDisableGimmickType( GIMMICK_CANNON );
	scr_SetDisableGimmickType( GIMMICK_BATTERING_RAM );

}
function startMission() 
{
	print("[sample mission] start()\n");
	//�������Ԑݒ� 
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_PENALTY, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_NORMAL, 2 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_PENALTY, 2 );

	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 7 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY, 7 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 120 );
	scr_SetEnableGameWinDemo( false );




//Bot�o�^ 
	scr_BotPlayerRegistAndCreate( 101, "NOOB03", POWER_COLOR_WHITE );
//	scr_BotPlayerRegistAndCreate( 102, "NOOB04", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 103, "MEDIC02", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 104, "MAGE02", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 105, "NOOB05D", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 106, "NOOB06D", POWER_COLOR_WHITE );

	scr_BotPlayerRegistAndCreate( 201, "BUTLER01", POWER_COLOR_BLACK );	//���� 
	scr_BotPlayerRegistAndCreate( 202, "MOB04", POWER_COLOR_BLACK );	//MOB-f 
	scr_BotPlayerRegistAndCreate( 203, "MOB04", POWER_COLOR_BLACK );	//MOB-f 
	scr_BotPlayerRegistAndCreate( 204, "NINJA_FR", POWER_COLOR_BLACK );	//NIN-f 
	scr_BotPlayerRegistAndCreate( 205, "NINJA_FR", POWER_COLOR_BLACK );	//NIN-f 
	scr_BotPlayerRegistAndCreate( 206, "HEAVY03", POWER_COLOR_BLACK );	//HEV-f 
	scr_BotPlayerRegistAndCreate( 207, "HEAVY03", POWER_COLOR_BLACK );	//HEV-f 
	scr_BotPlayerRegistAndCreate( 208, "ONI_F", POWER_COLOR_BLACK );	//ONIf 
	scr_BotPlayerRegistAndCreate( 209, "ONI_F", POWER_COLOR_BLACK );	//ONIf 
	scr_BotPlayerRegistAndCreate( 210, "MOB05", POWER_COLOR_BLACK );	//MOB_f 
	scr_BotPlayerRegistAndCreate( 211, "MOB05", POWER_COLOR_BLACK );	//MOB_f 
	scr_BotPlayerRegistAndCreate( 212, "MOB05", POWER_COLOR_BLACK );	//MOB_f 
	scr_BotPlayerRegistAndCreate( 213, "MOB05", POWER_COLOR_BLACK );	//MOB_f 
	scr_BotPlayerRegistAndCreate( 214, "WIZARD03", POWER_COLOR_BLACK );	//ICE_MAGEt 
	scr_BotPlayerRegistAndCreate( 215, "WIZARD03", POWER_COLOR_BLACK );	//ICE_MAGEt 
	scr_BotPlayerRegistAndCreate( 216, "WIZARD02", POWER_COLOR_BLACK );	//MAGEt 
	scr_BotPlayerRegistAndCreate( 217, "WIZARD02", POWER_COLOR_BLACK );	//MAGEt 
	scr_BotPlayerRegistAndCreate( 218, "WIZARD03", POWER_COLOR_BLACK );	//ICE_MAGE_t 
	scr_BotPlayerRegistAndCreate( 219, "WIZARD03", POWER_COLOR_BLACK );	//ICE_MAGE_t 
	scr_BotPlayerRegistAndCreate( 220, "WIZARD02", POWER_COLOR_BLACK );	//MAGE_t 
	scr_BotPlayerRegistAndCreate( 221, "WIZARD02", POWER_COLOR_BLACK );	//MAGE_t 

//�R�[���o�b�N�̐ݒ�����Ă�����I 
	scr_SetMessageCallback( "miscb_PlayerSally_First", 1, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );		//����o���������̃R�[���o�b�N 
	scr_SetMessageCallback( "miscb_GameSet", 2, CB_TYPE_ONCE,  MESSAGE_GAME_BREAK_WHITE_CASTLE_MONUMENT );	//�Q�[���Z�b�g 
	scr_SetMessageCallback( "miscb_TimeOver", 80002, CB_TYPE_ONCE,  MESSAGE_GAME_TIME_OVER );		//�^�C���I�[�o�[�� 


	scr_BotPlayerSetMarchCastleMonument( POWER_COLOR_WHITE, false );	//�i�R�𐧌� 

	//�I�t���C���L�����y�[���g�t�c�ݒ� 
	scr_SetDisableTacticalInfomation();	//�o�i�[�e�L�X�g���\�� 
	scr_SetEnablePlayerHeroPopup( false );	//�q�[���[�|�b�v�A�b�v�̔�\�� 
	scr_SetEnableInputPlayerVoiceReaction( false );	//���A�N�V�����{�C�X�}�N���̔�\�� 
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_DAMAGED, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_75, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_50, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_40, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_30, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_20, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_10, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_BROKEN, true );
	scr_BotPlayerDisableLearningSkillByLevelUp();
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_ENEMY_CASTLE_APPROACH, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_ENEMY_CASTLE_ATTACK, true );



//�g���b�v�o�^ 
	scr_RegistTrapBox( 1001, -4053.4 ,500.0 ,235.9 ,394.5 ,1500.0 ,5950.9 ,0.0 );	//�����g���K�[_? 
	scr_RegistTrapBox( 1002, -11935.5, 800.0, 10.5, 1791.8, 2500.0, 1890.0 	0.0 );	//���[�v 

//�g���b�v�R�[���o�b�N 
	scr_SetTrapInCallback( "miscb_TrapIn1001", 10001, CB_TYPE_ONCE, 1001 );	
	scr_SetTrapInCallback( "miscb_TrapIn1002", 10002, CB_TYPE_ALWAYS, 1002 );

//�o���O���b�Z�[�W 
	scr_WaitStart( 0.4 );	
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C213_01" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	scr_OpenMissionConditionText(  0, "TXHFC03301" );	//�B��������\�� 


	// �v���C���[������҂��܂�
	mis_WaitPlayerCreate();
	scr_PlayerSetForceRespawnPosition( 11249.514648, 2120.000000, -14.903, -90.0 );	//�v���C���[�̏o���ʒu���Œ� 


// �Q�[���J�n��҂��܂� 
	mis_WaitGameStart();

}
function mis_WaitPlayerCreate()
{
	while( !scr_PlayerIsCreateBody( 0 ) )
	{
		suspend();
	}
}
//�Q�[���J�n��҂��� 
function mis_WaitGameStart()
{
	while( GAME_STATE_PLAYING != scr_GetGamePlayingStatus() )	//�����i�j���̏�������������Ă��鎞�ȉ��̏������J��Ԃ����s����
	{
		local state;						//���[�J���ϐ��i��x���ʂ��A������Y���֐��j��ݒ肷�� 
		state = GetGamePlayingStatus();				//�ϐ��Ɋ֐��̌��ʂ̒l�i�߂�l�j�������� 
		
		print("[sample mission] mis_WaitGameStart state = " + state + "\n" );	//�f�o�b�O���O�ɕϐ���\������ 
		suspend();	
	}

	//BOT���Q�[���ɔz�u 
	scr_BotPlayerSpawnToMonument( 101, "gcmoA_001" );
//	scr_BotPlayerSpawnToMonument( 102, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 103, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 104, "gcmoA_001" );
	scr_BotPlayerSpawnToWorld( 105, 8607.697266, 2120.000000, 358.993591, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 106, 8590.306641, 2120.000000, -406.286499, 0.0 );	//MOBs 
	suspend();
	scr_BotPlayerSetActionTrigger( 101, true );
//	scr_BotPlayerSetActionTrigger( 102, true );
	scr_BotPlayerSetActionTrigger( 103, true );
	scr_BotPlayerSetActionTrigger( 104, true );
	scr_BotPlayerSetActionTrigger( 105, true );
	scr_BotPlayerSetActionTrigger( 106, true );

	scr_AddTargetEnemyCallback( "miscb_KillTarget_BUTLER", 201, "$TXHFI21301" );
}
function mis_BannerInfoTimer(fn_name,time)
{
	//���h�c�^�C�}�[�R�[���o�b�N�̃Z�b�g�E����ւ� 
	scr_RemoveCallbackFromId( 80000 );	
	suspend();
	scr_SetTimerCallback( fn_name, 80000, CB_TYPE_ONCE, time );
}
function miscb_BunnerInfoRemove()
{
	//�o�i�[�C���t�H���[�V�����폜 
	print( "BunnerRemove!\n" );
	scr_CloseMissionExpainText( 0 );
}


//�ϐ��̐ݒ� 
gMonument01 <- 0;
gNearButler <- 0;
////////////////////////////////////////////////
// ��������̓R�[���o�b�N���� 
////////////////////////////////////////////////

//�v���C���[���o���������̃R�[���o�b�N����
function miscb_PlayerSally_First()

{
	print( "Player is sally!\n" );

	//�J���������̔w�㎋�_�ɕύX 
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
	scr_ResetGameCameraBehind( false );

	//���j�������g���� 
	scr_CompleteMonumentBuild( "gfmo_001", POWER_COLOR_BLACK );
	scr_SetBreakMonumentCallback( "miscb_BreakMonument01", 20001, CB_TYPE_ONCE, "gfmo_001" );
	gMonument01 = 1 ;


	scr_WaitStart( 1.0 );	//�P�b�҂� 
	while( scr_Waiting() )	//�҂̂��I��̂��Ď������ 
	{
		suspend();
	}
	scr_BotPlayerSpawnToWorld( 201,-8579.000000, 2120.000000, 46.088257, 90.0 );	//BUTLER 
	scr_BotPlayerSpawnToMonument( 202, "gfmo_001" );
	scr_BotPlayerSpawnToMonument( 203, "gfmo_001" );
	scr_BotPlayerSpawnToMonument( 204, "gfmo_001" );
	scr_BotPlayerSpawnToMonument( 205, "gfmo_001" );
	scr_BotPlayerSpawnToMonument( 206, "gfmo_001" );
	scr_BotPlayerSpawnToMonument( 207, "gfmo_001" );
	suspend();
	scr_BotPlayerSetActionTrigger( 202, true );
	scr_BotPlayerSetActionTrigger( 203, true );
	scr_BotPlayerSetActionTrigger( 204, true );
	scr_BotPlayerSetActionTrigger( 205, true );
	scr_BotPlayerSetActionTrigger( 206, true );
	scr_BotPlayerSetActionTrigger( 207, true );


	scr_BotPlayerEnableInterruptActionMode( 201, SCR_ACTION_MODE_STAY, -1, -1.0 );

//	scr_OpenMissionConditionText(  0, "$TXHFC21301" );	//�B��������\�� 



}
function miscb_TimeOver()
{
	print( "TimeOver!\n" );
	scr_RemoveCallbackAll();
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );


	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C111_16" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();
	scr_GameSetMissionFailure();	//�~�b�V�������s 
}
function miscb_GameSet()
{
	print( "Gameset!\n" );
	
	scr_RemoveCallbackAll();
	scr_GameSetMissionFailure();	//�~�b�V�������s 
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );

	scr_WaitStart( 2.0 );
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C111_14" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();


}
function miscb_KillTarget_BUTLER()
{
	print( "killtarget01!\n" );
	
	scr_BotPlayerSetRespawnEnable( 201, false );
	scr_GameSetMissionSuccess();
	scr_RemoveCallbackAll();
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );


	scr_BotPlayerSetLife( 202, 0 );
	scr_BotPlayerSetLife( 203, 0 );
	scr_BotPlayerSetLife( 204, 0 );
	scr_BotPlayerSetLife( 205, 0 );
	scr_BotPlayerSetLife( 206, 0 );
	scr_BotPlayerSetLife( 207, 0 );
	scr_BotPlayerSetLife( 208, 0 );
	scr_BotPlayerSetLife( 209, 0 );
	scr_BotPlayerSetLife( 210, 0 );
	scr_BotPlayerSetLife( 211, 0 );
	scr_BotPlayerSetLife( 212, 0 );
	scr_BotPlayerSetLife( 213, 0 );
	scr_BotPlayerSetLife( 214, 0 );
	scr_BotPlayerSetLife( 215, 0 );
	scr_BotPlayerSetLife( 216, 0 );
	scr_BotPlayerSetLife( 217, 0 );
	scr_BotPlayerSetLife( 218, 0 );
	scr_BotPlayerSetLife( 219, 0 );
	scr_BotPlayerSetLife( 220, 0 );
	scr_BotPlayerSetLife( 221, 0 );


	scr_WaitStart( 2.0 );
	while( scr_Waiting() )	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C213_03" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

}
function miscb_TrapIn1001()
{
	print( "TrapIn 1001!\n" );

	scr_SetInputDisable( SCR_INPUT_CAMERA );

	scr_ResetGameCameraDirection( -8579.000000, 46.088257, false );
	scr_ResetGameCameraBehind( false );
	scr_SetGameCameraAngleType( ANGLE_ZOOM_UP );

	scr_WaitStart( 0.4 );
	while( scr_Waiting() )	
	{
		suspend();
	}



	gNearButler = 1;
	
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C213_02" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	scr_OpenDialog( 0, "C213_06" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );
	scr_SetInputEnable( SCR_INPUT_CAMERA );


	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 30 );
	scr_SetMessageCallback( "miscb_PlayerSally_after", 9001, CB_TYPE_ALWAYS, MESSAGE_PLAYER_SALLY );

	scr_BotPlayerSpawnToMonument( 208, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 209, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 210, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 211, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 212, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 213, "gcmoB_001" );
	suspend();
	scr_BotPlayerSetActionTrigger( 208, true );
	scr_BotPlayerSetActionTrigger( 209, true );
	scr_BotPlayerSetActionTrigger( 210, true );
	scr_BotPlayerSetActionTrigger( 211, true );
	scr_BotPlayerSetActionTrigger( 212, true );
	scr_BotPlayerSetActionTrigger( 213, true );
//	if(gMonument01 == 3){
	scr_RemoveCallbackFromId( 20001 );	

		scr_BotPlayerSpawnToMonument( 202, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 203, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 204, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 205, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 206, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 207, "gcmoB_001" );

		scr_BotPlayerSpawnToMonument( 214, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 215, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 216, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 217, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 218, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 219, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 220, "gcmoB_001" );
		scr_BotPlayerSpawnToMonument( 221, "gcmoB_001" );

		scr_BotPlayerSetRespawnEnable( 202, true );
		scr_BotPlayerSetRespawnEnable( 203, true );
		scr_BotPlayerSetRespawnEnable( 204, true );
		scr_BotPlayerSetRespawnEnable( 205, true );
		scr_BotPlayerSetRespawnEnable( 206, true );
		scr_BotPlayerSetRespawnEnable( 207, true );

		scr_BotPlayerSetRespawnEnable( 214, true );
		scr_BotPlayerSetRespawnEnable( 215, true );
		scr_BotPlayerSetRespawnEnable( 216, true );
		scr_BotPlayerSetRespawnEnable( 217, true );
		scr_BotPlayerSetRespawnEnable( 218, true );
		scr_BotPlayerSetRespawnEnable( 219, true );
		scr_BotPlayerSetRespawnEnable( 220, true );
		scr_BotPlayerSetRespawnEnable( 221, true );
//	}
	scr_SetTimerCallback( "miscb_ButlerTriggerOn", 654321, CB_TYPE_ONCE, 5.0 );

}
function miscb_ButlerTriggerOn()
{
	//�o�g���[�̃g���K�[ 
	scr_BotPlayerSetActionTrigger( 201, true );
	scr_BotPlayerDisableInterruptActionMode( 201 );

}
function miscb_PlayerSally_after()
{
	print( "sallypenalty!\n" );
	scr_BotPlayerSpawnToMonument( 202, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 203, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 204, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 205, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 206, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 207, "gcmoB_001" );

//	scr_BotPlayerSpawnToMonument( 208, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 209, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 210, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 211, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 212, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 213, "gcmoB_001" );
}

function miscb_BreakMonument01()
{
	print( "BreakM01!\n" );
	gMonument01 = 3;


//	scr_PauseOn();	
//	scr_OpenDialog( 0, "C213_05" );
//	while( scr_IsOpenDialog(0) )
//	{
//		suspend();
//	}
//	scr_PauseOff();
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",4.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMC13017" );	//  

	scr_WaitStart( 2.0 );
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_BotPlayerSpawnToWorld( 214,  3002.117188, 583.343628, -275.051971, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 215,   918.317139, 265.828552, 2609.924805, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 216, 1551.980835, 461.955719, -2122.956787, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 217, 5537.850586, 1040.000000, -113.253242, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 218,   -3057.991211, 590.672852, 201.794495, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 219, -3673.970459, 410.090424, -2531.886719, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 220,  -2275.688965, 573.464783, 2572.943115, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 221,   -5582.868164, 1040.000000, 94.610519, 0.0 );	//MOBs 
	suspend();
	scr_BotPlayerSetActionTrigger( 214, true );
	scr_BotPlayerSetActionTrigger( 215, true );
	scr_BotPlayerSetActionTrigger( 216, true );
	scr_BotPlayerSetActionTrigger( 217, true );
	scr_BotPlayerSetActionTrigger( 218, true );
	scr_BotPlayerSetActionTrigger( 219, true );
	scr_BotPlayerSetActionTrigger( 220, true );
	scr_BotPlayerSetActionTrigger( 221, true );

	if(gNearButler == 0){
		scr_BotPlayerSetRespawnEnable( 202, false );
		scr_BotPlayerSetRespawnEnable( 203, false );
		scr_BotPlayerSetRespawnEnable( 204, false );
		scr_BotPlayerSetRespawnEnable( 205, false );
		scr_BotPlayerSetRespawnEnable( 206, false );
		scr_BotPlayerSetRespawnEnable( 207, false );

		scr_BotPlayerSetRespawnEnable( 214, false );
		scr_BotPlayerSetRespawnEnable( 215, false );
		scr_BotPlayerSetRespawnEnable( 216, false );
		scr_BotPlayerSetRespawnEnable( 217, false );
		scr_BotPlayerSetRespawnEnable( 218, false );
		scr_BotPlayerSetRespawnEnable( 219, false );
		scr_BotPlayerSetRespawnEnable( 220, false );
		scr_BotPlayerSetRespawnEnable( 221, false );
	}



}
function miscb_TrapIn1002()
{
	print( "TrapIn 1002!\n" );
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C213_04" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}

	mis_Warp();
	scr_PauseOff();	

}

//���[�v
function mis_Warp()
{
	// �t�F�[�h���ă��[�v
	scr_FadeOutBlack( 1.0 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
	// ���[�v
	scr_PlayerWarp( -8702.618164, 2120.000000, 15.815125,90.0 );
	// 1�t���[���҂��Ȃ��ƃ��[�v���������Ȃ�
	suspend();
	// �J������w��փ��Z�b�g
	scr_ResetGameCameraBehind( true );
	
	scr_FadeIn( 1.0 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
}

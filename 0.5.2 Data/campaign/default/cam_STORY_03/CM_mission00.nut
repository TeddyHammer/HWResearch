///////////////////////////////////////////////////////////////////////////////////////////////
//
//	�t�@�C�����Fcam_on_0101\mission00.nut 
//	�T�v	�F�I�t���C���L�����y�[�� ���x��2 �L�����y�[��1 �~�b�V����1 
//	�쐬	�F���� 
//	�쐬��	�F110608 
//	�ړI	�F�m�ϑ��푈�n��������i���Ԗ������j 
//
///////////////////////////////////////////////////////////////////////////////////////////////

function loadMission() 
{
	print("[sample mission] load()\n");
	scr_SetDisableGimmickType( GIMMICK_RAFT );
	//�J��O�o���P�[�h���� 
	scr_SetDisableGimmickType( GIMMICK_KEEP_OUT );

}
function startMission() 
{
	print("[sample mission] start()\n");

	//�������Ԑݒ� 
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_PENALTY, 0 );



//�R�[���o�b�N�̐ݒ�����Ă�����I 
	scr_SetMessageCallback( "miscb_PlayerSally_First", 9000, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );
//	scr_SetMessageCallback( "miscb_GameSetWinWhite", 1100, CB_TYPE_ONCE, MESSAGE_GAME_SET_WIN_WHITE );
//	scr_SetMessageCallback( "miscb_GameSetWinBlack", 1200, CB_TYPE_ONCE, MESSAGE_GAME_SET_WIN_BLACK );
	scr_SetMessageCallback( "miscb_GameSetWinWhite", 1100, CB_TYPE_ONCE, MESSAGE_GAME_BREAK_BLACK_CASTLE_MONUMENT );
	scr_SetMessageCallback( "miscb_GameSetWinBlack", 1200, CB_TYPE_ONCE, MESSAGE_GAME_BREAK_WHITE_CASTLE_MONUMENT );

	scr_SetMessageCallback( "miscb_TimeOver", 120000, CB_TYPE_ONCE,  MESSAGE_GAME_TIME_OVER );	//�^�C���I�[�o�[�� 



//BOT�o�^ 
	scr_BotPlayerRegistAndCreate( 101, "NOOB03", POWER_COLOR_WHITE );
//	scr_BotPlayerRegistAndCreate( 102, "NOOB04", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 103, "MEDIC02", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 104, "MAGE02", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 105, "NOOB05D", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 106, "NOOB06D", POWER_COLOR_WHITE );

	scr_BotPlayerRegistAndCreate( 201, "ICE_MAGE", POWER_COLOR_BLACK );	//��O���@�g�� 
	scr_BotPlayerRegistAndCreate( 202, "ICE_MAGE", POWER_COLOR_BLACK );	//��O���@�g�� 
	scr_BotPlayerRegistAndCreate( 203, "SAMURAI_D", POWER_COLOR_BLACK );	//��O���O�� 
	scr_BotPlayerRegistAndCreate( 204, "SAMURAI_D", POWER_COLOR_BLACK );	//��O���O�� 
	scr_BotPlayerRegistAndCreate( 205, "ICE_MAGE", POWER_COLOR_BLACK );	//�������ĂЂ���̖��@�g������ 
//	scr_BotPlayerRegistAndCreate( 206, "ICE_MAGE", POWER_COLOR_BLACK );	//�������ĉE��̖��@�g�����̐��O 
	scr_BotPlayerRegistAndCreate( 207, "ICE_MAGE", POWER_COLOR_BLACK );	//�������ĉE��̖��@�g�����̐扜 
	scr_BotPlayerRegistAndCreate( 208, "ICE_MAGE", POWER_COLOR_BLACK );	//����m�@ 
	scr_BotPlayerRegistAndCreate( 210, "ICE_MAGE", POWER_COLOR_BLACK );	//2�ԉ����@�g�� 
//	scr_BotPlayerRegistAndCreate( 212, "ICE_MAGE", POWER_COLOR_BLACK );	//2�Ԍ������ā����u���@�g�� 
	scr_BotPlayerRegistAndCreate( 213, "SAMURAI_D", POWER_COLOR_BLACK );	//���O�� 
	scr_BotPlayerRegistAndCreate( 214, "SAMURAI_D", POWER_COLOR_BLACK );	//���O�� 
	scr_BotPlayerRegistAndCreate( 215, "ICE_MAGE", POWER_COLOR_BLACK );	//���O���@�g�� 
	scr_BotPlayerRegistAndCreate( 216, "SAMURAI_F", POWER_COLOR_BLACK );	//���ՂP�ԂQ�� 
	scr_BotPlayerRegistAndCreate( 217, "SAMURAI_F", POWER_COLOR_BLACK );	//���ՂP�ԂQ�� 
	scr_BotPlayerRegistAndCreate( 218, "NINJA_F", POWER_COLOR_BLACK );	//���ՂP�ԂQ�� 
	scr_BotPlayerRegistAndCreate( 219, "NINJA_F", POWER_COLOR_BLACK );	//���ՂP�ԂQ�� 
	scr_BotPlayerRegistAndCreate( 220, "SAMURAI_T", POWER_COLOR_BLACK );	//�㔼3�ԓG�� 
	scr_BotPlayerRegistAndCreate( 221, "SAMURAI_T", POWER_COLOR_BLACK );	//�㔼3�ԓG�� 
	scr_BotPlayerRegistAndCreate( 222, "NINJA_T", POWER_COLOR_BLACK );	//�㔼3�ԓG�� 
	scr_BotPlayerRegistAndCreate( 223, "NINJA_T", POWER_COLOR_BLACK );	//�㔼3�ԓG�� 
//	scr_BotPlayerRegistAndCreate( 224, "ONI", POWER_COLOR_BLACK );	//�S  
	scr_BotPlayerRegistAndCreate( 224, "FROST2", POWER_COLOR_BLACK );	//�t���X�g�f�[����  
	scr_BotPlayerRegistAndCreate( 225, "NINJA_DC", POWER_COLOR_BLACK );	//�h�q��  

	scr_BotPlayerRegistAndCreate( 226, "FROST", POWER_COLOR_BLACK );	//�t���X�g�f�[����  
	scr_BotPlayerRegistAndCreate( 227, "FROST", POWER_COLOR_BLACK );	//�t���X�g�f�[����  



//�g���b�v�o�^ 
	scr_RegistTrapBox( 1000,   16576.0 ,0.0 ,-4185.1 ,1786.6 ,1200.0 ,1793.0 ,-337.4  );	//�� 

	scr_RegistTrapBox( 1001,   13373.7 ,0.0 ,-2634.9 ,395.1 ,1500.0 ,4497.0 ,-337.4  );	//��̑O 
	scr_RegistTrapBox( 1002,   3035.2 ,0.0 ,-1154.4 ,395.1 ,1000.0 ,6598.4 ,-8.6  );	//���� 
//	scr_RegistTrapBox( 1003,   -1816.7, 0.0, -1214.3, 272.7, 1000.0, 6612.7, -349.3  );	//3�ԃ^���[�O 
	scr_RegistTrapBox( 1003,   -4432.7, 0.0, 903.3, 349.7, 1000.0, 8961.7, -4.3  );	//3�ԃ^���[�O 
	scr_RegistTrapBox( 1004,   -10415.6 ,0.0 ,972.5 ,395.1 ,1000.0 ,3108.8 ,-36.1  );	//�G��O 
	scr_RegistTrapBox( 1004,   -8509.1 ,0.0 ,-3437.7 ,403.6 ,1000.0 ,2200.9 ,0.0  );	//�G��O 
	scr_RegistTrapBox( 1005,   -16308.5 ,0.0 ,-4233.2 ,1644.8 ,1500.0 ,1832.1 ,-297.0  );	//�G��� 
//�g���b�v�R�[���o�b�N 

	scr_SetTrapInCallback( "miscb_TrapIn1001", 10001, CB_TYPE_ONCE, 1001 );	
	scr_SetTrapInCallback( "miscb_TrapIn1002", 10002, CB_TYPE_ONCE, 1002 );
	scr_SetTrapInCallback( "miscb_TrapIn1003", 10003, CB_TYPE_ONCE, 1003 );
	scr_SetTrapInCallback( "miscb_TrapIn1004", 10004, CB_TYPE_ONCE, 1004 );
	scr_SetTrapInCallback( "miscb_TrapIn1005", 10005, CB_TYPE_ONCE, 1005 );

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
	scr_SetEnableGameWinDemo( false );


//�o���O���b�Z�[�W 
	scr_WaitStart( 0.4 );	
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C211_01" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	scr_OpenMissionConditionText(  0, "TXHFC03101" );	//�B��������\�� 

	// �v���C���[������҂��܂�
	mis_WaitPlayerCreate();
	scr_PlayerSetForceRespawnPosition( 16031.367188, 100.000000, -3937.96, -65.0 );	//�v���C���[�̏o���ʒu���Œ� 



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
	while( GAME_STATE_PLAYING != scr_GetGamePlayingStatus() )
	{
		local state;					
		state = GetGamePlayingStatus();			
		
		print("[sample mission] mis_WaitGameStart state = " + state + "\n" );
		suspend();	
	}

	//BOT���Q�[���ɔz�u 
	//����
	scr_BotPlayerSpawnToMonument( 101, "gcmoA_001" );
//	scr_BotPlayerSpawnToMonument( 102, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 103, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 104, "gcmoA_001" );
	scr_BotPlayerSpawnToWorld( 105, 13366.1, 100.0, -3333.7, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 106, 13732.3, 100.0, -2405.7, 0.0 );	//MOBs 

	scr_BotPlayerSpawnToWorld( 201,  12556.340820, 430.000000, -565.463440, 0.0 );	//��O���@�g�� 
	scr_BotPlayerSpawnToWorld( 202,  11540.506836, 300.000000, -3358.923828, 0.0 );	//��O���@�g�� 
	scr_BotPlayerSpawnToWorld( 203, 7731.251465, 100.000389, -482.972961, 0.0 );	//��O���O�� 
	scr_BotPlayerSpawnToWorld( 204, 9520.127930, 100.000000, -871.239380, 0.0 );	//��O���O�� 
	scr_BotPlayerSpawnToWorld( 205, 5197.283691, 291.416077, 327.347168, 0.0 );	//�������ĂЂ���̖��@�g������ 
//	scr_BotPlayerSpawnToWorld( 206, 6684.7, 525.0, -3442.3, 0.0 );	//�������ĉE��̖��@�g�����̐��O 
	scr_BotPlayerSpawnToWorld( 207, 5981.0, 564.2, -1877.5, 0.0 );	//�������ĉE��̖��@�g�����̐扜 
	suspend();
	suspend();
	suspend();
	suspend();
	scr_BotPlayerSetActionTrigger( 101, true );
//	scr_BotPlayerSetActionTrigger( 102, true );
	scr_BotPlayerSetActionTrigger( 103, true );
	scr_BotPlayerSetActionTrigger( 104, true );
	scr_BotPlayerSetActionTrigger( 105, true );
	scr_BotPlayerSetActionTrigger( 106, true );

	scr_BotPlayerSetActionTrigger( 201, true );
	scr_BotPlayerSetActionTrigger( 202, true );
	scr_BotPlayerSetActionTrigger( 203, true );
	scr_BotPlayerSetActionTrigger( 204, true );
	scr_BotPlayerSetActionTrigger( 205, true );
//	scr_BotPlayerSetActionTrigger( 206, true );
	scr_BotPlayerSetActionTrigger( 207, true );



}
//�ėp�t�@���N�V���� ////
function mis_CameraSet()
{
	print("cameraset()\n");
//	scr_SetInputDisable( SCR_INPUT_MOVE );	//�ړ����֎~ 
	scr_SetInputDisable( SCR_INPUT_CAMERA );	//�J�������֎~ 
	scr_WaitStart( 0.65 );	
	while( scr_Waiting() )	
	{
		suspend();
	}
//	scr_SetInputEnable( SCR_INPUT_MOVE );	//�ړ����֎~���� 
	scr_SetInputEnable( SCR_INPUT_CAMERA );	//�J�����֎~���� 
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
gMonument02 <- 0;
gMonument03 <- 0;
gNearCastle <- 0;

////////////////////////////////////////////////
// ��������̓R�[���o�b�N���� 
////////////////////////////////////////////////

//�v���C���[������o���������̃R�[���o�b�N����
function miscb_PlayerSally_First()

{
	print( "Player is sally!\n" );

	//�J���������̔w�㎋�_�ɕύX 
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
	scr_ResetGameCameraBehind( false );

	scr_WaitStart( 1.0 );	//�P�b�҂� 
	while( scr_Waiting() )	//�҂̂��I��̂��Ď������ 
	{
		suspend();
	}
	
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C211_02" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
//	scr_PauseOff();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
//	scr_PauseOn();	
	scr_OpenDialog( 0, "C211_03" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();


	scr_OpenMissionConditionText(  0, "TXHFC01104" );	//�G�̃r�b�O�^���[��j�󂵂� 

	scr_SetTrapInCallback( "miscb_TrapIn1000", 10000, CB_TYPE_ALWAYS, 1000 );	
	scr_SetTrapOutCallback( "miscb_TrapOut1000", 100000, CB_TYPE_ALWAYS, 1000 );

	scr_AddDeathEnemyCallback( "miscb_BotDead216", 216 );
	scr_AddDeathEnemyCallback( "miscb_BotDead217", 217 );
	scr_AddDeathEnemyCallback( "miscb_BotDead218", 218 );
	scr_AddDeathEnemyCallback( "miscb_BotDead219", 219 );
	scr_AddDeathEnemyCallback( "miscb_BotDead220", 220 );
	scr_AddDeathEnemyCallback( "miscb_BotDead221", 221 );
	scr_AddDeathEnemyCallback( "miscb_BotDead222", 222 );
	scr_AddDeathEnemyCallback( "miscb_BotDead223", 223 );
	
	scr_BotPlayerSetSyncBreakCastleMonumentWithPlayer( POWER_COLOR_WHITE, true );


}
function miscb_TimeOver()
{
	print( "TimeOver!\n" );
	
	scr_RemoveCallbackAll();
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
	scr_OpenDialog( 0, "C211_10" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	scr_GameSetMissionFailure();	//�~�b�V�������s 

}
//�Q�[���Z�b�g���̃R�[���o�b�N 
function miscb_GameSetWinWhite()
{
	print( "Game Set Win White!\n" );
	
//	scr_GameSetMissionClear();
	scr_GameSetMissionSuccess();
	scr_RemoveCallbackAll();
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );


	scr_BotPlayerSetLife( 201, 0 );
	scr_BotPlayerSetLife( 202, 0 );
	scr_BotPlayerSetLife( 203, 0 );
	scr_BotPlayerSetLife( 204, 0 );
	scr_BotPlayerSetLife( 205, 0 );
	scr_BotPlayerSetLife( 206, 0 );
	scr_BotPlayerSetLife( 207, 0 );
	scr_BotPlayerSetLife( 208, 0 );
	scr_BotPlayerSetLife( 210, 0 );
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
	scr_BotPlayerSetLife( 222, 0 );
	scr_BotPlayerSetLife( 223, 0 );
	scr_BotPlayerSetLife( 224, 0 );
	scr_BotPlayerSetLife( 225, 0 );

	scr_WaitStart( 1.6 );
	while( scr_Waiting() )	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C211_09" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

}

function miscb_GameSetWinBlack()
{
	print( "Game Set Winblack!\n" );
	
	scr_GameSetMissionFailure();
	scr_RemoveCallbackAll();
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );

	// �^�C�~���O�̓r�b�O�^���[�j�󒼌�B�o�i�[�e�L�X�g�\����҂��������悤�I 
	scr_WaitStart( 1.6 );
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
function miscb_TrapIn1000()
{
	print( "TrapIn 1000!\n" );
	scr_SetTimerCallback( "miscb_InOwnCastle", 1111, CB_TYPE_ONCE, 60.0 );
}
function miscb_TrapOut1000()
{
	print( "TrapOut 1000!\n" );
	scr_RemoveCallbackFromId( 1111 );
}
function miscb_InOwnCastle()
{
	print( "TrapIn 1111!\n" );
	scr_RemoveCallbackFromId( 40016 );
	scr_RemoveCallbackFromId( 40017 );
	scr_BotPlayerSpawnToWorld( 216, 12128.4, 430.0,   203.4, 0.0 );	//MOBsSAM 
	scr_BotPlayerSpawnToWorld( 217, 10551.9, 420.0, -3618.0, 0.0 );	//MOBsSAM 

	scr_BotPlayerSetActionTrigger( 216, true );
	scr_BotPlayerSetActionTrigger( 217, true );

	scr_RemoveCallbackFromId( 10000 );
	scr_RemoveCallbackFromId( 100000 );
	scr_SetTrapInCallback( "miscb_TrapIn1000", 10000, CB_TYPE_ALWAYS, 1000 );	
	scr_SetTrapOutCallback( "miscb_TrapOut1000", 100000, CB_TYPE_ALWAYS, 1000 );

}
function miscb_TrapIn1001()
{
	print( "TrapIn 1001!\n" );

	scr_CompleteMonumentBuild( "gfmo_001", POWER_COLOR_BLACK );
	scr_SetBreakMonumentCallback( "miscb_BreakMonument01", 20001, CB_TYPE_ONCE, "gfmo_001" );
	gMonument01 = 1 ;


//	scr_PauseOn();	
//	scr_OpenDialog( 0, "C211_04" );
//	while( scr_IsOpenDialog(0) )
//	{
//		suspend();
//	}
//	scr_PauseOff();
	mis_BannerInfoTimer("miscb_BunnerInfo0103",3.0);	//�o�i�[�����̂��̂ɍX�V 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMC11042" );	//  

	scr_RemoveCallbackFromId( 40016 );
	scr_RemoveCallbackFromId( 40017 );
	scr_RemoveCallbackFromId( 40018 );
	scr_RemoveCallbackFromId( 40019 );


	scr_BotPlayerSpawnToMonument( 216, "gfmo_001" );
	scr_WaitStart( 0.3 );
	while( scr_Waiting() )
	{
		suspend();
	}
	scr_BotPlayerSpawnToMonument( 217, "gfmo_001" );
	scr_WaitStart( 0.3 );
	while( scr_Waiting() )
	{
		suspend();
	}
	scr_BotPlayerSpawnToMonument( 218, "gfmo_001" );
	scr_WaitStart( 0.3 );
	while( scr_Waiting() )
	{
		suspend();
	}
	scr_BotPlayerSpawnToMonument( 219, "gfmo_001" );
	suspend();

	scr_BotPlayerSetActionTrigger( 216, true );
	scr_BotPlayerSetActionTrigger( 217, true );
	scr_BotPlayerSetActionTrigger( 218, true );
	scr_BotPlayerSetActionTrigger( 219, true );

}
function miscb_BunnerInfo0103()
{
	//�o�i�[�C���t�H���[�V�������� 
	print( "Bunner0103!\n" );
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",4.0);	//�o�i�[���폜���� 
	scr_OpenMissionExpainText( 0, "#TXCMC11043" );	//  
}
function miscb_BreakMonument01()
{
	print( "BreakM01!\n" );
	gMonument01 = 3;

	if(gMonument02 == 0){

		scr_CompleteMonumentBuild( "gfmo_002", POWER_COLOR_BLACK );
		scr_SetBreakMonumentCallback( "miscb_BreakMonument02", 20002, CB_TYPE_ONCE, "gfmo_002" );
		gMonument02 = 1 ;

		scr_BotPlayerSpawnToWorld( 208, -218.938950, 537.832947, -3053.432861, 0.0 );	//�����E�� 
		scr_BotPlayerSpawnToWorld( 210, -1653.270630, 435.861694, 307.201141, 0.0 );	//2�ԉ����@�g�� 
//		scr_BotPlayerSpawnToWorld( 212, -3593.0, 525.0,  3226.3, 0.0 );	//2�Ԍ������ā����u���@�g�� 
		scr_BotPlayerSpawnToWorld( 213, -7399.736816, 111.495590, -388.185242, 0.0 );	//���O�� 
		scr_BotPlayerSpawnToWorld( 214, -6976.000977, 454.145081, -4432.128906, 0.0 );	//���O�� 
		scr_BotPlayerSpawnToWorld( 215, -4959.699707, 549.026978, 1696.547241, 0.0 );	//���O���@�g�� 
		suspend();
		scr_BotPlayerSetActionTrigger( 208, true );
		scr_BotPlayerSetActionTrigger( 210, true );
//		scr_BotPlayerSetActionTrigger( 212, true );
		scr_BotPlayerSetActionTrigger( 213, true );
		scr_BotPlayerSetActionTrigger( 214, true );
		scr_BotPlayerSetActionTrigger( 215, true );
	}
}
function miscb_TrapIn1002()
{
	print( "TrapIn 1002!\n" );

	if(gMonument02 == 0){
		scr_CompleteMonumentBuild( "gfmo_002", POWER_COLOR_BLACK );
		scr_SetBreakMonumentCallback( "miscb_BreakMonument02", 20002, CB_TYPE_ONCE, "gfmo_002" );
		gMonument02 = 1 ;

		scr_WaitStart( 1.0 );
		while( scr_Waiting() )
		{
			suspend();
		}

		scr_BotPlayerSpawnToWorld( 208, -218.938950, 537.832947, -3053.432861, 0.0 );	//�����E�� 
		scr_BotPlayerSpawnToWorld( 210, -1653.270630, 435.861694, 307.201141, 0.0 );	//2�ԉ����@�g�� 
//		scr_BotPlayerSpawnToWorld( 212, -3593.0, 525.0,  3226.3, 0.0 );	//2�Ԍ������ā����u���@�g�� 
		scr_BotPlayerSpawnToWorld( 213, -7399.736816, 111.495590, -388.185242, 0.0 );	//���O�� 
		scr_BotPlayerSpawnToWorld( 214, -6976.000977, 454.145081, -4432.128906, 0.0 );	//���O�� 
		scr_BotPlayerSpawnToWorld( 215, -4959.699707, 549.026978, 1696.547241, 0.0 );	//���O���@�g�� 
		suspend();
		scr_BotPlayerSetActionTrigger( 208, true );
		scr_BotPlayerSetActionTrigger( 209, true );
		scr_BotPlayerSetActionTrigger( 210, true );
		scr_BotPlayerSetActionTrigger( 211, true );
//		scr_BotPlayerSetActionTrigger( 212, true );
		scr_BotPlayerSetActionTrigger( 213, true );
		scr_BotPlayerSetActionTrigger( 214, true );
		scr_BotPlayerSetActionTrigger( 215, true );
		scr_RemoveCallbackFromId( 40016 );
		scr_RemoveCallbackFromId( 40017 );
		scr_RemoveCallbackFromId( 40018 );
		scr_RemoveCallbackFromId( 40019 );
		scr_BotPlayerSpawnToMonument( 216, "gfmo_002" );
		scr_BotPlayerSpawnToMonument( 217, "gfmo_002" );
		scr_BotPlayerSpawnToMonument( 218, "gfmo_002" );
		scr_BotPlayerSpawnToMonument( 219, "gfmo_002" );
	}

}
function miscb_BreakMonument02()
{
	print( "BreakM02!\n" );
	gMonument02 = 3;
/*
	if(gMonument03 == 0){
		scr_CompleteMonumentBuild( "gfmo_003", POWER_COLOR_BLACK );
		scr_SetBreakMonumentCallback( "miscb_BreakMonument03", 20003, CB_TYPE_ONCE, "gfmo_003" );
		gMonument03 = 1 ;
		scr_RemoveCallbackFromId( 40020 );
		scr_RemoveCallbackFromId( 40021 );
		scr_RemoveCallbackFromId( 40022 );
		scr_RemoveCallbackFromId( 40023 );

		scr_BotPlayerSpawnToMonument( 220, "gfmo_003" );
		scr_WaitStart( 0.3 );
		while( scr_Waiting() )
		{
			suspend();
		}
		scr_BotPlayerSpawnToMonument( 221, "gfmo_003" );
		scr_BotPlayerSpawnToMonument( 222, "gfmo_003" );
		scr_WaitStart( 0.3 );
		while( scr_Waiting() )
		{
			suspend();
		}
		scr_BotPlayerSpawnToMonument( 223, "gfmo_003" );
		suspend();
		scr_BotPlayerSetActionTrigger( 220, true );
		scr_BotPlayerSetActionTrigger( 221, true );
		scr_BotPlayerSetActionTrigger( 222, true );
		scr_BotPlayerSetActionTrigger( 223, true );
	

	}
*/
}
function miscb_TrapIn1003()
{
	print( "TrapIn 1003!\n" );

	scr_ResetGameCameraDirection( -9400.289063, -1292.244141, false );	//�{�X���ۂ��z�̕���������
	if(scr_GetGameCameraAngleType() == ANGLE_ZOOM_OUT2 )	//�J���������������낵�̏ꍇ�͌����낵�� 
	{
		scr_SetGameCameraAngleType( ANGLE_ZOOM_OUT );
	}
	mis_CameraSet();

	//���b�Z�[�W 
//	scr_PauseOn();	
//	scr_OpenDialog( 0, "C211_05" );
//	while( scr_IsOpenDialog(0) )
//	{
//		suspend();
//	}
//	scr_PauseOff();
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMC11051" );	// �܂��܂����I 


	if(gMonument03 == 0){
		scr_CompleteMonumentBuild( "gfmo_003", POWER_COLOR_BLACK );
		scr_SetBreakMonumentCallback( "miscb_BreakMonument03", 20003, CB_TYPE_ONCE, "gfmo_003" );
		gMonument03 = 1 ;
		scr_RemoveCallbackFromId( 40020 );
		scr_RemoveCallbackFromId( 40021 );
		scr_RemoveCallbackFromId( 40022 );
		scr_RemoveCallbackFromId( 40023 );

		scr_WaitStart( 0.8 );
		while( scr_Waiting() )
		{
			suspend();
		}

		scr_BotPlayerSpawnToMonument( 220, "gfmo_003" );
		scr_WaitStart( 0.3 );
		while( scr_Waiting() )
		{
			suspend();
		}
		scr_BotPlayerSpawnToMonument( 221, "gfmo_003" );
		scr_BotPlayerSpawnToMonument( 222, "gfmo_003" );
		scr_WaitStart( 0.3 );
		while( scr_Waiting() )
		{
			suspend();
		}
		scr_BotPlayerSpawnToMonument( 223, "gfmo_003" );
		suspend();
		scr_BotPlayerSetActionTrigger( 220, true );
		scr_BotPlayerSetActionTrigger( 221, true );
		scr_BotPlayerSetActionTrigger( 222, true );
		scr_BotPlayerSetActionTrigger( 223, true );
	

	}

}
function miscb_BreakMonument03()
{
	print( "BreakM03!\n" );
	gMonument03 = 3;
	gNearCastle = 1;
}
function miscb_TrapIn1004()
{
	//�G��O�ɕt������t���X�g�f�[�����������ă��b�Z�[�W 
	print( "TrapIn 1004!\n" );
	gNearCastle = 1;

	scr_RemoveCallbackFromId( 40016 );
	scr_RemoveCallbackFromId( 40017 );
	scr_RemoveCallbackFromId( 40018 );
	scr_RemoveCallbackFromId( 40019 );
	scr_RemoveCallbackFromId( 40020 );
	scr_RemoveCallbackFromId( 40021 );
	scr_RemoveCallbackFromId( 40022 );
	scr_RemoveCallbackFromId( 40023 );

	scr_RemoveDeathEnemyCallback( 216 );
	scr_RemoveDeathEnemyCallback( 217 );
	scr_RemoveDeathEnemyCallback( 218 );
	scr_RemoveDeathEnemyCallback( 219 );
	scr_RemoveDeathEnemyCallback( 220 );
	scr_RemoveDeathEnemyCallback( 221 );
	scr_RemoveDeathEnemyCallback( 222 );
	scr_RemoveDeathEnemyCallback( 223 );

/*
	scr_RemoveCallbackFromId( 40020 );
	scr_RemoveCallbackFromId( 40021 );
	scr_RemoveCallbackFromId( 40022 );
	scr_RemoveCallbackFromId( 40023 );

	scr_BotPlayerSpawnToMonument( 220, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 221, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 222, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 223, "gcmoB_001" );
*/

	//���b�Z�[�W 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C211_06" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();


	//���{�X���@�g�������� 
	scr_ResetGameCameraDirection( -13068.439453, -2813.728760, false );	//�{�X���ۂ��z�̕���������
	if(scr_GetGameCameraAngleType() == ANGLE_ZOOM_OUT2 )	//�J���������������낵�̏ꍇ�͌����낵�� 
	{
		scr_SetGameCameraAngleType( ANGLE_ZOOM_OUT );
	}
	mis_CameraSet();
	scr_CreateSceneEffect( 51, "Sics01c",  -10629.486328, 100.000000, -1849.646484, 0.0  );	//���� 
	scr_CreateSceneSound( 52, 80250,  -10629.486328, 100.000000, -1849.646484 );
	scr_BotPlayerSpawnToWorld( 224,   -10629.486328, 100.000000, -1849.646484, 65.0 );	//�t���X�g�f�[���� 

	scr_CreateSceneEffect( 61, "Sics01c",  -11864.599609, 463.060150, 756.438599, 0.0  );	//���� 
	scr_CreateSceneSound( 62, 80250,  -11864.599609, 463.060150, 756.438599 );
	scr_BotPlayerSpawnToWorld( 226,   -11864.599609, 463.060150, 756.438599, 65.0 );	//�t���X�g�f�[���� 

	scr_CreateSceneEffect( 71, "Sics01c",  -9543.499023, 430.000000, -4303.91308, 0.0  );	//���� 
	scr_CreateSceneSound( 72, 80250,  -9543.499023, 430.000000, -4303.91308 );
	scr_BotPlayerSpawnToWorld( 227,   -9543.499023, 430.000000, -4303.91308, 65.0 );	//�t���X�g�f�[���� 

	scr_AddTargetEnemyCallback( "miscb_KillBot224", 224, "$TXHFI21101" );
	scr_AddTargetEnemyCallback( "miscb_KillBot226", 226, "$TXHFI21101" );
	scr_AddTargetEnemyCallback( "miscb_KillBot227", 227, "$TXHFI21101" );
	scr_AddStandbyEnemyCallback( "miscb_BotDead224", 224, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_BotDead226", 226, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_BotDead227", 227, STANDBY_COUNT_START_TIMING );

	scr_BotPlayerSpawnToMonument( 225, "gcmoB_001" );
	suspend();
	scr_BotPlayerSetActionTrigger( 224, true );
	scr_BotPlayerSetActionTrigger( 226, true );
	scr_BotPlayerSetActionTrigger( 227, true );

	scr_BotPlayerSetActionTrigger( 225, true );

	scr_SetMessageCallback( "miscb_PlayerSally_after", 9001, CB_TYPE_ALWAYS, MESSAGE_PLAYER_SALLY );

	scr_RemoveScene( 51, false );
	scr_RemoveScene( 52, false );

	scr_RemoveScene( 61, false );
	scr_RemoveScene( 62, false );

	scr_RemoveScene( 71, false );
	scr_RemoveScene( 72, false );

}
function miscb_KillBot224()
{
	print( "kill224!\n" );
	scr_RemoveTargetEnemyCallback( 224 );
}
function miscb_KillBot226()
{
	print( "kill226!\n" );
	scr_RemoveTargetEnemyCallback( 226 );
}
function miscb_KillBot227()
{
	print( "kill227!\n" );
	scr_RemoveTargetEnemyCallback( 227 );
}
gkillDemon <- 0;
function miscb_BotDead224()
{
	print( "dead224!\n" );
	scr_RemoveStandbyEnemyCallback( 224 );
	gkillDemon = (gkillDemon + 1 );

	if(gkillDemon == 3)
	{
		mis_killAllDemon();
	}
}
function miscb_BotDead226()
{
	print( "dead226!\n" );
	scr_RemoveStandbyEnemyCallback( 226 );
	gkillDemon = (gkillDemon + 1 );

	if(gkillDemon == 3)
	{
		mis_killAllDemon();
	}
}
function miscb_BotDead227()
{
	print( "dead227!\n" );
	scr_RemoveStandbyEnemyCallback( 227 );
	gkillDemon = (gkillDemon + 1 );

	if(gkillDemon == 3)
	{
		mis_killAllDemon();
	}
}
function mis_killAllDemon()
{
	print( "allkilldemon!\n" );

	//���b�Z�[�W 
//	scr_PauseOn();	
//	scr_OpenDialog( 0, "C211_07" );
//	while( scr_IsOpenDialog(0) )
//	{
//		suspend();
//	}
//	scr_PauseOff();

	mis_BannerInfoTimer("miscb_BunnerInfo0202",3.0);	//�o�i�[�����̂��̂ɍX�V 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMC11071" );	// ������ 


	scr_RemoveCallbackFromId( 40022 );
	scr_RemoveCallbackFromId( 40023 );
	scr_RemoveDeathEnemyCallback( 222 );
	scr_RemoveDeathEnemyCallback( 223 );
	suspend();
	scr_AddDeathEnemyCallback( "miscb_BotDead222", 222 );
	scr_AddDeathEnemyCallback( "miscb_BotDead223", 223 );
	scr_BotPlayerSpawnToMonument( 222, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 223, "gcmoB_001" );

}
function miscb_BunnerInfo0202()
{
	//�o�i�[�C���t�H���[�V�������� 
	print( "Bunner0202!\n" );
	mis_BannerInfoTimer("miscb_BunnerInfo0203",2.0);	//�o�i�[���폜���� 
	scr_OpenMissionExpainText( 0, "#TXCMC11072" );	// ���܂��݂� 
}
function miscb_BunnerInfo0203()
{
	//�o�i�[�C���t�H���[�V�������� 
	print( "Bunner0203!\n" );
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
	scr_OpenMissionExpainText( 0, "#TXCMC11073" );	//  

}

function miscb_PlayerSally_after()
{
	print( "sallypenalty!\n" );
//	scr_RemoveCallbackFromId( 40016 );
//	scr_RemoveCallbackFromId( 40017 );
//	scr_RemoveCallbackFromId( 40018 );
//	scr_RemoveCallbackFromId( 40019 );
//	scr_RemoveCallbackFromId( 40020 );
//	scr_RemoveCallbackFromId( 40021 );
//	scr_RemoveCallbackFromId( 40022 );
//	scr_RemoveCallbackFromId( 40023 );
//	scr_BotPlayerSpawnToMonument( 220, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 221, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 222, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 223, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 216, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 217, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 218, "gcmoB_001" );
//	scr_BotPlayerSpawnToMonument( 219, "gcmoB_001" );
}
function miscb_TrapIn1005()
{
	print( "TrapIn 1005!\n" );

	//���b�Z�[�W 
//	scr_PauseOn();	
//	scr_OpenDialog( 0, "C211_08" );
//	while( scr_IsOpenDialog(0) )
//	{
//		suspend();
//	}
//	scr_PauseOff();
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMC11082" );	// �Ƃ��ƂƉ󂻂� 


	scr_RemoveCallbackFromId( 40020 );
	scr_RemoveCallbackFromId( 40021 );
	scr_RemoveCallbackFromId( 40022 );
	scr_RemoveCallbackFromId( 40023 );
	scr_RemoveDeathEnemyCallback( 220 );
	scr_RemoveDeathEnemyCallback( 221 );
	scr_RemoveDeathEnemyCallback( 222 );
	scr_RemoveDeathEnemyCallback( 223 );
	suspend();
	scr_AddDeathEnemyCallback( "miscb_BotDead220", 220 );
	scr_AddDeathEnemyCallback( "miscb_BotDead221", 221 );
	scr_AddDeathEnemyCallback( "miscb_BotDead222", 222 );
	scr_AddDeathEnemyCallback( "miscb_BotDead223", 223 );
	scr_BotPlayerSpawnToMonument( 220, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 221, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 222, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 223, "gcmoB_001" );
}
function miscb_BotDead216()
{
	print( "botdead216!\n" );
	if(gMonument01 == 1 ){
		scr_SetTimerCallback( "miscb_BotRespawn216", 40016, CB_TYPE_ONCE, 45.0 );
	}
	else{
		if(gMonument02 == 1){
		scr_SetTimerCallback( "miscb_BotRespawn216", 40016, CB_TYPE_ONCE, 60.0 );
		}
	}
}
function miscb_BotRespawn216()
{
	print( "botresp216!\n" );
	if(gMonument01 == 1 ){
		scr_BotPlayerSpawnToMonument( 216, "gfmo_001" );
	}
	else{
		if(gMonument02 == 1){
			scr_BotPlayerSpawnToMonument( 216, "gfmo_002" );
		}
	}
}
function miscb_BotDead217()
{
	print( "botdead217!\n" );
	if(gMonument01 == 1 ){
		scr_SetTimerCallback( "miscb_BotRespawn217", 40017, CB_TYPE_ONCE, 14.0 );
	}
	else{
		if(gMonument02 == 1){
		scr_SetTimerCallback( "miscb_BotRespawn217", 40017, CB_TYPE_ONCE, 13.0 );
		}
	}
}
function miscb_BotRespawn217()
{
	print( "botresp217!\n" );
	if(gMonument01 == 1 ){
		scr_BotPlayerSpawnToMonument( 217, "gfmo_001" );
	}
	else{
		if(gMonument02 == 1){
			scr_BotPlayerSpawnToMonument( 217, "gfmo_002" );
		}
	}
}
function miscb_BotDead218()
{
	print( "botdead218!\n" );
	if(gMonument01 == 1 ){
		scr_SetTimerCallback( "miscb_BotRespawn218", 40018, CB_TYPE_ONCE, 45.0 );
	}
	else{
		if(gMonument02 == 1){
		scr_SetTimerCallback( "miscb_BotRespawn218", 40018, CB_TYPE_ONCE, 60.0 );
		}
	}


}
function miscb_BotRespawn218()
{
	print( "botresp218!\n" );
	if(gMonument01 == 1 ){
		scr_BotPlayerSpawnToMonument( 218, "gfmo_001" );
	}
	else{
		if(gMonument02 == 1){
			scr_BotPlayerSpawnToMonument( 218, "gfmo_002" );
		}
	}
}
function miscb_BotDead219()
{
	print( "botdead219!\n" );
	if(gMonument01 == 1 ){
	scr_SetTimerCallback( "miscb_BotRespawn219", 40019, CB_TYPE_ONCE, 15.0 );
	}
	else{
		if(gMonument02 == 1){
		scr_SetTimerCallback( "miscb_BotRespawn219", 40019, CB_TYPE_ONCE, 15.0 );
		}
	}
}
function miscb_BotRespawn219()
{
	print( "botresp219!\n" );
	if(gMonument01 == 1 ){
		scr_BotPlayerSpawnToMonument( 219, "gfmo_001" );
	}
	else{
		if(gMonument02 == 1){
			scr_BotPlayerSpawnToMonument( 219, "gfmo_002" );
		}
	}
}
function miscb_BotDead220()
{
	print( "botdead220!\n" );
	if(gNearCastle == 1 ){
		scr_SetTimerCallback( "miscb_BotRespawn220", 40020, CB_TYPE_ONCE, 16.0 );
	}
	else{
		if(gMonument03 == 1){
			scr_SetTimerCallback( "miscb_BotRespawn220", 40020, CB_TYPE_ONCE, 18.0 );
		}
	}
}
function miscb_BotRespawn220()
{
	print( "botresp220!\n" );
	if(gNearCastle == 1 ){
		scr_BotPlayerSpawnToMonument( 220, "gcmoB_001" );
	}
	else{
		if(gMonument03 == 1){
			scr_BotPlayerSpawnToMonument( 220, "gfmo_003" );
		}
	}
}
function miscb_BotDead221()
{
	print( "botdead221!\n" );
	if(gNearCastle == 1 ){
		scr_SetTimerCallback( "miscb_BotRespawn221", 40021, CB_TYPE_ONCE, 15.0 );
	}
	else{
		if(gMonument03 == 1){
			scr_SetTimerCallback( "miscb_BotRespawn221", 40021, CB_TYPE_ONCE, 18.0 );
		}
	}


}
function miscb_BotRespawn221()
{
	print( "botresp221!\n" );
	if(gNearCastle == 1 ){
		scr_BotPlayerSpawnToMonument( 221, "gcmoB_001" );
	}
	else{
		if(gMonument03 == 1){
			scr_BotPlayerSpawnToMonument( 221, "gfmo_003" );
		}
	}
}
function miscb_BotDead222()
{
	print( "botdead222!\n" );
	if(gNearCastle == 1 ){
		scr_SetTimerCallback( "miscb_BotRespawn222", 40022, CB_TYPE_ONCE, 12.0 );
	}
	else{
		if(gMonument03 == 1){
			scr_SetTimerCallback( "miscb_BotRespawn222", 40022, CB_TYPE_ONCE, 20.0 );
		}
	}
}
function miscb_BotRespawn222()
{
	print( "botresp222!\n" );
	if(gNearCastle == 1 ){
		scr_BotPlayerSpawnToMonument( 222, "gcmoB_001" );
	}
	else{
		if(gMonument03 == 1){
			scr_BotPlayerSpawnToMonument( 222, "gfmo_003" );
		}
	}
}
function miscb_BotDead223()
{
	print( "botdead223!\n" );
	if(gNearCastle == 1 ){
		scr_SetTimerCallback( "miscb_BotRespawn223", 40023, CB_TYPE_ONCE, 17.0 );
	}
	else{
		if(gMonument03 == 1){
			scr_SetTimerCallback( "miscb_BotRespawn223", 40023, CB_TYPE_ONCE, 25.0 );
		}
	}


}
function miscb_BotRespawn223()
{
	print( "botresp223!\n" );
	if(gNearCastle == 1 ){
		scr_BotPlayerSpawnToMonument( 223, "gcmoB_001" );
	}
	else{
		if(gMonument03 == 1){
			scr_BotPlayerSpawnToMonument( 223, "gfmo_003" );
		}
	}
}

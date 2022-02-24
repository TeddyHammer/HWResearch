///////////////////////////////////////////////////////////////////////////////////////////////
//
//	�t�@�C�����Fcam_on_0202\mission01.nut 
//	�T�v	�F�I�t���C���L�����y�[�� ���x��2 �L�����y�[��2 �~�b�V����2 
//	�쐬	�F���� 
//	�쐬��	�F110612 
//	�ړI	�F�m�푈�n�������ԁ��̒ʏ�퓬 
//
///////////////////////////////////////////////////////////////////////////////////////////////
function loadMission() 
{
	print("[sample mission] load()\n");
	//�J��O�o���P�[�h���� 
	scr_SetDisableGimmickType( GIMMICK_KEEP_OUT );
	scr_SetDisableGimmickType( GIMMICK_LADDER );

}
function startMission() 
{
	print("[sample mission] start()\n");


	//�������Ԑݒ� 
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_PENALTY, 0 );

	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 3 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY, 3 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 12 );


	//�g���b�v�̐ݒ� 
	scr_RegistTrapBox( 1000, 13.3, 0.0, -3684.4, 1293.3, 1000.0, 1977.8, 0.0   );	//���L���m����� 
	scr_RegistTrapBox( 1001, -22017.2, 3000.0, -3254.9, 207.6, 1000.0, 5200.7, -26.1  );	//�N���[�`���[��� 

	//�R�[���o�b�N 
	scr_SetMessageCallback( "miscb_PlayerSally_First", 10000, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );	
//	scr_SetMessageCallback( "miscb_GameSetWinWhite", 11000, CB_TYPE_ONCE, MESSAGE_GAME_SET_WIN_WHITE );	
//	scr_SetMessageCallback( "miscb_GameSetWinBlack", 12000, CB_TYPE_ONCE, MESSAGE_GAME_SET_WIN_BLACK );
	scr_SetMessageCallback( "miscb_GameSetWinWhite", 11000, CB_TYPE_ONCE, MESSAGE_GAME_BREAK_BLACK_CASTLE_MONUMENT );	
	scr_SetMessageCallback( "miscb_GameSetWinBlack", 12000, CB_TYPE_ONCE, MESSAGE_GAME_BREAK_WHITE_CASTLE_MONUMENT );
	scr_SetMessageCallback( "miscb_TimeOver", 80002, CB_TYPE_ONCE,  MESSAGE_GAME_TIME_OVER );		//�^�C���I�[�o�[�� 


	scr_SetTrapInCallback( "miscb_TrapIn1000", 1000, CB_TYPE_ONCE, 1000 );	//���L���m����� 
	scr_SetTrapInCallback( "miscb_TrapIn1001", 1001, CB_TYPE_ONCE, 1001 );	//�N���[�`���[��� 


	scr_BotPlayerRegistAndCreate( 101, "NOOB07", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 102, "NOOB08", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 103, "NOOB09", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 104, "NOOB10", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 105, "MEDIC03", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 106, "MAGE03", POWER_COLOR_WHITE );

	scr_BotPlayerRegistAndCreate( 107, "UGA_W01", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 108, "UGA_W02", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 109, "UGA_W03", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 110, "UGA_W04", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 111, "UGA_C01", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 112, "UGA_C02", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 113, "UGA_M01", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 114, "UGA_M02", POWER_COLOR_WHITE );

	scr_BotPlayerRegistAndCreate( 200, "ALIEN_W2_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 201, "ALIEN_W2_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 202, "ALIEN_W_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 203, "ALIEN_W_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 204, "ALIEN_W_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 205, "ALIEN_C_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 206, "ALIEN_C_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 207, "ALIEN_M_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 208, "ALIEN_M_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 209, "ALIEN_M_r", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 210, "CREATURE_08W", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 211, "CREATURE_08W", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 212, "CREATURE_08W", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 213, "ALIEN_M2b", POWER_COLOR_BLACK );

	//�I�t���C���L�����y�[���g�t�c�ݒ� 
	scr_SetDisableTacticalInfomation();	//�o�i�[�e�L�X�g���\�� 
	scr_SetEnablePlayerHeroPopup( false );	//�q�[���[�|�b�v�A�b�v�̔�\�� 
	scr_SetEnableInputPlayerVoiceReaction( false );	//���A�N�V�����{�C�X�}�N���̔�\�� 
	scr_BotPlayerDisableLearningSkillByLevelUp();
	scr_SetEnableGameWinDemo( false );

	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_DAMAGED, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_75, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_50, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_40, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_30, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_20, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_10, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_ALLY_GATE_BROKEN, true );

	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_ENEMY_CASTLE_APPROACH, true );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_ENEMY_CASTLE_ATTACK, true );


//�o���O���b�Z�[�W 
	scr_WaitStart( 0.4 );	
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C222_01" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	scr_OpenMissionConditionText(  0, "TXHFC04201" );	//�B��������\�� 


	// �v���C���[������҂��܂�
	mis_WaitPlayerCreate();
	scr_PlayerSetForceRespawnPosition( 26798.957031, 2974.854736, 6928.67, -114.0 );	//�v���C���[�̏o���ʒu���Œ� 


	mis_WaitGameStart();

}
function mis_WaitPlayerCreate()
{
	while( !scr_PlayerIsCreateBody( 0 ) )
	{
		suspend();
	}
}
function mis_WaitGameStart()
{
	while( GAME_STATE_PLAYING != scr_GetGamePlayingStatus() )
	{
		local state;					
		state = GetGamePlayingStatus();			
		
		print("[sample mission] mis_WaitGameStart state = " + state + "\n" );
		suspend();	
	}

}
///////////////////////////////////////////////
//�ėp�t�@���N�V���� //////////////////////////
function mis_CameraSetAndZoom(x,z)
{
	print("cameraset()\n");
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );
	scr_ResetGameCameraDirection( x, z, false );
}
function mis_Wait( sec )
{
	print("waitsec()\n");
	scr_WaitStart( sec );
	while( scr_Waiting() )	
	{
		suspend();
	}
}
function mis_AppearEffect( id, x, y, z, roty )
{
	print("apEffect!()\n");
	scr_CreateSceneEffect( id, "Sbli01c",  x,  y,  z,  roty );
	mis_Wait(0.1);
	scr_RemoveScene( id, false );
}
function mis_MassageDialog( doc_id )
{
	print("deadEffect!()\n");
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, doc_id );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();
}
function mis_EnemySpawnAndSet( id, regist_id, x, y, z, roty )
{
	print("BotSpawn!()\n");
	mis_AppearEffect( id, x, y, z, roty );	//�o���G�t�F�N�g���� 
	scr_BotPlayerSpawnToWorld( regist_id, x, y, z, roty );
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	scr_BotPlayerSetActionTrigger( regist_id, true );
	suspend();
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
////////////////////////////////////////////////
// ��������̓R�[���o�b�N���� //////////////////
////////////////////////////////////////////////
function miscb_PlayerSally_First()
{
	print( "Player is sally!\n" );

	//�J���������̔w�㎋�_�ɕύX 
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
	scr_ResetGameCameraBehind( false );


	mis_Wait( 1.0 );
	mis_MassageDialog( "C222_05" );	//���b�Z�[�W�F 

	scr_OpenMissionConditionText(  0, "TXHFC01104" );	//�B��������\�� 


	scr_BotPlayerSpawnToMonument( 101, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 102, "gcmoA_001" );
	scr_BotPlayerSpawnToWorld( 103,  24038.611328, 2974.854736, 6072.862793, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToWorld( 104,  24441.730469, 2974.854736, 5223.980469, 0.0 );	//MOBs 
	scr_BotPlayerSpawnToMonument( 105, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 106, "gcmoA_001" );
	mis_Wait( 0.2 );
	scr_BotPlayerSpawnToMonument( 107, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 108, "gcmoA_001" );
	mis_Wait( 0.2 );
	scr_BotPlayerSpawnToMonument( 109, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 110, "gcmoA_001" );
	mis_Wait( 0.2 );
	scr_BotPlayerSpawnToMonument( 111, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 112, "gcmoA_001" );
	mis_Wait( 0.2 );
	scr_BotPlayerSpawnToMonument( 113, "gcmoA_001" );
	scr_BotPlayerSpawnToMonument( 114, "gcmoA_001" );

	scr_BotPlayerSpawnToMonument( 200, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 201, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 202, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 203, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 204, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 205, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 206, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 207, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 208, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 209, "gcmoB_001" );

	suspend();
	scr_BotPlayerSetActionTrigger( 101, true );
	scr_BotPlayerSetActionTrigger( 102, true );
	scr_BotPlayerSetActionTrigger( 103, true );
	scr_BotPlayerSetActionTrigger( 104, true );
	scr_BotPlayerSetActionTrigger( 105, true );

	scr_BotPlayerSetActionTrigger( 106, true );
	scr_BotPlayerSetActionTrigger( 107, true );
	scr_BotPlayerSetActionTrigger( 108, true );
	scr_BotPlayerSetActionTrigger( 109, true );
	scr_BotPlayerSetActionTrigger( 110, true );
	scr_BotPlayerSetActionTrigger( 111, true );
	scr_BotPlayerSetActionTrigger( 112, true );
	scr_BotPlayerSetActionTrigger( 113, true );
	scr_BotPlayerSetActionTrigger( 114, true );

	scr_BotPlayerSetActionTrigger( 200, true );
	scr_BotPlayerSetActionTrigger( 201, true );
	scr_BotPlayerSetActionTrigger( 202, true );
	scr_BotPlayerSetActionTrigger( 203, true );
	scr_BotPlayerSetActionTrigger( 204, true );
	scr_BotPlayerSetActionTrigger( 205, true );
	scr_BotPlayerSetActionTrigger( 206, true );
	scr_BotPlayerSetActionTrigger( 207, true );
	scr_BotPlayerSetActionTrigger( 208, true );
	scr_BotPlayerSetActionTrigger( 209, true );
	scr_BotPlayerSetActionTrigger( 210, true );
	scr_BotPlayerSetActionTrigger( 211, true );
	scr_BotPlayerSetActionTrigger( 212, true );
	scr_BotPlayerSetActionTrigger( 213, true );

	scr_BotPlayerSetSyncBreakCastleMonumentWithPlayer( POWER_COLOR_WHITE, true );


}
function miscb_TimeOver()
{
	print( "TimeOver!\n" );
	scr_RemoveCallbackAll();
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
//�����̃`�[���������������̃R�[���o�b�N�������������I
function miscb_GameSetWinWhite()
{
	print( "Game Set Win White!\n" );
//	scr_GameSetMissionClear();
	scr_GameSetMissionSuccess();

	scr_RemoveCallbackAll();
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );


	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 20 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY, 20 );
	suspend();

	scr_BotPlayerSetLife( 201, 0 );
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

//	mis_Wait( 4.5 );
	mis_Wait( 1.6 );
	mis_MassageDialog( "C222_04" );	//���b�Z�[�W�F 
}
function miscb_GameSetWinBlack()
{
	print( "Game Set Win BLACK!\n" );
	scr_GameSetMissionFailure();
	scr_RemoveCallbackAll();
	scr_CloseMissionExpainText( 0 );

	// �^�C�~���O�̓r�b�O�^���[�j�󒼌�B�o�i�[�e�L�X�g�\����҂��������悤�I 
	mis_Wait( 1.6 );
	mis_MassageDialog( "C111_14" );	//���b�Z�[�W�F 
}
function miscb_TrapIn1000()
{
	print( "in1000!\n" );
	//���L���m���̋߂��ɗ�����Ȃ�ƂȂ���� 
//	scr_SetInputDisable( SCR_INPUT_CAMERA );
//	mis_CameraSetAndZoom(  -27.075357, -1932.192139 );	//�J�������Z�b�g 
//	mis_Wait( 0.5 );
//	mis_MassageDialog( "C222_02" );	//���b�Z�[�W�F 
//	scr_SetInputEnable( SCR_INPUT_CAMERA );
	mis_BannerInfoTimer("miscb_BunnerInfo0102",3.0);	//�o�i�[�����̂��̂ɍX�V 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMC22021" );	//  

}
function miscb_BunnerInfo0102()
{
	//�o�i�[�C���t�H���[�V�������� 
	print( "Bunner0102!\n" );
	mis_BannerInfoTimer("miscb_BunnerInfo0103",3.0);	//�o�i�[���폜���� 
	scr_OpenMissionExpainText( 0, "#TXCMC22022" );	//  

}
function miscb_BunnerInfo0103()
{
	//�o�i�[�C���t�H���[�V�������� 
	print( "Bunner0101!\n" );
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
	scr_OpenMissionExpainText( 0, "#TXCMC22023" );	//  

}


function miscb_TrapIn1001()
{
	print( "in1001!\n" );
	//��ɋ߂Â�����N���[�`���[�o�� 
	mis_EnemySpawnAndSet( 213, 213, -23041.537109, 2975.793701, -3283.255371, 63.0 );
	mis_Wait( 0.5 );
	mis_EnemySpawnAndSet( 211, 211, -23291.464844, 2975.793701, -2475.139893, 63.0 );
	mis_EnemySpawnAndSet( 212, 212, -22529.429688, 2975.793701, -4021.514160, 63.0 );
	mis_EnemySpawnAndSet( 210, 210, -22349.800781, 2975.793701, -2960.876465, 63.0 );

	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 25 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY, 30 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 60 );

	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_NORMAL, 3 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_PENALTY, 3 );


//	mis_Wait( 0.5 );
//	mis_MassageDialog( "C222_03" );	//���b�Z�[�W�F 
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMC22031" );	//  



}

///////////////////////////////////////////////////////////////////////////////////////////////
//
//	�t�@�C�����Fcam_on_0302\mission02.nut 
//	�T�v	�F�I�t���C���L�����y�[�� ���x��3 �L�����y�[��2 �~�b�V����3 
//	�쐬	�F���� 
//	�쐬��	�F110606 
//	�ړI	�F�m��T���n�{���̕P�l��T�� 
//
///////////////////////////////////////////////////////////////////////////////////////////////
function loadMission() 
{
	print("[sample mission] load()\n");
//�~�b�V�����̃X�e�[�W��ǂݍ��ޑO�̏�����ݒ肵�悤�I 
	scr_SetDisableGimmickType( GIMMICK_CANNON );
	scr_SetDisableGimmickType( GIMMICK_BALLISTA );
	scr_SetDisableGimmickType( GIMMICK_LADDER );
	scr_SetDisableGimmickType( GIMMICK_BATTERING_RAM );
	//�J��O�o���P�[�h���� 
	scr_SetDisableGimmickType( GIMMICK_KEEP_OUT );
}
///////////////////////////////////
//�ėp�t�@���N�V���� 
function mis_Wait( sec )
{
	print("waitsec()\n");
	scr_WaitStart( sec );
	while( scr_Waiting() )	
	{
		suspend();
	}
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
///////////////////////////////////
function startMission() 
{
	scr_SetDisableTacticalInfomation();
	print("[sample mission] start()\n");
	//�������Ԑݒ� 
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_PENALTY, 0 );


//Bot�o�^ 
	scr_BotPlayerRegistAndCreate( 201, "PRINCESS_DUM01", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 202, "PRINCESS_DUM02", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 203, "PRINCESS_DUM03", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 204, "PRINCESS_DUM04", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 205, "PRINCESS_DUM05", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 206, "PRINCESS_DUM06", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 207, "PRINCESS_DUM07", POWER_COLOR_BLACK );

	scr_BotPlayerRegistAndCreate( 208, "BUTLER03", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 209, "DEVIL_PRINCE02", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 210, "PRINCESS", POWER_COLOR_BLACK );

	scr_BotPlayerRegistAndCreate( 211, "MOB02", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 212, "MOB02", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 213, "MOB02", POWER_COLOR_BLACK );

//�R�[���o�b�N�̐ݒ�����Ă�����I 
	scr_SetMessageCallback( "miscb_PlayerSally_First", 1, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );		//����o���������̃R�[���o�b�N 
	scr_SetMessageCallback( "miscb_TimeOver", 2, CB_TYPE_ONCE,  MESSAGE_GAME_TIME_OVER );		//�^�C���I�[�o�[�� 

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


//�g���b�v�o�^ 
	scr_RegistTrapBox( 1001,  -26477.5, 3000.0, -5038.6, 676.9, 1000.0, 524.7, -26.5  );	//�G�̏� 
	scr_SetTrapInCallback( "miscb_TrapIn1001", 10001, CB_TYPE_ALWAYS, 1001 );	

	//�J��O���b�Z�[�W 
	mis_Wait( 0.45 );
	mis_MassageDialog( "C323_01" );	//���b�Z�[�W�F 

	scr_SetTimerCallback( "miscb_HintMassage", 3, CB_TYPE_ONCE, 90.0 );


	scr_OpenMissionConditionText(  0, "TXHFC06301" );	//�P�T�� 

	mis_WaitPlayerCreate();
	scr_PlayerSetForceRespawnPosition( 26798.957031, 2974.854736, 6928.67, -114.0 );	//�v���C���[�̏o���ʒu���Œ� 


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
function miscb_HintMassage()
{
	print( "hint!\n" );

	mis_BannerInfoTimer("miscb_BunnerInfo0102",3.0);	//�o�i�[�����̂��̂ɍX�V 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMD23191" );	//  

//	if(gPset_num == 1)
//	{
//		mis_MassageDialog( "C323_19" );	//���b�Z�[�W�F 
//	}
//	else
//	{
//		mis_MassageDialog( "C323_20" );	//���b�Z�[�W�F 
//	}
}
function miscb_BunnerInfo0102()
{
	//�o�i�[�C���t�H���[�V�������� 
	print( "Bunner0102!\n" );
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",5.0);	//�o�i�[���폜���� 

	if(gPset_num == 1)
	{
		scr_OpenMissionExpainText( 0, "#TXCMD23192" );	//  
	}
	else
	{
		scr_OpenMissionExpainText( 0, "#TXCMD23201" );	//  
	}
}
function mis_SetDummy( regist_id, TrapF_id, TrapN_id, x1, y1, z1, r1)
{
	print( "Setdum!\n" );
	scr_BotPlayerSpawnToWorld( regist_id, x1, y1, z1, r1 );	//MOBs 
	scr_RegistTrapSphere( TrapF_id, x1, y1, z1, 2500.0 );
	scr_RegistTrapSphere( TrapN_id, x1, y1, z1, 800.0 );
}
function mis_SetDummyRand( regist_id, TrapF_id, TrapN_id, x1, y1, z1, r1, x2, y2, z2, r2, x3, y3, z3, r3 )
{
	print( "SetRandom!\n" );
	local set_num = 0;
	set_num = scr_GetRandI( 1, 3 );	//�����_���ŃZ�b�g�|�W�V�������w�肷�� 

	if(set_num == 1)
	{
		scr_BotPlayerSpawnToWorld( regist_id, x1, y1, z1, r1 );	//MOBs 
		scr_RegistTrapSphere( TrapF_id, x1, y1, z1, 2500.0 );
		scr_RegistTrapSphere( TrapN_id, x1, y1, z1, 800.0 );
	}
	if(set_num == 2)
	{
		scr_BotPlayerSpawnToWorld( regist_id, x2, y2, z2, r2 );	//MOBs 
		scr_RegistTrapSphere( TrapF_id, x2, y2, z2, 2500.0 );
		scr_RegistTrapSphere( TrapN_id, x2, y2, z2, 800.0 );
	}
	if(set_num == 3)
	{
		scr_BotPlayerSpawnToWorld( regist_id, x3, y3, z3, r3 );	//MOBs 
		scr_RegistTrapSphere( TrapF_id, x3, y3, z3, 2500.0 );
		scr_RegistTrapSphere( TrapN_id, x3, y3, z3, 800.0 );
	}
}
gPset_num <- 0;	//�����̈ʒu����Ɏg�� 
function mis_SetPrincessRand( regist_id, TrapF_id, TrapN_id, TrapS_id, x1, y1, z1, r1, x2, y2, z2, r2, x3, y3, z3, r3 )
{
	print( "SetPrincess!\n" );
	gPset_num = scr_GetRandI( 1, 3 );	//�����_���ŃZ�b�g�|�W�V�������w�肷�� 

	if(gPset_num == 1)
	{
		scr_BotPlayerSpawnToWorld( regist_id, x1, y1, z1, r1 );	//
		scr_RegistTrapSphere( TrapF_id, x1, y1, z1, 5100.0 );
		scr_RegistTrapSphere( TrapN_id, x1, y1, z1, 1200.0 );
		scr_RegistTrapSphere( TrapS_id, x1, y1, z1,  300.0 );
	}
	if(gPset_num == 2)
	{
		scr_BotPlayerSpawnToWorld( regist_id, x2, y2, z2, r2 );
		scr_RegistTrapSphere( TrapF_id, x2, y2, z2,  5100.0 );
		scr_RegistTrapSphere( TrapN_id, x2, y2, z2,  1200.0 );
		scr_RegistTrapSphere( TrapS_id, x2, y2, z2,   300.0 );
	}
	if(gPset_num == 3)
	{
		scr_BotPlayerSpawnToWorld( regist_id, x3, y3, z3, r3 );
		scr_RegistTrapSphere( TrapF_id, x3, y3, z3,  5100.0 );
		scr_RegistTrapSphere( TrapN_id, x3, y3, z3,  1200.0 );
		scr_RegistTrapSphere( TrapS_id, x3, y3, z3,   300.0 );
	}
	scr_BotPlayerSetLifeRecover( regist_id, false );
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
	//�Œ�z�u�Z�b�g 
	mis_SetDummy( 201, 501, 601, 22254.3, 3174.8, 6617.4, 103.0);
	mis_SetDummy( 202, 502, 602, -163.1, 1554.1, -8924.9, -178.0);
	mis_SetDummy( 203, 503, 603, -17.2, 143.3, -2170.1, -179.0);
	//�����_���Ń_�~�[���Z�b�g 
	mis_SetDummyRand( 204, 504, 604,  -1204.5, 2.2, 3788.0, -178.0,  77.8, -81.9, 3267.3, -179.0,  2587.9, 2.2, 4213.8, -179.0 );
	mis_SetDummyRand( 205, 505, 605,  2492.4, 38.0, -1685.2, 35.0,  -2663.7, 38.0, -1753.6, 144.0,  -1371.9, 113.8, -3817.3, 17.0 );
	mis_SetDummyRand( 206, 506, 606,  -20348.9, 3175.7, -3879.9, 24.0,  -22247.2, 2975.7, -2990.0, 62.0,  -18316.5, 3951.7, -1719.3, -113.0 );
	mis_SetDummyRand( 207, 507, 607, -4391.9, 2.2, 1559.1, 101.0,  -13315.3, 2970.1, -690.9, -157.0,  -15925.9, 3992.3, -4434.1, -102.0 );
	//�����_���Ŗ{�����Z�b�g 
	mis_SetPrincessRand( 210, 508, 608, 700, -24724.1, 2975.7, -6900.5, 70.0,  3447.9, 2346.5, -9501.1, -118.0,  8656.4, -611.3, 2869.8, -95.0 );

	scr_CompleteMonumentBuild( "gfmo_001", POWER_COLOR_BLACK );
	scr_CompleteMonumentBuild( "gfmo_002", POWER_COLOR_BLACK );
	scr_CompleteMonumentBuild( "gfmo_003", POWER_COLOR_BLACK );
}
////////////////////////////////////////////////
// ��������̓R�[���o�b�N���� 
////////////////////////////////////////////////
//�v���C���[���o���������̃R�[���o�b�N����
function miscb_PlayerSally_First()
{
	print( "Player is sally!\n" );

//	scr_OpenMissionConditionText(  0, "$TXHFC32301" );	//�B��������\�� 
//	scr_OpenMissionStateText(  0, "$TXHFS32301" );	//�B���󋵂�\�� 

	//�J���������̔w�㎋�_�ɕύX 
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
	scr_ResetGameCameraBehind( false );


	scr_BotPlayerSpawnToMonument( 211, "gfmo_001" );
	scr_BotPlayerSpawnToMonument( 212, "gfmo_001" );
	scr_BotPlayerSpawnToMonument( 213, "gfmo_001" );

	scr_BotPlayerSetActionTrigger( 211, true );
	scr_BotPlayerSetActionTrigger( 212, true );
	scr_BotPlayerSetActionTrigger( 213, true );

	scr_SetTimerCallback( "miscb_DamageCheckPrincess", 1233, CB_TYPE_ONCE, 4.0 );

//�g���b�v�R�[���o�b�N 
	scr_SetTrapInCallback( "miscb_TrapIn501", 5001, CB_TYPE_ALWAYS, 501 );	
	scr_SetTrapInCallback( "miscb_TrapIn502", 5002, CB_TYPE_ALWAYS, 502 );	
	scr_SetTrapInCallback( "miscb_TrapIn503", 5003, CB_TYPE_ALWAYS, 503 );	
	scr_SetTrapInCallback( "miscb_TrapIn504", 5004, CB_TYPE_ALWAYS, 504 );	
	scr_SetTrapInCallback( "miscb_TrapIn505", 5005, CB_TYPE_ALWAYS, 505 );	
	scr_SetTrapInCallback( "miscb_TrapIn506", 5006, CB_TYPE_ALWAYS, 506 );	
	scr_SetTrapInCallback( "miscb_TrapIn507", 5007, CB_TYPE_ALWAYS, 507 );	
	scr_SetTrapInCallback( "miscb_TrapIn508", 5008, CB_TYPE_ALWAYS, 508 );	

	scr_SetTrapOutCallback( "miscb_TrapOut501", 5101, CB_TYPE_ALWAYS, 501 );	
	scr_SetTrapOutCallback( "miscb_TrapOut502", 5102, CB_TYPE_ALWAYS, 502 );	
	scr_SetTrapOutCallback( "miscb_TrapOut503", 5103, CB_TYPE_ALWAYS, 503 );	
	scr_SetTrapOutCallback( "miscb_TrapOut504", 5104, CB_TYPE_ALWAYS, 504 );	
	scr_SetTrapOutCallback( "miscb_TrapOut505", 5105, CB_TYPE_ALWAYS, 505 );	
	scr_SetTrapOutCallback( "miscb_TrapOut506", 5106, CB_TYPE_ALWAYS, 506 );	
	scr_SetTrapOutCallback( "miscb_TrapOut507", 5107, CB_TYPE_ALWAYS, 507 );	
	scr_SetTrapOutCallback( "miscb_TrapOut508", 5108, CB_TYPE_ALWAYS, 508 );	

	scr_SetTrapInCallback( "miscb_TrapIn601", 6001, CB_TYPE_ONCE, 601 );	
	scr_SetTrapInCallback( "miscb_TrapIn602", 6002, CB_TYPE_ONCE, 602 );	
	scr_SetTrapInCallback( "miscb_TrapIn603", 6003, CB_TYPE_ONCE, 603 );	
	scr_SetTrapInCallback( "miscb_TrapIn604", 6004, CB_TYPE_ONCE, 604 );	
	scr_SetTrapInCallback( "miscb_TrapIn605", 6005, CB_TYPE_ONCE, 605 );	
	scr_SetTrapInCallback( "miscb_TrapIn606", 6006, CB_TYPE_ONCE, 606 );	
	scr_SetTrapInCallback( "miscb_TrapIn607", 6007, CB_TYPE_ONCE, 607 );	
	scr_SetTrapInCallback( "miscb_TrapIn608", 6008, CB_TYPE_ONCE, 608 );	


	//�E�Q���Ƀg���b�v���폜����R�[���o�b�N 
	scr_AddStandbyEnemyCallback( "miscb_killBotRemoveTrap01", 201, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_killBotRemoveTrap02", 202, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_killBotRemoveTrap02", 202, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_killBotRemoveTrap03", 203, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_killBotRemoveTrap04", 204, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_killBotRemoveTrap05", 205, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_killBotRemoveTrap06", 206, STANDBY_COUNT_START_TIMING );
	scr_AddStandbyEnemyCallback( "miscb_killBotRemoveTrap07", 207, STANDBY_COUNT_START_TIMING );
}
function mis_RemoveTrap( TrapF_id, TrapN_id )
{
	scr_RemoveTrap( TrapF_id );
	scr_RemoveTrap( TrapN_id );
	scr_ClearTargetEnemyCallback();
}
function miscb_killBotRemoveTrap01()
{
	print( "cleartrap01!\n" );
	mis_RemoveTrap( 501, 601 );
}
function miscb_killBotRemoveTrap02()
{
	print( "cleartrap02!\n" );
	mis_RemoveTrap( 502, 602 );
}
function miscb_killBotRemoveTrap03()
{
	print( "cleartrap03!\n" );
	mis_RemoveTrap( 503, 603 );
}
function miscb_killBotRemoveTrap04()
{
	print( "cleartrap04!\n" );
	mis_RemoveTrap( 504, 604 );
}
function miscb_killBotRemoveTrap05()
{
	print( "cleartrap05!\n" );
	mis_RemoveTrap( 505, 605 );
}
function miscb_killBotRemoveTrap06()
{
	print( "cleartrap06!\n" );
	mis_RemoveTrap( 506, 606 );
}
function miscb_killBotRemoveTrap07()
{
	print( "cleartrap07!\n" );
	mis_RemoveTrap( 507, 607 );
}
function miscb_DamageCheckPrincess()
{
	print( "princess is safe!\n" );
	scr_RemoveCallbackFromId( 1233 );
	scr_SetTimerCallback( "miscb_DamageCheckPrincess", 1233, CB_TYPE_ONCE, 4.0 );
	if(scr_BotPlayerGetLifeRate( 210 ) <= 0.999 )
	{
		mis_MassageDialog( "C323_02" );	//���b�Z�[�W�F 
		scr_RemoveCallbackAll();
		scr_CloseMissionExpainText( 0 );
		scr_CloseMissionConditionText( 0 );	//�B���������\�� 
		scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
		scr_GameSetMissionFailure();	//�~�b�V�������s 
	}
}
function miscb_TimeOver()
{
	print( "TimeOver!\n" );
	
	mis_Wait( 0.5 );
	
	mis_MassageDialog( "C323_03" );	//���b�Z�[�W�F 
	scr_RemoveCallbackAll();
	scr_GameSetMissionFailure();	//�~�b�V�������s 

}
function miscb_TrapIn1001()
{
	print( "TrapIn 1001!\n" );
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C323_04" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	mis_Warp();
	scr_PauseOff();
}
function mis_Warp()
{
	scr_FadeOutBlack( 0.4 );
	while( !scr_IsFadeFinish() ){
		suspend();
	}
	scr_PlayerWarp( 26928.962891, 2974.854736, 6991.894531, -117.0 );
	suspend();
	scr_ResetGameCameraBehind( true );
	scr_FadeIn( 0.4 );
	while( !scr_IsFadeFinish() ){
		suspend();
	}
}
function killBOTprincess()
{
	print( "dummy!\n" );
}
function mis_TrapOut(regist_id)
{
	print( "TrapOut!\n" );
	scr_RemoveTargetEnemyCallback( regist_id );
}
function miscb_TrapOut501()
{
	print( "TrapOut501!\n" );
	scr_RemoveTargetEnemyCallback( 201 );
}
function miscb_TrapOut502()
{
	print( "TrapOut502!\n" );
	scr_RemoveTargetEnemyCallback( 202 );
}
function miscb_TrapOut503()
{
	print( "TrapOut503!\n" );
	scr_RemoveTargetEnemyCallback( 203 );
}
function miscb_TrapOut504()
{
	print( "TrapOut504!\n" );
	scr_RemoveTargetEnemyCallback( 204 );
}
function miscb_TrapOut505()
{
	print( "TrapOut505!\n" );
	scr_RemoveTargetEnemyCallback( 205 );
}
function miscb_TrapOut506()
{
	print( "TrapOut506!\n" );
	scr_RemoveTargetEnemyCallback( 206 );
}
function miscb_TrapOut507()
{
	print( "TrapOut507!\n" );
	scr_RemoveTargetEnemyCallback( 207 );
}
function miscb_TrapOut508()
{
	print( "TrapOut508!\n" );
	scr_RemoveTargetEnemyCallback( 210 );
}
function miscb_TrapIn501()
{
	print( "TrapIn 501!\n" );
	scr_AddTargetEnemyCallback( "killBOTprincess", 201, "PRINCESS ?");
}
function mis_DummyReaction( regist_id, CB_id_01, CB_id_02 )
{
	print( "dummy is Active!\n" );
	scr_RemoveTargetEnemyCallback( regist_id );
	scr_RemoveCallbackFromId( CB_id_01 );
	scr_RemoveCallbackFromId( CB_id_02 );

	mis_CaughtDummy();

	scr_BotPlayerSetActionTrigger( regist_id, true );
}
function miscb_TrapIn601()
{
	print( "TrapIn 601!\n" );
	mis_DummyReaction( 201, 5001, 5101 );
}
function miscb_TrapIn502()
{
	print( "TrapIn 502!\n" );
	scr_AddTargetEnemyCallback( "killBOTprincess", 202, "PRINCESS ?");
}
function miscb_TrapIn602()
{
	print( "TrapIn 602!\n" );
	mis_DummyReaction( 202, 5002, 5102 );
}
function miscb_TrapIn503()
{
	print( "TrapIn 503!\n" );
	scr_AddTargetEnemyCallback( "killBOTprincess", 203, "PRINCESS ?");
}
function miscb_TrapIn603()
{
	print( "TrapIn 603!\n" );
	mis_DummyReaction( 203, 5003, 5103 );
}
function miscb_TrapIn504()
{
	print( "TrapIn 504!\n" );
	scr_AddTargetEnemyCallback( "killBOTprincess", 204, "PRINCESS ?");
}
function miscb_TrapIn604()
{
	print( "TrapIn 604!\n" );
	mis_DummyReaction( 204, 5004, 5104 );
}
function miscb_TrapIn505()
{
	print( "TrapIn 505!\n" );
	scr_AddTargetEnemyCallback( "killBOTprincess", 205, "PRINCESS ?");
}
function miscb_TrapIn605()
{
	print( "TrapIn 605!\n" );
	mis_DummyReaction( 205, 5005, 5105 );
}
function miscb_TrapIn506()
{
	print( "TrapIn 506!\n" );
	scr_AddTargetEnemyCallback( "killBOTprincess", 206, "PRINCESS ?");
}
function miscb_TrapIn606()
{
	print( "TrapIn 606!\n" );
	mis_DummyReaction( 206, 5006, 5106 );
}
function miscb_TrapIn507()
{
	print( "TrapIn 507!\n" );
	scr_AddTargetEnemyCallback( "killBOTprincess", 207, "PRINCESS ?");
}
function miscb_TrapIn607()
{
	print( "TrapIn 607!\n" );
	mis_DummyReaction( 207, 5007, 5107 );
}
gCaughtDummyCount <- 0;
function mis_CaughtDummy()
{
	print( "Dumm!\n" );
	gCaughtDummyCount = (gCaughtDummyCount + 1 );
	if(gCaughtDummyCount == 1 )
	{
//		mis_MassageDialog( "C323_05" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23051" );	//  
	}
	if(gCaughtDummyCount == 2 )
	{
//		mis_MassageDialog( "C323_06" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23061" );	//  
	}
	if(gCaughtDummyCount == 3 )
	{
//		mis_MassageDialog( "C323_07" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23071" );	//  
	}
	if(gCaughtDummyCount == 4 )
	{
//		mis_MassageDialog( "C323_08" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23081" );	//  
	}
	if(gCaughtDummyCount == 5 )
	{
//		mis_MassageDialog( "C323_09" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23091" );	//  
	}
	if(gCaughtDummyCount == 6 )
	{
//		mis_MassageDialog( "C323_10" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23101" );	//  
	}
	if(gCaughtDummyCount == 7 )
	{
//		mis_MassageDialog( "C323_11" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",4.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23111" );	//  
	}
}
function miscb_TrapIn508()
{
	print( "TrapIn 508!\n" );
	scr_AddTargetEnemyCallback( "killBOTprincess", 210, "PRINCESS ?");
}
function miscb_TrapIn608()
{
	print( "TrapIn 608!\n" );
	scr_RemoveCallbackFromId( 3 );

	scr_ClearTargetEnemyCallback();
	scr_AddTargetEnemyCallback( "killBOTprincess", 210, "PRINCESS");
	scr_RemoveCallbackFromId( 5008 );
	scr_RemoveCallbackFromId( 5108 );
	scr_RemoveCallbackFromId( 5001 );
	scr_RemoveCallbackFromId( 5101 );
	scr_RemoveCallbackFromId( 5002 );
	scr_RemoveCallbackFromId( 5102 );
	scr_RemoveCallbackFromId( 5003 );
	scr_RemoveCallbackFromId( 5103 );
	scr_RemoveCallbackFromId( 5004 );
	scr_RemoveCallbackFromId( 5104 );
	scr_RemoveCallbackFromId( 5005 );
	scr_RemoveCallbackFromId( 5105 );
	scr_RemoveCallbackFromId( 5006 );
	scr_RemoveCallbackFromId( 5106 );
	scr_RemoveCallbackFromId( 5007 );
	scr_RemoveCallbackFromId( 5107 );

	scr_RemoveCallbackFromId( 6001 );
	scr_RemoveCallbackFromId( 6002 );
	scr_RemoveCallbackFromId( 6003 );
	scr_RemoveCallbackFromId( 6004 );
	scr_RemoveCallbackFromId( 6005 );
	scr_RemoveCallbackFromId( 6006 );
	scr_RemoveCallbackFromId( 6007 );


	scr_BotPlayerSetLife( 201, 0 );
	scr_BotPlayerSetLife( 202, 0 );
	scr_BotPlayerSetLife( 203, 0 );
	scr_BotPlayerSetLife( 204, 0 );
	scr_BotPlayerSetLife( 205, 0 );
	scr_BotPlayerSetLife( 206, 0 );
	scr_BotPlayerSetLife( 207, 0 );

	scr_BotPlayerSetLife( 211, 0 );
	scr_BotPlayerSetLife( 212, 0 );
	scr_BotPlayerSetLife( 213, 0 );
	scr_BotPlayerSetRespawnEnable( 211, false );
	scr_BotPlayerSetRespawnEnable( 212, false );
	scr_BotPlayerSetRespawnEnable( 213, false );


	mis_MassageDialog( "C323_12" );	//���b�Z�[�W�F 


	if(gPset_num == 1)
	{
		scr_BotPlayerSpawnToWorld( 208, -24408.5, 2975.7, -7020.1, 70.0 );	//�����Ǝ��� 
		scr_BotPlayerSpawnToWorld( 209, -24393.4, 2975.7, -6713.1, 70.0 );
	}
	if(gPset_num == 2)
	{
		scr_BotPlayerSpawnToWorld( 208, 3041.1, 2306.4, -9443.6, -118.0 );	//�����Ǝ��� 
		scr_BotPlayerSpawnToWorld( 209, 3260.4, 2306.4, -9844.8, -118.0 );
	}
	if(gPset_num == 3)
	{
		scr_BotPlayerSpawnToWorld( 208, 8259.7, -701.8, 2998.3, -95.0 );	//�����Ǝ��� 
		scr_BotPlayerSpawnToWorld( 209, 8310.3, -701.8, 2746.6, -95.0 );
	}

	suspend();
	scr_BotPlayerSetActionTrigger( 208, true );
	scr_BotPlayerSetActionTrigger( 209, true );


	scr_OpenMissionConditionText(  0, "TXHFC06302" );	//�������Ԃ����낹 

	scr_SetTimerCallback( "miscb_DeadCheck", 1234, CB_TYPE_ONCE, 2.0 );
}
gDeadBUTLER <- 0;
gDeadPRINCE <- 0;
function miscb_DeadCheck()
{
	print( "DeadcheckBUTLER!\n" );
	scr_SetTimerCallback( "miscb_DeadCheck", 1234, CB_TYPE_ONCE, 2.0 );
	if(gDeadBUTLER == 0 ){
		if(scr_BotPlayerGetLife( 208 ) == 0 )
		{
		gDeadBUTLER = 1;
		
//		mis_MassageDialog( "C323_13" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23131" );	//  

		
		}
	}
	if(gDeadPRINCE == 0 ){
		if(scr_BotPlayerGetLife( 209 ) == 0 )
		{
		gDeadPRINCE = 1;
		
//		mis_MassageDialog( "C323_14" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMD23141" );	//  
		}
	}
	if(gDeadBUTLER == 1)
	{
		if(gDeadPRINCE == 1)
		{
		scr_RemoveCallbackFromId( 1234 );
		scr_RemoveCallbackFromId( 2 );
		scr_SetTrapInCallback( "miscb_TrapIn700",7000, CB_TYPE_ONCE, 700 );	

//		scr_OpenMissionStateText(  0, "$TXHFS32303" );	//�B���󋵂��X�V 
		scr_OpenMissionConditionText(  0, "TXHFC06303" );	//�~�C�����Ԃ����낹 
		
		mis_MassageDialog( "C323_15" );	//���b�Z�[�W�F 
		
		}
	}
}
function miscb_TrapIn700()
{
	print( "TrapIn 700!\n" );

	if(scr_BotPlayerGetLifeRate( 210 ) <= 0.998 )
	{
		miscb_DamageCheckPrincess();	//�P�l�������Ă邩�`�F�b�N 
	}
	else
	{
		scr_RemoveCallbackAll();
		scr_GameSetMissionSuccess();
		scr_CloseMissionExpainText( 0 );
		scr_CloseMissionConditionText( 0 );	//�B���������\�� 
		scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 

		scr_SetInputDisable( SCR_INPUT_BUTTON );

		mis_Wait( 1.8 );
		mis_MassageDialog( "C323_16" );	//���b�Z�[�W�F 
	}
}
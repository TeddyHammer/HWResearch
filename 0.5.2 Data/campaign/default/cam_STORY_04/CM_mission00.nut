///////////////////////////////////////////////////////////////////////////////////////////////
//
//	�t�@�C�����Fcam_on_0202\mission00.nut 
//	�T�v	�F�I�t���C���L�����y�[�� ���x��3 �L�����y�[��1 �~�b�V����1 
//	�쐬	�F���� 
//	�쐬��	�F110612 
//	�ړI	�F�m�ϑ��~��n�z�u���ꂽ�w��̖���BOT���E�����ɑS����֘A��A�� 
//
///////////////////////////////////////////////////////////////////////////////////////////////


function loadMission() 
{
	print("[sample mission] load()\n");
//�~�b�V�����̃X�e�[�W��ǂݍ��ޑO�̏�����ݒ肵�悤�I 
	//�J��O�o���P�[�h���� 
	scr_SetDisableGimmickType( GIMMICK_KEEP_OUT );

	scr_SetDisableGimmickType( GIMMICK_BRIDGE2 );
	scr_SetDisableGimmickType( GIMMICK_BRIDGE1 );
	scr_SetDisableGimmickType( GIMMICK_CASTLEGATE );
	scr_SetDisableGimmickType( GIMMICK_BATTERING_RAM );

}
function startMission() 
{
	print("[sample mission] start()\n");
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_PENALTY, 0 );



//�a�n�s�̂Ƃ��낭 
	scr_BotPlayerRegistAndCreate( 101, "UGA_01C", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 102, "UGA_02W", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 103, "UGA_03W", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 104, "UGA_04C", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 105, "UGA_05W", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 106, "UGA_06C", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 107, "UGA_07W", POWER_COLOR_WHITE );

	scr_BotPlayerRegistAndCreate( 201, "ALIEN_W", POWER_COLOR_BLACK );	//�F���l�v 
	scr_BotPlayerRegistAndCreate( 202, "ALIEN_W", POWER_COLOR_BLACK );	//�F���l�v 
	scr_BotPlayerRegistAndCreate( 203, "ALIEN_W", POWER_COLOR_BLACK );	//�F���l�v 
	scr_BotPlayerRegistAndCreate( 204, "ALIEN_C", POWER_COLOR_BLACK );	//�F���l�b 
	scr_BotPlayerRegistAndCreate( 205, "ALIEN_C", POWER_COLOR_BLACK );	//�F���l�b 
	scr_BotPlayerRegistAndCreate( 206, "ALIEN_M", POWER_COLOR_BLACK );	//�F���l�l 
	scr_BotPlayerRegistAndCreate( 207, "ALIEN_M", POWER_COLOR_BLACK );	//�F���l�l 
	scr_BotPlayerRegistAndCreate( 208, "ALIEN_M", POWER_COLOR_BLACK );	//�F���l�l 

	scr_BotPlayerRegistAndCreate( 301, "CREATURE_01C", POWER_COLOR_BLACK );	//�N���[�`���[_ 
	scr_BotPlayerRegistAndCreate( 302, "CREATURE_02W", POWER_COLOR_BLACK );	//�N���[�`���[_ 
	scr_BotPlayerRegistAndCreate( 303, "CREATURE_03W", POWER_COLOR_BLACK );	//�N���[�`���[_ 
	scr_BotPlayerRegistAndCreate( 304, "CREATURE_04C", POWER_COLOR_BLACK );	//�N���[�`���[_ 
	scr_BotPlayerRegistAndCreate( 305, "CREATURE_05W", POWER_COLOR_BLACK );	//�N���[�`���[_ 
	scr_BotPlayerRegistAndCreate( 306, "CREATURE_06C", POWER_COLOR_BLACK );	//�N���[�`���[_ 
	scr_BotPlayerRegistAndCreate( 307, "CREATURE_07W", POWER_COLOR_BLACK );	//�N���[�`���[_ 
//	scr_BotPlayerRegistAndCreate( 308, "CREATURE_08C", POWER_COLOR_BLACK );	//�N���[�`���[_ 
//	scr_BotPlayerRegistAndCreate( 309, "CREATURE_09C", POWER_COLOR_BLACK );	//�N���[�`���[_ 
//	scr_BotPlayerRegistAndCreate( 310, "CREATURE_10C", POWER_COLOR_BLACK );	//�N���[�`���[_ 

	scr_BotPlayerRegistAndCreate( 401, "ALIEN_M2", POWER_COLOR_BLACK );	//�N���[�`���[_ 

//�R�[���o�b�N�̐ݒ�����Ă�����I 
	scr_SetMessageCallback( "miscb_PlayerSally_First", 1, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );
	scr_SetMessageCallback( "miscb_TimeOver", 2, CB_TYPE_ONCE,  MESSAGE_GAME_TIME_OVER );	//�^�C���I�[�o�[�� 


	scr_AddDeathEnemyCallback( "miscb_BotKilled101", 101 );
	scr_AddDeathEnemyCallback( "miscb_BotKilled102", 102 );
	scr_AddDeathEnemyCallback( "miscb_BotKilled103", 103 );
	scr_AddDeathEnemyCallback( "miscb_BotKilled104", 104 );
	scr_AddDeathEnemyCallback( "miscb_BotKilled105", 105 );
	scr_AddDeathEnemyCallback( "miscb_BotKilled106", 106 );
	scr_AddDeathEnemyCallback( "miscb_BotKilled107", 107 );

//	scr_AddStandbyEnemyCallback( "miscb_BotDead101", 101, STANDBY_CAN_RESPAWN_TIMING );
//	scr_AddStandbyEnemyCallback( "miscb_BotDead102", 102, STANDBY_CAN_RESPAWN_TIMING );
//	scr_AddStandbyEnemyCallback( "miscb_BotDead103", 103, STANDBY_CAN_RESPAWN_TIMING );
//	scr_AddStandbyEnemyCallback( "miscb_BotDead104", 104, STANDBY_CAN_RESPAWN_TIMING );
//	scr_AddStandbyEnemyCallback( "miscb_BotDead105", 105, STANDBY_CAN_RESPAWN_TIMING );
//	scr_AddStandbyEnemyCallback( "miscb_BotDead106", 106, STANDBY_CAN_RESPAWN_TIMING );
//	scr_AddStandbyEnemyCallback( "miscb_BotDead107", 107, STANDBY_CAN_RESPAWN_TIMING );


	//�I�t���C���L�����y�[���g�t�c�ݒ� 
	scr_SetDisableTacticalInfomation();	//�o�i�[�e�L�X�g���\�� 
	scr_SetEnablePlayerHeroPopup( false );	//�q�[���[�|�b�v�A�b�v�̔�\�� 
	scr_SetEnableInputPlayerVoiceReaction( false );	//���A�N�V�����{�C�X�}�N���̔�\�� 
	scr_BotPlayerDisableLearningSkillByLevelUp();
	scr_SetEnableGameWinDemo( false );


//�g���b�v�o�^ 
	scr_RegistTrapBox( 1001, 11593.8, 0.0, 5187.3, 2541.5, 1500.0, 319.6, -36.3  );  	//�P�ߊJ�n 
	scr_RegistTrapBox( 1002, 3472.1, 0.0, 2655.8, 2349.1, 1500.0, 319.6, -320.0  );  	//�܂�����Q 
	scr_RegistTrapBox( 1003, -6307.8, 0.0, -3866.2, 1656.1, 1500.0, 319.6, -321.0  );	//�܂�����R 
	scr_RegistTrapBox( 1004, -12069.6, 0.0, -2228.5, 2579.0, 1500.0, 318.6, -19.9  );	//�܂�����S 
	scr_RegistTrapBox( 1005, -16111.8, 0.0, 2516.6, 1842.4, 1500.0, 1882.9, -353.9  )	//�G��� 
	scr_RegistTrapBox( 1006,  16091.0, 0.0, -1567.7, 2982.0, 1500.0, 6850.5, -357.3 );	//���R���
	scr_RegistTrapBox( 1006,  9401.0, 0.0, -7316.7, 4868.0, 1500.0, 6739.5, -336.3 );	//���R���


//�g���b�v�R�[���o�b�N 
	scr_SetTrapInCallback( "miscb_TrapIn1001", 1001, CB_TYPE_ONCE, 1001 );	//�P�ߊJ�n 
	scr_SetTrapInCallback( "miscb_TrapIn1002", 1002, CB_TYPE_ALWAYS, 1002 );	//�܂�����Q 
	scr_SetTrapInCallback( "miscb_TrapIn1003", 1003, CB_TYPE_ALWAYS, 1003 );	//�܂�����R 
	scr_SetTrapInCallback( "miscb_TrapIn1004", 1004, CB_TYPE_ALWAYS, 1004 );	//�܂�����S 
	scr_SetTrapInCallback( "miscb_TrapIn1005", 1005, CB_TYPE_ALWAYS, 1005 );	//�G��� 
	scr_SetTrapOutCallback( "miscb_TrapOut1006", 1006, CB_TYPE_ONCE, 1006 );	//���R���

//�o���O���b�Z�[�W 
	scr_WaitStart( 0.4 );	
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C221_01" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	scr_OpenMissionConditionText2(  0, "TXHFC04101", gFoundPeople, 7 );	//���l�����l������ 


	scr_BotPlayerDisableLearningSkillByLevelUp();

	// �v���C���[������҂��܂�
	mis_WaitPlayerCreate();
	scr_PlayerSetForceRespawnPosition( 15894.094727, 0.000000, 1291.30, -100.0 );	//�v���C���[�̏o���ʒu���Œ� 

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

	//�E�K�E�K�S���o�� 
	scr_BotPlayerSpawnToWorld( 101, 12065.197266, 300.000000, 1445.393066, 94.0 );
	scr_BotPlayerSpawnToWorld( 102, 9523.741211, -233.706680, 8148.065430, 0.0 );
	scr_BotPlayerSpawnToWorld( 103, 9501.996094, -230.406342, 8116.908203, 0.0 );
	scr_BotPlayerSpawnToWorld( 104, -105.737564, -449.452057, 1821.98754, 0.0 );
	scr_BotPlayerSpawnToWorld( 105, 3092.190918, -258.249237, 268.267273, 0.0 );
	scr_BotPlayerSpawnToWorld( 106, -9513.341797, -316.986145, -3982.534424, 0.0 );
	scr_BotPlayerSpawnToWorld( 107, -10040.623047, -300.981049, -5670.79882, 0.0 );
//	scr_BotPlayerSpawnToWorld( 108, -15310.693359, 0.000000, 2372.980225, 0.0 );
//	scr_BotPlayerSpawnToWorld( 109, -15821.168945, 0.000000, 2108.060547, 0.0 );
//	scr_BotPlayerSpawnToWorld( 110, -15723.490234, 0.000000, 2906.820801, 0.0 );


}
///////////////////////////////////////////////
//�ėp�t�@���N�V���� //////////////////////////
function mis_CameraSetAndZoom(x,z)
{
	print("cameraset()\n");
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );
	scr_ResetGameCameraDirection( x, z, false );
}
function mis_Warp( x, y, z, roty)
{
	print("warp()\n");
	scr_PauseOn();		
	// �t�F�[�h���ă��[�v
	scr_FadeOutBlack( 1.0 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
	// ���[�v
	scr_PlayerWarp( x, y, z, roty );
	// 1�t���[���҂��Ȃ��ƃ��[�v���������Ȃ�
	suspend();
	scr_SetInputDisable( SCR_INPUT_MOVE );	//�ړ����֎~ 
	scr_PauseOff();
	// �J������ �͂��� �փ��Z�b�g
	scr_ResetGameCameraBehind( true )
	scr_PauseOn();		
	scr_FadeIn( 1.0 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
	scr_SetInputEnable( SCR_INPUT_MOVE );	//�ړ����֎~���� 
	scr_PauseOff();
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
gFirstAbduction <- 0;
function mis_FirstDeadUGA()
{
//	if(gFirstAbduction == 0)
//	{
//		gFirstAbduction = 1;
//		mis_MassageDialog( "C221_17" );	//���b�Z�[�W�F 
//	}
}
function mis_DeadEffect( regist_id )
{
	print("deadEffect!()\n");
	scr_BotPlayerSetRespawnEnable( regist_id, false );
	scr_BotPlayerSetMapIconVisible( regist_id, false );
	mis_BotGotoDeadPoint( regist_id )
//	scr_CreateSceneEffect( id, "Stor01f",  x,  y,  z,  roty );
//	mis_Wait(0.1);
//	scr_RemoveScene( id, false );
//	mis_MassageDialog( doc_id );	//���b�Z�[�W�F 
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMC21161" );	//  

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
function mis_BotGotoDeadPoint( regist_id )
{
	print("gotodeadpoint!()\n");
	scr_BotPlayerSpawnToWorld( regist_id, 49845.938477, -2552.620903, 7915.641602, 0.0 );
}
////////////////////////////////////////////////
// ��������̓R�[���o�b�N���� //////////////////
////////////////////////////////////////////////
gAbducted_UGA01 <- 0;	//�E�K�E�K��m���A�u�_�N�V�����ς݂��ǂ����̃t���O 
gAbducted_UGA02 <- 0;
gAbducted_UGA03 <- 0;
gAbducted_UGA04 <- 0;
gAbducted_UGA05 <- 0;
gAbducted_UGA06 <- 0;
gAbducted_UGA07 <- 0;
gAbducted_UGA08 <- 0;
gAbducted_UGA09 <- 0;
gAbducted_UGA10 <- 0;
function miscb_BotKilled101()
{
	print( "killed101!\n" );
	scr_RemoveCallbackFromId( 101 );
	//�E�K�E�K�����E���ꂽ�ꍇ�̓A�u�_�N�V�����t���O�����Ă�A�B 
	mis_FirstDeadUGA();
	scr_SetTimerCallback( "miscb_BotDead101", 101, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotKilled102()
{
	print( "killed102!\n" );
	scr_RemoveCallbackFromId( 102 );
	mis_FirstDeadUGA();
	scr_SetTimerCallback( "miscb_BotDead102", 102, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotKilled103()
{
	print( "killed103!\n" );
	scr_RemoveCallbackFromId( 103 );
	mis_FirstDeadUGA();
	scr_SetTimerCallback( "miscb_BotDead103", 103, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotKilled104()
{
	print( "killed104!\n" );
	scr_RemoveCallbackFromId( 104 );
	mis_FirstDeadUGA();
	scr_SetTimerCallback( "miscb_BotDead104", 104, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotKilled105()
{
	print( "killed105!\n" );
	scr_RemoveCallbackFromId( 105 );
	mis_FirstDeadUGA();
	scr_SetTimerCallback( "miscb_BotDead105", 105, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotKilled106()
{
	print( "killed106!\n" );
	scr_RemoveCallbackFromId( 106 );
	mis_FirstDeadUGA();
	scr_SetTimerCallback( "miscb_BotDead106", 106, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotKilled107()
{
	print( "killed107!\n" );
	scr_RemoveCallbackFromId( 107 );
	mis_FirstDeadUGA();
	scr_SetTimerCallback( "miscb_BotDead107", 107, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotDead101()
{
	print( "deadugauga101!\n" );
	if(scr_BotPlayerGetLife( 101 ) == 0)
	{
		scr_RemoveDeathEnemyCallback( 101 );
		//�E�K�E�K�������S������Ă����ꂽ�ꍇ�A�A�u�_�N�V�������o�ƂƂ��ɃN���[�`���[���t���O�����Ăďċp�F�� �B 
		mis_DeadEffect( 101 );	//�A�u�_�N�V�������o 
		gAbducted_UGA01 = 1;
		mis_CheckDeadUGA();
	}
}
function miscb_BotDead102()
{
	if(scr_BotPlayerGetLife( 102 ) == 0)
	{
		print( "deadugauga102!\n" );
		scr_RemoveDeathEnemyCallback( 102 );
		mis_DeadEffect( 102 );	//�A�u�_�N�V�������o 
		gAbducted_UGA02 = 1;
		mis_CheckDeadUGA();
	}
}
function miscb_BotDead103()
{
	if(scr_BotPlayerGetLife( 103 ) == 0)
	{
		print( "deadugauga103!\n" );
		scr_RemoveDeathEnemyCallback( 103 );
		mis_DeadEffect( 103 );	//�A�u�_�N�V�������o 
		gAbducted_UGA03 = 1;
		mis_CheckDeadUGA();
	}
}
function miscb_BotDead104()
{
	if(scr_BotPlayerGetLife( 104 ) == 0)
	{
		print( "deadugauga104!\n" );
		scr_RemoveDeathEnemyCallback( 104 );
		mis_DeadEffect( 104 );	//�A�u�_�N�V�������o 
		gAbducted_UGA04 = 1;
		mis_CheckDeadUGA();
	}
}
function miscb_BotDead105()
{
	if(scr_BotPlayerGetLife( 105 ) == 0)
	{
		print( "deadugauga105!\n" );
		scr_RemoveDeathEnemyCallback( 105 );
		mis_DeadEffect( 105 );	//�A�u�_�N�V�������o 
		gAbducted_UGA05 = 1;
		mis_CheckDeadUGA();
	}
}
function miscb_BotDead106()
{
	if(scr_BotPlayerGetLife( 106 ) == 0)
	{
		print( "deadugauga106!\n" );
		scr_RemoveDeathEnemyCallback( 106 );
		mis_DeadEffect( 106 );	//�A�u�_�N�V�������o 
		gAbducted_UGA06 = 1;
		mis_CheckDeadUGA();
	}
}
function miscb_BotDead107()
{
	if(scr_BotPlayerGetLife( 107 ) == 0)
	{
		print( "deadugauga107!\n" );
		scr_RemoveDeathEnemyCallback( 107 );
		mis_DeadEffect( 107 );	//�A�u�_�N�V�������o 
		gAbducted_UGA07 = 1;
		mis_CheckDeadUGA();
	}
}
function mis_CheckDeadUGA()
{
	print( "deadugauga110!\n" );
	//�����ŏI�܂łɖ������S�����񂾂�Q�[���I�[�o�[ 
	if(gCheckPoint != 4)
	{
		if(gAbducted_UGA01 == 1 && gAbducted_UGA02 == 1 && gAbducted_UGA03 == 1 && gAbducted_UGA04 == 1 && gAbducted_UGA05 == 1 && gAbducted_UGA06 == 1 && gAbducted_UGA07 == 1 )
		{
			scr_RemoveCallbackAll();
			mis_Wait( 0.4 );
			mis_MassageDialog( "C221_18" );	//���b�Z�[�W�F 
			scr_RemoveCallbackAll();
			scr_GameSetMissionFailure();	//�~�b�V�������s 
			scr_CloseMissionExpainText( 0 );

		}
	}
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

gFoundPeople <- 0;
////////////////////////////////////////////////////////////////
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

	mis_MassageDialog( "C221_02" );	//���b�Z�[�W�F 

//	scr_OpenMissionConditionText(  0, "$TXHFC22101" );	//�B��������\�� 
//	scr_OpenMissionStateText2( 0, "$TXHFS22101", 7, gFoundPeople );



}
function miscb_TrapOut1006()
{
	print( "OutOwnCastle!\n" );
	//�������o�Ĉ�l�ڂ̃E�K�E�K�ɍ����B�b�u���B 


	scr_SetInputDisable( SCR_INPUT_MOVE );
	scr_SetInputDisable( SCR_INPUT_CAMERA );
	scr_SetInputDisable( SCR_INPUT_BUTTON );
	mis_CameraSetAndZoom( 12065.197266, 1445.393066 );	//�J�������Z�b�g 
	mis_Wait( 0.5 );

	gFoundPeople = 1;
//	scr_OpenMissionStateText2( 0, "$TXHFS22101", 7, gFoundPeople );
	scr_OpenMissionConditionText2(  0, "TXHFC04101", gFoundPeople, 7 );	//���l�����l������ 


	mis_MassageDialog( "C221_03" );	//���b�Z�[�W�F 

	mis_CameraSetAndZoom( 9523.741211, 8148.065430 );	//�J�������Z�b�g 
	mis_Wait( 0.5 );

	mis_MassageDialog( "C221_04" );	//���b�Z�[�W�F 


	scr_SetInputEnable( SCR_INPUT_MOVE );
	scr_SetInputEnable( SCR_INPUT_CAMERA );
	scr_SetInputEnable( SCR_INPUT_BUTTON );

	scr_BotPlayerSetActionTrigger( 101, true );	//�E�K�E�K�����Ă���悤�ɂȂ� 
	scr_RemoveTrap( 1006 );
}
function miscb_TimeOver()
{
	print( "TimeOver!\n" );
	
	scr_RemoveCallbackAll();
	scr_CloseMissionExpainText( 0 );

	scr_GameSetMissionFailure();	//�~�b�V�������s 


	scr_WaitStart( 2.0 );
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );	
	scr_PauseOn();	
	scr_OpenDialog( 0, "C212_29" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();
}
gCheckPoint <- 0;
//////////////////////////////////////////
//����� 
function miscb_TrapIn1001()
{
	print( "1stBattlestart!\n" );
	//�Q�E�R�l�ڂƍ����B 
	gCheckPoint = 1;	//�i�s�󋵂��X�V 

	//�J�����Z�b�g���č�����҂� 
	scr_BotPlayerSetActionTrigger( 102, true );	//�E�K�E�K�����Ă���悤�ɂȂ� 
	scr_BotPlayerSetActionTrigger( 103, true );	//�E�K�E�K�����Ă���悤�ɂȂ� 

	scr_SetInputDisable( SCR_INPUT_MOVE );
	scr_SetInputDisable( SCR_INPUT_CAMERA );
	scr_SetInputDisable( SCR_INPUT_BUTTON );

	mis_CameraSetAndZoom(9523.741211, 8148.065430);	//�J�������Z�b�g 
	mis_Wait( 5.0 );

	gFoundPeople = 3;
//	scr_OpenMissionStateText2( 0, "$TXHFS22101", 7, gFoundPeople );
	scr_OpenMissionConditionText2(  0, "TXHFC04101", gFoundPeople, 7 );	//���l�����l������ 


	mis_MassageDialog( "C221_05" );	//���b�Z�[�W�F���[�� 

	//�G�o�� 
	mis_EnemySpawnAndSet( 204, 204, 9143.783203, -42.661964, 7206.898438, 0.0 );	//�X�|�[�����čs���J�nC 
	mis_EnemySpawnAndSet( 201, 201, 10322.224609, -152.873398, 8157.2363, 0.0 );	//�X�|�[�����čs���J�nW 
	mis_EnemySpawnAndSet( 206, 206, 8470.050781, -178.494385, 7975.70507, 0.0 );	//�X�|�[�����čs���J�nM 
	mis_EnemySpawnAndSet( 207, 207, 9430.662109, -208.412308, 8942.15136, 0.0 );	//�X�|�[�����čs���J�nM 
	mis_EnemySpawnAndSet( 205, 205, 8234.704102, -188.751907, 6692.51171, 0.0 );	//�X�|�[�����čs���J�nC 
//	mis_EnemySpawnAndSet( 208, 208, 10677.204102, -288.406799, 9066.6025, 0.0 );	//�X�|�[�����čs���J�nM 

	mis_MassageDialog( "C221_06" );	//���b�Z�[�W�F�ł��[ 

	scr_AddStandbyEnemyCallback( "miscb_BotDead204_01", 204, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead201_01", 201, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead206_01", 206, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead207_01", 207, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead205_01", 205, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
//	scr_AddStandbyEnemyCallback( "miscb_BotDead208_01", 208, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 

//	scr_OpenMissionStateText(  0, "$TXHFS22102" );	//�B���󋵂��X�V 
	scr_OpenMissionConditionText(  0, "TXHFC04102" );	//�F���l�E�� 


	scr_SetInputEnable( SCR_INPUT_MOVE );
	scr_SetInputEnable( SCR_INPUT_CAMERA );
	scr_SetInputEnable( SCR_INPUT_BUTTON );

}
function mis_CheckKillEnemy()
{
	if(gCheckPoint == 1)
	{
		print( "01checked!\n" );
		mis_CheckAllAlien01();
	}
	if(gCheckPoint == 2)
	{
		print( "02check!\n" );
		mis_CheckAllAlien02();
	}
	if(gCheckPoint == 3)
	{
		print( "03check!\n" );
		mis_CheckAllAlien03();
	}
}
function miscb_BotDead201_01()
{
	print( "dead201!\n" );
	mis_CheckAllAlien01();
}
function miscb_BotDead202_01()
{
	print( "dead202!\n" );
	mis_CheckAllAlien01();
}
function miscb_BotDead203_01()
{
	print( "dead203!\n" );
	mis_CheckAllAlien01();
}
function miscb_BotDead204_01()
{
	print( "dead204!\n" );
	mis_CheckAllAlien01();
}
function miscb_BotDead205_01()
{
	print( "dead205!\n" );
	mis_CheckAllAlien01();
}
function miscb_BotDead206_01()
{
	print( "dead206!\n" );
	mis_CheckAllAlien01();
}
function miscb_BotDead207_01()
{
	print( "dead207!\n" );
	mis_CheckAllAlien01();
}
function miscb_BotDead208_01()
{
	print( "dead208!\n" );
	mis_CheckAllAlien01();
}
function mis_CheckAllAlien01()
{
	print( "check1st!\n" );

	if(scr_BotPlayerGetLife( 201 ) == 0 && scr_BotPlayerGetLife( 204 ) == 0 && scr_BotPlayerGetLife( 205 ) == 0 && scr_BotPlayerGetLife( 206 ) == 0 && scr_BotPlayerGetLife( 207 ) == 0 && scr_BotPlayerGetLife( 208 ) == 0 )
	{
		//�S�ẴG�C���A����|���Ă�����R�[���o�b�N�����ƃ��b�Z�[�W�Ƃ��U�� 
		scr_RemoveStandbyEnemyCallback( 204 );
		scr_RemoveStandbyEnemyCallback( 201 );
		scr_RemoveStandbyEnemyCallback( 206 );
		scr_RemoveStandbyEnemyCallback( 207 );
		scr_RemoveStandbyEnemyCallback( 205 );
		scr_RemoveStandbyEnemyCallback( 208 );

		gCheckPoint = 2;	//�i�s�󋵂��X�V 
		scr_RemoveCallbackFromId( 1002 );
		suspend();
		scr_SetTrapInCallback( "miscb_Battle02Start", 1002, CB_TYPE_ONCE, 1002 );	//�R�ߊJ�n�ɂ��ꂩ�� 
		scr_SetInputDisable( SCR_INPUT_CAMERA );
		mis_MassageDialog( "C221_20" );	//���b�Z�[�W�F 
		scr_CompleteMonumentBuild( "gfmo_001", POWER_COLOR_WHITE );	//3�ԃ^���[ 


		scr_ResetGameCameraDirection( 3517.947, 2842.7813, false );
		mis_Wait( 0.6 );
//		mis_MassageDialog( "C221_07" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMC21071" );	// �������� 

//		scr_OpenMissionStateText2( 0, "$TXHFS22101", 7, gFoundPeople );
		scr_OpenMissionConditionText2(  0, "TXHFC04101", gFoundPeople, 7 );	//���l�����l������ 


		scr_SetInputEnable( SCR_INPUT_CAMERA );
	}
}
function miscb_TrapIn1002()
{
	print( "in1002!\n" );
	//�|������O�ɐ�ɐi�񂾏ꍇ�ɂ͕����Ă����Ȃ惁�b�Z�[�W�Ƃ�[�� 
	mis_MassageDialog( "C221_15" );	//���b�Z�[�W�F 
	mis_Warp( 4021.305908, -488.217316, 4226.764160, 34.0);	//���[�v 
}
//////////////////////////////////////////
//��2��� 
function miscb_Battle02Start()
{
	print( "2ndBattlestart!\n" );
	//�R�E�S�l�ڂƍ����B 

	//�J�����Z�b�g���č�����҂� 
	scr_BotPlayerSetActionTrigger( 104, true );	//�E�K�E�K�����Ă���悤�ɂȂ� 
	scr_BotPlayerSetActionTrigger( 105, true );	//�E�K�E�K�����Ă���悤�ɂȂ� 

	scr_SetInputDisable( SCR_INPUT_MOVE );
	scr_SetInputDisable( SCR_INPUT_CAMERA );
	scr_SetInputDisable( SCR_INPUT_BUTTON );

	mis_CameraSetAndZoom( 2009.457153, 1165.106079 );	//�J�������Z�b�g 
	mis_Wait( 4.0 );

	gFoundPeople = 5;
//	scr_OpenMissionStateText2( 0, "$TXHFS22101", 7, gFoundPeople );
	scr_OpenMissionConditionText2(  0, "TXHFC04101", gFoundPeople, 7 );	//���l�����l������ 


	mis_MassageDialog( "C221_08" );	//���b�Z�[�W�F���[�� 

	//�G�o�� 
	mis_EnemySpawnAndSet( 201, 201,  1123.862793, -521.104431, 1363.92578, 0.0 );	//�X�|�[�����čs���J�n�v 
	mis_EnemySpawnAndSet( 202, 202,  1681.373901, -504.230591, 421.993896, 0.0 );	//�X�|�[�����čs���J�n�v 
	mis_EnemySpawnAndSet( 203, 203,  -2111.527832, -465.054779, -174.8448, 0.0 );	//�X�|�[�����čs���J�n�v 
	mis_EnemySpawnAndSet( 204, 204,  2047.470215, -455.719696, 1291.20690, 0.0 );	//�X�|�[�����čs���J�n�b 
	mis_EnemySpawnAndSet( 205, 205,  -1171.685791, -531.660522, -1668.228, 0.0 );	//�X�|�[�����čs���J�n�b 
	mis_EnemySpawnAndSet( 206, 206,  -1319.650024, -466.479828, 1203.2873, 0.0 );	//�X�|�[�����čs���J�n�l 
	mis_EnemySpawnAndSet( 207, 207,  1026.280884, -499.984558, -1089.6275, 0.0 );	//�X�|�[�����čs���J�n�l 
	mis_EnemySpawnAndSet( 208, 208,  -2558.799805, -486.717834, -1113.846, 0.0 );	//�X�|�[�����čs���J�n�l 


	mis_MassageDialog( "C221_19" );	//���b�Z�[�W�F�ł��[ 

	scr_AddStandbyEnemyCallback( "miscb_BotDead201_02", 201, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead202_02", 202, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead203_02", 203, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead204_02", 204, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead205_02", 205, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead206_02", 206, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead207_02", 207, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead208_02", 208, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 

//	scr_OpenMissionStateText(  0, "$TXHFS22102" );	//�B���󋵂��X�V 
	scr_OpenMissionConditionText(  0, "TXHFC04102" );	//�F���l�E�� 


	scr_SetInputEnable( SCR_INPUT_MOVE );
	scr_SetInputEnable( SCR_INPUT_CAMERA );
	scr_SetInputEnable( SCR_INPUT_BUTTON );

}
function mis_CheckAllAlien02()
{
	print( "check2nd!\n" );

	if(scr_BotPlayerGetLife( 201 ) == 0 && scr_BotPlayerGetLife( 202 ) == 0  && scr_BotPlayerGetLife( 203 ) == 0  && scr_BotPlayerGetLife( 204 ) == 0 && scr_BotPlayerGetLife( 205 ) == 0 && scr_BotPlayerGetLife( 206 ) == 0 && scr_BotPlayerGetLife( 207 ) == 0 && scr_BotPlayerGetLife( 208 ) == 0 )
	{
		//�S�ẴG�C���A����|���Ă�����R�[���o�b�N�����ƃ��b�Z�[�W�Ƃ��U�� 
		scr_RemoveStandbyEnemyCallback( 201 );
		scr_RemoveStandbyEnemyCallback( 202 );
		scr_RemoveStandbyEnemyCallback( 203 );
		scr_RemoveStandbyEnemyCallback( 204 );
		scr_RemoveStandbyEnemyCallback( 205 );
		scr_RemoveStandbyEnemyCallback( 206 );
		scr_RemoveStandbyEnemyCallback( 207 );
		scr_RemoveStandbyEnemyCallback( 208 );

		gCheckPoint = 3;	//�i�s�󋵂��X�V 
		scr_RemoveCallbackFromId( 1003 );
		suspend();
		scr_SetTrapInCallback( "miscb_Battle03Start", 1003, CB_TYPE_ONCE, 1003 );	//�R�ߊJ�n�ɂ��ꂩ�� 

		scr_SetInputDisable( SCR_INPUT_CAMERA );
		mis_MassageDialog( "C221_20" );	//���b�Z�[�W�F 
		scr_CompleteMonumentBuild( "gfmo_002", POWER_COLOR_WHITE );	//2�ԃ^���[ 


		scr_ResetGameCameraDirection( -6683.926758,  -4276.812500, false );
		mis_Wait( 0.6 );
//		mis_MassageDialog( "C221_07" );	//���b�Z�[�W�F 
		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
		scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXCMC21071" );	// �������� 



//		scr_OpenMissionStateText2( 0, "$TXHFS22101", 7, gFoundPeople );
		scr_OpenMissionConditionText2(  0, "TXHFC04101", gFoundPeople, 7 );	//���l�����l������ 


		scr_SetInputEnable( SCR_INPUT_CAMERA );
	}
}
function miscb_BotDead201_02()
{
	print( "dead201!\n" );
	mis_CheckAllAlien02();
}
function miscb_BotDead202_02()
{
	print( "dead202!\n" );
	mis_CheckAllAlien02();
}
function miscb_BotDead203_02()
{
	print( "dead203!\n" );
	mis_CheckAllAlien02();
}
function miscb_BotDead204_02()
{
	print( "dead204!\n" );
	mis_CheckAllAlien02();
}
function miscb_BotDead205_02()
{
	print( "dead205!\n" );
	mis_CheckAllAlien02();
}
function miscb_BotDead206_02()
{
	print( "dead206!\n" );
	mis_CheckAllAlien02();
}
function miscb_BotDead207_02()
{
	print( "dead207!\n" );
	mis_CheckAllAlien02();
}
function miscb_BotDead208_02()
{
	print( "dead208!\n" );
	mis_CheckAllAlien02();
}
function miscb_TrapIn1003()
{
	print( "in1003!\n" );
	//�|������O�ɐ�ɐi�񂾏ꍇ�ɂ͕����Ă����Ȃ惁�b�Z�[�W�Ƃ�[�� 
	mis_MassageDialog( "C221_15" );	//���b�Z�[�W�F 
	mis_Warp( -5381.842285, -413.922363, -2756.969482, 43.0);	//���[�v 
}
//////////////////////////////////////////
//��3��� 
function miscb_Battle03Start()
{
	print( "3rdBattlestart!\n" );
	//6�E7�l�ڂƍ����B 

	//�J�����Z�b�g���č�����҂� 
	scr_BotPlayerSetActionTrigger( 106, true );	//�E�K�E�K�����Ă���悤�ɂȂ� 
	scr_BotPlayerSetActionTrigger( 107, true );	//�E�K�E�K�����Ă���悤�ɂȂ� 

	scr_SetInputDisable( SCR_INPUT_MOVE );
	scr_SetInputDisable( SCR_INPUT_CAMERA );
	scr_SetInputDisable( SCR_INPUT_BUTTON );

	mis_CameraSetAndZoom( -7099.2173, -4721.9033 );	//�J�������Z�b�g 
	mis_Wait( 5.0 );
	gFoundPeople = 7;
//	scr_OpenMissionStateText2( 0, "$TXHFS22101", 7, gFoundPeople );
	scr_OpenMissionConditionText2(  0, "TXHFC04101", gFoundPeople, 7 );	//���l�����l������ 


	mis_MassageDialog( "C221_09" );	//���b�Z�[�W�F���[�� 

	//�G�o�� 
	mis_EnemySpawnAndSet( 201, 201, -9329.367188, -99.145096, -6249.636230, 0.0 );	//�X�|�[�����čs���J�n�v 
	mis_EnemySpawnAndSet( 202, 202, -9396.460938, -298.731689, -5196.51074, 0.0 );	//�X�|�[�����čs���J�n�v 
	mis_EnemySpawnAndSet( 203, 203, -11297.756836, -258.767456, -4289.2065, 0.0 );	//�X�|�[�����čs���J�n�v 
	mis_EnemySpawnAndSet( 204, 204, -10915.381836, -282.747162, -3808.4150, 0.0 );	//�X�|�[�����čs���J�n�b 
	mis_EnemySpawnAndSet( 205, 205, -10042.586914, -67.694801, -6450.60449, 0.0 );	//�X�|�[�����čs���J�n�b 
	mis_EnemySpawnAndSet( 206, 206, -8208.518555, -270.265625, -6481.39062, 0.0 );	//�X�|�[�����čs���J�n�l 
	mis_EnemySpawnAndSet( 207, 207, -10953.435547, -90.202133, -7174.54931, 0.0 );	//�X�|�[�����čs���J�n�l 
	mis_EnemySpawnAndSet( 208, 208, -10024.523438, -130.825058, -7299.0698, 0.0 );	//�X�|�[�����čs���J�n�l 


	mis_MassageDialog( "C221_19" );	//���b�Z�[�W�F�ł��[ 

	scr_AddStandbyEnemyCallback( "miscb_BotDead201_03", 201, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead202_03", 202, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead203_03", 203, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead204_03", 204, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead205_03", 205, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead206_03", 206, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead207_03", 207, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
	scr_AddStandbyEnemyCallback( "miscb_BotDead208_03", 208, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 

//	scr_OpenMissionStateText(  0, "$TXHFS22102" );	//�B���󋵂��X�V 
	scr_OpenMissionConditionText(  0, "TXHFC04102" );	//�F���l�E�� 


	scr_SetInputEnable( SCR_INPUT_MOVE );
	scr_SetInputEnable( SCR_INPUT_CAMERA );
	scr_SetInputEnable( SCR_INPUT_BUTTON );

}
function mis_CheckAllAlien03()
{
	print( "check3rd!\n" );

	if(scr_BotPlayerGetLife( 201 ) == 0 && scr_BotPlayerGetLife( 202 ) == 0  && scr_BotPlayerGetLife( 203 ) == 0  && scr_BotPlayerGetLife( 204 ) == 0 && scr_BotPlayerGetLife( 205 ) == 0 && scr_BotPlayerGetLife( 206 ) == 0 && scr_BotPlayerGetLife( 207 ) == 0 && scr_BotPlayerGetLife( 208 ) == 0 )
	{
		//�S�ẴG�C���A����|���Ă�����R�[���o�b�N�����ƃ��b�Z�[�W�Ƃ��U�� 
		scr_RemoveStandbyEnemyCallback( 201 );
		scr_RemoveStandbyEnemyCallback( 202 );
		scr_RemoveStandbyEnemyCallback( 203 );
		scr_RemoveStandbyEnemyCallback( 204 );
		scr_RemoveStandbyEnemyCallback( 205 );
		scr_RemoveStandbyEnemyCallback( 206 );
		scr_RemoveStandbyEnemyCallback( 207 );
		scr_RemoveStandbyEnemyCallback( 208 );

		scr_RemoveCallbackFromId( 1004 );
		suspend();
		scr_SetTrapInCallback( "miscb_Battle04Start", 1004, CB_TYPE_ONCE, 1004 );	//�R�ߊJ�n�ɂ��ꂩ�� 

		scr_BotPlayerRegistAndCreate( 108, "UGA_08C", POWER_COLOR_WHITE );
		scr_BotPlayerRegistAndCreate( 109, "UGA_09C", POWER_COLOR_WHITE );
		scr_BotPlayerRegistAndCreate( 110, "UGA_10C", POWER_COLOR_WHITE );
		suspend();
		suspend();
		suspend();
		scr_BotPlayerSpawnToWorld( 108, -15310.693359, 0.000000, 2372.980225, 96.0 );
		scr_BotPlayerSpawnToWorld( 109, -15821.168945, 0.000000, 2108.060547, 96.0 );
		scr_BotPlayerSpawnToWorld( 110, -15723.490234, 0.000000, 2906.820801, 96.0 );

		scr_SetInputDisable( SCR_INPUT_CAMERA );
		mis_MassageDialog( "C221_20" );	//���b�Z�[�W�F 
		scr_CompleteMonumentBuild( "gfmo_003", POWER_COLOR_WHITE );	//1�ԃ^���[ 
		suspend();
		suspend();
		suspend();
		suspend();
		suspend();
		suspend();
		suspend();
		mis_MassageDialog( "C221_10" );	//���b�Z�[�W�F 

		scr_ResetGameCameraDirection( -12907.0322, -1069.1569, false );
		mis_Wait( 0.4 );

		scr_SetInputEnable( SCR_INPUT_CAMERA );
//		scr_OpenMissionStateText(  0, "$TXHFS22103" );	//�B���󋵂��X�V 
		scr_OpenMissionConditionText(  0, "TXHFC04103" );	//��ɂ��� 


		gCheckPoint = 4;	//�i�s�󋵂��X�V 
	}
}
function miscb_BotDead201_03()
{
	print( "dead201!\n" );
	mis_CheckAllAlien03();
}
function miscb_BotDead202_03()
{
	print( "dead202!\n" );
	mis_CheckAllAlien03();
}
function miscb_BotDead203_03()
{
	print( "dead203!\n" );
	mis_CheckAllAlien03();
}
function miscb_BotDead204_03()
{
	print( "dead204!\n" );
	mis_CheckAllAlien03();
}
function miscb_BotDead205_03()
{
	print( "dead205!\n" );
	mis_CheckAllAlien03();
}
function miscb_BotDead206_03()
{
	print( "dead206!\n" );
	mis_CheckAllAlien03();
}
function miscb_BotDead207_03()
{
	print( "dead207!\n" );
	mis_CheckAllAlien03();
}
function miscb_BotDead208_03()
{
	print( "dead208!\n" );
	mis_CheckAllAlien03();
}
function miscb_TrapIn1004()
{
	print( "in1004!\n" );
	//�|������O�ɐ�ɐi�񂾏ꍇ�ɂ͕����Ă����Ȃ惁�b�Z�[�W�Ƃ�[�� 
	mis_MassageDialog( "C221_15" );	//���b�Z�[�W�F 
	mis_Warp( -11923.402344, -157.888229, -3455.619141, 158.0);	//���[�v 
}
function miscb_Battle04Start()
{
	print( "battle4!\n" );
	//�G��O�ŃC�x���g�B�F���l���[�_�[�o���B���񂾃E�K�E�K���N���[�`���[�ɁB 
	scr_SetInputDisable( SCR_INPUT_MOVE );
	scr_SetInputDisable( SCR_INPUT_CAMERA );
	scr_SetInputDisable( SCR_INPUT_BUTTON );

	scr_BotPlayerSetActionTrigger( 101, false );
	scr_BotPlayerSetActionTrigger( 102, false );
	scr_BotPlayerSetActionTrigger( 103, false );
	scr_BotPlayerSetActionTrigger( 104, false );
	scr_BotPlayerSetActionTrigger( 105, false );
	scr_BotPlayerSetActionTrigger( 106, false );
	scr_BotPlayerSetActionTrigger( 107, false );


	mis_AppearEffect( 401, -12864.306641, 210.861206, -1018.545654, 164.0 );	//�o���G�t�F�N�g���� 
	scr_BotPlayerSpawnToWorld( 401, -12864.306641, 210.861206, -1018.545654, 164.0 );

	mis_CameraSetAndZoom(-12864.306641, -1018.545654);	//�J�������Z�b�g 
	mis_Wait( 1.0 );

	mis_MassageDialog( "C221_11" );	//���b�Z�[�W�F�F���l 
	mis_SpawnCreature();	//����ł����E�K���N���[�`���[�ɂ��ĕ��� 

//	mis_EnemySpawnAndSet( 201, 201, -13234.251953, 0.000000, 1641.884644, 164.0 );	//�X�|�[�����čs���J�n 
//	mis_EnemySpawnAndSet( 202, 202, -13129.609375, 1.097938, 2571.464844, 164.0 );	//�X�|�[�����čs���J�n 
//	mis_EnemySpawnAndSet( 204, 204, -15403.413086, 0.000000, 3131.260742, 164.0 );	//�X�|�[�����čs���J�n 
//	mis_EnemySpawnAndSet( 205, 205, -15525.322266, 0.000000, 1856.390381, 164.0 );	//�X�|�[�����čs���J�n 

	scr_BotPlayerSetActionTrigger( 401, true );

	scr_BotPlayerSetActionTrigger( 301, true );
	scr_BotPlayerSetActionTrigger( 302, true );
	scr_BotPlayerSetActionTrigger( 303, true );
	scr_BotPlayerSetActionTrigger( 304, true );
	scr_BotPlayerSetActionTrigger( 305, true );
	scr_BotPlayerSetActionTrigger( 306, true );
	scr_BotPlayerSetActionTrigger( 307, true );

	scr_BotPlayerSetActionTrigger( 101, true );
	scr_BotPlayerSetActionTrigger( 102, true );
	scr_BotPlayerSetActionTrigger( 103, true );
	scr_BotPlayerSetActionTrigger( 104, true );
	scr_BotPlayerSetActionTrigger( 105, true );
	scr_BotPlayerSetActionTrigger( 106, true );
	scr_BotPlayerSetActionTrigger( 107, true );


	scr_BotPlayerSetMarchCastleMonument( POWER_COLOR_WHITE, false );

	scr_SetInputEnable( SCR_INPUT_MOVE );
	scr_SetInputEnable( SCR_INPUT_CAMERA );
	scr_SetInputEnable( SCR_INPUT_BUTTON );

//	scr_OpenMissionStateText(  0, "$TXHFS22102" );	//�B���󋵂��X�V 
	scr_OpenMissionConditionText(  0, "TXHFC04102" );	//�F���l�E�� 


}
function mis_SpawnCreature()
{
	print( "creature!\n" );

	if(gAbducted_UGA01 == 1)
	{
		mis_AppearEffect( 301, -12736.162109, 1.554608, -1463.26220, 164.0 );	//�o���G�t�F�N�g���� 
		scr_BotPlayerSpawnToWorld( 301, -12736.162109, 1.554608, -1463.26220, 164.0 );
	}
	if(gAbducted_UGA02 == 1)
	{
		mis_AppearEffect( 302, -13471.214844, 1.633785, -1675.06457, 164.0 );	//�o���G�t�F�N�g���� 
		scr_BotPlayerSpawnToWorld( 302, -13471.214844, 1.633785, -1675.06457, 164.0 );
	}
	if(gAbducted_UGA03 == 1)
	{
		mis_AppearEffect( 303, -13771.925781, 2.198904, -1252.65502, 164.0 );	//�o���G�t�F�N�g���� 
		scr_BotPlayerSpawnToWorld( 303, -13771.925781, 2.198904, -1252.65502, 164.0 );
	}
	if(gAbducted_UGA04 == 1)
	{
		mis_AppearEffect( 304, -12269.408203, 3.469392, -661.485229, 164.0 );	//�o���G�t�F�N�g���� 
		scr_BotPlayerSpawnToWorld( 304, -12269.408203, 3.469392, -661.485229, 164.0 );
	}
	if(gAbducted_UGA05 == 1)
	{
		mis_AppearEffect( 305, -12849.969727, 2.617906, -352.367462, 164.0 );	//�o���G�t�F�N�g���� 
		scr_BotPlayerSpawnToWorld( 305, -12849.969727, 2.617906, -352.367462, 164.0 );
	}
	if(gAbducted_UGA06 == 1)
	{
		mis_AppearEffect( 306, -13522.201172, 2.586639, -546.093628, 164.0 );	//�o���G�t�F�N�g���� 
		scr_BotPlayerSpawnToWorld( 306, -13522.201172, 2.586639, -546.093628, 164.0 );
	}
	if(gAbducted_UGA07 == 1)
	{
		mis_AppearEffect( 307, -12965.485352, 0.564494, 2118.096680, 164.0 );	//�o���G�t�F�N�g���� 
		scr_BotPlayerSpawnToWorld( 307, -12965.485352, 0.564494, 2118.096680, 164.0 );
	}

	suspend();

	if(gAbducted_UGA01 == 0 && gAbducted_UGA02 == 0 && gAbducted_UGA03 == 0 && gAbducted_UGA04 == 0 && gAbducted_UGA05 == 0 && gAbducted_UGA06 == 0 && gAbducted_UGA07 == 0 )
	{
		mis_EnemySpawnAndSet( 201, 201, -13203.382813, 0.443899, -1763.704346, 164.0 );	//�X�|�[�����čs���J�n 
		mis_EnemySpawnAndSet( 202, 202, -12566.302734, 1.353474, -1433.979858, 164.0 );	//�X�|�[�����čs���J�n 
		mis_Wait( 1.0 );
		mis_MassageDialog( "C221_13" );	//���b�Z�[�W�F����Ȃ�߂��� 

		scr_AddStandbyEnemyCallback( "miscb_BotDead401_04", 401, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
		scr_AddStandbyEnemyCallback( "miscb_BotDead201_04", 201, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
		scr_AddStandbyEnemyCallback( "miscb_BotDead202_04", 202, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 

	}
	else
	{
		mis_Wait( 1.0 );
		mis_MassageDialog( "C221_12" );	//���b�Z�[�W�F�������[ 

		scr_AddStandbyEnemyCallback( "miscb_BotDead401_04", 401, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 

		scr_AddStandbyEnemyCallback( "miscb_BotDead301_04", 301, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
		scr_AddStandbyEnemyCallback( "miscb_BotDead302_04", 302, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
		scr_AddStandbyEnemyCallback( "miscb_BotDead303_04", 303, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
		scr_AddStandbyEnemyCallback( "miscb_BotDead304_04", 304, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
		scr_AddStandbyEnemyCallback( "miscb_BotDead305_04", 305, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
		scr_AddStandbyEnemyCallback( "miscb_BotDead306_04", 306, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 
		scr_AddStandbyEnemyCallback( "miscb_BotDead307_04", 307, STANDBY_COUNT_START_TIMING );	//�`�F�b�N�J�n 

	}

}
function miscb_TrapIn1005()
{
	print( "InenemyCastle!\n" );
	//�G����ɓ�������A�F���l��S���E���Ă�΃N���A�ցB�܂��Ȃ�߂��B 
	if(scr_BotPlayerGetLife( 201 ) == 0 && scr_BotPlayerGetLife( 202 ) == 0 && scr_BotPlayerGetLife( 301 ) == 0 && scr_BotPlayerGetLife( 302 ) == 0 && scr_BotPlayerGetLife( 303 ) == 0 && scr_BotPlayerGetLife( 304 ) == 0 && scr_BotPlayerGetLife( 305 ) == 0 && scr_BotPlayerGetLife( 306 ) == 0 && scr_BotPlayerGetLife( 307 ) == 0 )
	{
		mis_CameraSetAndZoom(-15719.191406, 2447.959961);	//�J�������Z�b�g 
		scr_RemoveCallbackAll();
		scr_CloseMissionConditionText( 0 );	//�B���������\�� 
		scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 


		mis_Wait( 1.0 );
		scr_GameSetMissionSuccess();
		scr_CloseMissionExpainText( 0 );
		mis_Wait( 1.6 );
		mis_MassageDialog( "C221_14" );	//���b�Z�[�W�F�N���A 

	}
	else
	{
		mis_MassageDialog( "C221_15" );	//���b�Z�[�W�F�܂� 
		mis_Warp( -12958.707031, 0.498253, 2107.401611, 96.0);	//���[�v 
	}
}
function miscb_BotDead401_04()
{
	print( "dead4014!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead301_04()
{
	print( "dead3014!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead302_04()
{
	print( "dead3024!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead303_04()
{
	print( "dead3034!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead304_04()
{
	print( "dead3044!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead305_04()
{
	print( "dead3054!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead306_04()
{
	print( "dead3064!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead307_04()
{
	print( "dead3074!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead201_04()
{
	print( "dead2014!\n" );
	mis_CheckAllAlien04();
}
function miscb_BotDead202_04()
{
	print( "dead3024!\n" );
	mis_CheckAllAlien04();
}
gFirstClearMassage <- 0;
function mis_CheckAllAlien04()
{
	print( "dead3014!\n" );
	if(scr_BotPlayerGetLife( 201 ) == 0 && scr_BotPlayerGetLife( 202 ) == 0 && scr_BotPlayerGetLife( 301 ) == 0 && scr_BotPlayerGetLife( 302 ) == 0 && scr_BotPlayerGetLife( 303 ) == 0 && scr_BotPlayerGetLife( 304 ) == 0 && scr_BotPlayerGetLife( 305 ) == 0 && scr_BotPlayerGetLife( 306 ) == 0 && scr_BotPlayerGetLife( 307 ) == 0 && scr_BotPlayerGetLife( 401 ) == 0 )
	{
		if(gFirstClearMassage == 0 )
		{
			gFirstClearMassage = 1;
			mis_MassageDialog( "C221_20" );	//���b�Z�[�W�F 
//			scr_OpenMissionStateText(  0, "$TXHFS22103" );	//�B���󋵂��X�V 
			scr_OpenMissionConditionText(  0, "TXHFC04103" );	//��ɂ��� 
		}
	}
}
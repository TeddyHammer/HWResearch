///////////////////////////////////////////////////////////////////////////////////////////////
//
//	�t�@�C�����Fcam_on_0102\mission00.nut 
//	�T�v	�F�I�t���C���L�����y�[�� ���x��1 �L�����y�[��2 �~�b�V����1 
//	�쐬	�F���� 
//	�쐬��	�F110606 
//	�ړI	�F�m�����n�w��̓G��|�� 
//
///////////////////////////////////////////////////////////////////////////////////////////////


function loadMission() 
{
	print("[sample mission] load()\n");
//�~�b�V�����̃X�e�[�W��ǂݍ��ޑO�̏�����ݒ肵�悤�I 
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



//Bot�o�^ 
	scr_BotPlayerRegistAndCreate( 101, "NOOB01", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 102, "MEDIC01", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 103, "MAGE01", POWER_COLOR_WHITE );
//	scr_BotPlayerRegistAndCreate( 104, "NOOB02", POWER_COLOR_WHITE );

	scr_BotPlayerRegistAndCreate( 201, "IQ1", POWER_COLOR_BLACK );	//4�ԃ��j�������g 
	scr_BotPlayerRegistAndCreate( 202, "IQ2", POWER_COLOR_BLACK );	//4�ԃ��j�������g 
	scr_BotPlayerRegistAndCreate( 203, "IQ2", POWER_COLOR_BLACK );	//5�ԃ��j�������g 
	scr_BotPlayerRegistAndCreate( 204, "IQ3", POWER_COLOR_BLACK );	//5�ԃ��j�������g 
	scr_BotPlayerRegistAndCreate( 205, "IQ3", POWER_COLOR_BLACK );	//6�ԃ��j�������g 
	scr_BotPlayerRegistAndCreate( 206, "IQ1", POWER_COLOR_BLACK );	//6�ԃ��j�������g 
	scr_BotPlayerRegistAndCreate( 207, "IQ7", POWER_COLOR_BLACK );	//1_IQ7 
	scr_BotPlayerRegistAndCreate( 208, "IQ7", POWER_COLOR_BLACK );	//1_IQ7 
	scr_BotPlayerRegistAndCreate( 209, "IQ6", POWER_COLOR_BLACK );	//2_IQ6 
	scr_BotPlayerRegistAndCreate( 210, "IQ6", POWER_COLOR_BLACK );	//2_IQ6 
	scr_BotPlayerRegistAndCreate( 211, "IQ6", POWER_COLOR_BLACK );	//2_IQ6 
	scr_BotPlayerRegistAndCreate( 212, "IQ7", POWER_COLOR_BLACK );	//3_IQ7 
	scr_BotPlayerRegistAndCreate( 213, "IQ7", POWER_COLOR_BLACK );	//3_IQ7 
	scr_BotPlayerRegistAndCreate( 214, "IQ6", POWER_COLOR_BLACK );	//4_IQ6 
	scr_BotPlayerRegistAndCreate( 215, "IQ6", POWER_COLOR_BLACK );	//4_IQ6 
	scr_BotPlayerRegistAndCreate( 216, "IQ6", POWER_COLOR_BLACK );	//4_IQ6 
	scr_BotPlayerRegistAndCreate( 217, "IQ5", POWER_COLOR_BLACK );	//5_IQ5 
	scr_BotPlayerRegistAndCreate( 218, "IQ5", POWER_COLOR_BLACK );	//5_IQ5 
	scr_BotPlayerRegistAndCreate( 219, "IQ5", POWER_COLOR_BLACK );	//5_IQ5 
	scr_BotPlayerRegistAndCreate( 220, "IQ5", POWER_COLOR_BLACK );	//6_IQ5 
	scr_BotPlayerRegistAndCreate( 221, "IQ5", POWER_COLOR_BLACK );	//6_IQ5 
	scr_BotPlayerRegistAndCreate( 222, "IQ2D", POWER_COLOR_BLACK );	//7_IQ2D 
	scr_BotPlayerRegistAndCreate( 223, "IQ3D", POWER_COLOR_BLACK );	//7_IQ3D 
	scr_BotPlayerRegistAndCreate( 224, "IQ4D", POWER_COLOR_BLACK );	//7_IQ4D 
	scr_BotPlayerRegistAndCreate( 225, "IQ9_BOSS", POWER_COLOR_BLACK );	//boss 

//�R�[���o�b�N�̐ݒ�����Ă�����I 
	scr_SetMessageCallback( "miscb_PlayerSally_First", 1, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );		//����o���������̃R�[���o�b�N 
	scr_SetMessageCallback( "miscb_TimeOver", 2, CB_TYPE_ONCE,  MESSAGE_GAME_TIME_OVER );		//�^�C���I�[�o�[�� 
	scr_AddDeathEnemyCallback( "miscb_BotDead225", 225 );	//�W�I�����O���j 
	scr_SetTimerCallback( "miscb_BossDamage", 3, CB_TYPE_ONCE, 10.0 );	//�{�X�̃_���[�W�Ď� 
//	scr_SetTimerCallback( "miscb_BossSelfDeath", 4, CB_TYPE_ONCE, 8.3 );	
	scr_AddStandbyEnemyCallback( "miscb_RespawnBoss", 225, STANDBY_COUNT_START_TIMING );	//�{�X�̎��E�Ď� 



//�g���b�v�o�^ 
	scr_RegistTrapBox( 1001,   10699.2 ,0.0 ,12135.0 ,2255.1 ,1500.0 ,1990.8 ,-25.0  );	//�� 
	scr_RegistTrapBox( 1002,   -6084.3 ,0.0 ,8836.1 ,462.6 ,1000.0 ,4236.5 ,-25.0  );	//��O���[�v 
	scr_RegistTrapBox( 1003,   7756.5 ,0.0 ,1295.8 ,486.8 ,1000.0 ,4709.5 ,-10.4  );	//�����[�v 

	scr_RegistTrapSphere( 1005, -11654.087891, 294.309204, 1797.633179, 2600.0 );	//���j�������g05�� 
	scr_RegistTrapSphere( 1006, -6923.963379, 770.740051, -3653.058105, 2600.0 );	//���j�������g04�� 
	scr_RegistTrapSphere( 1906, -850.916687, 278.537170, -2393.886719,  2600.0 );	//���j�������g03�� 

	scr_RegistTrapSphere( 1007, 1665.90, 100.0, 2447.8, 2400.0 );	//�{�X�ʒu 

//�g���b�v�R�[���o�b�N 
	scr_SetTrapInCallback( "miscb_TrapIn1002", 10002, CB_TYPE_ALWAYS, 1002 );
	scr_SetTrapInCallback( "miscb_TrapIn1003", 10003, CB_TYPE_ALWAYS, 1003 );



	//�I�t���C���L�����y�[���g�t�c�ݒ� 
	scr_SetDisableTacticalInfomation();	//�o�i�[�e�L�X�g���\�� 
	scr_SetEnablePlayerHeroPopup( false );	//�q�[���[�|�b�v�A�b�v�̔�\�� 
	scr_SetEnableInputPlayerVoiceReaction( false );	//���A�N�V�����{�C�X�}�N���̔�\�� 
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
	scr_OpenDialog( 0, "C121_01" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	scr_OpenMissionConditionText(  0, "TXHFC02101" );	//�B��������\��(�Ԃ����{�b�g��j�󂵂�) 


	// �v���C���[������҂��܂�
	mis_WaitPlayerCreate();
	scr_PlayerSetForceRespawnPosition( 10216.331055, 500.000000, 11851.6, -115.0 );	//�v���C���[�̏o���ʒu���Œ� 



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

	//�G 
	scr_BotPlayerSpawnToWorld( 207, -13466.93, 525.00, 2926.1, 0.0 );	//1_IQ7 
	scr_BotPlayerSpawnToWorld( 208, -13471.62, 510.63, 1999.7, 0.0 );	//1_IQ7 
	scr_BotPlayerSpawnToWorld( 209, -10070.56, 520.95, 1696.5, 0.0 );	//2_IQ6 
	scr_BotPlayerSpawnToWorld( 210, -9629.88, 537.13, 874.277, 0.0 );	//2_IQ6 
	scr_BotPlayerSpawnToWorld( 211, -8235.11, 522.93, 1511.22, 0.0 );	//2_IQ6 
	scr_BotPlayerSpawnToWorld( 212, 1930.1, 100.0, -388.2, 0.0 );	//3_IQ7 
	scr_BotPlayerSpawnToWorld( 213, 1908.7,  99.7,  522.6, 0.0 );	//3_IQ7 
	scr_BotPlayerSpawnToWorld( 214,-7069.80, 530.90, -3285.1, 0.0 );	//4_IQ6 
	scr_BotPlayerSpawnToWorld( 215,-6367.55, 517.07, -3941.5, 0.0 );	//4_IQ6 
	scr_BotPlayerSpawnToWorld( 216,-5524.67, 523.55, -5089.2, 0.0 );	//4_IQ6 
	scr_BotPlayerSpawnToWorld( 217, -3639.48, 515.77, -1562.1, 0.0 );	//5_IQ5 
	scr_BotPlayerSpawnToWorld( 218, -2542.14, 525.95, -1493.4, 0.0 );	//5_IQ5 
	scr_BotPlayerSpawnToWorld( 219, -2916.01, 522.92, -2403.1, 0.0 );	//5_IQ5 
	scr_BotPlayerSpawnToWorld( 220, 687.59, 519.99, -3932.379, 0.0 );	//6_IQ5 
	scr_BotPlayerSpawnToWorld( 221, -267.17, 517.04, -4888.55, 0.0 );	//6_IQ5 
	scr_BotPlayerSpawnToWorld( 222, -1878.38, 0.00, 1716.6, 0.0 );	//7_IQ2D 
	scr_BotPlayerSpawnToWorld( 223, -416.89, 0.00, 1782.77, 0.0 );	//7_IQ3D 
	scr_BotPlayerSpawnToWorld( 224, -430.97, 89.78, 806.09, 0.0 );	//7_IQ4D 
	scr_BotPlayerSpawnToWorld( 225, 1665.90, 100.0, 2447.8, 0.0 );	//boss 
	suspend();

	scr_BotPlayerSetActionTrigger( 207, true );
	scr_BotPlayerSetActionTrigger( 208, true );
	scr_BotPlayerSetActionTrigger( 209, true );
	scr_BotPlayerSetActionTrigger( 210, true );
	scr_BotPlayerSetActionTrigger( 211, true );
	scr_BotPlayerSetActionTrigger( 212, true );
	scr_BotPlayerSetActionTrigger( 213, true );
	scr_BotPlayerSetActionTrigger( 214, true );
	scr_BotPlayerSetActionTrigger( 215, true );
	scr_BotPlayerSetActionTrigger( 216, true );
	scr_BotPlayerSetActionTrigger( 217, true );
	scr_BotPlayerSetActionTrigger( 218, true );
	scr_BotPlayerSetActionTrigger( 219, true );
	scr_BotPlayerSetActionTrigger( 220, true );
	scr_BotPlayerSetActionTrigger( 221, true );
	scr_BotPlayerSetActionTrigger( 222, true );
	scr_BotPlayerSetActionTrigger( 223, true );
	scr_BotPlayerSetActionTrigger( 224, true );

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

gMonument05 <- 0;
gMonument04 <- 0;
gMonument03 <- 0;

////////////////////////////////////////////////
// ��������̓R�[���o�b�N���� 
////////////////////////////////////////////////
function miscb_BossDamage()
{
	print( "bossdamage!\n" );
	if(scr_BotPlayerGetLifeRate( 225 ) <= 0.95 )
	{
		//BOSS�𔭌��I 
		scr_RemoveCallbackFromId( 3 );
		scr_RemoveCallbackFromId( 10007 );
		scr_RemoveDeathEnemyCallback( 225 );
		scr_AddTargetEnemyCallback( "miscb_KillTarget01", 225, "" );
		scr_BotPlayerSetActionTrigger( 225, true );
		scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
		scr_OpenMissionConditionText(  0, "TXHFC02101" );

	}
	else
	{
		scr_SetTimerCallback( "miscb_BossDamage", 3, CB_TYPE_ONCE, 5.0 );	//�{�X�̃_���[�W�Ď� 
	}
}
function miscb_RespawnBoss()
{
	scr_BotPlayerSpawnToWorld( 225, 1665.90, 100.0, 2447.8, 0.0 );	//boss�̎��E���Ď����ă��X�|�[�� 
}
//�v���C���[���o���������̃R�[���o�b�N����
function miscb_PlayerSally_First()
{
	print( "Player is sally!\n" );
	

	//�J���������̔w�㎋�_�ɕύX 
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
	scr_ResetGameCameraBehind( false );


	//���j�������g���� 
	scr_CompleteMonumentBuild( "gfmo_003", POWER_COLOR_WHITE );	//T06 

	scr_CompleteMonumentBuild( "gfmo_004", POWER_COLOR_BLACK );	//T05 
	scr_SetBreakMonumentCallback( "miscb_BreakMonument05", 20004, CB_TYPE_ONCE, "gfmo_004" );
	gMonument05 = 1 ;

	scr_CompleteMonumentBuild( "gfmo_002", POWER_COLOR_BLACK );	//T04 
	scr_SetBreakMonumentCallback( "miscb_BreakMonument04", 20005, CB_TYPE_ONCE, "gfmo_002" );
	gMonument04 = 1 ;

	scr_CompleteMonumentBuild( "gfmo_005", POWER_COLOR_BLACK );	//t03 
	scr_SetBreakMonumentCallback( "miscb_BreakMonument03", 20006, CB_TYPE_ONCE, "gfmo_005" );
	gMonument03 = 1 ;
	
	scr_WaitStart( 1.0 );	//�P�b�҂� 
	while( scr_Waiting() )	//�҂̂��I��̂��Ď������ 
	{
		suspend();
	}
	
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C121_02" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	mis_WarpToMonument06();

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C121_07" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

//	scr_OpenMissionConditionText(  0, "$TXHFC12101" );	//�B��������\�� 
//	scr_OpenMissionStateText(  0, "$TXHFS12101" );	//�B���󋵂�\�� 
	scr_OpenMissionConditionText(  0, "TXHFC02102" );	//�Ԃ����{�b�g�������� 


	scr_SetTrapInCallback( "miscb_TrapIn1001", 10001, CB_TYPE_ALWAYS, 1001 );	
	scr_SetTrapInCallback( "miscb_TrapIn1005", 10005, CB_TYPE_ONCE, 1005 );
	scr_SetTrapInCallback( "miscb_TrapIn1006", 10006, CB_TYPE_ONCE, 1006 );
	scr_SetTrapInCallback( "miscb_TrapIn1906", 19006, CB_TYPE_ONCE, 1906 );
	scr_SetTrapInCallback( "miscb_TrapIn1007", 10007, CB_TYPE_ONCE, 1007 );



	//���� 
	scr_BotPlayerSpawnToMonument( 101, "gfmo_003" );
	scr_BotPlayerSpawnToMonument( 102, "gfmo_003" );
	scr_BotPlayerSpawnToMonument( 103, "gfmo_003" );
//	scr_BotPlayerSpawnToMonument( 104, "gfmo_003" );
	suspend();
	scr_BotPlayerSetActionTrigger( 101, true );
	scr_BotPlayerSetActionTrigger( 102, true );
	scr_BotPlayerSetActionTrigger( 103, true );
//	scr_BotPlayerSetActionTrigger( 104, true );


	//���X�|�[��������ύX 
	scr_SetMonumentRebirthDirection( "gfmo_005", 9.29, 9.29 );	//�R�ԃ^���[ 
	scr_SetMonumentRebirthDirection( "gfmo_006", -120.0, -120.0 );	//�Q�ԃ^���[ 

}
function mis_KillAllEnemy()
{
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
}
function miscb_KillTarget01()
{
	print( "killtarget01!\n" );
	
	scr_GameSetMissionSuccess();
	scr_RemoveTargetEnemyCallback( 225 );
	scr_RemoveCallbackAll();
	mis_KillAllEnemy();
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );


	scr_WaitStart( 2.0 );
	while( scr_Waiting() )	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C121_04" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

}
function miscb_BotDead225()
{
	print( "botdead225!\n" );

	scr_RemoveCallbackAll();
	scr_GameSetMissionSuccess();
	scr_RemoveDeathEnemyCallback( 225 );
	mis_KillAllEnemy();
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );


	scr_WaitStart( 2.0 );
	while( scr_Waiting() )	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C121_04" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

}
function miscb_TimeOver()
{
	print( "TimeOver!\n" );
	
	scr_RemoveCallbackAll();
	scr_CloseMissionConditionText( 0 );	//�B���������\�� 
	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_CloseMissionExpainText( 0 );


	scr_WaitStart( 0.5 );
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_PauseOn();	
	scr_OpenDialog( 0, "C121_06" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();

	scr_GameSetMissionFailure();	//�~�b�V�������s 

}
function mis_WarpInfo()
{
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenDialog( 0, "C121_05" );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
}
function miscb_TrapIn1001()
{
	print( "TrapIn 1001!\n" );
	scr_WaitStart( 1.6 );
	while( scr_Waiting() )	
	{
		suspend();
	}

	scr_PauseOn();	
	mis_WarpInfo();
	mis_WarpToMonument06();
	scr_PauseOff();	


}
function miscb_TrapIn1002()
{
	print( "TrapIn 1002!\n" );
	scr_PauseOn();	
	mis_WarpInfo();
	mis_WarpToMonument06();
	scr_PauseOff();	

}
function miscb_TrapIn1003()
{
	print( "TrapIn 1003!\n" );
	scr_PauseOn();	
	mis_WarpInfo();
	mis_WarpToMonument02();
	scr_PauseOff();	

}
function miscb_TrapIn1906()
{
	print( "TrapIn 1906!\n" );
	//3�Ԃɂa�n���z�u 
	scr_BotPlayerSpawnToMonument( 205, "gfmo_005" );
	scr_AddDeathEnemyCallback( "miscb_BotDead205", 205 );
	scr_BotPlayerSetActionTrigger( 205, true );

	scr_BotPlayerSpawnToMonument( 206, "gfmo_005" );
	scr_AddDeathEnemyCallback( "miscb_BotDead206", 206 );
	scr_BotPlayerSetActionTrigger( 206, true );

}
function miscb_TrapIn1005()
{
	print( "TrapIn 1005!\n" );
	//5�Ԃɂa�n���z�u 
	scr_BotPlayerSpawnToMonument( 201, "gfmo_004" );
	scr_AddDeathEnemyCallback( "miscb_BotDead201", 201 );
	scr_BotPlayerSetActionTrigger( 201, true );

	scr_BotPlayerSpawnToMonument( 202, "gfmo_004" );
	scr_AddDeathEnemyCallback( "miscb_BotDead202", 202 );
	scr_BotPlayerSetActionTrigger( 202, true );

}
function miscb_TrapIn1006()
{
	print( "TrapIn 1006!\n" );
	//4�Ԃɂa�n���z�u 
	scr_BotPlayerSpawnToMonument( 203, "gfmo_002" );
	scr_AddDeathEnemyCallback( "miscb_BotDead203", 203 );
	scr_BotPlayerSetActionTrigger( 203, true );

	scr_BotPlayerSpawnToMonument( 204, "gfmo_002" );
	scr_AddDeathEnemyCallback( "miscb_BotDead204", 204 );
	scr_BotPlayerSetActionTrigger( 204, true );

}
function miscb_TrapIn1007()
{
	print( "TrapIn 1007!\n" );
	//BOSS�𔭌��I 
	scr_RemoveDeathEnemyCallback( 225 );
	scr_RemoveCallbackFromId( 3 );
	scr_AddTargetEnemyCallback( "miscb_KillTarget01", 225, "" );
	scr_BotPlayerSetActionTrigger( 225, true );

//	scr_PauseOn();	
//	scr_OpenDialog( 0, "C121_03" );
//	while( scr_IsOpenDialog(0) )
//	{
//		suspend();
//	}
//	scr_PauseOff();
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",4.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 66621, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXCMB21031" );	// �Ԃ��̂͂����[�� 

//	scr_CloseMissionStateText( 0 );	//�B���󋵂��\�� 
	scr_OpenMissionConditionText(  0, "TXHFC02101" );



}
function miscb_BreakMonument05()
{
	print( "BreakM04!\n" );
	gMonument05 = 0;
}
function miscb_BreakMonument04()
{
	print( "BreakM05!\n" );
	gMonument04 = 0;
}
function miscb_BreakMonument03()
{
	print( "BreakM06!\n" );
	gMonument03 = 0;
}
function miscb_BotDead201()
{
	print( "botdead201!\n" );
	scr_SetTimerCallback( "miscb_BotRespawn201", 40001, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotRespawn201()
{
	print( "botresp201!\n" );
	if(gMonument05 == 1){
	scr_BotPlayerSpawnToMonument( 201, "gfmo_004" );
	}
}
function miscb_BotDead202()
{
	print( "botdead202!\n" );
	scr_SetTimerCallback( "miscb_BotRespawn202", 40002, CB_TYPE_ONCE, 12.0 );
}
function miscb_BotRespawn202()
{
	print( "botresp202!\n" );
	if(gMonument05 == 1){
	scr_BotPlayerSpawnToMonument( 202, "gfmo_004" );
	}
}
function miscb_BotDead203()
{
	print( "botdead203!\n" );
	scr_SetTimerCallback( "miscb_BotRespawn203", 40003, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotRespawn203()
{
	print( "botresp203!\n" );
	if(gMonument04 == 1){
	scr_BotPlayerSpawnToMonument( 203, "gfmo_002" );
	}
}
function miscb_BotDead204()
{
	print( "botdead204!\n" );
	scr_SetTimerCallback( "miscb_BotRespawn204", 40004, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotRespawn204()
{
	print( "botresp204!\n" );
	if(gMonument04 == 1){
	scr_BotPlayerSpawnToMonument( 204, "gfmo_002" );
	}
}
function miscb_BotDead205()
{
	print( "botdead205!\n" );
	scr_SetTimerCallback( "miscb_BotRespawn205", 40005, CB_TYPE_ONCE, 15.0 );
}
function miscb_BotRespawn205()
{
	print( "botresp205!\n" );
	if(gMonument03 == 1){
	scr_BotPlayerSpawnToMonument( 205, "gfmo_005" );
	}
}
function miscb_BotDead206()
{
	print( "botdead206!\n" );
	scr_SetTimerCallback( "miscb_BotRespawn206", 40006, CB_TYPE_ONCE, 12.0 );
}
function miscb_BotRespawn206()
{
	print( "botresp206!\n" );
	if(gMonument03 == 1){
	scr_BotPlayerSpawnToMonument( 206, "gfmo_005" );
	}
}
//���[�v
function mis_WarpToMonument06()
{
	// �t�F�[�h���ă��[�v
	scr_FadeOutBlack( 1.0 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
	// ���[�v
	scr_PlayerWarp( -10127.3, 182.9, 5465.3, -143.0 );
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
function mis_WarpToMonument02()
{
	// �t�F�[�h���ă��[�v
	scr_FadeOutBlack( 1.0 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
	// ���[�v
	scr_PlayerWarp( 4065.4, 461.4, 372.2, -121.0 );
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
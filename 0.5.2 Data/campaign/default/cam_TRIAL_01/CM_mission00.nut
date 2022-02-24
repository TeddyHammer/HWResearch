///////////////////////////////////////////////////////////////////////////////////////////////
//
// �t�@�C�����FTRIAL_01\mission00.nut 
//	�T�v	�F�������Ńe�X�g�X�e�[�W 
//	�쐬	�F���� 
//	�쐬��	�F120116 
//	�ړI	�F�`���[�g���A���{�푈 
//
///////////////////////////////////////////////////////////////////////////////////////////////
function loadMission() 
{
	print("[sample mission] load()\n");
	scr_SetDisableGimmickType( GIMMICK_RAFT );	//�߂�ǂ��̂Ŕ��͏��� 
	scr_SetDisableGimmickType( GIMMICK_CANNON );	//�߂�ǂ��̂ŃL���m���͏��� 
	scr_SetDisableGimmickType( GIMMICK_LADDER );	//�߂�ǂ��̂ł͂����͏��� 

	//�Đ�BGM��ύX���� 
	scr_SetInterruptStageBgm( 5 );	//�`���[�g���A���I���܂ł���BGM�ɂ��Ă��� 

}
function startMission() 
{
	print("[�������v���C] start()\n");
	
	// �v���C���[�̃v���t�@�C�����Œ肷��B 
	scr_PlayerSetFixedProfile( 0, "PlayerWarrior" );
//	scr_PlayerSetFixedProfile( 1, "PlayerCleric" );
//	scr_PlayerSetFixedProfile( 2, "PlayerMage" );

	//�������Ԑݒ� 
	//�v���C���[�̃��X�|�[���^�C���͂O�b�� 
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_PLAYER, SCR_REBIRTH_TYPE_PENALTY, 0 );

	// BOT�̓o�^ :28�̂̂���Q��  
	//��� 
	scr_BotPlayerRegistAndCreate( 100, "M01", POWER_COLOR_WHITE );	//�r���Q������ 
	scr_BotPlayerRegistAndCreate( 101, "M02", POWER_COLOR_WHITE );	//�r���Q������ 
//	scr_BotPlayerRegistAndCreate( 102, "NOOB01", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 

	//��� 
	scr_BotPlayerRegistAndCreate( 103, "Ryan", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 104, "Mighty", POWER_COLOR_WHITE );
	scr_BotPlayerRegistAndCreate( 105, "John", POWER_COLOR_WHITE );

	scr_BotPlayerRegistAndCreate( 106, "W01", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 
	scr_BotPlayerRegistAndCreate( 107, "W02", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 
	scr_BotPlayerRegistAndCreate( 108, "W03", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 
	scr_BotPlayerRegistAndCreate( 109, "W04", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 
	scr_BotPlayerRegistAndCreate( 110, "C01", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 
	scr_BotPlayerRegistAndCreate( 111, "C02", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 
	scr_BotPlayerRegistAndCreate( 113, "W12", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 
	scr_BotPlayerRegistAndCreate( 114, "W13", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 
	scr_BotPlayerRegistAndCreate( 115, "C03A", POWER_COLOR_WHITE );	//�`�[���X�L����p���r���A�[�}�[ 

	scr_BotPlayerRegistAndCreate( 112, "EX01", POWER_COLOR_WHITE );	//�^���[�h�q�p�`�[�g��.2012/01/25 

	//�G 
	scr_BotPlayerRegistAndCreate( 200, "DOLL", POWER_COLOR_BLACK );	//���K�� 
	scr_BotPlayerRegistAndCreate( 300, "DOLL2", POWER_COLOR_BLACK );	//���K��I�t�F���X 

	scr_BotPlayerRegistAndCreate( 201, "W05", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 202, "W06", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 203, "W07", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 204, "W08", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 205, "W09", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 206, "W10", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 207, "W11", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 208, "W14", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 209, "W15", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 210, "W16", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 211, "C05", POWER_COLOR_BLACK );
	scr_BotPlayerRegistAndCreate( 212, "C06", POWER_COLOR_BLACK );


	//�g���b�v�̓o�^ 
	//�����K�� 
	//5000�ԑ䁁�{�b�N�X�g���b�v 
	//6000�ԑ䁁�X�t�B�A�g���b�v 
	scr_RegistTrapBox( 5000,   16576.0 ,0.0 ,-4185.1 ,1786.6 ,1200.0 ,1793.0 ,-337.4  );	//���R�̏� 
	scr_RegistTrapBox( 5001,  7092.1 ,0.0 ,-3586.6 ,355.5 ,1500.0 ,3923.1 ,-356.1  );	//�嗤�C���i�s�������P�j 
	scr_RegistTrapBox( 5001,  9636.7 ,0.0 ,3052.3 ,350.0 ,1500.0 ,4082.4 ,-323.8  );	//�嗤�C�� 
	scr_RegistTrapSphere( 5001, 10524.356445, 0.081543, -638.387329, 404.9  );	//�s�������P�^���[�R�Ԏ���  
	
	scr_RegistTrapBox( 5002,  -4358.3, 0.0, -1483.3, 1308.3, 1000.0, 7983.3, -354.9   );	//���̂ق��C�� 
	scr_RegistTrapBox( 5003,  818.2, -100.0, -2201.2, 21685.7, 190.0, 13706.0, -2.5    );	//�����Ȃ��悤��  
	scr_RegistTrapBox( 5004,  3751.1, 0.0, -1073.8, 615.0, 1000.0, 7195.7, -24.7 );	//�`�[���X�L������p  
	
	scr_RegistTrapBox( 5005,  -15187.302734, 0.592201, -3718.333008, 3883.0, 1000.0, 8359.1, -21.2   );	//�G��O�B�G�������p  
	scr_RegistTrapBox( 5006,   -16308.5 ,0.0 ,-4233.2 ,1644.8 ,1500.0 ,1832.1 ,-297.0  );	//�G��� 


	//�����ݒ�R�[���o�b�N 
	//ID�����K�� 
	//1000�ԑ䁁�����ݒ�R�[���o�b�N 
	//2000�ԑ䁁�ǉ��R�[���o�b�N 
	//�g���b�v�̔ԍ�X10���g���b�v�֘A�R�[���o�b�N 
	scr_SetMessageCallback( "miscb_PlayerSallyFirst", 1000, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );	//����o���� 
	scr_SetMessageCallback( "miscb_GameSetWinWhite", 1001, CB_TYPE_ONCE, MESSAGE_GAME_SET_WIN_WHITE );	//������ 
	scr_SetMessageCallback( "miscb_GameSetWinBlack", 1002, CB_TYPE_ONCE, MESSAGE_GAME_SET_WIN_BLACK );	//�s�k�� 

	scr_SetTrapInCallback( "miscb_TrapIn5001", 50001, CB_TYPE_ALWAYS, 5001 );	//�s�������P 

	//�I�t���C���L�����y�[���g�t�c�ݒ� 
	scr_SetEnablePlayerHeroPopup( false );	//�q�[���[�|�b�v�A�b�v�̔�\�� 
	scr_SetEnableInputPlayerVoiceReaction( false );	//���A�N�V�����{�C�X�}�N���̔�\�� 
	scr_SetDisableGameBattleStart();	//�J��J�E���g�_�E���\�����\���� 
//	scr_SetDisableTacticalInfomation();	//���O��\�� 
//	scr_SetDisableTacticalInfomation();	//�o�i�[�e�L�X�g���\�� 
	scr_SetEnableTacticalBannerText( SCR_BANNER_5MINUTES, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_1MINUTES_SUPERIOR, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_1MINUTES_INFERIOR, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_1MINUTES_EVEN, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_ENEMY_CASTLE_APPROACH, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_ALLY_CASTLE_APPROACH, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_ENEMY_CASTLE_ATTACK, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HUDREQ_DISP_ALLY_CASTLE_ATTACK, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HIGH_SCORER, false );
	scr_SetEnableTacticalBannerText( SCR_BANNER_HARD_WALKER, false );


	scr_SetEnableTacticalMessageLog( SCR_MESSAGE_LOG_UNION_INVADING_TO_ENEMY_CASTLE, false );
	scr_SetEnableTacticalMessageLog( SCR_MESSAGE_LOG_SUICIDE, false );
	scr_SetEnableTacticalMessageLog( SCR_MESSAGE_LOG_REMAINING_TIME_05, false );
	scr_SetEnableTacticalMessageLog( SCR_MESSAGE_LOG_REMAINING_TIME_01_WIN, false );
	scr_SetEnableTacticalMessageLog( SCR_MESSAGE_LOG_REMAINING_TIME_01_LOSE, false );
	scr_SetEnableTacticalMessageLog( SCR_MESSAGE_LOG_REMAINING_TIME_01_EVEN, false );
	scr_SetEnableTacticalMessageLog( SCR_MESSAGE_LOG_ENEMY_INVADING_TO_UNION_CASTLE, false );


	// �A�C�e���擾�s��
	scr_DisableGameReward();
	scr_BotPlayerDisableLearningSkillByLevelUp();


	// �v���C���[������҂��܂� 
	mis_WaitPlayerCreate();
	//�v���C���[�̏o���ʒu���Œ� 
	scr_PlayerSetForceRespawnPosition( 16230.390625, 100.000000, -4021.990479, -64.0 );
	//�o���l�擾���`���[�g���A���I���܂ŕ����Ă��� 
	scr_PlayerSetEnableGetExperience( false );


	//�J��O���b�Z�[�W 
	mis_Wait( 0.45 );
	mis_MassageDialog( "T000_01" );	//���b�Z�[�W�F�悤�����I�`�܂����񂽂�ɑ�������߂����邼���B��m�ŏo�Ă� 

	//�J�E���g�_�E���J�n��҂�
	mis_WaitGameStartCountDown();
	//�J�E���g�_�E���^�C�}�[������ 
	scr_ForceStopGameCountDownTimer();	//�Q�[���J�n�J�E���g�_�E�����~�B�o���P�[�h�̈ێ� 
}
///////////////////////
//���ėp�t�@���N�V���� 
function mis_WaitPlayerCreate()
{
	//�v���C���[�̐�����҂B�v���C���[�̏o���ʒu�Œ�ɗ��p 
	while( !scr_PlayerIsCreateBody( 0 ) )
	{
		suspend();
	}
}
function mis_WaitGameStartCountDown()
{
	//�Q�[���J�n�̃J�E���g�_�E�����X�^�[�g����̂�҂� 
	while( GAME_STATE_START_COUNT_DOWN!=scr_GetGamePlayingStatus() )
	{
		local state = GetGamePlayingStatus();
		
		print("[sample mission] mis_WaitGameStart state = " + state + "\n" );
		suspend();
	}
}
function mis_WaitGameStart()
{
	//�Q�[���̊J�n��҂� 
	while( GAME_STATE_PLAYING!=scr_GetGamePlayingStatus() )
	{
		local state = GetGamePlayingStatus();
		
		print("[sample mission] mis_WaitGameStart state = " + state + "\n" );
		suspend();
	}
}
function mis_Wait( sec )
{
	//�X�N���v�g���~�߂Ď��ԕ��҂B 
	print("waitsec()\n");
	scr_WaitStart( sec );
	while( scr_Waiting() )	
	{
		suspend();
	}
}
function mis_MassageDialog( doc_id )
{
	//���b�Z�[�W�_�C�A���O���J�� 
	print("deadEffect!()\n");
	scr_PauseOn();	
	scr_OpenDialog( 0, doc_id );
	while( scr_IsOpenDialog(0) )
	{
		suspend();
	}
	scr_PauseOff();
}
function mis_CameraSet(x,y)
{
	print("cameraset()\n");
	scr_SetInputDisable( SCR_INPUT_CAMERA );	//�J�������֎~ 
	scr_ResetGameCameraDirection( x, y, false );
	scr_WaitStart( 0.4 );	
	while( scr_Waiting() )	
	{
		suspend();
	}
	scr_SetInputEnable( SCR_INPUT_CAMERA );	//�J�����֎~���� 
}
function mis_BannerInfoTimer(fn_name,time)
{
	//���h�c�^�C�}�[�R�[���o�b�N�̃Z�b�g�E����ւ� 
	scr_RemoveCallbackFromId( 30003 );

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
function mis_WarpToReturnTutorial( x, y, z, roty )
{
	print("warpToCheckPoint()\n");
	scr_PauseOn();		
	// �t�F�[�h���ă��[�v
	scr_FadeOutBlack( 0.4 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
	// ���[�v
	scr_PlayerWarp( x, y, z, roty );
	// 1�t���[���҂��Ȃ��ƃ��[�v���������Ȃ�
	suspend();
	scr_PauseOff();
	scr_SetInputDisable( SCR_INPUT_MOVE );	//�ړ����֎~ 
	// �J������ �͂��� �փ��Z�b�g
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
	scr_ResetGameCameraBehind( true )
	scr_SetInputEnable( SCR_INPUT_MOVE );	//�ړ����֎~���� 
	scr_PauseOn();		
	scr_FadeIn( 0.4 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
	scr_PauseOff();
}
//���R�[���o�b�N����   
gTutorialState <- 0;	//��ԕϐ��B0=�`���[�g���A���O�B1=�`���[�g���A�����B2�̓`���[�g���A����B 
function miscb_PlayerSallyFirst()
{
	print("����̏o�����C�x���g�J�n!()\n");
	//BOT�ݒ�̑��� 
	scr_BotPlayerSetSyncBreakCastleMonumentWithPlayer( POWER_COLOR_WHITE, true );	//BOT�̓v���C���[�̃^���[�j��s���Ɠ������� 
	scr_BotPlayerSetEnableDamageCastleMonument( POWER_COLOR_BLACK, false );	//�GBOT�̓^���[�ւ̍U���͂������Ȃ� 

	//�J���������̔w�㎋�_�ɕύX 
	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
	scr_ResetGameCameraBehind( false );
	
	scr_SetInputDisable( SCR_INPUT_CAMERA );	//�J�������֎~ 
	scr_SetInputDisable( SCR_INPUT_MOVE );	//�ړ����֎~ 
	scr_SetInputDisable( SCR_INPUT_BUTTON );	// �������� �E�X�L�����֎~ 
	
	mis_PlayerSpawnCheck();

}
function miscb_PlayerSallyAfter()
{
	print("�`���[�g���A���J�n�ȍ~�Ƀ��X�|�[�������ł�����()\n");

	mis_Wait( 0.6 );	//�o���I����҂� 
	//�v���C���[�̐E�Ƃ���肷�邽�߂̕ϐ���ݒ� 
	local PlayerJob = 0;
	PlayerJob = scr_PlayerGetJobType();
	//����B�v���C���[����m�łȂ���΂�����x�o�������� 
	if(PlayerJob != SCR_JOB_WARRIOR)
	{
		print("��m�ȊO�̐E�Ƃŏo�������̂łԂ��E��!()\n");
		mis_MassageDialog( "T000_02" );	//�Ȃɂ����Ă��邩���I��m�ŏo���Ȃ񂶂�I 
		scr_PlayerSetLife( 0 );	//�v���C���[�E�Q 
	}
	else
	{
		print("��m�ŏo�������̂ŃC�x���g�i�s�����!()\n");
		
		if(gTeamSkillFlag == 1)
		{
			print("�`�[���X�L���`���[�g���A���ɂɈڍs����t���O����������()\n");
			mis_StartTeamSkillTutorial();
		}
		
	}
}
function mis_PlayerSpawnCheck()
{
	print("�����Əo���������I!()\n");
	mis_Wait( 1.0 );	//�o���I����҂� 
	//�v���C���[�̐E�Ƃ���肷�邽�߂̕ϐ���ݒ� 
	print("��m�ŏo�������̂ŃC�x���g�i�s�����!()\n");
	scr_SetTrapInCallback( "miscb_TrapIn5003", 50003, CB_TYPE_ALWAYS, 5003 );	//�����Ȃ��悤�� 
	mis_StartTutorial();
}
function miscb_TrapIn5001()
{
	print("�s�������P���s�B�퓬�`���[�g���A���ɉ����߂�()\n");
	mis_MassageDialog( "T000_03" );	//���b�Z�[�W�F���h����Ă� 
	mis_WarpToReturnTutorial( 13546.433594, 100.000000, -2435.386963, -66.0 );
}
function miscb_TrapIn5003()
{
	print("�������Ƃ��ԂȂ������()\n");
	mis_MassageDialog( "T000_04" );	//���b�Z�[�W�F������Ǝ��ʂ����� 
	mis_WarpToReturnTutorial( 13546.433594, 100.000000, -2435.386963, -66.0 );
}
function mis_StartTutorial()
{
	if(gTutorialState == 0)
	{
		print("�J�����`���[�g���A������J�n����!()\n");
		gTutorialState = 1;	//�`���[�g���A�����Ɉȍ~ 

		scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXTBA00011" );	// ���n���Ă݂悤 
		
		scr_SetInputEnable( SCR_INPUT_CAMERA );	//�J�����֎~���� 
		scr_OpenKeyHelp( SCR_KEY_HELP_CAMERA_01, -1.0 );	//�L�[�w���v�@RS���E�J������] 
		scr_SetCameraRotationCallback( "miscb_CameraMove", 2000, 100.0 );	//�J������]������ 
	}
}
gAfterCameraMove <- 0;	//�J�����񂵂���̏�ԕϐ� 
function miscb_CameraMove()
{
	print("�J������]������()\n");

	gAfterCameraMove = (gAfterCameraMove+1);	//�J�����̉�]�x�������`�F�b�N 
	scr_SetCameraRotationCallback( "miscb_CameraMove", 2000, 70.0 );	//�J������]���������ꂩ�� 

	if(gAfterCameraMove == 2 )	//����240�x�ȏ��]�����Ă�����ȍ~ 
	{
		print("�J�����`���[�g���A���Q�Ɉȍ~����()\n");
		scr_RemoveCallbackFromId( 2000 );
		scr_CloseKeyHelp();
		
		scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
		scr_OpenMissionExpainText( 0, "#TXTBA00021" );	//�Y�[���A�E�g 
		scr_OpenKeyHelp( SCR_KEY_HELP_CAMERA_02 ,-1.0);	//�L�[�w���v�@RS�㉺�J�����Y�[�� 
		scr_SetMessageCallback( "miscb_CameraZoom", 2001, CB_TYPE_ALWAYS, MESSAGE_CAMERA_CHANGE_ANGLE_TYPE );	//�J�����Y�[���ύX���� 
	}
}
gAfterCameraZoom <- 0;	//�J�����ύX�񐔂̏�ԕϐ� 
gCameraZoom <- 0;
function miscb_CameraZoom()
{
	print("�J�����Y�[����ύX����()\n");
	
	if( scr_GetGameCameraAngleType() == ANGLE_ZOOM_OUT || scr_GetGameCameraAngleType() == ANGLE_ZOOM_OUT2 )
	{
		gAfterCameraZoom = (gAfterCameraZoom+1);	//�J�����ύX�񐔂����Z 
	}
	else
	{
		gCameraZoom = (gCameraZoom+1);	//�J�����ύX�񐔂����Z 
	}

	if( gAfterCameraZoom >= 1 || gCameraZoom >= 3  )	//�����P��ł�������ɃJ������ύX���Ă����ꍇ�A���� 
	{
		if( scr_GetGameCameraAngleType() == ANGLE_ZOOM_IN )
		{
			print("�ړ��`���[�g���A���Ɉڍs()\n");
			mis_ClearMoveTutorial();
		}
	}
}

function mis_ClearMoveTutorial()
{
	print("�ړ��`���[�g���A���͏I���B�퓬�`���[�g���A���Ɉڍs����()\n");

	scr_RemoveCallbackFromId( 2001 );
	mis_Wait( 0.4 );
	scr_CloseKeyHelp();
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00042" );	//��̊O�ɏo�Ă݂悤 
	//���͐��������� 
	scr_SetInputEnable( SCR_INPUT_MOVE );
	scr_SetInputEnable( SCR_INPUT_BUTTON );
	scr_OpenKeyHelp( SCR_KEY_HELP_MOVE , -1.0);	//�L�[�w���v�@LS�ړ� 

	//�J�E���g�_�E�����O�ɂ��A�o���P�[�h��������� 
	scr_ForceReleaseGameCountDownTimer();
	//�邩��o�����̃R�[���o�b�N��錾 
	scr_SetTrapOutCallback( "miscb_TrapOut5000", 50000, CB_TYPE_ONCE, 5000 );	//�������o����Ԃ� 
	//���ē��G�t�F�N�g��\�� 
	//�����K�� 
	//700�ԑ䁁�T�E���h 
	//800�ԑ䁁�G�t�F�N�g 
	scr_CreateSceneEffect( 801, "Ccam01c", 15845.251953, 106.000000, -3843.932861, -66.0 );

}
gBattleTutorialState <- 0;	//�퓬�`���[�g���A���̐i�s��ԕϐ��B0=�J�n�O�A1=�U���`���[�g���A�����A2=�X�L���`���[�g���A�����B3=���Β��B4=�����炢���B5=�I���� 
function miscb_TrapOut5000()
{
	print("�邩�甲�����̂Ő퓬�`���[�g���A���Ɉڍs����()\n");
	scr_CloseKeyHelp();	//�ړ��̃L�[�w���v���폜 
	scr_CloseMissionExpainText( 0 );
	
	scr_BotPlayerSpawnToWorld( 200, 12806.377930, 100.000000, -2092.628418, 110.0 );	//MOBsDefN 
	scr_BotPlayerSetLifeRecover( 200, false );	
	suspend();
	suspend();
	suspend();
	suspend();
	scr_BotPlayerSetActionTrigger( 200, true );
//	suspend();
//	scr_BotPlayerEnableInterruptActionMode( 200, SCR_ACTION_MODE_STAY, -1, -1.0 );	//�n�_�h�q�ɕύX 


	scr_AddStandbyEnemyCallback( "miscb_KillBot200", 200, STANDBY_COUNT_START_TIMING  );	//�A���a��Ȃǂœ|����������ꍇ 
	scr_CreateSceneEffect( 802, "Ccam02c", 12806.364258, 300.000000, -2092.646191, -66.0 );

	scr_RegistTrapSphere( 6001, 12806.377930, 100.000000, -2092.628418, 800.0 );	//�h�[������ɋ߂Â����������o 
	scr_SetTrapInCallback( "miscb_TrapIn6001", 60001, CB_TYPE_ONCE, 6001 );	//�G�l�~�[�R���o�b�N��Ԃ� 


}
function miscb_KillTarget200()
{
	//�J���̃R�[���o�b�N 
}
function miscb_TrapIn6001()
{
	print("�U���`���[�g���A���J�n()\n");

	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );
	mis_CameraSet( 12806.3, -2092.6 );	

	mis_MassageDialog( "T000_05" );	//���b�Z�[�W�F�U�����Ă݂悤�� 
	scr_OpenKeyHelp( SCR_KEY_HELP_ATTACK , -1.0);	//�L�[�w���v�@X �ʏ� ��������  
	scr_SetMessageCallback( "miscb_HitAttack", 2003, CB_TYPE_ALWAYS, MESSAGE_PLAYER_SUCCESS_ATTACK );
	scr_RemoveScene( 802, true );
	scr_AddTargetEnemyCallback( "miscb_KillTarget200", 200, "" );	//�����\���J�n 

}
function miscb_KillBot200()
{
	print("�h�[�����񂪎��񂾂񂾁c()\n");
	if(gBattleTutorialState == 6)
	{
		print("�����炢���ɓ|�����̂ŁA�퓬�`���[�g���A�����I��()\n");
		mis_EndBattleTutorial();
	}
	if(gBattleTutorialState == 3)
	{
		print("���΃`���[�g���A�����ɓ|�����̂ŁA�K�[�h�Ɉڍs���邩�`�F�b�N()\n");
		mis_CheckUseStone();
	}
	if(gBattleTutorialState == 2)
	{
		print("�X�L���`���[�g���A�����ɓ|�����̂ŁA�X�L�����g�������ǂ����`�F�b�N()\n");
		mis_CheckUseSmash();
	}
	if(gBattleTutorialState == 1)
	{
		print("�U���`���[�g���A�����ɓ|�����̂ŃX�L���`���[�g���A���Ɉڍs����()\n");
		mis_StartSkillTutorial();
		
	}
	if(gBattleTutorialState == 0)
	{
		print("�퓬�`���[�g���A���J�n�O�Ȃ炻�̏�ɕ���()\n");
		scr_BotPlayerSpawnToWorld( 200, 12806.377930, 100.000000, -2092.628418, 110.0 );	//Doll 
	}

}
gHitAttack <- 0;	//�ʏ�U���𓖂Ă��� 
function miscb_HitAttack()
{
	print("�h�[������ɂ����ƍU�������ĂĂ��()\n");
	gHitAttack = (gHitAttack + 1 );
	if(gHitAttack >= 1 )
	{
		scr_RemoveCallbackFromId( 2003 );
		gBattleTutorialState = 1;
	}
}
function mis_StartSkillTutorial()
{
	print("�X�L���`���[�g���A���P�J�n()\n");
	scr_PlayerAddExperience( 0.2 );	//�^���o���m 
	mis_Wait( 0.3 );
	gBattleTutorialState = 2;	//�X�L���`���[�g���A�����ɏ�Ԉڍs 
	scr_CloseKeyHelp();
	
	mis_MassageDialog( "T000_06" );	//���b�Z�[�W�F�C�C�ˁI���̓X�L���������B�܂��͂ӂ��Ƃ΂������ 
	scr_OpenKeyHelp( SCR_KEY_HELP_SKILL_01 , -1.0);	//�L�[�w���v�@�` �X�L�� ��������  
	scr_SetPlayerUseSkillCallback( "miscb_UseSMASH", 2004, CB_TYPE_ONCE, SCR_SMASH );
	scr_BotPlayerSpawnToWorld( 200, 12806.377930, 100.000000, -2092.628418, 110.0 );	//Doll 
}
gUseSmash <- 0 ;
function miscb_UseSMASH()
{
	gUseSmash = 1;
}
function mis_CheckUseSmash()
{
	print("�ӂ��Ƃ΂��͎g�����̂��ȁH()\n");
	if(gUseSmash == 0 )
	{
		print("�����Ăˁ[�悱���B����������()\n");
		scr_BotPlayerSpawnToWorld( 200, 12806.377930, 100.000000, -2092.628418, 110.0 );	//Doll 
//		mis_BannerInfoTimer("miscb_BunnerInfoRemove",3.0);	//�o�i�[���폜���� 
//		scr_OpenMissionExpainText( 0, "#TXTBA00051" );	// �X�L���g������ 
	}
	if(gUseSmash == 1 )
	{
		print("�g���Ă��I���႟���̂܂ܓ��΂�낤��()\n");
		mis_StartStoneTutorial();
	}
}
function mis_StartStoneTutorial()
{
	scr_RegistTrapSphere( 6100, 11534.307617, 100.000000, -1731.998535, 100.0  );	//���΃`���[�g���A���ʒu  


	scr_CloseKeyHelp();
	scr_PlayerAddExperience( 0.3 );	//�^���o���m 	
	mis_Wait( 0.3 );	//�҂� 
	mis_MassageDialog( "T000_07" );	//���b�Z�[�W�F���͓��΂���Ă݂悤�ȁI 
	scr_BotPlayerSpawnToWorld( 200, 11534.307617, 100.000000, -1731.998535, 110.0 );	//Doll 
	scr_PlayerSetAPRate( 1.0 );

	scr_OpenKeyHelp( SCR_KEY_HELP_SKILL_02 , -1.0);	//�L�[�w���v�@B ���� 
	scr_SetPlayerUseSkillCallback( "miscb_UseSTONE", 2005, CB_TYPE_ONCE, SCR_STONE );
	scr_SetTimerCallback( "miscb_DamageBot200", 2006, CB_TYPE_ONCE, 1.0 );	//202���E�Ď� 
	gBattleTutorialState = 3;	//�`���[�g���A����Ԉڍs 
	
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	scr_BotPlayerSetActionTrigger( 200, true );
	suspend();
	suspend();
	suspend();
	suspend();
	scr_BotPlayerSetActionTrigger( 200, true );

}
gUseStone <- 0 ;
function miscb_UseSTONE()
{
	print("useStone()\n");
	gUseStone = 1;
}
function miscb_DamageBot200()
{
	print("���΃`���[�g���A�����Ƀ_���[�W����������i�s�`�F�b�N()\n");
	scr_SetTimerCallback( "miscb_DamageBot200", 2006, CB_TYPE_ONCE, 1.0 );	//202���E�Ď� 
	if(gUseStone == 0 )
	{
		if(scr_BotPlayerGetLifeRate( 200 ) <= 0.8 )
		{

		}
	}
	if(gUseStone == 1 )
	{
		if(scr_BotPlayerGetLifeRate( 200 ) <= 0.95 )
		{
			scr_CloseKeyHelp();
			scr_RemoveCallbackFromId( 2006 );

			scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
			mis_BannerInfoTimer("miscb_BunnerInfoRemove",4.0);	//�o�i�[���폜���� 
			scr_OpenMissionExpainText( 0, "#TXTBA00061" );	//���̂܂ܓ|�� 
		}
	}
}
function mis_CheckUseStone()
{
	print("���΂͎g�����̂��ȁH()\n");
	if(gUseStone == 0 )
	{
		print("�����Ăˁ[�悱���B����������()\n");
		scr_BotPlayerSpawnToWorld( 200, 11534.307617, 100.000000, -1731.998535, 110.0 );	//Doll 
	}
	if(gUseStone == 1 )
	{
		print("�g���Ă��I���႟���̂܂܂��[�ǂ�낤��()\n");
		mis_StartGuardTutorial();
	}
}
function mis_StartGuardTutorial()
{
	print("���΃`���[�g���A���I���B�K�[�h�̃��N�`���[�ɓ���()\n");
	scr_RemoveTargetEnemyCallback( 200 );

	gBattleTutorialState = 4;
	scr_PlayerAddExperience( 0.3 );	//�^���o���m 
	scr_RegistTrapSphere( 6200, 11534.307617, 100.000000, -1731.998535, 1400.0  );	//�g���b�N�֐؂�ւ���g���b�v  


	mis_MassageDialog( "T100_08" );	//�K�[�h�̐��� :�ǂ��������ȁI�U���̎��͎����o���Ă�����I�K�[�h���IRT�������Ă���ԏ��ŃK�[�h���邼�B�l�`�̓��΂�h���ł݂�I 

	mis_CameraSet( 11116.6, -1483.7 );
	scr_BotPlayerSpawnToWorld( 200, -27593.705078, -100.000000, -5395.319336, 110.0 );	//Doll����������Ȃ��Ƃ���ɔ�΂�  
	scr_BotPlayerSpawnToWorld( 300, 11534.307617, 100.000000, -1731.998535, 110.0 );	//�퓬�h�[��������o��  
	suspend();
	scr_BotPlayerSetLifeRecover( 300, false );	
	scr_SetTrapInCallback( "miscb_TrapIn6200", 62000, CB_TYPE_ALWAYS, 6200 );	//�h�[��������g���b�N���[�h�ɐ؂�ւ���  
	scr_SetTrapOutCallback( "miscb_TrapOut6200", 62100, CB_TYPE_ALWAYS, 6200 );	//�h�[��������f�B�t�F���X���[�h�ɐ؂�ւ���  
	scr_BotPlayerEnableInterruptActionMode( 300, SCR_ACTION_MODE_DEFENSE, 6100, -1.0 );	//���Βn�_��h�q�J�n 


	//�K�[�h�Ɋւ���R�[���o�b�N���쐬 
	scr_OpenKeyHelp( SCR_KEY_HELP_GUARD, -1.0 );	//�K�[�h�̃L�[�w���v LT GUARD 
	scr_SetMessageCallback( "miscb_GuardSuccess", 6211, CB_TYPE_ONCE, MESSAGE_PLAYER_SUCCESS_GUARD );	//�K�[�h�����̃R�[���o�b�N 
	scr_AddTargetEnemyCallback( "miscb_KillTarget300", 300, "" );	//�����\���J�n 
	scr_AddStandbyEnemyCallback( "miscb_KillBot300", 300, STANDBY_COUNT_START_TIMING  );	//�A���a��Ȃǂœ|����������ꍇ 


	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00241" );	//�l�`�̓��΂�h���ł݂悤�I 
}
function miscb_KillTarget300()
{
	//�J�� 
}
function miscb_KillBot300()
{
	if(gBattleTutorialState == 5)	//2012/01/24�V�K 
	{
		print("�K�[�h�`���[�g���A�����ɓ|�����̂ŁA�����炢�Ɉڍs()\n");
		scr_CloseMissionExpainText( 0 );
		scr_RemoveCallbackFromId( 62000 );	//miscb_TrapIn6200 
		scr_RemoveCallbackFromId( 62100 );	//miscb_TrapOut6200 
		scr_RemoveCallbackFromId( 6212 );	//miscb_CheckPlayerLife 
		scr_RemoveStandbyEnemyCallback( 300 );
		scr_RemoveTargetEnemyCallback( 300 );

		mis_StartChangeTutorial();
	}
	if(gBattleTutorialState == 4)	//2012/01/24�V�K 
	{
		print("�K�[�h�`���[�g���A�����ɃK�[�h�����ɓ|�����̂ŁA�ŕ���()\n");
		mis_ReStartGuardTutorial();
	}
}
function mis_ReStartGuardTutorial()
{
	scr_BotPlayerSpawnToWorld( 300, 11534.307617, 100.000000, -1731.998535, 110.0 );	//Doll 
}
function miscb_TrapIn6200()
{
	print("�h�[��������g���b�N���[�h�Ɉڍs()\n");
	
	scr_RemoveCallbackFromId( 6212 );
	suspend();
	scr_SetTimerCallback( "miscb_CheckPlayerLife", 6212, CB_TYPE_ONCE, 1.0 );	//�v���C���[�̗̑͂��Ď����� 
	scr_BotPlayerEnableInterruptActionMode( 300, SCR_ACTION_MODE_TRACKING, 3, -1.0 );	//���Βn�_��h�q�J�n 
}
function miscb_TrapOut6200()
{
	print("�h�[��������f�B�t�F���X���[�h�Ɉڍs()\n");
	scr_RemoveCallbackFromId( 6212 );
	//�n�_�h�q���������Ď��̖h�q�n�_�� 
	scr_BotPlayerEnableInterruptActionMode( 300, SCR_ACTION_MODE_DEFENSE, 6100, -1.0 );	//���Βn�_��h�q�J�n 
}
function miscb_CheckPlayerLife()
{
	if(scr_PlayerGetLifeRate() <= 0.9)
	{
		print("�v���C���[�̗̑͂��V���ȉ��ɂȂ��Ă�����U������߂�����()\n");
		scr_BotPlayerEnableInterruptActionMode( 300, SCR_ACTION_MODE_STAY, -1, -1.0 );	//���Βn�_��h�q�J�n 
	}
	else
	{
		scr_BotPlayerEnableInterruptActionMode( 300, SCR_ACTION_MODE_TRACKING, 3, -1.0 );	//���Βn�_��h�q�J�n 
	}
	scr_SetTimerCallback( "miscb_CheckPlayerLife", 6212, CB_TYPE_ONCE, 1.0 );	//�v���C���[�̗̑͂��Ď����� 
}
function miscb_GuardSuccess()
{
	print("�K�[�h���������B�|���|�`����()\n");
	gBattleTutorialState = 5;

	scr_CloseKeyHelp();
	scr_CloseMissionExpainText( 0 );
	mis_Wait( 0.6 );	//���x���A�b�v��҂� 

	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00242" );	//���܂��ӂ������ȁI���̂܂ܐl�`��������悤�I�K�[�h���Ȃ���ړ���X�U�����ł��邼�I  

}
function mis_StartChangeTutorial()
{
	print("�K�[�h�`���[�g���A���I���B�X�L���`�F���W�̃��N�`���[�ɓ���()\n");
	gBattleTutorialState = 6;	//�X�L���`�F���W���ɏ�Ԉڍs 

	scr_PlayerAddExperience( 1.0 );	//�^���o���m 
	scr_CloseMissionExpainText( 0 );

	mis_Wait( 2.0 );	//���x���A�b�v��҂� 

	scr_PlayerSetCurrentSkill( SCR_SMASH );

	mis_MassageDialog( "T000_08" );	//���b�Z�[�W�F�X�L���ς��悤�� 
	scr_OpenKeyHelp( SCR_KEY_HELP_SKILL_03, -1.0 );	//�L�[�w���v�@Ddown �X�L���؂�ւ� 
	scr_SetPlayerCurrentSkillCallback( "miscb_ChangeSkill", 2007, CB_TYPE_ONCE, SCR_SPINNING_BLADE );	//���X�L���؂�ւ� 
}
function miscb_ChangeSkill()
{
	print("changeskill()\n");
	scr_CloseKeyHelp();

	mis_Wait( 0.4 );	//�؂�ւ���҂� 
	mis_MassageDialog( "T000_09" );	//���b�Z�[�W�Fok�����炨�� 

	mis_CameraSet( 11534.3, -1731.9 );	

	scr_AddTargetEnemyCallback( "miscb_KillTarget200", 200, "" );	//�����\���J�n 
	scr_RemoveTargetEnemyCallback( 300 );


	scr_BotPlayerSpawnToWorld( 300, -27593.705078, -100.000000, -5395.319336, 110.0 );	//Doll�I�t�F���X����������Ȃ��Ƃ���ɔ�΂�  
	scr_BotPlayerSpawnToWorld( 200, 11534.307617, 100.000000, -1731.998535, 110.0 );	//Doll 
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00071" );	//X�U��A/b�X�L�� 
	
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	suspend();
	scr_BotPlayerSetActionTrigger( 200, true );

}
function mis_EndBattleTutorial()
{
	print("�퓬�`���[�g���A�����I���B�^���[�֗U��()\n");
	scr_CloseMissionExpainText( 0 );
	gBattleTutorialState = 7;	//��Ԉڍs 
	scr_PlayerAddExperience( 0.2 );	//�^���o���m 

	mis_MassageDialog( "T000_10" );	//���b�Z�[�W�F��ɍs������ 
	mis_ChangeInvisibleWall_1();	//�s�������g���b�v�̓���ւ�1 

	//�U���G�t�F�N�g���o���A�X�^�[�g�p�̃g���b�v�ƃR�[���o�b�N��ݒu�B
	scr_CreateSceneEffect( 803, "Ccam02c", 10531.496094, 300.174561, -642.748340, -51.0 );
	scr_CreateSceneEffect( 804, "Ccam01c", 12684.128906, 106.000000, -2282.383789, -51.0 );
	mis_CameraSet( 10527.9, -666.0 );	

	scr_RegistTrapSphere( 6002, 10527.996094, 0.174561, -666.048340, 700.0 );	//�^���[�R�Ԏ���  
	scr_SetTrapInCallback( "miscb_TrapIn6002", 60002, CB_TYPE_ONCE, 6002 );	//�^���[����J�n 

}
function mis_ChangeInvisibleWall_1()
{
	print("�퓬�`���[�g���A������^���[�`���[�g���A���ڍs�ɔ����s�������g���b�v�̓���ւ�()\n");
	scr_RemoveTrap( 5001 );
	suspend();
	suspend();
	suspend();
	scr_RegistTrapBox( 5001,  7092.1 ,0.0 ,-3586.6 ,355.5 ,1500.0 ,3923.1 ,-356.1  );	//�嗤�C���i�s�������P�j 
	scr_RegistTrapBox( 5001,  9636.7 ,0.0 ,3052.3 ,350.0 ,1500.0 ,4082.4 ,-323.8  );	//�嗤�C�� 

}
function miscb_TrapIn6002()
{
	print("�^���[�ɂ��Ẳ�����n�߂�B�悭�����悤��()\n");
	mis_CameraSet( 10527.9, -666.0 );	
	mis_MassageDialog( "T000_11" );	//���b�Z�[�W�F���܂��܂��񂽂� 
	scr_RemoveScene( 803, true );

	scr_SetBuildMonumentCallback( "miscb_BuildTower03", 2009, CB_TYPE_ONCE, "gfmo_001", MONUMENT_BUILD_OWNERSHIP );	//�R�ԃ^���[���z�̐� s
}
function miscb_BuildTower03()
{
	print("�^���[�R���^�����ł��{���ɂ��肪�Ƃ��������܂����BCOM��J�n���܂��B()\n");

	scr_PlayerAddExperience( 0.2 );	//�^���o���m 
	mis_Wait( 0.2 );	//���z��҂� 
	scr_SetInputDisable( SCR_INPUT_MOVE );
	mis_Wait( 1.6 );	//���z��҂� 
	scr_RemoveTrap( 5001 );	//�s�������P���폜 
	
	scr_SetMessageCallback( "miscb_PlayerRespawnFirst", 1000, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );	//�o���� 
	mis_MassageDialog( "T000_12" );	//���b�Z�[�W�Fok����ł������炢�������������B�����؂񎀂�ł݂邩���H 
	mis_Wait( 0.5 );	//���z��҂� 

	mis_DeathTrap();

	scr_PlayerSetLife( 0 );	//�v���C���[�E�Q 
	scr_SetInputEnable( SCR_INPUT_MOVE );

	mis_Wait( 2.8 );
	mis_MassageDialog( "T000_13" );	//���ǂ낢���H 


}
function mis_DeathTrap()
{
	print("�݂�Ȏ���()\n");
	mis_Wait( 0.2 );	//���z��҂� 

	scr_CreateSceneEffect( 10110, "Slis02c", 10947.317383, 100.000000, -1019.666870, 0.0  );	//���� 
	scr_CreateSceneEffect( 10111, "Slis03c", 10947.317383, 100.000000, -1019.666870, 0.0  );	//���� 
	scr_CreateSceneSound( 50110, 80950, 10947.317383, 100.000000, -1019.666870 );

	scr_CreateSceneEffect( 10210, "Slis02c", 10038.220703, 100.000000, -238.202881, 0.0  );	//���� 
	scr_CreateSceneEffect( 10211, "Slis03c", 10038.220703, 100.000000, -238.202881, 0.0  );	//���� 

	scr_CreateSceneEffect( 10310, "Slis02c", 10476.724609, 100.000000, -28.096619, 0.0  );	//���� 
	scr_CreateSceneEffect( 10311, "Slis03c", 10476.724609, 100.000000, -28.096619, 0.0  );	//���� 

	scr_CreateSceneEffect( 10410, "Slis02c", 10540.187500, 100.000000, -1298.997803, 0.0  );	//���� 
	scr_CreateSceneEffect( 10411, "Slis03c", 10540.187500, 100.000000, -1298.997803, 0.0  );	//���� 

	scr_CreateSceneEffect( 10510, "Slis02c", 11182.740234, 100.000000, -566.815186, 0.0  );	//���� 
	scr_CreateSceneEffect( 10511, "Slis03c", 11182.740234, 100.000000, -566.815186, 0.0  );	//���� 

	scr_CreateSceneEffect( 10610, "Slis02c", 9892.731445, 100.000000, -735.801331, 0.0  );	//���� 
	scr_CreateSceneEffect( 10611, "Slis03c", 9892.731445, 100.000000, -735.801331, 0.0  );	//���� 

	mis_Wait( 0.2 );	//���z��҂� 
}
function miscb_PlayerRespawnFirst()
{
	print("���܂�ς�����ˁI�BCOM��J�n���܂��B()\n");
	scr_SetInputDisable( SCR_INPUT_BUTTON );
	mis_Wait( 1.3 );	//�o����҂� 
	mis_MassageDialog( "T000_14" );	//���b�Z�[�W�F���āA�z����܂Ƃ߂ĂԂ��Ƃ΂������B���Ԃ��Ă񂾂���ꏏ�ɂ�����̂��Ƃɂ����Ă��� 

	mis_Wait( 0.3 );
	scr_SetInputEnable( SCR_INPUT_BUTTON );

	//COM����J�n 
	mis_StartBattle();
}
function mis_StartBattle()
{
	print("�^���[�̉���܂ŏI������̂ŁA�`���[�g���A�����I�����ăe�X�g�Q�[���Ɉڍs����()\n");

	//�`���[�g���A���I������ 
	scr_RemoveScene( 801, true );
	scr_RemoveScene( 802, true );
	scr_RemoveScene( 804, true );
	scr_RemoveTargetEnemyCallback( 200 );
	scr_RemoveTargetEnemyCallback( 300 );

	scr_RemoveCallbackFromId( 1000 );	//�ďo���R�[���o�b�N�폜 
	scr_RemoveCallbackFromId( 50003 );	//�����Ȃ��悤�ɍ폜 


	// �t�F�[�h���ă��[�v 
	scr_PauseOn();		
	scr_FadeOutBlack( 0.4 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}
	scr_PlayerWarp( 16230.390625, 100.000000, -4021.990479, -64.0 );
	suspend();
	scr_PauseOff();
	scr_SetInputDisable( SCR_INPUT_MOVE );	//�ړ����֎~ 
	scr_SetInputDisable( SCR_INPUT_BUTTON );	//�{�^�����֎~ 

	scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
	scr_ResetGameCameraBehind( true )
	//�^���[�̏�Ԃ𒆗��ɂ��ǂ� 
	scr_CompleteMonumentBuild( "gfmo_001", POWER_COLOR_BLACK );
	
	scr_BotPlayerSetRespawnEnable( 200, false );
	scr_BotPlayerSetRespawnEnable( 300, false );
	scr_BotPlayerSpawnToWorld( 300, -27593.705078, -100.000000, -5395.319336, 110.0 );	//MOBsDefN����ʊO�� 
	scr_BotPlayerSpawnToWorld( 200, -27593.705078, -100.000000, -5395.319336, 110.0 );	//MOBsDefN����ʊO�� 

	suspend();
	mis_Wait( 2.0 );	//�o����҂� 
	scr_FadeIn( 0.6 );
	while( !scr_IsFadeFinish() )
	{
		suspend();
	}


	scr_BotPlayerSpawnToWorld( 103, 17267.476563, 700.000000, -2977.644287, -68.0 );
//	scr_RegistTrapSphere( 9999999, 16472.154297, 100.000000, -4118.274414, 1800.9  );	//������p�����̏�X�t�B�A  

	scr_RegistTrapSphere( 7777, 16252.653320, 100.000000, -3315.407227, 800.9  );	//������p�����̏�X�t�B�A  
	scr_RegistTrapSphere( 7778, 15666.587891, 100.000000, -4671.519531, 800.9  );	//������p�����̏�X�t�B�A  

	scr_RegistTrapSphere( 7779, 13744.385742, 100.000000, -2436.211914, 680.9  );	//���O�h�q�p  
	scr_RegistTrapSphere( 7780, 13363.796875, 100.000000, -3258.906250, 680.9  );	//���O�h�q�p  


	scr_BotPlayerSpawnToMonument( 106, "gcmoA_001" );
	mis_Wait( 0.1 );
	scr_BotPlayerSetActionTrigger( 106, true );
	scr_BotPlayerEnableInterruptActionMode( 106, SCR_ACTION_MODE_DEFENSE, 7777, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 107, "gcmoA_001" );
	mis_Wait( 0.1 );
	scr_BotPlayerSetActionTrigger( 107, true );
	scr_BotPlayerEnableInterruptActionMode( 107, SCR_ACTION_MODE_DEFENSE, 7778, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 104, "gcmoA_001" );
	mis_Wait( 0.1 );
	scr_BotPlayerSetActionTrigger( 104, true );
	scr_BotPlayerEnableInterruptActionMode( 104, SCR_ACTION_MODE_DEFENSE, 7778, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 108, "gcmoA_001" );
	mis_Wait( 0.1 );
	scr_BotPlayerSetActionTrigger( 108, true );
	scr_BotPlayerEnableInterruptActionMode( 108, SCR_ACTION_MODE_DEFENSE, 7777, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 105, "gcmoA_001" );
	mis_Wait( 0.1 );
	scr_BotPlayerSetActionTrigger( 105, true );
	scr_BotPlayerEnableInterruptActionMode( 105, SCR_ACTION_MODE_DEFENSE, 7778, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 109, "gcmoA_001" );
	mis_Wait( 0.2 );
	scr_BotPlayerSetActionTrigger( 109, true );
	scr_BotPlayerEnableInterruptActionMode( 109, SCR_ACTION_MODE_DEFENSE, 7778, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 110, "gcmoA_001" );
	mis_Wait( 0.1 );
	scr_BotPlayerSetActionTrigger( 110, true );
	scr_BotPlayerEnableInterruptActionMode( 110, SCR_ACTION_MODE_DEFENSE, 7777, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 111, "gcmoA_001" );
	mis_Wait( 0.2 );
	scr_BotPlayerSetActionTrigger( 111, true );
	scr_BotPlayerEnableInterruptActionMode( 111, SCR_ACTION_MODE_DEFENSE, 7778, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 113, "gcmoA_001" );
	mis_Wait( 0.2 );
	scr_BotPlayerSetActionTrigger( 113, true );
	scr_BotPlayerEnableInterruptActionMode( 113, SCR_ACTION_MODE_DEFENSE, 7778, -1.0 );	//���Βn�_��h�q�J�n 

	scr_BotPlayerSpawnToMonument( 114, "gcmoA_001" );
	mis_Wait( 0.1 );
	scr_BotPlayerSetActionTrigger( 114, true );
	scr_BotPlayerEnableInterruptActionMode( 114, SCR_ACTION_MODE_DEFENSE, 7777, -1.0 );	//���Βn�_��h�q�J�n 

	mis_Wait( 0.4 );
	mis_MassageDialog( "T100_15" );	//���b�Z�[�W�F���[������ ���āA���悢��͂��܂邼�I ���Ԃ������o�������I�������I���A�����Ă݂悤�}�W�� 

	scr_OpenKeyHelp( SCR_KEY_HELP_VOICE_MACRO_01, -1.0 );	//��b�̃L�[�w���v LB 
	scr_SetMessageCallback( "miscb_Greeting", 115, CB_TYPE_ONCE, MESSAGE_PLAYER_VOCALIZE );	//���A���� 
	scr_SetMessageCallback( "miscb_OpenVoiceMenu", 116, CB_TYPE_ONCE, MESSAGE_OPEN_VOICE_MACRO_WINDOW );	//���A���� 

	scr_SetEnableVoiceMacroWindowOpenWaitMode( 0, true );	//�{�C�X�}�N���E�B���h�E������ɕ��Ȃ��悤�ɂ���� 

}
function miscb_OpenVoiceMenu()
{
	print("�{�C�X�}�N���E�B���h�E��\�������݂�������()\n");
	scr_CloseKeyHelp();
	print("openVoicemacro()\n");
	if(scr_GetOpenVoiceMacroWindowType(0) == SCR_VOICE_MACRO_WINDOW_TYPE_TALK )
	{
//		mis_MassageDialog( "C000_33" );	//���b�Z�[�W�F�Ƃ肠����Y�ł����������Ă݂���ǂ����H 
	}
	scr_SetMessageCallback( "miscb_OpenVoiceMenu", 116, CB_TYPE_ONCE, MESSAGE_OPEN_VOICE_MACRO_WINDOW );	//���A���� 
}
function miscb_Greeting()
{
	print("�����{�C�X�}�N���𔭍s�����̂ł܂��ǂ��Ƃ���()\n");
	scr_CloseKeyHelp();
	scr_SetEnableVoiceMacroWindowOpenWaitMode( 0, false );	//�{�C�X�}�N���̃E�F�C�g���[�h�����Ƃɖ߂� 

	if( scr_PlayerGetLastVoiceMacroId() == 30000 )
	{
		scr_RemoveCallbackFromId( 116 );
		print("�����ƈ��A���Ă�̂ŖJ�߂�()\n");
		mis_Wait( 2.0 );
		mis_MassageDialog( "T100_16" );	//���b�Z�[�W�F�Ƃ肠����Y�ł����������Ă݂���ǂ����H 
	}
	else
	{
		print("���A����Ȃ��������ǂ܂��������Ƃ������b�Z�[�W()\n");
		mis_Wait( 2.0 );
		mis_MassageDialog( "T100_17" );	//���b�Z�[�W�F�Ƃ肠����Y�ł����������Ă݂���ǂ����H 
	}
	mis_MassageDialog( "T000_15b" );	//���b�Z�[�W�F���[������ 
	mis_StartBattle2();	//���x�����o�g�����J�n���� 
}



///////////////////////////////////////////////////////////////////////////////////////////////////////////
gGetCountExpByKillBot <- 0;
function miscb_KillAny()
{
	print( "�͋[�풆�ɂڂ��ƎE�����̂ŋ[���o���l!\n" );
	//COM��J�n����lv2��40%����X�^�[�g 
	if(gGetCountExpByKillBot <= 28)
	{
		scr_PlayerAddExperience( 0.01 );	//�^���o���m 	
		gGetCountExpByKillBot = (gGetCountExpByKillBot + 1);
	}
	else
	{
		scr_RemoveCallbackFromId( 4444 );
	}
}
function mis_SetRemoveExplain()
{
	print( "[�����ň��]SetRemoveExplain!\n" );
	//�b����Ƀo�i�[���b�Z�[�W������ 
	scr_RemoveCallbackFromId( 33003 );	//miscb_RemoveExplain 
	suspend();
	scr_SetTimerCallback( "miscb_RemoveExplain", 33003, CB_TYPE_ONCE, 4.5 );
}
function miscb_RemoveExplain()
{
	print( "[�����ň��]RemoveExplain!\n" );
	scr_CloseMissionExpainText( 0 );
}
function mis_RemoveTrapOut()
{
	print( "[�����ň��]RemoveTrapOut!\n" );
	scr_RemoveCallbackFromId( 33003 );	//miscb_RemoveExplain 

	scr_RemoveCallbackFromId( 5221 );	//miscb_TrapOut501 �^���[������� 
	scr_RemoveCallbackFromId( 5222 );	//miscb_TrapOut501 �^���[������� 
	scr_RemoveCallbackFromId( 5223 );	//miscb_TrapOut501 �^���[������� 

	scr_RemoveCallbackFromId( 6221 );	//miscb_TrapOut601 �o���X�^������� 
	scr_RemoveCallbackFromId( 6222 );	//miscb_TrapOut601 �o���X�^������� 
	scr_RemoveCallbackFromId( 6223 );	//miscb_TrapOut601 �o���X�^������� 
	scr_RemoveCallbackFromId( 6224 );	//miscb_TrapOut601 �o���X�^������� 
	scr_RemoveCallbackFromId( 6225 );	//miscb_TrapOut601 �o���X�^������� 
	scr_RemoveCallbackFromId( 6226 );	//miscb_TrapOut601 �o���X�^������� 

	scr_RemoveCallbackFromId( 7221 );	//miscb_TrapOut701 ���e�������� 
}
function mis_SetResetMassage()
{
	print( "[�����ň��]miscb_SetResetMassage!\n" );
	//�b����Ƀ��b�Z�[�W�����Z�b�g 
	scr_RemoveCallbackFromId( 30003 );
	suspend();

	scr_SetTimerCallback( "miscb_ResetMessage", 30003, CB_TYPE_ONCE, 5.0 );
}
function miscb_ResetMessage()
{
	//�o�i�[���b�Z�[�W�����Ƃɂ��ǂ� 
	print( "[�����ň��]miscb_ResetMassage!\n" );
	scr_CloseMissionExpainText( 0 );
	mis_SetInfoCallbackAll();	//�i�s�ɍ��킹�ă��b�Z�[�W�R�[���o�b�N���Đݒ肷�� 
}
function mis_SetInfoCallbackAll()
{
	print( "[�����ň��]SetInfoCallBackALL!\n" );
	if(gFirstMonumentInfo <= 3)
	{
		scr_RemoveCallbackFromId( 5001 );
		scr_RemoveCallbackFromId( 5002 );
		scr_RemoveCallbackFromId( 5003 );
		suspend();
		scr_SetTrapInCallback( "miscb_TrapIn5501", 5001, CB_TYPE_ONCE, 5501 );	//�M�~�b�N������e�� 
		scr_SetTrapInCallback( "miscb_TrapIn5502", 5002, CB_TYPE_ONCE, 5502 );	//�M�~�b�N������e�� 
		scr_SetTrapInCallback( "miscb_TrapIn5503", 5003, CB_TYPE_ONCE, 5503 );	//�M�~�b�N������e�� 
	}
}
//���^���[�֘A 
gFirstMonumentInfo <- 0;	//�^���[�������p�t���O�B����͉�����B 
function mis_AlertEnemyTower( towID )
{
	print( "�^���[�ɋ߂Â������ɓG�̃^���[�������Ă�����j��𑣂�!\n" );
	
	local TowerState = 0;
	TowerState = scr_GetMonumentPowerColor( towID );

	if(TowerState == POWER_COLOR_BLACK )
	{
		if(gFirstMonumentInfo == 0)
		{
			//���񃁃b�Z�[�W���͂�肱�܂��Ȃ� 
			scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );	//����݂̂r�d�t 
			scr_OpenMissionExpainText( 0, "#TXTBA00181" );	//�G�̃^���[���I 
	
			gFirstMonumentInfo = 1;
		}
		else
		{
			scr_OpenMissionExpainText( 0, "#TXTBA00181" );
			gFirstMonumentInfo = (gFirstMonumentInfo + 1);
		}
		mis_SetRemoveExplain();
	}
}
function miscb_TrapIn5501()
{
	print( "[�����ň��]NearFirldTower01!\n" );
	mis_RemoveTrapOut();	//�g���b�v�A�E�g�֘A�̃R�[���o�b�N���������� 
	scr_SetTrapOutCallback( "miscb_TrapOut5501", 5221, CB_TYPE_ONCE, 5501 );	//�M�~�b�N������� 
	mis_AlertEnemyTower( "gfmo_003" );
}
function miscb_TrapIn5502()
{
	print( "[�����ň��]NearFirldTower02!\n" );
	mis_RemoveTrapOut();	//�g���b�v�A�E�g�֘A�̃R�[���o�b�N���������� 
	scr_SetTrapOutCallback( "miscb_TrapOut5502", 5222, CB_TYPE_ONCE, 5502 );	//�M�~�b�N������� 
	mis_AlertEnemyTower( "gfmo_002" );
}
function miscb_TrapIn5503()
{
	print( "[�����ň��]NearFirldTower03!\n" );
	mis_RemoveTrapOut();	//�g���b�v�A�E�g�֘A�̃R�[���o�b�N���������� 
	scr_SetTrapOutCallback( "miscb_TrapOut5503", 5223, CB_TYPE_ONCE, 5503 );	//�M�~�b�N������� 
	mis_AlertEnemyTower( "gfmo_001" );
}
function miscb_TrapOut5501()
{
	print( "[�����ň��]Out5501!\n" );
	//�o���X�^����͈͂��o�� 
	mis_SetResetMassage();	//���b��Ƀ��b�Z�[�W������ 
}
function miscb_TrapOut5502()
{
	print( "[�����ň��]Out5502!\n" );
	//�o���X�^����͈͂��o�� 
	mis_SetResetMassage();	//���b��Ƀ��b�Z�[�W������ 
}
function miscb_TrapOut5503()
{
	print( "[�����ň��]Out5503!\n" );
	//�o���X�^����͈͂��o�� 
	mis_SetResetMassage();	//���b��Ƀ��b�Z�[�W������ 
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////








function mis_StartBattle2()
{
	print("��b�������I������̂ō��x�����퓬���J�n����()\n");

	scr_SetInterruptStageBgm( -1 );
	scr_PlayStageBgm( 1.0, true );
	mis_Wait( 1.0 );

	mis_SetRebirthTime();	//���X�|�[�����Ԃ�ݒ� 
	scr_SetInputEnable( SCR_INPUT_MOVE );	//�ړ����֎~���� 
	scr_SetInputEnable( SCR_INPUT_BUTTON );	//�{�^�����֎~���� 
	scr_HUDOpenGameBattleStart();

	scr_BotPlayerSpawnToMonument( 201, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 202, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 203, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 204, "gcmoB_001" );

	scr_BotPlayerSpawnToMonument( 205, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 206, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 207, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 208, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 209, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 210, "gcmoB_001" );


	scr_BotPlayerEnableInterruptActionMode( 104, SCR_ACTION_MODE_DEFENSE, 7779, -1.0 );	//���O���x�� 
	scr_BotPlayerEnableInterruptActionMode( 105, SCR_ACTION_MODE_DEFENSE, 7780, -1.0 );	//���O���x�� 

	scr_BotPlayerDisableInterruptActionMode( 106 );
	scr_BotPlayerDisableInterruptActionMode( 107 );
	scr_BotPlayerDisableInterruptActionMode( 108 );
	scr_BotPlayerDisableInterruptActionMode( 109 );
	scr_BotPlayerDisableInterruptActionMode( 110 );
	scr_BotPlayerDisableInterruptActionMode( 111 );
	scr_BotPlayerDisableInterruptActionMode( 113 );
	scr_BotPlayerDisableInterruptActionMode( 114 );
	scr_BotPlayerDisableInterruptActionMode( 115 );


	//���X�|�[�����Ԓ����p�G���A�g���b�v 
	scr_RegistTrapBox( 4004, -14789.0, 0.0, -2143.3, 5633.1, 1000.0, 4060.1, -34.3  );	//�G���A�S�F�G��嗤 
	scr_RegistTrapBox( 4004, -12206.2, 0.0, -5450.5, 4239.3, 1000.0, 3024.5, 0.0  );	//�G���A�S�F�G��嗤 
	scr_SetTrapInCallback( "miscb_TrapIn4004", 40004, CB_TYPE_ALWAYS, 4004 );	//������ 
	scr_SetTrapOutCallback( "miscb_TrapOut4004", 41004, CB_TYPE_ALWAYS, 4004 );	//������ 

	//COM�풆�C�x���g 
	scr_SetBreakCastleGateCallback( "miscb_BreakGate", 2012, CB_TYPE_ONCE, POWER_COLOR_BLACK );	//���j�� 
	scr_SetMessageCallback( "miscb_KillAny", 4444, CB_TYPE_ALWAYS, MESSAGE_PLAYER_KILL_JOB_ANY );	//�[���o���l��n�� 

	scr_RegistTrapSphere( 9999, -16140.387695, 100.00, -4232.728516,        1200.0 );	//�G�钆�S 
	scr_RegistTrapSphere( 99999, -13711.969727, 134.749557, -3056.56,       350.0 );	//���O 
	scr_RegistTrapSphere( 999999, -10109.402344, 100.000000, -1651.867920,       600.0 );	//�P�ԃ^���[���ӑO 

	//�G�΃^���[������Δj��𑣂� 
	scr_RegistTrapSphere( 5503, 10475.34082, 0.0, -673.215698,    400.0 );	//�R�ԃ��j�������g 
	scr_RegistTrapSphere( 5502, 256.2047, 0.0, -1417.31939,       400.0 );	//�Q�ԃ��j�������g 
	scr_RegistTrapSphere( 5501, -9609.232422, 0.0, -1983.852539,  400.0 );	//�P�ԃ��j�������g 
	scr_SetTrapInCallback( "miscb_TrapIn5501", 5001, CB_TYPE_ONCE, 5501 );	//�M�~�b�N������e�� 
	scr_SetTrapInCallback( "miscb_TrapIn5502", 5002, CB_TYPE_ONCE, 5502 );	//�M�~�b�N������e�� 
	scr_SetTrapInCallback( "miscb_TrapIn5503", 5003, CB_TYPE_ONCE, 5503 );	//�M�~�b�N������e�� 

	suspend();
	suspend();
	suspend();
	suspend();
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

	scr_BotPlayerSetActionTrigger( 103, true );
	scr_BotPlayerSetActionTrigger( 104, true );
	scr_BotPlayerSetActionTrigger( 105, true );


	mis_Wait( 3.1 );
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",7.0);	//�o�i�[���폜���� 
	scr_OpenMissionExpainText( 0, "#TXTBA00201" );	//�G���ڎw�� 


	/////2012/01/25�ǉ� /////////////////////////////////////////////////////////
	//�U��풲���p�X�t�B�A 
	scr_RegistTrapSphere( 26000, -10146.443359, 100.000000, -1949.272705, 800.0 );	//�P�ԃ^���[�h��|�W�V���� 

	scr_RegistTrapSphere( 36000, -11540.218750, 100.000000, -2855.317383, 220.0 );	//���@�g���U���|�W�V�����P�i�݂��j 
	scr_RegistTrapSphere( 36001, -12236.423828, 100.000000, -2126.521973, 220.0 );	//���@�g���U���|�W�V�����Q(�Ђ���j 

	scr_RegistTrapSphere( 46000, -12198.554688, 100.000000, -3292.661377, 800.0 );	//���@�g���h��|�W�V�����P(�E�j 
	scr_RegistTrapSphere( 46001, -12957.583984, 100.000000, -2111.565918, 800.0 );	//���@�g���h��|�W�V�����Q�i���j 

	scr_RegistTrapSphere( 56000, -12739.935547, 100.000000, -3698.034912, 600.0 );	//�ۑ��h�q�|�W�V�����P�i�E 
	scr_RegistTrapSphere( 56001, -13627.449219, 100.000000, -1885.314697, 600.0 );	//�ۑ��h�q�|�W�V�����Q�i�� 

	scr_RegistTrapSphere( 66000, -31.279968, -100.000000, -8591.618164, 100.0 );	//�`�[�g�����E�p 


	//�U���C�x���g�R�[���o�b�N 
	scr_SetBuildMonumentCallback(  "miscb_BuildTower01", 10, CB_TYPE_ONCE, "gfmo_003", MONUMENT_BUILD_OWNERSHIP );

}
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
function miscb_BuildTower01()
{
	print( "�P�ԃ^���[��n�ɗ��I!\n" );

	local BuildColor = 0;
	BuildColor = scr_GetMonumentPowerColor( "gfmo_003" );

	if( BuildColor == POWER_COLOR_WHITE )
	{
		print( "���F�ɂȂ����B���O�̃C�x���g���������!\n" );
		scr_SetTrapInCallback( "miscb_TrapIn5005", 50005, CB_TYPE_ONCE, 5005 );	//������ 
		
		scr_BotPlayerSpawnToMonument( 112, "gfmo_003" );	//ex2����q�Ƃ��ď��� 
		scr_BotPlayerSetActionTrigger( 112, true );
		scr_BotPlayerEnableInterruptActionMode( 112, SCR_ACTION_MODE_DEFENSE, 26000, -1.0 );	//t01���x�� 
	}
	else
	{
		scr_RemoveCallbackFromId( 50005 );
		scr_SetBreakMonumentCallback( "miscb_BreakTower01", 9, CB_TYPE_ONCE, "gfmo_003" );
	}
}
function miscb_BreakTower01()
{
	scr_SetBuildMonumentCallback(  "miscb_BuildTower01", 10, CB_TYPE_ONCE, "gfmo_003", MONUMENT_BUILD_OWNERSHIP );
}
function miscb_TrapIn5005()
{
	print( "���t�߂܂Ŋ��S�ɗ��܂����킟!\n" );

//	scr_RemoveCallbackFromId( 10 );	//miscb_BuildTower01 
	
	scr_BotPlayerSpawnToMonument( 211, "gcmoB_001" );
	scr_BotPlayerSpawnToMonument( 212, "gcmoB_001" );
	suspend();
	suspend();
	suspend();
	scr_BotPlayerSetActionTrigger( 211, true );
	scr_BotPlayerSetActionTrigger( 212, true );
	scr_BotPlayerEnableInterruptActionMode( 211, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 212, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );

	
	mis_BannerInfoTimer("miscb_BunnerInfoRemove", 8.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
//	scr_OpenMissionExpainText( 0, "#TXTBA00091" );	//���󂹁I 
	scr_OpenMissionExpainText( 0, "#TXTBA00251" );	//���󂹁I��ǂ̃o���X�^�ɋC������I 


	//���Ɍ����Ė��쐬 
	scr_CreateSceneEffect( 800, "Ccam01c", -12437.139648, 106.000000, -2475.133545, -115.0 );

	//�E�Q�ғo�ꁕ���X�|�[���R�[���o�b�N�쐬 
	scr_SetTimerCallback( "miscb_StartBallistaEvent", 11, CB_TYPE_ONCE, 8.0 );

	//�G���A�ɂ��`���ݒ���폜���A�U��탂�[�h�ɌŒ肷�� 
	scr_RemoveCallbackFromId( 40004 );	//miscb_TrapIn4004 
	scr_RemoveCallbackFromId( 41004 );	//miscb_TrapIn4004 
	miscb_TrapIn4004();

}
function miscb_StartBallistaEvent()
{
	local BallistStateB02 = 0;
	BallistStateB02 = scr_GetGimmickBuildState( "Wgbal01_002" );

	local BallistStateB05 = 0;
	BallistStateB05 = scr_GetGimmickBuildState( "Wgbal01_005" );


	if( BallistStateB02 == GIMMICK_BUILD_NAUGHT && BallistStateB05 == GIMMICK_BUILD_NAUGHT )
	{
		print( "�o���X�^���j�󂳂�Ă����疂�@�g���̃C�x���g�̓X�L�b�v!\n" );
		mis_EndBallistaEvent();
	}
	else
	{
		print( "���S�R�[���o�b�N���d�|����!\n" );
		if(scr_PlayerGetLife() != 0 )
		{
			scr_SetMessageCallback( "miscb_PlayerDeadAtBallistaTutorial", 12, CB_TYPE_ONCE, MESSAGE_PLAYER_DEAD );	//���S�� 
			scr_SetTimerCallback( "miscb_ForceStart", 13, CB_TYPE_ONCE, 15.0 );	//2012/02/23 �Q�T���P5�� 
		}
		else
		{
			scr_SetTimerCallback( "miscb_StartBallistaEvent", 11, CB_TYPE_ONCE, 3.0 );
		}
	}
}
function miscb_ForceStart()
{
	print( "�C�x���g�����i�s!\n" );
	scr_RemoveCallbackFromId( 12 );	//miscb_PlayerDeadAtBallistaTutorial 

	scr_RemoveCallbackFromId( 40004 );
	suspend();
	scr_SetTrapInCallback( "miscb_TrapIn4004AtForce", 40004, CB_TYPE_ONCE, 4004 );	//�܂ق������΂����� 

}
function miscb_TrapIn4004AtForce()
{
	print( "�C�x���g�����i�s���s!\n" );
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00261" );	//���@�g���ɏo�����Ă�������I�ނ�ɖ���~�߂Ă��炤�񂾁I 
//	mis_BannerInfoTimer("miscb_BunnerInfoRemove",12.0);	//�o�i�[���폜���� 
	
	mis_SpawnMage();
}
function miscb_PlayerDeadAtBallistaTutorial()
{
	print( "���񂾂̂ŏo���R�[���o�b�N�ݒ�!\n" );
	scr_RemoveCallbackFromId( 13 );	//miscb_ForceStart 
	
	scr_SetMessageCallback( "miscb_PlayerSallyAtBallistaTutorial", 14, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );	//����o���� 
}
function miscb_PlayerSallyAtBallistaTutorial()
{
	print( "�o�������̂Ŗ��@�g�����aCB�ݒu!\n" );
	mis_Wait( 0.8 );
	//�G���A�S�g���b�v������ 
	scr_SetTrapInCallback( "miscb_TrapIn4004AtballistaTutorial", 40004, CB_TYPE_ONCE, 4004 );	//�܂ق������΂����� 
}
function miscb_TrapIn4004AtballistaTutorial()
{
	print( "���@�g�����a!\n" );

	mis_MassageDialog( "T000_24" );	//���b�Z�[�W�_�C�A���O�F�o���X�^�̖�ōU�ߐ؂�Ȃ�����I���@�g���ɏo�����Ă���������I�ނ炪�o���X�^��j�󂵂Ă���Ԏ���Ă��񂾁I 
	mis_Wait( 0.2 );

	mis_SpawnMage();

	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00261" );	//���@�g���ɏo�����Ă�������I�ނ�ɖ���~�߂Ă��炤�񂾁I 
}
gMageSpawn <- 0;
function mis_SpawnMage()
{
	print( "���@�g�����^���[�����ɂ����ʒu����o��!\n" );

	scr_RemoveScene( 800, true );
	
	mis_SetRebirthTimeAtCastleEvent();	//�G�̃X�|�[�����Ԓ��� 
	
	if(scr_GetMonumentPowerColor( "gfmo_003" ) == POWER_COLOR_WHITE )
	{
		scr_BotPlayerSpawnToMonument( 100, "gfmo_003" );
		scr_BotPlayerSpawnToMonument( 101, "gfmo_003" );
	}
	else
	{
		scr_BotPlayerSpawnToWorld( 100, -6101.808594, 252.607819, 2250.324951, 110.0 );	//���ɂ����ʒu���� 
		scr_BotPlayerSpawnToWorld( 101, -6101.808594, 252.607819, 2250.324951, 110.0 );
	}

	//�����o���X�^�����Ă�����C�x���g 
	local BallistStateB02 = 0;
	BallistStateB02 = scr_GetGimmickBuildState( "Wgbal01_002" );

	local BallistStateB05 = 0;
	BallistStateB05 = scr_GetGimmickBuildState( "Wgbal01_005" );

	if(BallistStateB02 == GIMMICK_BUILD_COMPLETE )
	{
		scr_CreateSceneEffect( 821, "Ccam02c", -13170.214844, 1260.000000, -4531.687500, -66.0 );	//5�i�݂��j 
	}
	if(BallistStateB05 == GIMMICK_BUILD_COMPLETE )
	{
		scr_CreateSceneEffect( 820, "Ccam02c", -14360.279297, 1038.430176, -1522.741455, -66.0 );	//2(�Ђ���j 
	}

	scr_BotPlayerSetActionTrigger( 100, true );
	scr_BotPlayerSetActionTrigger( 101, true );
	
	//���@�g���C�x���g���̐w�`�ֈڍs 

	scr_BotPlayerEnableInterruptActionMode( 100, SCR_ACTION_MODE_DEFENSE, 36000, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 101, SCR_ACTION_MODE_DEFENSE, 36001, -1.0 );

	scr_BotPlayerEnableInterruptActionMode( 106, SCR_ACTION_MODE_DEFENSE, 46000, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 107, SCR_ACTION_MODE_DEFENSE, 46001, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 108, SCR_ACTION_MODE_DEFENSE, 46000, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 109, SCR_ACTION_MODE_DEFENSE, 46001, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 113, SCR_ACTION_MODE_DEFENSE, 46000, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 114, SCR_ACTION_MODE_DEFENSE, 46001, -1.0 );

	scr_BotPlayerEnableInterruptActionMode( 201, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );	//������x�� 
	scr_BotPlayerEnableInterruptActionMode( 202, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 203, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 204, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 205, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 206, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 207, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 208, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 209, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 210, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );

	////////////////////////////////////////////////////////////////////////////////////
	
	scr_AddTargetEnemyCallback( "miscb_Killbot100", 100, "$TXHFI00001" );
	scr_AddTargetEnemyCallback( "miscb_Killbot101", 101, "$TXHFI00001" );
	
	scr_RemoveCallbackFromId( 30003 );	//�C���t�H���[�V�����폜�R�[���o�b�N���폜 
	scr_RemoveCallbackFromId( 80000 );	

	
	scr_SetTimerCallback( "miscb_CheckBallistaState", 2015, CB_TYPE_ONCE, 3.0 );	//�o���X�^�̏�ԊĎ� 
	scr_SetTimerCallback( "miscb_ModeChangeBotEnemyAtMage", 621, CB_TYPE_ONCE, 4.0 );	//�G���U���ĊJ 

	gMageSpawn = 1;
}
function miscb_ModeChangeBotEnemyAtMage()
{
	print( "�G�̍U���ݒ��ύX\n" );
	scr_BotPlayerEnableInterruptActionMode( 201, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );	//���O���x�� 
	scr_BotPlayerEnableInterruptActionMode( 202, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );	//���O���x�� 
	scr_BotPlayerEnableInterruptActionMode( 203, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );	//���O���x�� 
	scr_BotPlayerEnableInterruptActionMode( 204, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );

	scr_BotPlayerEnableInterruptActionMode( 205, SCR_ACTION_MODE_DEFENSE, 46000, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 206, SCR_ACTION_MODE_DEFENSE, 46001, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 207, SCR_ACTION_MODE_DEFENSE, 46000, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 208, SCR_ACTION_MODE_DEFENSE, 46001, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 209, SCR_ACTION_MODE_DEFENSE, 46000, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 210, SCR_ACTION_MODE_DEFENSE, 46001, -1.0 );

}
function miscb_Killbot100()
{
	//�J�� 
}
function miscb_Killbot101()
{
	//�J�� 
}
gBreak02 <- 0;
gBreak05 <- 0;
function miscb_CheckBallistaState()
{
	print( "�o���X�^�͗����Ă��邩�H!\n" );
	//�����o���X�^�����Ă�����C�x���g 
	local BallistStateB02 = 0;
	BallistStateB02 = scr_GetGimmickBuildState( "Wgbal01_002" );

	local BallistStateB05 = 0;
	BallistStateB05 = scr_GetGimmickBuildState( "Wgbal01_005" );

	if(BallistStateB02 == GIMMICK_BUILD_NAUGHT)
	{
		print( "�o���X�^02b!\n" );
		if(gBreak02 == 0)
		{
			print( "�o���X�^02bfirst!\n" );
			scr_RemoveScene( 821, true );
			scr_RemoveTargetEnemyCallback( 100 );
			scr_BotPlayerDisableInterruptActionMode( 100 );
			gBreak02 = 1;
		}
	}
	if(BallistStateB05 == GIMMICK_BUILD_NAUGHT)
	{
		print( "�o���X�^05b!\n" );
		if(gBreak05 == 0)
		{
			print( "�o���X�^05bfirst!\n" );
			scr_RemoveScene( 820, true );
			scr_RemoveTargetEnemyCallback( 101 );
			scr_BotPlayerDisableInterruptActionMode( 101 );
			gBreak05 = 1;
		}
	}

	if( BallistStateB02 == GIMMICK_BUILD_NAUGHT && BallistStateB05 == GIMMICK_BUILD_NAUGHT )
	{
		print( "�o���X�^���j�󂳂�Ă��邶��Ȃ��ł�������!\n" );
		mis_EndBallistaEvent();
	}
	else
	{
		print( "�o���X�^�܂�����!\n" );
		scr_RemoveCallbackFromId( 2015 );	//miscb_CheckBallistaState�̏d��������� 
		suspend();
		scr_SetTimerCallback( "miscb_CheckBallistaState", 2015, CB_TYPE_ONCE, 3.0 );	//�o���X�^�̏�ԊĎ� 
	}
}
function mis_EndBallistaEvent()
{
	//�o���X�^�I����ď��� 
	if(scr_PlayerGetLife() == 0 )
	{
		scr_RemoveCallbackFromId( 14 );	//�d��������� 
		suspend();
		scr_SetMessageCallback( "miscb_PlayerSallyAndGateEvent", 14, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );	//����o���� 
	}
	else
	{
		mis_StartGateEvent();
	}
}
function miscb_PlayerSallyAndGateEvent()
{
	mis_StartGateEvent();
}
function mis_StartGateEvent()
{
	print( "����j�󂷂�悤�x��!\n" );
	
	scr_BotPlayerEnableInterruptActionMode( 100, SCR_ACTION_MODE_DEFENSE, 36000, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 101, SCR_ACTION_MODE_DEFENSE, 36001, -1.0 );

	
	scr_RemoveScene( 800, true );
	suspend();
	scr_CreateSceneEffect( 800, "Ccam01c", -12437.139648, 106.000000, -2475.133545, -115.0 );
	
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",14.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00271" );	//�o���X�^�~�񂾂��I ���󂹁I 

	scr_BotPlayerDisableInterruptActionMode( 106 );
	scr_BotPlayerDisableInterruptActionMode( 107 );
	scr_BotPlayerDisableInterruptActionMode( 108 );
	scr_BotPlayerDisableInterruptActionMode( 109 );
	scr_BotPlayerDisableInterruptActionMode( 113 );
	scr_BotPlayerDisableInterruptActionMode( 114 );
	
	//
	mis_ChangeEnemyMode();	//�G�̖��@�g���U�����[�h������ 
	scr_BotPlayerEnableInterruptActionMode( 201, SCR_ACTION_MODE_DEFENSE, 99999, -1.0 );	//�����x�� 
	scr_BotPlayerEnableInterruptActionMode( 202, SCR_ACTION_MODE_DEFENSE, 99999, -1.0 );
	//

	scr_SetTimerCallback( "miscb_StartRamEvent", 1280, CB_TYPE_ONCE, 20.0 );	//���j��C�x���g  
}
function miscb_StartRamEvent()
{
	print( "���d����ˁ[�C�x���g!\n" );

	if(scr_PlayerGetLife() == 0 )
	{
		scr_RemoveCallbackFromId( 14 );	//�d��������� 
		suspend();
		scr_SetMessageCallback( "miscb_PlayerSallyAndRamEvent", 14, CB_TYPE_ONCE, MESSAGE_PLAYER_SALLY );
	}
	else
	{
		scr_RemoveCallbackFromId( 40004 );
		suspend();
		scr_SetTrapInCallback( "miscb_TrapIn4004AtRam", 40004, CB_TYPE_ONCE, 4004 );	//�������΂����� 
	}
}
function miscb_PlayerSallyAndRamEvent()
{
	print( "���d����ˁ[�C�x���g����[!\n" );
	scr_RemoveCallbackFromId( 40004 );
	suspend();
	scr_SetTrapInCallback( "miscb_TrapIn4004AtRam", 40004, CB_TYPE_ONCE, 4004 );	//�������΂����� 
}
function miscb_TrapIn4004AtRam()
{
	print( "�������΂�����!\n" );

	mis_BannerInfoTimer("miscb_BunnerInfoRemove",7.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00231" );	//�������I �Ȃ�Čł����Ȃ񂾁I 
	

	if(scr_GetMonumentPowerColor( "gfmo_003" ) == POWER_COLOR_WHITE )
	{
	scr_BotPlayerSpawnToMonument( 115, "gfmo_003" );
	suspend();
	scr_BotPlayerSetActionTrigger( 115, true );
	}
	else
	{
		scr_BotPlayerSpawnToWorld( 115, -6101.808594, 252.607819, 2250.324951, 110.0 );	//���ɂ����ʒu���� 
		suspend();
		scr_BotPlayerSetActionTrigger( 115, true );
	}
	scr_SetTimerCallback( "miscb_CheckRamState", 2015, CB_TYPE_ONCE, 2.0 );	//�܂����̏�ԊĎ� 
}
gRamInfo <- 0;
function miscb_CheckRamState()
{
	print( "�܂邽�͗����Ă��邩�H!\n" );
	//�����܂邽����������Ă���΃C�x���g 
	
	if( scr_GetGimmickBuildState( "gmon01_002" ) == GIMMICK_BUILD_FREE )
	{
		scr_RemoveScene( 810, true );
		suspend();
		scr_CreateSceneEffect( 810, "Ccam02c", -13157.0, 450.0, -2800.0, -85.0 );
		
		//��� 
		if(gRamInfo == 0)
		{
			scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
			gRamInfo = 1;
			mis_SetRebirthTimeLast();	//���X�|�[�����Ԓ��� 
			
			//�{�b�g�̏�Ԃ�J�� 
			scr_BotPlayerEnableInterruptActionMode( 106, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 107, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 108, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 109, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 113, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 114, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );

			scr_BotPlayerEnableInterruptActionMode( 100, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 101, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			
			scr_BotPlayerEnableInterruptActionMode( 201, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 202, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 203, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 204, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 205, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 206, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 207, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 208, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 209, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 210, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			//////////////////////////////////////////////////////////////////////////////////////
		}
//		mis_BannerInfoTimer("miscb_BunnerInfoRemove",10.0);	//�o�i�[���폜���� 
		scr_OpenMissionExpainText( 0, "#TXTBA00211" );	//�����I�������U�镺����������Ă���I�����܂Ŏ���Ă����悤�I 
		scr_RemoveCallbackFromId( 2015 );	//miscb_CheckRamState 
		suspend();
		scr_SetTimerCallback( "miscb_CheckRamState", 2015, CB_TYPE_ONCE, 2.0 );	//�܂����̏�ԊĎ� 
	}
	else
	{
		if(scr_GetGimmickBuildState( "gmon01_002" ) == GIMMICK_BUILD_COMPLETE)
		{
			mis_BannerInfoTimer("miscb_BunnerInfoRemove",25.0);	//�o�i�[���폜���� 
			scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
			scr_OpenMissionExpainText( 0, "#TXTBA00221" );	//�U�镺�킪�����I����ň�C�ɏ����Ԃ��󂹁I 	
			
			scr_BotPlayerEnableInterruptActionMode( 110, SCR_ACTION_MODE_DEFENSE, 56000, -1.0 );
			scr_BotPlayerEnableInterruptActionMode( 111, SCR_ACTION_MODE_DEFENSE, 56001, -1.0 );
			
		}
		else
		{
			scr_RemoveScene( 810, true );
			scr_RemoveCallbackFromId( 2015 );	//miscb_CheckRamState 
			suspend();
			scr_SetTimerCallback( "miscb_CheckRamState", 2015, CB_TYPE_ONCE, 2.0 );	//�܂����̏�ԊĎ� 
		}
	}
}
gBreakGate <- 0;
gSkillEventState <- 0;
function miscb_BreakGate()
{
	print( "����ꂽ!\n" );
	scr_RemoveScene( 810, true );
	scr_RemoveCallbackFromId( 2015 );	//miscb_CheckRamState 

	mis_SetRebirthTimeAtFinal();	//���X�|�[�����Ԃ𒲐� 

	//�G����̒��S�ɂ��߂郂�[�h�`�F���W 
	gBreakGate = 1;
	mis_ChangeEnemyMode();
	

	//�`�[���X�L�������|�W�V�����g���b�v��ݒu 
	scr_RegistTrapSphere( 991, -13711.969727, 134.749557, -3056.56,       550.0 );	//���O 
	scr_SetTrapInCallback( "miscb_TrapIn991AtTeam", 9919, CB_TYPE_ALWAYS, 991 );	//�`�[���X�L�� 

	//�P�b��ɉ���g���b�v�C�����ĂȂ����������֗U���o�i�[�C���t�H�B�C�����Ă���CB�폜 
	scr_SetTimerCallback( "miscb_BunnerAboutBreakCastle", 9920, CB_TYPE_ONCE, 1.0 );

}
function miscb_BunnerAboutBreakCastle()
{
	print( "���j�󎞂ɏ��̉����ɂ����̂Ńo�i�[�ŗU��\n" );
	gSkillEventState = 1;
	//���j��B�^���[���� 
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",12.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00111" );	//����ꂽ���I
	mis_Wait( 0.5 );
	
	scr_BotPlayerDisableInterruptActionMode( 106 );
	scr_BotPlayerDisableInterruptActionMode( 107 );
	scr_BotPlayerDisableInterruptActionMode( 108 );
	scr_BotPlayerDisableInterruptActionMode( 109 );
	scr_BotPlayerDisableInterruptActionMode( 113 );
	scr_BotPlayerDisableInterruptActionMode( 114 );
	
}
gTeam <- 0;
function miscb_TrapIn991AtTeam()
{
	print( "���t�߂Ƀg���b�v�C��\n" );

	if(scr_PlayerGetLife() != 0)
	{
		if(gSkillEventState == 0)
		{
			print( "���j�󎞂ɏ��t�߂ɂ����̂ŃC�x���g\n" );
			scr_CloseMissionExpainText( 0 );			
			scr_RemoveCallbackFromId( 9920 );	//miscb_BunnerAboutBreakCastle 
			scr_SetInputDisable( SCR_INPUT_CAMERA );	//�J�������֎~ 
			scr_SetInputDisable( SCR_INPUT_MOVE );	//�ړ����֎~ 
			scr_SetInputDisable( SCR_INPUT_BUTTON );	// �������� �E�X�L�����֎~ 
			
			mis_Wait( 1.8 );	//������̃A�j���[�V����������� 
			gSkillEventState = 2;	//��x���������t���O 
			mis_MassageDialog( "T000_32" );	//������Ⴀ�I���I�z���̒��ɏW�܂肾�������I�H 
			
			scr_ResetGameCameraDirection( -16140.387695, -4232.728516, false );
			scr_SetGameCameraAngleType( ANGLE_ZOOM_UP );	//�J�������Y�[���ɐݒ� 

			//�����ҋ@���̂���������� 
			mis_Wait( 0.3 );
			scr_BotPlayerSpawnToMonument( 201, "gcmoB_001" );
			scr_BotPlayerSpawnToMonument( 202, "gcmoB_001" );
			mis_Wait( 0.2 );
			scr_BotPlayerSpawnToMonument( 203, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 204, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 205, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 206, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 207, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 208, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 209, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 210, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 211, "gcmoB_001" );
			mis_Wait( 0.1 );
			scr_BotPlayerSpawnToMonument( 212, "gcmoB_001" );
			mis_Wait( 1.1 );
//			mis_Wait( 2.5 );	//������̃A�j���[�V����������� 
			mis_MassageDialog( "T000_31" );	//���b�Z�[�W�F�`�[���X�L���ł܂Ƃ߂ĂԂ��E�����I ���x���A�b�v�����邸�I 
			scr_PlayerAddExperience( 1.7 );	//�^���o���m 
			gTeam = 1;
			
			scr_BotPlayerDisableInterruptActionMode( 106 );
			scr_BotPlayerDisableInterruptActionMode( 107 );
			scr_BotPlayerDisableInterruptActionMode( 108 );
			scr_BotPlayerDisableInterruptActionMode( 109 );
			scr_BotPlayerDisableInterruptActionMode( 113 );
			scr_BotPlayerDisableInterruptActionMode( 114 );

			
			scr_OpenKeyHelp( SCR_KEY_HELP_TEAM_SKILL, -1.0 );	//�`�[���X�L�� Y 
			mis_BannerInfoTimer("miscb_BunnerInfoRemove",10.0);	//�o�i�[���폜���� 
			scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
			scr_OpenMissionExpainText( 0, "#TXTMA00301" );	//���Ԃ����邼�I

			
			scr_SetMessageCallback( "miscb_CastStartCharge", 2018, CB_TYPE_ONCE, MESSAGE_PLAYER_BEGIN_TEAM_SKILL );
			scr_SetMessageCallback( "miscb_StartCharge", 2019, CB_TYPE_ONCE, MESSAGE_PLAYER_START_TEAM_CHARGE );
			scr_SetMessageCallback( "miscb_EndCharge", 2020, CB_TYPE_ONCE, MESSAGE_PLAYER_END_TEAM_CHARGE );

			scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 

			scr_SetInputEnable( SCR_INPUT_CAMERA );	//�J�������֎~ 
			scr_SetInputEnable( SCR_INPUT_MOVE );	//�ړ����֎~ 
			scr_SetInputEnable( SCR_INPUT_BUTTON );	// �������� �E�X�L�����֎~ 
			
			scr_SetMessageCallback( "miscb_PlayerDeadAtTeamSkillTutorial", 2017, CB_TYPE_ALWAYS, MESSAGE_PLAYER_DEAD );	//���S�� 
		}
	}
	if(scr_PlayerGetLife() != 0)
	{
		if(gSkillEventState == 1)
		{
			print( "���ƂŃL�^�l\n" );
			scr_CloseMissionExpainText( 0 );
			gSkillEventState = 2;	//��x���������t���O 

			scr_ResetGameCameraDirection( -16140.387695, -4232.728516, false );
			scr_SetGameCameraAngleType( ANGLE_ZOOM_IN );	//�J�������Y�[���ɐݒ� 
			mis_Wait( 0.3 );	//������̃A�j���[�V����������� 


			mis_MassageDialog( "T000_31" );	//���b�Z�[�W�F�`�[���X�L���ł܂Ƃ߂ĂԂ��E�����I ���x���A�b�v�����邸�I 
			scr_PlayerAddExperience( 1.0 );	//�^���o���m 
			gTeam = 1;
			
			scr_OpenKeyHelp( SCR_KEY_HELP_TEAM_SKILL, -1.0 );	//�`�[���X�L�� Y 
			mis_BannerInfoTimer("miscb_BunnerInfoRemove",10.0);	//�o�i�[���폜���� 
			scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
			scr_OpenMissionExpainText( 0, "#TXTMA00301" );	//���Ԃ����邼�I
			
			scr_SetMessageCallback( "miscb_CastStartCharge", 2018, CB_TYPE_ONCE, MESSAGE_PLAYER_BEGIN_TEAM_SKILL );
			scr_SetMessageCallback( "miscb_StartCharge", 2019, CB_TYPE_ONCE, MESSAGE_PLAYER_START_TEAM_CHARGE );
			scr_SetMessageCallback( "miscb_EndCharge", 2020, CB_TYPE_ONCE, MESSAGE_PLAYER_END_TEAM_CHARGE );
			
			scr_SetMessageCallback( "miscb_PlayerDeadAtTeamSkillTutorial", 2017, CB_TYPE_ALWAYS, MESSAGE_PLAYER_DEAD );	//���S�� 
		}
	}
	if(scr_PlayerGetLife() != 0)
	{
		if(gSkillEventState == 3)
		{
			print( "����ł����l\n" );
			scr_CloseMissionExpainText( 0 );
			gSkillEventState = 2;	//��x���������t���O 
			mis_BannerInfoTimer("miscb_BunnerInfoRemove",6.0);	//�o�i�[���폜���� 
			scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
			scr_OpenMissionExpainText( 0, "#TXTBA00281" );	//�`�[���X�L���ŏ������|���I
			scr_OpenKeyHelp( SCR_KEY_HELP_TEAM_SKILL, -1.0 );	//�`�[���X�L�� Y 

			scr_RemoveCallbackFromId( 2018 );	//miscb_CastStartCharge 
			scr_RemoveCallbackFromId( 2019 );	//miscb_StartCharge 
			scr_RemoveCallbackFromId( 2020 );	//miscb_EndCharge 

			scr_SetMessageCallback( "miscb_CastStartCharge", 2018, CB_TYPE_ONCE, MESSAGE_PLAYER_BEGIN_TEAM_SKILL );
			scr_SetMessageCallback( "miscb_StartCharge", 2019, CB_TYPE_ONCE, MESSAGE_PLAYER_START_TEAM_CHARGE );
			scr_SetMessageCallback( "miscb_EndCharge", 2020, CB_TYPE_ONCE, MESSAGE_PLAYER_END_TEAM_CHARGE );
		}
	}
}
function miscb_PlayerDeadAtTeamSkillTutorial()
{
	print("���񂾂̂Ń��Z��()\n");
	gSkillEventState = 3;
}
function miscb_CastStartCharge()
{
	print("�S�R�ˌ��̉r�����n�߂��̂ŕ�����G�Ɍ�����()\n");

	scr_ResetGameCameraDirection( -16140.387695, -4232.728516, false );

	scr_BotPlayerDisableInterruptActionMode( 106 );
	scr_BotPlayerDisableInterruptActionMode( 107 );
	scr_BotPlayerDisableInterruptActionMode( 110 );
	scr_BotPlayerDisableInterruptActionMode( 111 );
	scr_BotPlayerDisableInterruptActionMode( 112 );
	suspend();
	scr_BotPlayerEnableInterruptActionMode( 106, SCR_ACTION_MODE_TRACKING, 3, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 107, SCR_ACTION_MODE_TRACKING, 3, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 110, SCR_ACTION_MODE_TRACKING, 3, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 111, SCR_ACTION_MODE_TRACKING, 3, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 112, SCR_ACTION_MODE_TRACKING, 3, -1.0 );

}
function miscb_StartCharge()
{
	print("�S�R���������̂ŃL�[�w���v�Ƃ������Ă����ȃR�[���o�b�N�폜()\n");
	scr_CloseKeyHelp();
	scr_CloseMissionExpainText( 0 );
	scr_RemoveCallbackFromId( 2018 );	//miscb_CastStartCharge 

	scr_BotPlayerDisableInterruptActionMode( 106 );
	scr_BotPlayerDisableInterruptActionMode( 107 );
	scr_BotPlayerDisableInterruptActionMode( 110 );
	scr_BotPlayerDisableInterruptActionMode( 111 );
	scr_BotPlayerDisableInterruptActionMode( 112 );

	//�G�̃X�|�[�����Ԃ�ύX���� 
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 70 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY,70 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 70 );

}
gCharge <- 0;
function miscb_EndCharge()
{
	print("�S�R�ˌ����I������̂ŁA�`���[�g���A�����I���ڍs����()\n");
	mis_Wait( 0.6 );
	mis_BannerInfoTimer("miscb_BunnerInfoRemove",16.0);	//�o�i�[���폜���� 
	scr_CreateSceneSound( 701, 850, 0.0, 0.0, 0.0 );
	scr_OpenMissionExpainText( 0, "#TXTBA00151" );
	scr_CreateSceneEffect( 886, "Ccam01c", -15948.404297, 106.000000, -4168.423340, -115.0 );
	gCharge = 1;
}





////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
function miscb_TrapIn4004()
{
	//�G���A4�ɓ����� 
	print( "in4004!\n" );
	mis_SetRebirthTimeLast();
	
	//�G�����ׂď�h�q���[�h�� 
	mis_ChangeEnemyMode();
}
function miscb_TrapOut4004()
{
	//�G���A4����o�� 
	print( "out4004!\n" );
	mis_SetRebirthTime();
	
	//�G�����ׂăt���[�� 
	mis_ReturnEnemyMode();
}
function mis_SetRebirthTime()
{
	print("�J�풼��`�U���J�n�܂ł̃��X�|�[�����Ԑݒ��!()\n");
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 2 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY, 2 );

	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_NORMAL, 5 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_PENALTY, 5 );
	
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 8 );
}
function mis_SetRebirthTimeLast()
{
	print("�U���J�n��̃��X�|�[�����Ԑݒ��!()\n");
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 8 );	//2012/02/23�@�S���W�ɁB 
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY, 8 );	//2012/02/23�@�S���W�ɁB 
	
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_NORMAL, 2 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_PENALTY, 2 );

	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 0 );
}
function mis_SetRebirthTimeAtCastleEvent()
{
	print("���@�g���o���`���j��̃��X�|�[�����Ԑݒ��!()\n");
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 13 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY, 13 );
	
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_PENALTY, 0 );

	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 22 );
}
function mis_SetRebirthTimeAtFinal()
{
	print("���j����̃��X�|�[�����Ԑݒ��!()\n");
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_PENALTY, 0 );
	
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_NORMAL, 0 );
	scr_SetRebirthTime( SCR_REBIRTH_TARGET_WHITE, SCR_REBIRTH_TYPE_PENALTY, 0 );

	scr_SetRebirthTime( SCR_REBIRTH_TARGET_BLACK, SCR_REBIRTH_TYPE_SPECIAL, 0 );
}
///////////////////////
function mis_ChangeEnemyMode()
{
	print( "�G�嗤�ɓ��B�������̓G�ݒ�ύX!\n" );

//	scr_BotPlayerEnableInterruptActionMode( 110, SCR_ACTION_MODE_DEFENSE, 26000, -1.0 );	//T01���x�� 
	scr_BotPlayerEnableInterruptActionMode( 111, SCR_ACTION_MODE_DEFENSE, 26000, -1.0 );	//t01���x�� 

	scr_BotPlayerEnableInterruptActionMode( 201, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );	//���O���x�� 
	scr_BotPlayerEnableInterruptActionMode( 202, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );	//���O���x�� 
	scr_BotPlayerEnableInterruptActionMode( 203, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );	//���O���x�� 
	scr_BotPlayerEnableInterruptActionMode( 204, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 205, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 206, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 207, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 208, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 209, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );
	scr_BotPlayerEnableInterruptActionMode( 210, SCR_ACTION_MODE_DEFENSE_CASTLE, -1, -1.0 );


	if(gBreakGate == 1)
	{
		print( "���j�󎞂̓G�ݒ�ύX!\n" );
//		scr_BotPlayerDisableInterruptActionMode( 110 );
		scr_BotPlayerDisableInterruptActionMode( 111 );

		scr_BotPlayerEnableInterruptActionMode( 201, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );	//������x�� 
		scr_BotPlayerEnableInterruptActionMode( 202, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 203, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 204, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 205, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 206, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 207, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 208, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 209, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 210, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 211, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
		scr_BotPlayerEnableInterruptActionMode( 212, SCR_ACTION_MODE_DEFENSE, 9999, -1.0 );
	}
}
function mis_ReturnEnemyMode()
{
	print( "�G�嗤����o�����̓G�ݒ�ύX!\n" );
	scr_BotPlayerDisableInterruptActionMode( 200 );
	scr_BotPlayerDisableInterruptActionMode( 201 );
	scr_BotPlayerDisableInterruptActionMode( 202 );
	scr_BotPlayerDisableInterruptActionMode( 203 );
	scr_BotPlayerDisableInterruptActionMode( 204 );
	scr_BotPlayerDisableInterruptActionMode( 205 );
	scr_BotPlayerDisableInterruptActionMode( 206 );
	scr_BotPlayerDisableInterruptActionMode( 207 );
	scr_BotPlayerDisableInterruptActionMode( 208 );
	scr_BotPlayerDisableInterruptActionMode( 209 );
	scr_BotPlayerDisableInterruptActionMode( 210 );

}
function miscb_GameSetWinWhite()
{
	//������ 
	print( "Game Set Win White!\n" );
	scr_RemoveScene( 886, true );
	scr_CloseMissionExpainText( 0 );
	scr_RemoveCallbackAll();
	scr_GameSetMissionClear();	


	mis_Wait( 4.0 );
	mis_MassageDialog( "T000_22" );

}
function miscb_GameSetWinBlack()
{
	//�s�k�� 
	print( "Game Set Win BLACK!\n" );
	scr_CloseMissionExpainText( 0 );
	scr_RemoveCallbackAll();
	scr_GameSetMissionClear();	

	mis_Wait( 4.0 );
	mis_MassageDialog( "T000_23" );

}
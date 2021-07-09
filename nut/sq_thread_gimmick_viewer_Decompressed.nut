/* XDASEA_Xm8R_SPsX */ 
//
//	GimmickViewer�̃V�[�P���X
//

function initGimmickViewer() {
	RunScriptFunction( SQ_THREAD_GAME, "startGimmickViewerThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}

function startGimmickViewerThread() {

	// �M�~�b�N���[�h 
	LoadGimmickAll();
	suspend();

	// GimmickViewer(Body��talent)�̐��� 
	CreateGimmickViewer();
						
	local windowSample_ = WindowBase( 64, 608, 256, 64 );
	windowSample_.setWindowText( "Title Press BACK to Abort" );
	while( true ) {
		suspend();
		
		windowSample_.exec();
		windowSample_.draw();
		grahicsMouse();
		
		if (DebugPadIsTrigger(::PAD_BACK) || ihp.GetGameKeyboard().IsPush( 'X' ) )
		{
			break;
		}
	}

	DestroyGimmickViewer(); // Body��talent�̔j�� 

	// �M�~�b�N�j�� 
	DestroyGimmickAll();

	debugMenuWakeup();
}

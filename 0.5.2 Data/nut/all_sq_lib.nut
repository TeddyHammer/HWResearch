/* XDASEA_Xm8R_SPsX */ 

function JsonLoadAchievementAll() {
	// �A�`�[�u�����g�̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "Achievement,StaticParam", "json/achievement/AchievementParam.json" )
}



IsDaneLoadActorFunction <- false ;	// ActionFuncs
gActorFuncsBankId <- 10;



class ActorFuncsResFileItem {
	jsonFileName_ = "";
	
	constructor( json_file_name ) {
		jsonFileName_ = json_file_name;
	}
	
	function loadActorFuncs()
	{
		local res_filename = "json/action/" + jsonFileName_ + ".json";
		ActorFuncsLoadRequest( res_filename, jsonFileName_ );
	}
}

class DemoFuncsResFileItem {
	jsonFileName_ = "";
	
	constructor( json_file_name ) {
		jsonFileName_ = json_file_name;
	}
	
	function loadActorFuncs()
	{
		local res_filename = "json/demo/" + jsonFileName_ + ".json";
		ActorFuncsLoadRequest( res_filename, jsonFileName_ );
	}
}

class GimmickFuncsResFileItem {
	jsonFileName_ = "";
	
	constructor( json_file_name ) {
		jsonFileName_ = json_file_name;
	}
	
	function loadActorFuncs()
	{
		local res_filename = "json/gimmick/" + jsonFileName_ + ".json";
		ActorFuncsLoadRequest( res_filename, jsonFileName_ );
	}
}

gActorFuncsResFileList <- [
	ActorFuncsResFileItem( "player_common" )
	ActorFuncsResFileItem( "player_warrior" )
	ActorFuncsResFileItem( "player_cleric" )
	ActorFuncsResFileItem( "player_mage" )
	ActorFuncsResFileItem( "player_berserker" )
	ActorFuncsResFileItem( "player_engineer" )
	ActorFuncsResFileItem( "player_sylph" )
	ActorFuncsResFileItem( "monster_boss01" )
	ActorFuncsResFileItem( "monster_boss02" )
	ActorFuncsResFileItem( "monster_boss03" )
	ActorFuncsResFileItem( "monster_def_W01" )
	ActorFuncsResFileItem( "monster_def_B01" )
	ActorFuncsResFileItem( "monster_def_C01" )
	ActorFuncsResFileItem( "monster_def_C02" )
	ActorFuncsResFileItem( "monster_def_M01" )
	ActorFuncsResFileItem( "monster_def_M02" )
	ActorFuncsResFileItem( "king" )
	DemoFuncsResFileItem( "demo_ac" )
	GimmickFuncsResFileItem( "gimmick_common" )
	GimmickFuncsResFileItem( "gimmick_monument" )
	GimmickFuncsResFileItem( "gimmick_volcano" )
	GimmickFuncsResFileItem( "gimmick_ballista" )
	GimmickFuncsResFileItem( "gimmick_bridge" )
	GimmickFuncsResFileItem( "gimmick_cannon" )
	GimmickFuncsResFileItem( "gimmick_ladder" )
	GimmickFuncsResFileItem( "gimmick_landingPoint" )
	GimmickFuncsResFileItem( "gimmick_launchPad" )
	GimmickFuncsResFileItem( "gimmick_castle_gate" )
	//GimmickFuncsResFileItem( "gimmick_fish" )
	//GimmickFuncsResFileItem( "gimmick_raft" )
	GimmickFuncsResFileItem( "gimmick_doodlebug" )
	GimmickFuncsResFileItem( "gimmick_bomb_stone" )
	GimmickFuncsResFileItem( "gimmick_quetzal" )
	GimmickFuncsResFileItem( "gimmick_tornado" )
	GimmickFuncsResFileItem( "gimmick_windtrap" )
	GimmickFuncsResFileItem( "gimmick_sanctuary" )
	GimmickFuncsResFileItem( "gimmick_pillarBomb" )
	GimmickFuncsResFileItem( "gimmick_statue" )
	GimmickFuncsResFileItem( "gimmick_ice_wall" )
	GimmickFuncsResFileItem( "gimmick_castle_barr" )
	GimmickFuncsResFileItem( "gimmick_batt_ram" )
	GimmickFuncsResFileItem( "gimmick_keep_out" )
	GimmickFuncsResFileItem( "gimmick_spinningWind" )
	GimmickFuncsResFileItem( "gimmick_capture" )
	GimmickFuncsResFileItem( "gimmick_cyclone" )
	GimmickFuncsResFileItem( "gimmick_robot" )
	GimmickFuncsResFileItem( "gimmick_cru_rocket" )
]

class ActorFuncsItem {
	entryText_ = "";
	resList_ = [];
	
	constructor( entry_text, res_list ) {
		entryText_ = entry_text;
		resList_ = res_list;
	}
	
	function entry()
	{
		foreach( res_text in resList_ ) {
			// ActorFuncsEntry( gActorFuncsBankId, entryText_, res_text, false );
			while (false == ActorFuncsEntryJob( gActorFuncsBankId, entryText_, res_text, false ))
			{
				suspend();
			}
		}
		
		while (0 < ActorFuncsEntryJobCount())
		{
			suspend();
		}
	}
}


// �A�N�V�����R�}���h�̃t�@�C���ǉ��͂����� sq_lib_action_funcs ->all_sq_lib
gActorFuncsList <- [
	ActorFuncsItem( "player_warrior",			[ "player_common", "player_warrior" ] )
	ActorFuncsItem( "player_cleric",			[ "player_common", "player_cleric" ] )
	ActorFuncsItem( "player_mage",				[ "player_common", "player_mage" ] )
	ActorFuncsItem( "player_berserker",			[ "player_common", "player_warrior", "player_berserker" ] )
	ActorFuncsItem( "player_engineer",			[ "player_common", "player_cleric", "player_engineer" ] )
	ActorFuncsItem( "player_sylph",				[ "player_common", "player_mage", "player_sylph" ] )

	// �{�X 
	ActorFuncsItem( "boss01_warrior",	[ "player_common"
		, "player_warrior", "monster_boss01" ] )
	ActorFuncsItem( "boss01_cleric",	[ "player_common"
		, "player_cleric", "monster_boss01"  ] )
	ActorFuncsItem( "boss01_mage",		[ "player_common"
		, "player_mage", "monster_boss01" ] )
	ActorFuncsItem( "boss01_berserker",	[ "player_common"
		, "player_warrior", "player_berserker", "monster_boss01" ] )
	ActorFuncsItem( "boss01_engineer",	[ "player_common"
		, "player_cleric", "player_engineer", "monster_boss01"  ] )
	ActorFuncsItem( "boss01_sylph",		[ "player_common"
		, "player_mage", "player_sylph", "monster_boss01" ] )

	ActorFuncsItem( "boss02_warrior",	[ "player_common"
		, "player_warrior", "monster_boss02" ] )
	ActorFuncsItem( "boss02_cleric",	[ "player_common"
		, "player_cleric", "monster_boss02"  ] )
	ActorFuncsItem( "boss02_mage",		[ "player_common"
		, "player_mage", "monster_boss02" ] )
	ActorFuncsItem( "boss02_berserker",	[ "player_common"
		, "player_warrior", "player_berserker", "monster_boss02" ] )
	ActorFuncsItem( "boss02_engineer",	[ "player_common"
		, "player_cleric", "player_engineer", "monster_boss02"  ] )
	ActorFuncsItem( "boss02_sylph",		[ "player_common"
		, "player_mage", "player_sylph", "monster_boss02" ] )

	ActorFuncsItem( "boss03_warrior",	[ "player_common"
		, "player_warrior", "monster_boss03" ] )
	ActorFuncsItem( "boss03_cleric",	[ "player_common"
		, "player_cleric", "monster_boss03"  ] )
	ActorFuncsItem( "boss03_mage",		[ "player_common"
		, "player_mage", "monster_boss03" ] )
	ActorFuncsItem( "boss03_berserker",	[ "player_common"
		, "player_warrior", "player_berserker", "monster_boss03" ] )
	ActorFuncsItem( "boss03_engineer",	[ "player_common"
		, "player_cleric", "player_engineer", "monster_boss03"  ] )
	ActorFuncsItem( "boss03_sylph",		[ "player_common"
		, "player_mage", "player_sylph", "monster_boss03" ] )

	ActorFuncsItem( "king",						[ "player_common", "player_cleric", "player_mage", "player_warrior", "king" ] )
	ActorFuncsItem( "demo_ac",					[ "player_common", "demo_ac" ] )
	// Wave�p�̓���G 
	ActorFuncsItem( "monster_def_W01",				[ "player_common", "player_warrior", "monster_def_W01"] )
	ActorFuncsItem( "monster_def_B01",				[ "player_common", "player_berserker", "monster_def_B01"] )
	ActorFuncsItem( "monster_def_C01",				[ "player_common", "player_cleric", "monster_def_C01"] )
	ActorFuncsItem( "monster_def_C02",				[ "player_common", "player_cleric", "monster_def_C02"] )
	ActorFuncsItem( "monster_def_M01",				[ "player_common", "player_mage", "monster_def_M01"] )
	ActorFuncsItem( "monster_def_M02",				[ "player_common", "player_mage", "monster_def_M02"] )

	ActorFuncsItem( "gimmick_monument",			[ "gimmick_common", "gimmick_monument" ] )
	ActorFuncsItem( "gimmick_volcano",			[ "gimmick_common", "gimmick_volcano" ] )
	ActorFuncsItem( "gimmick_ballista",			[ "gimmick_common", "gimmick_ballista" ] )
	ActorFuncsItem( "gimmick_bridge",			[ "gimmick_common", "gimmick_bridge" ] )
	ActorFuncsItem( "gimmick_cannon",			[ "gimmick_common", "gimmick_cannon" ] )
	ActorFuncsItem( "gimmick_ladder",			[ "gimmick_common", "gimmick_ladder" ] )
	ActorFuncsItem( "gimmick_landingPoint",		[ "gimmick_common", "gimmick_landingPoint" ] )
	ActorFuncsItem( "gimmick_launchPad",		[ "gimmick_common", "gimmick_launchPad" ] )
	ActorFuncsItem( "gimmick_castle_gate",		[ "gimmick_common", "gimmick_castle_gate" ] )
	//ActorFuncsItem( "gimmick_fish",			[ "gimmick_common", "gimmick_fish" ] )
	//ActorFuncsItem( "gimmick_raft",			[ "gimmick_common", "gimmick_raft" ] )
	ActorFuncsItem( "gimmick_doodlebug",		[ "gimmick_common", "gimmick_doodlebug" ] )
	ActorFuncsItem( "gimmick_bomb_stone",		[ "gimmick_common", "gimmick_bomb_stone" ] )
	ActorFuncsItem( "gimmick_quetzal",			[ "gimmick_common", "gimmick_quetzal" ] )
	ActorFuncsItem( "gimmick_tornado",			[ "gimmick_common", "gimmick_tornado" ] )
	ActorFuncsItem( "gimmick_windtrap",			[ "gimmick_common", "gimmick_windtrap" ] )
	ActorFuncsItem( "gimmick_sanctuary",		[ "gimmick_common", "gimmick_sanctuary" ] )
	ActorFuncsItem( "gimmick_pillarBomb",		[ "gimmick_common", "gimmick_pillarBomb" ] )
	ActorFuncsItem( "gimmick_statue",			[ "gimmick_common", "gimmick_statue" ] )
	ActorFuncsItem( "gimmick_ice_wall",			[ "gimmick_common", "gimmick_ice_wall" ] )
	ActorFuncsItem( "gimmick_castle_barr",		[ "gimmick_common", "gimmick_castle_barr" ] )
	ActorFuncsItem( "gimmick_batt_ram",			[ "gimmick_common", "gimmick_batt_ram" ] )
	ActorFuncsItem( "gimmick_keep_out",			[ "gimmick_common", "gimmick_keep_out" ] )
	ActorFuncsItem( "gimmick_spinningWind",		[ "gimmick_common", "gimmick_spinningWind" ] )
	ActorFuncsItem( "gimmick_capture",			[ "gimmick_common", "gimmick_capture" ] )
	ActorFuncsItem( "gimmick_cyclone",		[ "gimmick_common", "gimmick_cyclone" ] )
	ActorFuncsItem( "gimmick_robot",		[ "gimmick_common", "gimmick_robot" ] )
	ActorFuncsItem( "gimmick_cru_rocket",		[ "gimmick_common", "gimmick_cru_rocket" ] )
]


function LoadActorFunction() {
	
	if(IsDaneLoadActorFunction)
		return ;
	IsDaneLoadActorFunction = true;

	ActorFuncsClearUniqueId();
	
	// gActorFuncsBankId�œo�^�������̂����ׂč폜 
	ActorFuncsRemove( gActorFuncsBankId );
	
	// �j��
	ActorFuncsDestroyRequest();
	
	// �j��I���҂�
	while ( false == ActorFuncsIsDestroyComplete() )
	{
		suspend();
	}
	
	suspend();
	
	// ���̌ナ�\�[�X���[�h 
	foreach( item in gActorFuncsResFileList ) {
		item.loadActorFuncs();
	}
	
	// ���[�h�I���҂�
	while ( false == ActorFuncsIsLoadComplete() )
	{
		suspend();
	}
	
	foreach( item in gActorFuncsList ) {
		item.entry();
	}
	
	ActorFuncsCreateUniqueId();

}



function JsonLoadAudioAll() {
	// �I�[�f�B�I�n��̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "Audio,StaticParam", "json/audio/AudioListenerParam.json" )
	JsonSerializeLoadFromFile( "GameAudio,StaticParam", "json/audio/GameAudioParam.json" )
}

function InitializeGameAudio() {
	// �Q�[���I�[�f�B�I��������
	GameAudioInitialize();
}

function JsonLoadBotAll() {
	// BOT�Z�b�e�B���O�����[�h
	JsonSerializeLoadFromFile( "BotSetting,StaticParam", "json/bot/BotSetting.json" )
}

function JsonLoadCampaignAll() {
	// �L�����y�[���p�b�P�[�W�����[�h
//	JsonSerializeLoadFromFile( "Campaign,StaticParam", "json/campaign/JsonCampaign.json" )
	CampaignBresLoadRequestAll();
	
	// ���[�h�I���҂�
	while ( false == CampaignBresIsLoadComplete() )
	{
		suspend();
	}
}

function JsonLoadCoopAll() {
	// COOP�ݒ�p�̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "CoopSetting,StaticParam", "json/coop/CoopSetting.json" )
}




IsDaneLoadCharacterAll  <- false ;	// �L�����N�^�[



// �L�����N�^�|���f���ƃ��[�V������ǂݍ��� 
function LoadCharacterAll() {

	if(IsDaneLoadCharacterAll)
		return ;
	IsDaneLoadCharacterAll = true;
	
	JsonSerializeLoadFromFile( "CharacterModelDetail,StaticParam", "character/CharacterModelDetail.json" )

	// �L�������f��
	IncludeScriptFile( "character\\characterBresFileList.nut" );
	IncludeScriptFile( "character\\bodyRrmFileList.nut" );

	// ���[�V���� 
	IncludeScriptFile( "motion\\motionBresFileList.nut" );
	IncludeScriptFile( "motion\\player.nut" );
	IncludeScriptFile( "motion\\tplayer.nut" );

	foreach( index, assign_anime in gMotionFileList_tplayer ) {
		gMotionFileList_player.push( assign_anime );
	}

	// ���f�����[�h
	foreach( index, item in gCharacterBresFileList ) {
		CharaModelBresLoadRequest( item + ".bres" );
	}
	
	// ���[�V�������[�h 
	foreach( index, item in gMotionBresFileList ) {
		CharaAnimeBresLoadRequest( item + ".bres" );
	}
	
	// ���[�h�I���҂�
	while ( false == CharaBresIsLoadComplete() )
	{
		suspend();
	}
	
	// Body�ɑ΂��ăA�j���[�V���������蓖�Ă� 
	foreach( index, item in gBodyRrmFileList ) {
		CharaModelAnimeSetting( item, gMotionFileList_player );
	}
}

// �L�����N�^�|���f���ƃ��[�V������ǂݍ��� 
function DestroyCharacterAll() {
	CharaBresDestroyRequest();
	while ( false == CharaBresIsDestroyComplete() )
	{
		suspend();
	}
	IsDaneLoadCharacterAll = false;
}

// CharaModelAnimeSetting()
// model_name			���蓖�Ă�rrm��(�g���q�Ȃ�) 
// assign_anime_list	���蓖�Ă����A�j�����X�g 

function CharaModelAnimeSetting( model_name, assign_anime_list )
{
	// bres�t�@�C��������\������ 
	local model_rrm = model_name + ".rrm";

	print( "call: CharaModelAnimeSetting() " + model_rrm + " " + assign_anime_list.len() + " animes\n" );
	
	if (true == CharaModelAnimeSpec( model_rrm, assign_anime_list.len() )) {
		foreach( index, assign_anime in assign_anime_list ) {
			CharaModelAnimeAssign( model_rrm, index, assign_anime, assign_anime + ".rra" );
		}
	}
}


function JsonLoadContentsAll() {
	// �Q�[���S�ʂ�JSON�����[�h
	JsonSerializeLoadFromFile( "Contents,StaticParam", "json/contents/ContentsTable.json" )
}

function JsonLoadDocsAll() {

	// DialogDocs�����[�h����
	JsonSerializeLoadFromFile( "DialogDocs,StaticParam", "json/docs/dialogDocs.json" )

	suspend();
}




function JsonLoadGameAll() {
	// �Q�[���S�ʂ�JSON�����[�h
	JsonSerializeLoadFromFile( "GameEnvironment,StaticParam", "json/game/GameEnvironment.json" )
	JsonSerializeLoadFromFile( "GameEnvironment,StaticParam", "json/game/KeyboardCustomize.json" )

	// 2014/01/31	Pollux DynamicConfiguration�ɑΉ�����܂ŁA�v���[���g�̓p�b�P�[�W�Ɋ܂߂�
	JsonSerializeLoadFromFile( "Presentation,StaticParam", "json/Presentation/Presentation.json" )
	// 2014/01/31	Pollux DynamicConfiguration�ɑΉ�����܂ŁA�p�[�~�b�V�����̓p�b�P�[�W�Ɋ܂߂�
	JsonSerializeLoadFromFile( "DLCPermission,StaticParam", "json/Permission/DLCPermissionSt1.json" )
}

function InitializeGameRule() {
	// �Q�[�����[����������
	GameRuleInitialize();
}



IsDaneLoadGfxAll        <- false ;	// �G�t�F�N�g



function LoadGfxAll() {

	if(IsDaneLoadGfxAll)
		return ;
	IsDaneLoadGfxAll = true;


	// effectBres���X�g����荞��
	IncludeScriptFile( "effect\\effectBresFileList.nut" );
	
	// SerialId�ȂǏ����� 
	GfxInitialize();
	
	// ���\�[�X���[�h 
	foreach( index, item in gEffectBresFileList ) {
		GfxBresLoadRequest( item + ".bres" );
	}
	
	// ���[�h�I���҂�
	while ( false == GfxBresIsLoadComplete() )
	{
		suspend();
	}

	// ���[�h��̃p�����[�^��JSON�փ��[�h 
	foreach( index, item in gEffectBresFileList ) {
		GfxParamLoad( item );
	}

	// JSON�����ɔF�� 
	GfxParamEntry();
}

function ReloadGfxAll() {

	// �G�t�F�N�g�̔j�� 
	StageEffectDestroy();
	for (local i=0; i<8; ++i) { suspend(); }

	// ���ׂď��� 
	GfxEraseAll();
	for (local i=0; i<8; ++i) { suspend(); }
	
	// �R���o�[�g 
	system( "W:\\Gemini\\Graphics\\effect\\00_effect_convert_win32.bat" );
	
	// ���\�[�X���� 
	GfxBresDestroyRequest();
	while ( false == GfxBresIsDestroyComplete() )
	{
		suspend();
	}
	
	LoadGfxAll();
	for (local i=0; i<8; ++i) { suspend(); }

	// �G�t�F�N�g�z�u 	
	StageEffectArrange();
	for (local i=0; i<8; ++i) { suspend(); }
}

function ReloadGfxAllFromMenuItem() {
	ReloadGfxAll();
	DebugChangeForcus("None");
}


// �M�~�b�N 
IsDaneLoadGimmickAll		<- false ;
IsDaneLoadGimmickJsonAll	<- false ;


// ��̃M�~�b�N���X�g 
gStageGimmickFileList <- [];
gStageDecoGimmickFileList <- [];
gStageGimmickSkipList <- [];
gStageGimmickReplaceList <- [];
gModelNumberIndexReplaceList <- [];

// �M�~�b�N�̒u�������ݒ������ 
SetGimmickOriginal();

// �O�̂��ߋ�̊֐���p�ӂ��Ă��� 
function GimmickSetting( stage_seed ) {
}

gFlagIsDaneLoadGimmickJsonAll <- false;

function JsonLoadGimmickAll() {
	if (gFlagIsDaneLoadGimmickJsonAll==false) {
		gFlagIsDaneLoadGimmickJsonAll = true;

		// �M�~�b�N�̃p�����[�^�����[�h 
		JsonSerializeLoadFromFile( "Gimmick,StaticParam", "json/gimmick/GimmickModelParam.json" )

		// �M�~�b�N�̃p�����[�^�����[�h 
		JsonGimmickParamDSPW(true);		// property wapper ���X�L�b�v������ 
		JsonSerializeLoadFromFile( "Gimmick,StaticParam", "json/gimmick/GimmickBoneParam.json" )
		JsonGimmickParamDSPW(false);	// property wapper ������������ 
	}
}

function LoadGimmickAll() {

	if(IsDaneLoadGimmickAll)
		return ;
		
	IsDaneLoadGimmickAll = true;

	// �S�M�~�b�N���\�[�X�폜 
	GimmickBresDestroyRequest();

	// �M�~�b�N�̒u�������ݒ������ 
	SetGimmickOriginal();
	
	// �폜�҂� 
	while ( false == GimmickBresIsDestroyComplete() ) {
		suspend();
	}
	
	// �ꕔ�̃M�~�b�N�̎w�肪����� 
	if (0<gStageGimmickFileList.len()) {
		// ���f���ǂݍ��݃X�L�b�v  
		if (gStageGimmickSkipList.len()) {
			foreach( r_index, r_item in gStageGimmickSkipList ) {
				foreach( index, item in gStageGimmickFileList ) {
					if (item == r_item) {
						gStageGimmickFileList.remove(index);
						break;
					}
				}
			}
		}

		// ���f�������ւ�������Ȃ烊�v���[�X���Ă� 
		if (gStageGimmickReplaceList.len()) {
			foreach( index, item in gStageGimmickReplaceList ) {
				SetGimmickReplace( item[0], item[1] );
			}
		}

		// �M�~�b�N���[�h
		foreach( index, item in gStageGimmickFileList ) {
			GimmickBresLoadRequest( item );
		}
		// �f�R���[�V�����M�~�b�N���[�h 
		foreach( index, item in gStageDecoGimmickFileList ) {
			GimmickReplaceBresLoadRequest( item[0], item[1] );
		}
		// ���f���ԍ��u������ 
		foreach( index, item in gModelNumberIndexReplaceList ) {
			SetModelNumberIndex( item[0], item[1] );
		}

		// ����̂��߃t���O������ 
		gStageDecoGimmickFileList <- [];
		gStageGimmickSkipList <- [];
		gStageGimmickReplaceList <- [];
		gModelNumberIndexReplaceList <- [];
	} else {
		// �S�M�~�b�N 
		IncludeScriptFile( "gimmick\\gimmickFileList.nut" );

		// �M�~�b�N���[�h
		foreach( index, item in gGimmickFileList ) {
			GimmickBresLoadRequest( item );
		}
	}
	
	// ���[�h�I���҂�
	while ( false == GimmickBresIsLoadComplete() ) {
		suspend();
	}
	
}

function DestroyGimmickAll() {
	GimmickBresDestroyRequest();
	while ( false == GimmickBresIsDestroyComplete() ) {
		suspend();
	}
	IsDaneLoadGimmickAll = false;
}


IsDaneJsonLoadItemAll <- false ;	


function JsonLoadItemAll() {

	if(IsDaneJsonLoadItemAll)
		return ;
	IsDaneJsonLoadItemAll = true;



	// �A�C�e���̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "Item,StaticParam", "json/item/ItemSeedParam.json" )
	JsonSerializeLoadFromFile( "Item,StaticParam", "json/item/ItemSeedParamDLC.json" )
	JsonSerializeLoadFromFile( "Item,StaticParam", "json/item/ItemSeedParamBOT.json" )
	JsonSerializeLoadFromFile( "Item,StaticParam", "json/item/ItemSeedParamDEBUG.json" )
	JsonSerializeLoadFromFile( "Buff,StaticParam", "json/item/BuffSeedParam.json" )
	JsonSerializeLoadFromFile( "Condition,StaticParam", "json/item/ItemCondition.json" )

	JsonSerializeLoadFromFile( "ItemCustomize,StaticParam", "json/item/ItemCustomize.json" )	
	JsonSerializeLoadFromFile( "ItemSetting,StaticParam", "json/item/ItemSetting.json" )
	JsonSerializeLoadFromFile( "ItemPackage,StaticParam", "json/item/ItemPackage.json" )
	JsonSerializeLoadFromFile( "ItemSpinner,StaticParam", "json/item/ItemSpinner.json" )
	
	JsonSerializeLoadFromFile( "ItemCatalog,StaticParam", "json/catalog/ItemCatalog.json" )

	// 2012/11/21	�A�C�e���f�[�^��UniqueID����
	InitializeItemDataUniqueID();
}

function JsonLoadLobbyAll() {
	// ���r�[�ݒ�p�̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "Lobby,StaticParam", "json/lobby/LobbySetting.json" )
}


function JsonLoadMedalRankAll() {
	// �M�́E�����N�p�����[�^�����[�h
	JsonSerializeLoadFromFile( "MedalRank,StaticParam", "json/rank/MedalRankParam.json" )
}


function JsonLoadMenuParam() {

	JsonSerializeLoadFromFile( "MenuParam,StaticParam", "json/menu/menuButtonParam.json" )

	suspend();
}




function JsonLoadPlayerAll() {
	// �v���C���[�̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerHitParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerDieParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerJobParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerDamageParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerBoneInfo.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerEffectParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/CameraShakeParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerSkillParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerBasicParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerHeroPopupParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerLevelUpParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerPresetParam.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/PlayerClassSetting.json" )
	JsonSerializeLoadFromFile( "Player,StaticParam", "json/player/SkillObtainingPattern.json" )
	JsonSerializeLoadFromFile( "Demo,StaticParam", "json/demo/JsonDemo.json" )
	JsonSerializeLoadFromFile( "Debug,StaticParam", "json/debug/DebugViewer.json" )
}

function CreatePlayerAll( seed_index ) {
	local game_seed = GameSeed();
	game_seed.popSeed( seed_index );

	// Human����v���C���[�̂ݐ�ɏo�� �iLocalRemote�֌W�Ȃ��j 
	for (local i=0; i<GAME_PLAYER_MAX; ++i)
	{
		local player_seed = game_seed.getPlayerSeed(i);
		if (player_seed==null || !player_seed.isEnableSeed_) {
			if(player_seed==null) print("?????? WARNING : player_seed==null\n");
			if(!player_seed.isEnableSeed_) print("?????? WARNING : !player_seed.isEnableSeed_\n");
			continue;
		}

		if (player_seed.isInputHuman_) {
			CreatePlayerFromPlayerSeed( player_seed );
			SetPlayer(i);
		}
	}
	
	// ����ȊO���o�� 
	local time = 0;
	local count = 0;
	local next_power_color = POWER_COLOR_WHITE;
	local next_index = [ 0 , 0 ];
	
	while( 1 )
	{
		local created = false;
		for( local i = next_index[next_power_color]; i < GAME_PLAYER_MAX; i++ )
		{
			local player_seed = game_seed.getPlayerSeed(i);
			if( player_seed==null || !player_seed.isEnableSeed_ || !player_seed.isEntrySeed_ )
			{
				continue;
			}
			
			if( !player_seed.isInputHuman_ && player_seed.powerColor_==next_power_color )
			{
				local time_now = 300 * count / game_seed.playerEntryMax_;
				for (; time<time_now; ++time)
				{
					suspend();
				}
				
				CreatePlayerFromPlayerSeed( player_seed );
				SetPlayer(i);
				
				count++;
				created = true;
				
				next_index[next_power_color] = i+1;
				break;
			}
		}
		
		if( !created )
		{	// �������݂��Ȃ�
			next_index[next_power_color] = -1;
		}
		
		if( next_index[0] < 0 && next_index[1] < 0 )
		{	// �I��
			break;
		}
		
		switch( next_power_color )
		{
		case POWER_COLOR_BLACK:
			if( next_index[POWER_COLOR_WHITE] >= 0 )
			{
				next_power_color = POWER_COLOR_WHITE;
			}
			break;
		case POWER_COLOR_WHITE:
			if( next_index[POWER_COLOR_BLACK] >= 0 )
			{
				next_power_color = POWER_COLOR_BLACK;
			}
			break;
		}
	}


	/*
	for (local i=0; i<GAME_PLAYER_MAX; ++i)
	{
		local player_seed = game_seed.getPlayerSeed(i);
		if (player_seed==null || !player_seed.isEnableSeed_ || !player_seed.isEntrySeed_) {
			continue;
		}
		if (!player_seed.isInputHuman_) {
			local time_now = 300 * i / game_seed.playerEntryMax_;
			for (; time<time_now; ++time)
			{
				suspend();
			}
			
			CreatePlayerFromPlayerSeed( player_seed );
			SetPlayer(i);
		}
	}
	*/
}

function CreateDebugPlayerAll( seed_index ) {
	local game_seed = GameSeed();
	game_seed.popSeed( seed_index );
	
	local player_count = game_seed.playerEntryMax_;
	
	// �v���C���[ 
	for (local i=0; i<player_count; ++i)
	{
		local player_seed = game_seed.getPlayerSeed(i);
		player_seed.isDebug_ = true;
		CreatePlayerFromPlayerSeed( player_seed );
		
		local x = (100*(i%10))-500;
		local z = (100*(i/10))-500;
		PlayerWarp( i, x*2.0, 1000.0, z*2.0 );
		
		for (local j=0; j<5; ++j)
		{
			suspend();
		}
	}
}

// ���[�J���v���C���[�������� 
function CreateNetworkPlayerAll( seed_index ) {
	local game_seed = GameSeed();
	game_seed.popSeed( seed_index );

	// �v���C���[ 
	for (local i=0; i<GAME_PLAYER_MAX; ++i)
	{
		local index = (i&1) ? (i/2) : (i/2 +  GAME_PLAYER_MAX/2);
		local player_seed = game_seed.getPlayerSeed(index);
		if (player_seed!=null && player_seed.isEnableSeed_ && player_seed.isEntrySeed_) {
			CreatePlayerFromPlayerSeed( player_seed );
			SetPlayer(index);
			suspend();
		}
	}
}


function JsonLoadQuestAll() {
	// �N�G�X�g�̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "Quest,StaticParam", "json/quest/QuestParam.json" )
	// �~�b�V�����̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "Mission,StaticParam", "json/mission/MissionParam.json" )
}


function InitializeSaveData() {
	// �Z�[�u�f�[�^��������
	SaveDataInitialize();
}

// �萔�ݒ� 
SCALEFORM_HUD_ID <- 0;
SCALEFORM_MENU_ID <- 1;


IsDaneLoadScaleformHUD  <- false ;	// HUD
saveLoadHelper <- createSaveLoadHelper();
menuModelHelper <- createMenuModelHelper();


// �X�P�[���t�H�[���풓�f�[�^��ǂݍ��� 
gFlagLoadScaleformCommon <- false;
function LoadScaleformCommon() {
	if (false == gFlagLoadScaleformCommon) {
		gFlagLoadScaleformCommon = true;

		// �풓 
		LoadUICommonBress();

		while( false == ScaleformBresIsLoadComplete() )
		{
			suspend();
		}
		
		//�t�H���g�̏�����
		ScaleformInitializeLanguage();
		while( false == ScaleformLanguageReady() )
		{
			suspend();
		}
		
		ScaleformLoadHUDJson();
	}
}

// �X�P�[���t�H�[��HUD�f�[�^��ǂݍ��� 
function LoadScaleformHUD() {

	if(IsDaneLoadScaleformHUD)
		return ;
	IsDaneLoadScaleformHUD = true;
	
	LoadHudBress();

	while( false == ScaleformBresIsLoadComplete() )
	{
		suspend();
	}
}

function WaitLoadScaleformMenuBress() {
	while( false == SceneManagerBresIsLoadComplete() )
	{
		suspend();
	}
	while( false == SceneManagerMenuBGBresIsLoadComplete())
	{
		suspend();
	}
}

function WaitLoadScaleformCommon() {
	while( false == ScaleformBresIsLoadComplete() )
	{
		suspend();
	}
}

function RequestLoadScaleformCommon() {
	LoadUICommonBress();
}

function WaitSetupScaleformLanguage()
{
	while( false == ScaleformLanguageReady() )
	{
		suspend();
	}
}

function RequestSetupScaleformLanguage()
{
	ScaleformInitializeLanguage();
}

function RequestLoadScaleformHUD() {

	LoadHudBress();
}




function LoadUICommonBress() {

		// ����O
		//ScaleformBresLoadRequest( "UI_common.bres", true );

		// ������
		//ScaleformBresLoadRequest("UI_common_diag.bres" , true);// <- �g���Ă��Ȃ��l�q
		ScaleformBresLoadRequest("UI_dialog.bres"      , true);
		ScaleformBresLoadRequest("UI_gfxfontlib.bres"  , true);
		ScaleformBresLoadRequest("UI_keyhelp2.bres"    , true);
		ScaleformBresLoadRequest("UI_loading.bres"     , true);
		ScaleformBresLoadRequest("UI_nowloading.bres"  , true);
}

function DestroyUICommonBress() {
		//SceneManagerBresLoadRequest("UI_common_diag.bres");
		SceneManagerBresLoadRequest("UI_dialog.bres");
		SceneManagerBresLoadRequest("UI_gfxfontlib.bres");
		SceneManagerBresLoadRequest("UI_keyhelp2.bres");
		SceneManagerBresLoadRequest("UI_loading.bres");
		SceneManagerBresLoadRequest("UI_nowloading.bres");
}

function LoadUIMenuBress() {
		//SceneManagerBresLoadRequest( "UI_menu.bres" );

		SceneManagerBresLoadRequest("UI_Logo.bres");
		SceneManagerBresLoadRequest("UI_campaign.bres");
		SceneManagerBresLoadRequest("UI_CharacterMaking.bres");
		//SceneManagerBresLoadRequest("UI_crosstitle.bres");
		SceneManagerBresLoadRequest("UI_custom.bres");
		SceneManagerBresLoadRequest("UI_ItemEnhancement.bres");
		SceneManagerBresLoadRequest("UI_Item_Dictionary.bres");
		SceneManagerBresLoadRequest("UI_Item_Equipment.bres");
		SceneManagerBresLoadRequest("UI_Mannequin.bres");
		SceneManagerBresLoadRequest("UI_osusume.bres");
		SceneManagerBresLoadRequest("UI_pointget.bres");
		SceneManagerBresLoadRequest("UI_mission.bres" );
}

function DestroyUIMenuBress() {
		SceneManagerBresDestroyRequest("UI_campaign.bres");
		SceneManagerBresDestroyRequest("UI_CharacterMaking.bres");
		//SceneManagerBresDestroyRequest("UI_crosstitle.bres");
		SceneManagerBresDestroyRequest("UI_custom.bres");
		SceneManagerBresDestroyRequest("UI_ItemEnhancement.bres");
		SceneManagerBresDestroyRequest("UI_Item_Dictionary.bres");
		SceneManagerBresDestroyRequest("UI_Item_Equipment.bres");
		SceneManagerBresDestroyRequest("UI_Logo.bres");
		SceneManagerBresDestroyRequest("UI_Mannequin.bres");
		SceneManagerBresDestroyRequest("UI_osusume.bres");
		SceneManagerBresDestroyRequest("UI_pointget.bres");
		SceneManagerBresDestroyRequest("UI_mission.bres" );
}


function LoadHudBress() {
		//ScaleformBresLoadRequest( "UI_hud.bres", false );

		ScaleformBresLoadRequest("UI_equip.bres"   , false );
		ScaleformBresLoadRequest("UI_NewHUD.bres"  , false );
		ScaleformBresLoadRequest("UI_option.bres"  , false );
		ScaleformBresLoadRequest("UI_ranking.bres" , false );
		ScaleformBresLoadRequest("UI_Select.bres"  , false );
		ScaleformBresLoadRequest("UI_tutorial.bres", false );
		ScaleformBresLoadRequest("UI_wave.bres", false );
}

function DestroyHudBress() {
		//SceneManagerBresDestroyRequest( "UI_hud.bres" );

		SceneManagerBresDestroyRequest("UI_equip.bres");
		SceneManagerBresDestroyRequest("UI_NewHUD.bres");
		SceneManagerBresDestroyRequest("UI_option.bres");
		SceneManagerBresDestroyRequest("UI_ranking.bres");
		SceneManagerBresDestroyRequest("UI_Select.bres");
		SceneManagerBresDestroyRequest("UI_tutorial.bres");
		SceneManagerBresDestroyRequest("UI_Select.bres");
		//ScaleformBresDestroyRequest("UI_equip.bres");
		//ScaleformBresDestroyRequest("UI_NewHUD.bres");
		//ScaleformBresDestroyRequest("UI_option.bres");
		//ScaleformBresDestroyRequest("UI_ranking.bres");
		//ScaleformBresDestroyRequest("UI_Select.bres");
		//ScaleformBresDestroyRequest("UI_tutorial.bres");
		//ScaleformBresDestroyRequest("UI_wave.bres");
}




// �X�P�[���t�H�[��Menu�f�[�^��ǂݍ���.
gFlagLoadScaleformMenu <- false;

function CreateScaleformMenu() {
	if (true == gFlagLoadScaleformMenu) {
		ScaleformCreateMenuMovie( SCALEFORM_MENU_ID, ::MOVIE_HANDLER_TYPE_HUD, "MENU.sgfx" );
	}
}

// MenuBG�̃��[�h
gFlagLoadScaleformMenuBG <- false;
function LoadScaleformMenuBG() {
	if (gFlagLoadScaleformMenuBG==false) {

		SceneManagerBGRelaseBankRequest();
		SceneManagerMenuBGBresLoadRequest( "UI_menu_bg.bres" );
		SceneManagerMenuBGBresLoadRequest( "UI_main.bres" );
		gFlagLoadScaleformMenuBG = true;
	}
}

function DestroyScaleformMenuBG() {
	if (gFlagLoadScaleformMenuBG) {

		SceneManagerMenuBGBresDestroyRequest( "UI_menu_bg.bres" );
		SceneManagerMenuBGBresDestroyRequest( "UI_main.bres" );
		gFlagLoadScaleformMenuBG = false;
	}
}


// UI_menu & UI_menu2 & UI_StaffRoll
function LoadScaleformMenu() {
	if (false == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = true;
	
		LoadScaleformMenuBG();

		SceneManagerRelaseBankRequest();

		LoadUIMenuBress();

		SceneManagerBresLoadRequest( "UI_menu2.bres" );
		SceneManagerBresLoadRequest( "UI_spinner.bres" );
		SceneManagerBresLoadRequest( "UI_dlc.bres" );
		SceneManagerBresLoadRequest( "UI_StaffRoll.bres" );
		while( false == SceneManagerBresIsLoadComplete() )
		{
			suspend();
		}
		while( false == SceneManagerMenuBGBresIsLoadComplete())
		{
			suspend();
		}
		suspend();
	}
}

// UI_menu & UI_menu2

function LoadScaleformMenuMain() {
		SceneManagerRelaseBankRequest();

		LoadUIMenuBress();

		SceneManagerBresLoadRequest( "UI_menu2.bres" );
}

function LoadScaleformMenu1() {
	if (false == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = true;
	
		LoadScaleformMenuBG();

		LoadScaleformMenuMain();

		while( false == SceneManagerBresIsLoadComplete() )
		{
			suspend();
		}
		while( false == SceneManagerMenuBGBresIsLoadComplete())
		{
			suspend();
		}
		suspend();
	}
}

// UI_StaffRoll
function LoadScaleformMenu2() {
	if (false == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = true;

		//LoadScaleformMenuBG();

		SceneManagerRelaseBankRequest();

		SceneManagerBresLoadRequest( "UI_StaffRoll.bres" );
		while( false == SceneManagerBresIsLoadComplete() )
		{
			suspend();
		}
		suspend();
	}
}

// UI_spinner
function LoadScaleformMenu3() {
	if (false == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = true;

		//LoadScaleformMenuBG();

		SceneManagerRelaseBankRequest();

		SceneManagerBresLoadRequest( "UI_spinner.bres" );
		while( false == SceneManagerBresIsLoadComplete() )
		{
			suspend();
		}
		suspend();
	}
}

// UI_dlc
function LoadScaleformMenu4() {
	if (false == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = true;

		//LoadScaleformMenuBG();

		SceneManagerRelaseBankRequest();

		SceneManagerBresLoadRequest( "UI_dlc.bres" );
		while( false == SceneManagerBresIsLoadComplete() )
		{
			suspend();
		}
		suspend();
	}
}

// UI_crosstitle
function LoadScaleformMenu5() {
	if (false == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = true;

		//LoadScaleformMenuBG();

		SceneManagerRelaseBankRequest();

		SceneManagerBresLoadRequest( "UI_crosstitle.bres" );
		while( false == SceneManagerBresIsLoadComplete() )
		{
			suspend();
		}
		suspend();
	}
}

// UI_menu & UI_menu2 & UI_StaffRoll
function ReleaseScaleformMenu(isReleaseBg) {
	if (true == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = false;

		if(isReleaseBg) DestroyScaleformMenuBG();

		//SceneManagerBresDestroyRequest( "UI_menu.bres" );
		DestroyUIMenuBress();

		SceneManagerBresDestroyRequest( "UI_menu2.bres" );
		SceneManagerBresDestroyRequest( "UI_spinner.bres" );
		SceneManagerBresDestroyRequest( "UI_dlc.bres" );
		SceneManagerBresDestroyRequest( "UI_StaffRoll.bres" );
		while( false == SceneManagerBresIsDestroyComplete() )
		{
			suspend();
		}
	}
}

// UI_menu & UI_menu2
function ReleaseScaleformMenu1(isReleaseBg) {
	if (true == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = false;

		if(isReleaseBg) DestroyScaleformMenuBG();

		//SceneManagerBresDestroyRequest( "UI_menu.bres" );
		DestroyUIMenuBress();

		SceneManagerBresDestroyRequest( "UI_menu2.bres" );
		SceneManagerBresDestroyRequest( "UI_spinner.bres" );
		SceneManagerBresDestroyRequest( "UI_dlc.bres" );
		while( false == SceneManagerBresIsDestroyComplete() )
		{
			suspend();
		}
	}
}

// UI_StaffRoll
function ReleaseScaleformMenu2(isReleaseBg) {
	if (true == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = false;

		if(isReleaseBg) DestroyScaleformMenuBG();

		SceneManagerBresDestroyRequest( "UI_StaffRoll.bres" );
		while( false == SceneManagerBresIsDestroyComplete() )
		{
			suspend();
		}
	}
}

// UI_spinner
function ReleaseScaleformMenu3(isReleaseBg) {
	if (true == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = false;

		if(isReleaseBg) DestroyScaleformMenuBG();

		SceneManagerBresDestroyRequest( "UI_spinner.bres" );
		while( false == SceneManagerBresIsDestroyComplete() )
		{
			suspend();
		}
	}
}

// UI_dlc
function ReleaseScaleformMenu4(isReleaseBg) {
	if (true == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = false;

		if(isReleaseBg) DestroyScaleformMenuBG();

		SceneManagerBresDestroyRequest( "UI_dlc.bres" );
		while( false == SceneManagerBresIsDestroyComplete() )
		{
			suspend();
		}
	}
}

// crossPlatform
function ReleaseScaleformMenu5(isReleaseBg) {
	if (true == gFlagLoadScaleformMenu) {
		gFlagLoadScaleformMenu = false;

		if(isReleaseBg) DestroyScaleformMenuBG();

		SceneManagerBresDestroyRequest( "UI_crosstitle.bres" );
		while( false == SceneManagerBresIsDestroyComplete() )
		{
			suspend();
		}
	}
}


//	�V�[���̊J��
function DestroyScaleformMenu(isReleaseBg)
{	
	if(isReleaseBg)
	{
		SceneManagerOrderRelaseSceneByGroup((1<<SCENE_GROUP_MENU)|(1<<SCENE_GROUP_MENUBG)|(1<<SCENE_GROUP_HUD));
		buildSceneForMenuBG_flag = false;
	}
	else
	{
		SceneManagerOrderRelaseSceneByGroup((1<<SCENE_GROUP_MENU)|(1<<SCENE_GROUP_HUD));
	}
	ScaleformDestroyMenuMovie( SCALEFORM_MENU_ID );
}

//	�V�[���p���������`�F�b�N
function IsPlayingScaleformMenu( scene )
{
	if( MOVIE_MANAGER_STATE_PLAYING == SceneManagerGetState( ) ) {
		return true;
	}
	return false;
}
//	�Q�[���N�����̍ŏ��̃V�[��
function GetFirstScene()
{
	local scene = "logo";
	SceneManagerSetNextSceneName( scene );
	return scene;

}
//	SceneManager�ɗ\�񂳂ꂽ���V�[��
function GetNextScene()
{
	return SceneManagerGetSceneName();
	
}


GLC_SKY <- 0;
GLC_BACKGROUND_SCALEFORM <- 1;
GLC_TERRAIN <- 2;
GLC_CHARACTER <- 3;
GLC_EFFECT <- 4;
GLC_FOREGROUND_SCALEFORM <- 5;
GLC_FOREGROUND_EFFECT <- 6;
GLC_TOPLEVEL_SCALEFORM <- 7;

// �Q�[���v���C�p�̃��C���[�ݒ�
function SetupLayerForGamePlay()
{
	SetLayerControlSetEnable( GLC_SKY, true );
	SetLayerControlSetEnable( GLC_BACKGROUND_SCALEFORM, false );
	SetLayerControlSetEnable( GLC_TERRAIN, true );
	SetLayerControlSetEnable( GLC_CHARACTER, true );
	SetLayerControlSetEnable( GLC_EFFECT, true );
	SetLayerControlSetEnable( GLC_FOREGROUND_SCALEFORM, false );
	SetLayerControlSetEnable( GLC_FOREGROUND_EFFECT, false );
	SetLayerControlSetEnable( GLC_TOPLEVEL_SCALEFORM, true );
}

// ���j���[�p�̃��C���[�ݒ�
function SetupLayerForMenu()
{
	GraphicsDisableDOF();
	SetLayerControlSetEnable( GLC_SKY, true );
	SetLayerControlSetEnable( GLC_BACKGROUND_SCALEFORM, true );
	SetLayerControlSetEnable( GLC_TERRAIN, true );
	SetLayerControlSetEnable( GLC_CHARACTER, false );
	SetLayerControlSetEnable( GLC_EFFECT, true );
	SetLayerControlSetEnable( GLC_FOREGROUND_SCALEFORM, true );
	SetLayerControlSetEnable( GLC_FOREGROUND_EFFECT, true );
	SetLayerControlSetEnable( GLC_TOPLEVEL_SCALEFORM, true );
}

function CreateScaleformHUD() {
	ScaleformCreateHudMovie( SCALEFORM_HUD_ID, ::MOVIE_HANDLER_TYPE_HUD, "HUD.sgfx" );
	SceneSetPadInputPlayer();
}

function DestroyScaleformHUD() {
	// SceneManagerAllClose();
	clearMenuModelHelper(menuModelHelper);

	local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD);
	SceneManagerOrderRelaseSceneByGroup(releaseFlags);
	ScaleformDestroyHudMovie( SCALEFORM_HUD_ID );
	SceneSetPadInputGlobalMenu();
}

function ReleaseScaleformHUD() {
	IsDaneLoadScaleformHUD = false;
	DestroyHudBress();

	while( false == ScaleformBresIsDestroyComplete() )
	{
		suspend();
	}
}

function createSceneOnScreen(sceneId, movieId, group, creator, layer, subLayer, isCurrent, play, first) 
{
	if(SQ_TARGET_CURRENT==SQ_TARGET_WIN32)
	{
		for(local screen = 0; screen < 4; ++screen)
		{
			local id	= sceneId + screen;
			local scene	= SceneManagerAddSceneWithController(id, group, creator());
			scene.loadMoviePlayerDetail(movieId, screen, layer, subLayer, play, first);
			if(isCurrent) SceneManagerAddCurrentScene(id);
		}	
	
	}
	else
	{
		local scene	= SceneManagerAddSceneWithController(sceneId, group, creator());
		scene.loadMoviePlayerDetail(movieId, 0, layer, subLayer, play, first);
		if(isCurrent) SceneManagerAddCurrentScene(sceneId);
	}
}

function buildOsusume()
{
	// �������ߍw���_�C�A���O
	local controller	= createRecommedVerFullDialogController();
	local scene			= SceneManagerAddSceneWithController("recommedVerFullDialog", SCENE_GROUP_MENU, controller);
	scene.loadMoviePlayerDetail("osusume", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_1, true, false);
	SceneManagerAddCurrentScene("recommedVerFullDialog");
}

buildSceneForCommon_flag <- false;
function buildSceneForCommon()
{
	if (false == buildSceneForCommon_flag) {
		buildSceneForCommon_flag = true; 

		// �_�C�A���O
		createSceneOnScreen("sc_dialog", "dialog", SCENE_GROUP_COMMON, createDialogController, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_1, true, false, false);
		
		// ���[�f�B���O
		{
			local scene	= SceneManagerAddSceneWithController("sc_loading",SCENE_GROUP_COMMON, createLoadingController() );
			scene.loadMoviePlayerDetail("nowloading", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_1, true, false, false);
		}
		
		// �����v
		createSceneOnScreen("waiting", "loading", SCENE_GROUP_COMMON, createWaitingDispController, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_1, true, false, false);
	}
}


buildSceneForMenuBG_flag <- false;
function buildSceneForMenuBG()
{
	if(buildSceneForMenuBG_flag==false)
	{
		// bg
		local scene			= SceneManagerAddScene("menu_bg",SCENE_GROUP_MENUBG);
		scene.loadMoviePlayer("menu_bg");
		buildSceneForMenuBG_flag = true;
	}
}


function buildSceneBase()
{	
	{
		// game 
		local scene = SceneManagerAddScene("go_game",SCENE_GROUP_MENU);
	}
	
	{
		// campaign 
		local scene = SceneManagerAddScene("go_campaign",SCENE_GROUP_MENU);
	}

	{
		// campaign 
		local scene = SceneManagerAddScene("flow_spChallenge",SCENE_GROUP_MENU);
	}

	// ������MoviePlayer�̃v���C�I���e�B���Ȃ��̂�loadMoviePlayer�̏��Ԃ��K�R�I�Ƀv���C�I���e�B�ɂȂ�,
	//   ����Ē��ӂ��K�v
	// �������̓v���C�I���e�B��ݒ�o���邪�A�݊����ׁ̈A�ꕔ��������Ă��Ȃ��B
	{
		// logo
		local scene					= SceneManagerAddScene("logo",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("logo");
	}
	
	{
		// mannequin
		local controller		= createMannequinController(menuModelHelper);
		local scene				= SceneManagerAddSceneWithController("Mannequin",SCENE_GROUP_MENU, controller);
		scene.loadMoviePlayerDetail("Mannequin", 0, GFXLL_FOREGROUND, GFXLL_SUB_PLANE_2, true, false);
	}
	
	{
		// title
		local scene					= SceneManagerAddScene("title",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}	

	{
		local scene					= SceneManagerAddScene("sc_mainmenu",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}	

	{
		local scene					= SceneManagerAddScene("sc_gameplay",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}	

	{
		local scene					= SceneManagerAddScene("sc_chgcoopdlg",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		local scene					= SceneManagerAddScene("sc_chgcoopprize",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("pointget");
	}

	{
		local scene					= SceneManagerAddScene("sc_prizePointCon",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("pointget");
	}

	{
		local scene					= SceneManagerAddScene("sc_chgcoopdif",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		local scene					= SceneManagerAddScene("sc_rewardSelect",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("pointget");
	}

	{
		local scene					= SceneManagerAddScene("sc_ruleDisp",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		local scene					= SceneManagerAddScene("sc_stampRelay",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		local scene					= SceneManagerAddScene("sc_rankingmenu1",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}	

	{
		local scene					= SceneManagerAddScene("sc_rankingmenu2",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}	

	{
		local scene					= SceneManagerAddScene("sc_coopmenu",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}
	{
		local scene					= SceneManagerAddScene("sc_challengecoop",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}
	{
		local scene					= SceneManagerAddScene("sc_commenu",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}
	{
		local scene					= SceneManagerAddScene("sc_comlevel",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}
	{
		local scene					= SceneManagerAddScene("sc_singlemode",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}
	{
		local scene					= SceneManagerAddScene("sc_tutorialmenu",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}
	{
		local scene					= SceneManagerAddScene("sc_cooplobby",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		// option
		local scene = SceneManagerAddSceneWithController("option", SCENE_GROUP_MENU, createOptionController(saveLoadHelper));
		scene.loadMoviePlayer("option");
	}
	
	{
		// multiplay
		local scene			= SceneManagerAddScene("multiplay",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		// lobby
		local scene			= SceneManagerAddScene("sc_lobby",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		// quickmatch
		local scene			= SceneManagerAddScene("sc_quickmatch",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}
	
	{
		// privatematch
		local scene			= SceneManagerAddScene("sc_privatematch",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		// privatematch
		local scene			= SceneManagerAddScene("sc_stageselect",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("multiplay_true");
	}

	{
		// �L�����y�[��
		local scene			= SceneManagerAddScene("sc_campaign",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("campaign");
	}

	{
		// �L�����y�[�� new
		local scene			= SceneManagerAddScene("sc_campaignPanel",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("campaign");
	}
	
	{
		// PointGet���
		local scene			= SceneManagerAddScene("sc_itemget",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("pointget");
	}

	{
		// BonusGet���
		local scene			= SceneManagerAddScene("sc_bonusGet",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("pointget");
	}

	{
		// ���U���g���
		local scene			= SceneManagerAddScene("sc_result",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("result");
	}
	
	{
		// �X�e�[�^�X���
		local scene			= SceneManagerAddScene("sc_state",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("result");
	}

	{
		// �A�C�e���o���l
		local scene			= SceneManagerAddScene("sc_itemexp",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("result");
	}

	{
		// �A�C�e������
		local scene			= SceneManagerAddScene("sc_itemSynt",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("ItemEnhancement");
	}
	
	{
		// �A�C�e������
		local scene			= SceneManagerAddScene("sc_itemEnh",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("ItemEnhancement");
	}
	
	{
		// ranking ���
		local scene			= SceneManagerAddScene("sc_ranking",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("ranking");
	}

	{	
		// custom
		local controller	= createCustomController(menuModelHelper, saveLoadHelper);
		local scene			= SceneManagerAddSceneWithController("custom", SCENE_GROUP_MENU, controller);
		scene.loadMoviePlayer("custom");
 	}
	
	{ 
		// Character making
		local controller	= createCharaMakingController(menuModelHelper, saveLoadHelper);
		local scene			= SceneManagerAddSceneWithController("CharacterMaking",SCENE_GROUP_MENU, controller);
		scene.loadMoviePlayerDetail("CharacterMaking", 0, GFXLL_FOREGROUND, GFXLL_SUB_PLANE_2, true, false);
	}
	
	{
		// Item Equipment		
		local controller	= createItemEquipmentController(menuModelHelper, saveLoadHelper);
		local scene			= SceneManagerAddSceneWithController("Item_Equipment", SCENE_GROUP_MENU, controller);
		scene.loadMoviePlayerDetail("Item_Equipment", 0, GFXLL_FOREGROUND, GFXLL_SUB_PLANE_2, true, false);
	}

	{
		// sc_missionMain
		local scene			= SceneManagerAddScene("sc_missionMain",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("mission");
	}

	{
		// sc_styleSelect
		local scene			= SceneManagerAddScene("sc_styleSelect",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("result");
	}

	{
		local scene			= SceneManagerAddScene("sc_leagueEnd",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("result");
	}

	{
		local scene			= SceneManagerAddScene("sc_leagueStart",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("result");
	}

}


// �V�[����g�ݗ��Ă�(test)
function buildSceneForMenu()
{	
	buildSceneForCommon();
	buildSceneForMenuBG();
	
	buildSceneBase();

	
	//{	
	//	// �N���X�v���b�g�t�H�[��
	//	local controller	= createCrossPlatformController();
	//	local scene			= SceneManagerAddSceneWithController("crossPlatform", SCENE_GROUP_MENU, controller);
	//	scene.loadMoviePlayer("crosstitle");
	//}
	
	{
		// �X�^�b�t���[��
		// �P��bres�ɂȂ�Ǝv��
		local scene			= SceneManagerAddSceneWithController("staffroll", SCENE_GROUP_MENU, createStaffRollController() );
		scene.loadMoviePlayerDetail("StaffRoll", 0,  GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, true, true);
	}	

	return ["logo"];
}

function buildSceneForMenu1()
{	
	buildSceneForCommon();
	buildSceneForMenuBG();

	buildSceneBase();

	// �������ߍw���_�C�A���O
	buildOsusume();
	
	{
		// �A�C�e���}��
		local controller 	= createItemPictureBookController(menuModelHelper);
		local scene			= SceneManagerAddSceneWithController("itemPictureBook",SCENE_GROUP_MENU, controller);
		scene.loadMoviePlayerDetail("Item_Dictionary", 0, GFXLL_FOREGROUND, GFXLL_SUB_PLANE_2, true, false);
	}	

	{
		// �^�C�A�b�v�_�C�A���O
		local controller	= createTieUpDialogController();
		SceneManagerAddSceneWithController("tieupdialog",SCENE_GROUP_MENU, controller);
	}
	

	//{
	//	local scene = SceneManagerAddScene("sc_spinnerload",SCENE_GROUP_MENU);
	//}

	//{
	//	local scene = SceneManagerAddScene("sc_dlcload",SCENE_GROUP_MENU);
	//}

	//{
	//	local scene = SceneManagerAddScene("staffroll",SCENE_GROUP_MENU);
	//}

	return ["logo"];
}

function buildSceneForMenu2()
{	
	buildSceneForCommon();

	{
		// �X�^�b�t���[��
		// �P��bres�ɂȂ�Ǝv��
		local scene	= SceneManagerAddSceneWithController("staffroll", SCENE_GROUP_MENU, createStaffRollController() );
		scene.loadMoviePlayerDetail("StaffRoll", 0,  GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, true, true);
	}

	return ["staffroll"];
}


function buildSceneForMenu3()
{	
	buildSceneForCommon();
	
	{
		// �X�s�i�[���
		local scene			= SceneManagerAddScene("sc_itemspinner",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("itemspinner");
	}

	{
		// �X�s�i�[���
		local scene			= SceneManagerAddScene("sc_happybox",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("itemspinner");
	}

	return ["sc_itemspinner"];
}

function buildSceneForMenu4()
{	
	buildSceneForCommon();
	
	{
		// dlc ���
		local scene			= SceneManagerAddScene("sc_dlcmenu",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("DLCMenu");
	}

	{
		// dlc ���
		local scene			= SceneManagerAddScene("sc_dlcdetailed",SCENE_GROUP_MENU);
		scene.loadMoviePlayer("DLCMenu");
	}

	return ["sc_dlcmenu"];
}

function buildSceneForMenu5()
{	
	buildSceneForCommon();
	
	{	
		// �N���X�v���b�g�t�H�[��
		local controller	= createCrossPlatformController();
		local scene			= SceneManagerAddSceneWithController("crossPlatform", SCENE_GROUP_MENU, controller);
		scene.loadMoviePlayer("crosstitle");
	}

	return ["crossPlatform"];
}



function buildSceneForGame()
{
	buildSceneForCommon();

	{
		// game 
		local scene = SceneManagerAddScene("sc_gamehud", SCENE_GROUP_HUD);
		scene.loadMoviePlayerDetail("HUD_true", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_4, false, false);
	}

	{
		// hud 
		local scene = SceneManagerAddScene("sc_nameBalloon", SCENE_GROUP_HUD);
		scene.loadMoviePlayerDetail("HUD_player", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_4, false, false);
	}

	{
		// hud 
		local scene = SceneManagerAddScene("sc_minimap", SCENE_GROUP_HUD);
		//scene.loadMoviePlayerDetail("HUD_true", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_4, false, false);
	}

	{
		// game 
		local scene = SceneManagerAddScene("go_game", SCENE_GROUP_HUD);
	}
	
	{
		// campaign dialog 
		local scene = SceneManagerAddScene("sc_tutorial1", SCENE_GROUP_HUD);
		scene.loadMoviePlayerOnScreen("tutorial", 0);
	}
	
	{
		// ranking ���
		local scene			= SceneManagerAddScene("sc_ranking1",SCENE_GROUP_HUD);
		scene.loadMoviePlayerDetail("ranking", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, false, false);
	}

	{
		local scene			= SceneManagerAddScene("sc_wave1",SCENE_GROUP_HUD);
		scene.loadMoviePlayerDetail("wave", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, false, false);
	}

	// selector
	{
		createSceneOnScreen("sc_selector", "Select", SCENE_GROUP_HUD, createSelectController, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_3, false, true, true);
	}

	if(SQ_TARGET_CURRENT==SQ_TARGET_WIN32)
	{
		{
			// campaign dialog 
			local scene = SceneManagerAddScene("sc_tutorial2", SCENE_GROUP_HUD);
			scene.loadMoviePlayerOnScreen("tutorial", 1);
		}
		{
			// ranking ���
			local scene			= SceneManagerAddScene("sc_ranking2",SCENE_GROUP_HUD);
			scene.loadMoviePlayerDetail("ranking", 1, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, false, false);
		}
		{
			local scene			= SceneManagerAddScene("sc_wave2",SCENE_GROUP_HUD);
			scene.loadMoviePlayerDetail("wave", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, false, false);
		}
	}
	if(SQ_TARGET_CURRENT==SQ_TARGET_WIN32)
	{
		{
			// campaign dialog 
			local scene = SceneManagerAddScene("sc_tutorial3", SCENE_GROUP_HUD);
			scene.loadMoviePlayerOnScreen("tutorial", 2);
		}
		{
			// ranking ���
			local scene			= SceneManagerAddScene("sc_ranking3",SCENE_GROUP_HUD);
			scene.loadMoviePlayerDetail("ranking", 2, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, false, false);
		}
		{
			local scene			= SceneManagerAddScene("sc_wave3",SCENE_GROUP_HUD);
			scene.loadMoviePlayerDetail("wave", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, false, false);
		}
	}
	if(SQ_TARGET_CURRENT==SQ_TARGET_WIN32)
	{
		{
			// campaign dialog 
			local scene = SceneManagerAddScene("sc_tutorial4", SCENE_GROUP_HUD);
			scene.loadMoviePlayerOnScreen("tutorial", 3);
		}
		{
			// ranking ���
			local scene			= SceneManagerAddScene("sc_ranking4",SCENE_GROUP_HUD);
			scene.loadMoviePlayerDetail("ranking", 3, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, false, false);
		}
		{
			local scene			= SceneManagerAddScene("sc_wave4",SCENE_GROUP_HUD);
			scene.loadMoviePlayerDetail("wave", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, false, false);
		}
	}
	
	// �v���C���[���
	{
		if(SQ_TARGET_CURRENT==SQ_TARGET_WIN32)
		{
			for(local screen = 0; screen < 4; ++screen)
			{
				local id	= "playerInfo" + screen;
				local scene	= SceneManagerAddSceneWithController(id, SCENE_GROUP_HUD, createPlayerInfoController(menuModelHelper) );
				scene.loadMoviePlayerDetail("equip", screen, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, true, false);
			}	
		
		}
		else
		{
			local scene	= SceneManagerAddSceneWithController("playerInfo", SCENE_GROUP_HUD, createPlayerInfoController(menuModelHelper));
			scene.loadMoviePlayerDetail("equip", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, true, false);
		}	
	}
	
	// �|�[�Y���j���[
	{
		local creator = function (){ return createPauseController(saveLoadHelper); }
		createSceneOnScreen("pause", "option", SCENE_GROUP_HUD, creator, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_2, true, false, false);
	}
	
	//SceneManagerAddCurrentScene("sc_gamehud");
	
	
	SceneManagerAddCurrentScene("sc_gamehud");
	SceneManagerAddCurrentScene("sc_nameBalloon");

	suspend();

	SceneManagerAddCurrentScene("go_game");
}











function JsonLoadStageAll() {
	// �X�e�[�W�������[�h
	JsonSerializeLoadFromFile( "StageTable,StaticParam", "json/stage/gemini_stage_table.json" )
}

function LoadStageFromSeed( stage_seed ) {
	print( "call: LoadStageFromSeed()\n" );

	StageBresLoadRequestFromSeed( stage_seed );
	while ( false == StageBresIsLoadComplete() )
	{
		suspend();
	}

	print( "call: wait for NetworkIsSyncAssignMemberList()\n" );
	while ( false == NetworkIsSyncAssignMemberList() )
	{
		suspend();
	}
	print( "call: sync NetworkIsSyncAssignMemberList()\n" );

	// �G���A�f�[�^��F��/�ǂݍ��݂��� 
	StageAreaDataLoad( stage_seed );

	// �M�~�b�N�z�u�f�[�^�̓ǂݍ��� 
	StageGimmickArrangeLoad( stage_seed );
	
	// �G�t�F�N�g�z�u�f�[�^�̓ǂݍ��� 
	StageEffectArrangeLoad( stage_seed );

	// ��p�f�[�^�̓ǂݍ���
	StageTacticsLoad( stage_seed );
	
	// Sentient����̏C������K��
	StageSentientJsonLoad( stage_seed );
	while( false==StageSentientJsonLoadComplete() )
	{
		suspend();
	}
	
	// Bres�Ɋ܂܂��Nut��Global�ɓǂݍ���ł���. 	
	local success_setting_nut = IncludeStageSetting( stage_seed );

	// �ǂݍ��݂��������Ă�����. 
	if (success_setting_nut)
	{
		GimmickDisable( stage_seed );
	}
	
	// �M�~�b�N
	LoadGimmickAll();
	
	StageSceneCreateAll();

	// ���Ŏ��s 

	// �R���W�������쐬���Ă���̂�
	while (false==StageCollisionCreateAllJob())
	{
		suspend();
	}

	while (0<StageCollisionCreateAllJobCount())
	{
		suspend();
	}

	// ���I�ȃR���W������ǉ�����^�C�~���O
	StageCollisionPrimAdd();



	
	StageCreateFromSeed( stage_seed );
	
	// �ǂݍ��݂��������Ă�����. 
	if (success_setting_nut)
	{
		GimmickSetting( stage_seed );
	}
}

function GameStageRuleSetting( stage_seed, game_rule_seed ) {
	// �X�e�[�W�ŗL�̐ݒ�
	StageSetupRuleSetting( stage_seed );

	// �Q�[�����[���֔��f
	print( "Use Fixed Game Rule Time = " + stage_seed.fixedGameRuleTime + "\n" );
	print( "Use Fixed Game Rule Time = " + game_rule_seed.timerRuleSecond_ + "\n" );
	print( "Stage Bgm Id = " + stage_seed.getStageBgm() + "\n" );
	if( game_rule_seed.timerRuleSecond_ < 0 )
	{	// ��������
		game_rule_seed.timerRuleSecond_ = stage_seed.fixedGameRuleTime;
	}
}

function DestroyStage() {
	print( "call: DestroyStage()\n" );
	
	StageDestroy();
	
	StageCollisionDestroy();
	
	StageEffectDestroy();

	suspend();
	suspend();

	StageSceneDestroy();
	suspend();
	suspend();
	
	DestroyGimmickAll();

	StageBresDestroyRequest();
	while ( false == StageBresIsDestroyComplete() )
	{
		suspend();
	}

	GfxEraseAll();
	
	StageDestroyFinish();
}


function ReloadStageEffectArrange() {
	
	// �G�t�F�N�g�̔j�� 
	StageEffectDestroy();
	for (local i=0; i<8; ++i) { suspend(); }

	// �R���o�[�g 
	system( "W:\\Gemini\\Scripts\\Stage\\00_StageScriptConvert.bat" );
	
	// �Q�[���V�[�h�p�� 
	local game_seed = GameSeed();
	game_seed.popSeed(0);
		
	// �G�t�F�N�g�z�u�f�[�^�̓ǂݍ��� 
	StageEffectArrangeLoad( game_seed.getStageSeed() );
	for (local i=0; i<8; ++i) { suspend(); }
	
	// �G�t�F�N�g�z�u 	
	StageEffectArrange();
}

function ReloadStageEffectArrangeFromMenuItem() {
	ReloadStageEffectArrange();
	DebugChangeForcus("None");
}



function StageSelector( thread_id ) {
	
	IncludeScriptFile( "stage\\stageFileList.nut" );
	
	local stage_menu = MenuPage();
	stage_menu.addMenu( 0, "Stage Bres Select" );
	foreach( index, item in gStageFileList ) {
		stage_menu.addItem( 0, index, item );
	}
	
	local selected = -1;
	while(selected<0) {
		// �f�o�b�O�̂��߂ɖ��t���[���X�V���� 
		JsonDebugForcePushParam();
		
		while( thread_id<0 || OnForcusThreadId( thread_id ) ) {
			selected = stage_menu.update();
			if( 0 <= selected )
			{
				break;
			}
			stage_menu.draw( 400, 32, 22 );
			grahicsMouse();
			suspend();
		}
		suspend();
	}
	
	return stage_menu.currentTitle();
}


function JsonLoadTrialAll() {
	// �̌��ł̃p�����[�^�����[�h
	JsonSerializeLoadFromFile( "Trial,StaticParam", "json/trial/TrialParam.json" )
}


class VideoAspect {
	// constructor
	constructor(t, x, y, r) {
		title = t;
		aspect_x = x;
		aspect_y = y;
		resolution = r;
	}
	
	function _tostring() {
		local result = "Aspect " + title + "\n";
		foreach( reso in resolution ) {
			result += "  " + reso + "\n";
		}
		return result;
	}
	
	function GetResolutionNum()
	{
		return resolution.len();
	}
	
	function SetResolution( mode, index )
	{
		if (0<=index && index<resolution.len())
		{
			resolution[index].SetResolution( mode, aspect_x, aspect_y );
		}
	}
	
	// property
	title = null;
	aspect_x = null;
	aspect_y = null;
	resolution = null;
}

class VideoResolution {
	// constructor
	constructor(w, h) {
		width = w;
		height = h;
	}

	function _tostring() {
		return "Resolution " + width + "x" + height;
	}
	
	function SetResolution(mode, ax, ay)
	{
		SetScreenMode( mode );
		SetWindowSize( width, height );
		SetScreenAspect( ax, ay );
		UpdateScreenState();
	}

	// property
	width = null;
	height = null;
}

// �A�X�y�N�g��+�Ή��𑜓x�f�[�^ 
gVideoAspect <- [
	VideoAspect( "Standard(4:3)", 4, 3,
		[	VideoResolution( 640, 480 )
			VideoResolution( 720, 576 )
			VideoResolution( 800, 600 )
			VideoResolution( 1024, 768 )
			VideoResolution( 1152, 864 )
			VideoResolution( 1280, 960 )
			VideoResolution( 1280, 1024 )
			VideoResolution( 1600, 1200 )
		]
	)
	VideoAspect( "WideScreen(16:9)", 16, 9,
		[	VideoResolution( 848, 480 )
			VideoResolution( 852, 480 )
			VideoResolution( 1280, 720 )
			VideoResolution( 1360, 768 )
			VideoResolution( 1600, 900 )
			VideoResolution( 1920, 1080 )
		]
	)
	VideoAspect( "WideScreen(16:10)", 16, 10,
		[	VideoResolution( 360, 240 )
			VideoResolution( 720, 480 )
			VideoResolution( 960, 600 )
			VideoResolution( 1280, 768 )
			VideoResolution( 1280, 800 )
			VideoResolution( 1440, 900 )
			VideoResolution( 1680, 1050 )
			VideoResolution( 1920, 1200 )
		]
	)
]

print( gVideoAspect[0] );
print( gVideoAspect[1] );
print( gVideoAspect[2] );


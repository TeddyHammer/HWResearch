/* XDASEA_Xm8R_SPsX */ 
//
// JSON�Ɋւ���ݒ�������t�@�C��. 
//


// ���������ɃI�[�g���[�h�����JSON�t�@�C���̃��X�g 
// �g���q .json �͏Ȃ��Ă������� 
gJsonInitializeLoadList <- [
	"Player#PlayerCamera"
	"Game#OutlineColorSetting"
]





// ���X�g����Json��ǂݍ��ފ֐� 
function JsonLoadFromList( json_list ) {
	foreach( index, item in json_list ) {
		local pos = item.find("#");
		if (pos!=null)
		{
			local ins_name = item.slice(0,pos) + "," + item.slice(pos+1);
			local key =  item + ".json";
			local file = "json/" + key;
			JsonSerializeLoadFromFile( ins_name, file );
		}
	}
}

// ���������ɃI�[�g�I�[�g���[�h����悤�Ɏw�� 
JsonLoadFromList(gJsonInitializeLoadList);


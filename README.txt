Corona 128x

���{�ꕶ�͈͂ȉ�

�`�J�����x��10�{�����H�܂�����Ȃ��ˁI����128�{�������Ă��I�I�`

I.�O�� �`�J�����R�ƃR���Z�v�g�`
Corona SDK�͂ƂĂ��D�G�ȃX�}�[�g�t�H���A�v���J���c�[���ł��B���ɃQ�[�������̂Ɍ����Ă��܂��B
�������A�قڂ��ׂĂ̊J����Lua�R�[�h�ōs���邽�߂ɁA
�ȉ��ɋ�����Q�[���ɂ����ĕ��������ׂ��ł���Ǝ����l����3�̂��Ƃ��ALua�R�[�h��ō������Ă��܂��܂��B
*��`
*����
*����
�����͕�������L�q�����ׂ����Ǝ��͍l���܂����B�������������悤�Ƃ��č��ꂽ�̂� Corona 128x �ł��B
Corona 128x �ł̓��[�U�͒�`�t�@�C�����L�q���A������}�l�[�W���ɓǂݍ��܂��܂��B
����ɂ��A��`�Ɛ����͂�蕪������A�R�[�h�̕i�����ǂ��Ȃ�ł��傤�B����͊J��������������͂��ł��B
�����́A��`�ɕt�����邱�ƂɂȂ�܂����A����͗e�Ղɕ������\�ł��B���̉ۑ���ǂ����邩�̓��[�U�ɔC���܂��B
��`�t�@�C���ɂ܂Ƃ߂ċL�q���Ă��ǂ��ł��傤���A����������ɐ����i�߂Ă��ǂ��ł��傤�B
��`�t�@�C���̂قƂ�ǂ̓e�[�u���̋L�q����߂܂��B
����ɂ��A�����̓R�[�h�����c�[���ɂ��J���x������茻���I�ɂȂ�Ǝ��͍l���Ă��܂��B
�܂�����̓r�W���A���ȃR�[�h�����c�[���𐧍삵�悤�Ƃ��l���Ă��܂��B
����̓f�U�C�i�������I�ɃQ�[����ʂ𐧍삵�A��������̂܂܃R�[�h�Ƃ��Ď��s���ł���Ƃ������Ƃł��B
�Ȃ�ɂ���A Corona 128x �͎��ƃ��[�U�̃A�v���J�����������邽�߂ɐ��삳��Ă����܂��B

II.���݂̍\��
�EComponentsManager �t�H���_
���݂� Corona 128x �̖{�̂Ƃ����镔���ł��B�{�t�H���_����DisplayComponentManager�����[�h���邱�ƂŁA
Corona 128x �̋@�\���g����悤�ɂȂ�܂��B

�EComponents �t�H���_
�e�X�g�p�ɃR���|�[�l���g��`���܂܂�Ă��܂��B

�EImage �t�H���_
�e�X�g�p�̃R���|�[�l���g��`�t�@�C�����Ăяo���摜�t�H���_�ł�

�Ebuild.settings , config.lua
Corona SDK�p�̐ݒ�t�@�C���ł�

�Emain.lua
Coroan SDK���Ăяo���A�v���P�[�V�����G���g���|�C���g�ł��B

�Egame.lua
�e�X�g�p�E�f���p�R�[�h�ł���main.lua����Ăяo����A�e�X�g�p�̃R���|�[�l���g��`���Ăяo���ĉ�ʂɏo�͂����܂��B
���̃R�[�h�ƃe�X�g�p�R���|�[�l���g��`�t�@�C�������邱�ƂŁA������x�g�p���@���킩��͂��ł�

III.���p���@
�撣���ď����Ă��܂��B������Ƒ҂��ĂˁI


English document is under here

~10x faster? Not enough! Speed up 128x that!!~

I.Why develop this code and concept
Corona SDK is very strong library.It's specialized for game development.
But all development is on Lua code.Because 3 things is mixed that should split on game development I think.
3 things is here
*Definition
*Generate
*Behavior
These should split on game development.So, I developed Corona 128x.
On Corona 128x,library user write definition code and loaded it.
Definiton is splited Generate on this style.Then, we hope that gradeup code quality and accelerate development.

II.Program Structure
�EFolder:ComponentsManager
Currently, It is main body Corona 128x.
You could use Corona 128x function to load DisplayComponentManager in this folder.

�EFolder:Components
This folder contained component definition for test use.
To read .lua in this folder,You get how to write your definition code.

�EFolde:Image
Image is loaded by .lua in Folder:Components.

�Ebuild.settings , config.lua
Configuration file for Corona SDK.

�Emain.lua
Corona SDK call this file as pplication entry point.

�Egame.lua
This file is test and demonstration code.Call from main.lua.
This file load .lua in Folder:Components.
You get this library usage to read this file.

III.Usage
Please wait a few time...I'm writing now.
GDPC                                                                            *   D   res://.import/background1.bmp-3eadea2a4841a235afa0780d7584ac38.res  pZ      8      
�?���OJ���/b+�D   res://.import/background1.jpg-8f09570e239df7571f65d4a046b34658.stex �\      �      E�u���
�qG�gVЃD   res://.import/background1.webp-2adc7bc7f6dbd3821c1e0d00cf1ba22a.stexPb      P      �p�����䈜ٝ�mtx<   res://.import/head.png-0428d563356e710cdcd7f6194063b110.stex�f            S�Q*�0��LB?��@�<   res://.import/icon.png-1275d5393a91cd14391be32c23f21719.stex�)      U      -��`�0��x�5�[<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�j      U      -��`�0��x�5�[<   res://.import/tale.png-4ed180d451bfbfe4cbe42b1e0bbfa7e6.stexpz      �       �j��|���_�A�oD   res://.import/texturemap.png-c860c754793a041aef3a55715581077f.stex  �}      �      �f��9�x�Eȿ�wN;1   res://Eat.gd.remap  @�             Y�r����*�F�   res://Eat.gdc   �      �      Q� ^Uxݮ�����--�   res://Eat.tscn  P      �      ��uIi/�w�Ot���    res://Exports/SnakeWin/Main.tscn�      �      �T�����}s��O��R    res://Exports/SnakeWin/Snake.gdc�            �K�j?�߲@��و$   res://Exports/SnakeWin/Snake.tscn   �            ��b�>Y��#�,M�$   res://Exports/SnakeWin/SnakeHead.gdc�      �      Hz1�^� �hg�J��(   res://Exports/SnakeWin/SnakeHead.tscn   �#      V      F�^�ɩ���B͓,�$   res://Exports/SnakeWin/SnakeTale.gdc�%      �       �D�CHS9H�G�*}O-(   res://Exports/SnakeWin/SnakeTale.tscn   �&      o      ����H	�㉣"�(   res://Exports/SnakeWin/default_env.tres  )      �       um�`�N��<*ỳ�8(   res://Exports/SnakeWin/icon.png.import  7      �      �q{)gL�Ԏ�E�DZ�   res://Main.gd.remap `�             �(@Er�#��K�F�[   res://Main.gdc  �9      .      1XNk,}�rB˼2Ut�   res://Main.tscn �<      �      �!��,����'��I�}   res://Snake.gd.remap��              l����wS��؟   res://Snake.gdc �@      "      ����H��^��$dZ�   res://Snake.tscn�H      �      ߟ^$��A�Rr4�*�i   res://SnakeHead.gd.remap��      $       �ʘR�:d�[�g�:3   res://SnakeHead.gdc �K      _      gh��3qi�W;^   res://SnakeHead.tscnT      
      g]��c
M��Xf���6   res://SnakeTale.gd.remapЅ      $       �o����$�Ҩ���8   res://SnakeTale.gdc  W      �       �D�CHS9H�G�*}O-   res://SnakeTale.tscn�W      �      o�)�����X
���Me   res://background1.bmp.import�[            �H�^�"�~�pM��   res://background1.jpg.import�_      �      i�7њ�[
����C��    res://background1.webp.import   �c      �      "X�h.W��E�r��Z�   res://default_env.tres  @f      �       um�`�N��<*ỳ�8   res://head.png.import    h      �      �L��?z$���j�   res://icon.png   �      �      G1?��z�c��vN��   res://icon.png.import   �w      �      �����%��(#AB�   res://project.binary�      �      =�ݸHe���󿛺�   res://tale.png.import   {      �      Hcw�s�i��֚
�]   res://texturemap.png.import ��      �       ��=]'�0S�GDSC            4      ���ׄ�   �����϶�   �������������������Ҷ���   ���϶���   ��¶   ���������Ӷ�      enter                                                    	   	   
   
                                                               !      &      ,      0      1      2      3YYYYYYYYYY0�  PQV�  -YYYYYYYY0�  P�  QV�  �?  PQ�  �  T�  PQ�  �  PQYYY`           [gd_scene load_steps=5 format=2]

[ext_resource path="res://texturemap.png" type="Texture" id=1]
[ext_resource path="res://Eat.gd" type="Script" id=2]

[sub_resource type="AtlasTexture" id=1]
atlas = ExtResource( 1 )
region = Rect2( 0, 32, 16, 16 )

[sub_resource type="CapsuleShape2D" id=2]
radius = 7.07068
height = 4.06992

[node name="Eat" type="Area2D"]
collision_layer = 4
collision_mask = 4
script = ExtResource( 2 )

[node name="TextureRect" type="TextureRect" parent="."]
margin_left = -62.409
margin_top = -68.6657
margin_right = 65.591
margin_bottom = 59.3343
rect_scale = Vector2( 0.3, 0.3 )
rect_pivot_offset = Vector2( 64, 68.9569 )
texture = SubResource( 1 )
expand = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )
[connection signal="body_entered" from="." to="." method="_on_Eat_body_entered"]
        [gd_scene load_steps=4 format=2]

[ext_resource path="res://Snake.tscn" type="PackedScene" id=1]
[ext_resource path="res://background1.jpg" type="Texture" id=2]
[ext_resource path="res://icon.png" type="Texture" id=3]

[node name="Main" type="Node2D"]

[node name="TextureRect" type="TextureRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_right = 690.0
margin_bottom = 392.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 7.96409, 13.0602 )
texture = ExtResource( 2 )
expand = true
stretch_mode = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Snake" parent="." instance=ExtResource( 1 )]

[node name="Light2D" type="Light2D" parent="."]
position = Vector2( 446.236, 351.236 )
scale = Vector2( 4.85112, 4.85112 )
texture = ExtResource( 3 )
offset = Vector2( 50, 0 )
color = Color( 0.85098, 0.439216, 0, 1 )
energy = 5.61
mode = 2
shadow_enabled = true
shadow_gradient_length = 581.9
       GDSC         ,        ���ӄ�   ���Ӷ���   ����������Ҷ   ���Ӷ���   ��������¶��   ����¶��   ���������������������Ҷ�   ��������������Ӷ   ��������Ҷ��   �������ض���   �������Ŷ���   ����׶��   ��������Ӷ��   ߶��   ��������������¶   ��������   ��������Ҷ��   ���Ķ���   �����������ض���   �������϶���   �������������Ӷ�   ���������Ҷ�   ����Ҷ��   ��Ҷ   �������Ӷ���   �������Ӷ���   ��������Ҷ��      res://SnakeTale.tscn  {�G�z�?          	   ui_accept         hellp              �?                                                          	      
   '      ,      4      5      <      @      D      L      P      T      U      [      h      r      z      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +     ,   3YY;�  ?PQYYY;�  �  Y;�  �  YY0�  PQV�  &�  T�  P�  QV�  �?  P�  Q�  �  PW�  T�	  QYY0�
  P�  QV�  �  PQ�  �  �  �  &P�  �  QV�  �  PQ�  �  �  YY0�  PQV�  )�  �K  P�  R�  PQQV�  ;�  �  P�  �  Q�  ;�  �  P�  Q�  �  T�  �  T�	  �  &�  �  �  V�  �  T�  �  T�  PP�  T�	  �  T�	  QT�  PQW�  T�  �  Q�  (V�  �  T�  �  T�  PP�  T�  �  T�	  QT�  PQW�  T�  �  Q�  �  YY0�  P�  QV�  ;�  �  T�  PQ�  �  �  T�  �  �  �  T�	  �	  �  �  P�  Q�  ;�  �  P�  PQ�  Q�  ;�  �  P�  PQ�  Q�  �  T�	  �  T�	  �  T�  �  �  �?  P�  PQQY`[gd_scene load_steps=3 format=2]

[ext_resource path="res://Snake.gd" type="Script" id=1]
[ext_resource path="res://SnakeHead.tscn" type="PackedScene" id=2]

[node name="Snake" type="Node2D"]
script = ExtResource( 1 )

[node name="SnakeHead" parent="." instance=ExtResource( 2 )]
        GDSC      	   S   W     ������������τ�   ����Ҷ��   ���������Ҷ�   �����޶�   �������϶���   �������������Ӷ�   ����ƶ��   ������¶   �������۶���   �����¶�   ��������ض��   �������Ķ���   ��������¶��   ����¶��   ���������������������Ҷ�   ���������¶�   Ҷ��   �������ض���   ����������Ҷ   �����Ѷ�   ϶��   ζ��   ���������Ҷ�   ���������������Ŷ���   ����׶��   �������������Ӷ�   �                     ui_right      ui_left       ui_down       ui_up                                                                "   	   %   
   (      +      -      /      0      4      8      9      ?      @      I      M      S      \      `      f      o      s      y      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5     6   	  7   
  8     9     :      ;   &  <   0  =   1  >   8  ?   9  @   =  A   D  B   E  C   F  D   G  E   H  F   I  G   J  H   K  I   L  J   M  K   N  L   O  M   P  N   Q  O   R  P   S  Q   T  R   U  S   3Y8P�  Q;�  Y;�  �  YY;�  �  Y;�  �  PQYY>�  N�  �  R�  �  R�  �  R�  �	  YOYY;�
  SY;�  SYY0�  PQVY�  &�  T�  P�  QV�  �  �
  �  �
  �  T�  �  &�  T�  P�  QV�  �  �
  �  �
  �  T�	  �  &�  T�  P�  QV�  �  �
  �  �
  �  T�  �  &�  T�  P�  QV�  �  �
  �  �
  �  T�  �  �  Y0�  P�  QV�  �  �  �  �  �
  �  Y0�  PQV�  &�
  �  V�  /�
  V�  �  T�  V�  PZQ�  �  T�	  V�  PZ�  Q�  �  T�  V�  P�  Q�  �  T�  V�  PZ�  QYY0�  PQV�  �  �  PQ�  �  �  PQ�  �  PQ�  &�
  �  T�  V�  �  T�  �  �  &�
  �  T�  V�  �  T�  �  �  �  &�
  �  T�	  V�  �  T�  �  �  &�
  �  T�  V�  �  T�  �  �  �  �  T�  PQ�  �  Y0�  P�  QV�  �  �  PQ�  �  �  P�  QYYYYYYY�  Y�  YYYYYYYY`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://SnakeHead.gd" type="Script" id=1]
[ext_resource path="res://head.png" type="Texture" id=3]

[sub_resource type="CircleShape2D" id=1]

[node name="SnakeHead" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 15.5597, -6.07507 )
scale = Vector2( 2.5, 2.5 )
texture = ExtResource( 3 )
offset = Vector2( -6.1662, 2.64643 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -0.130852, 6.25096 )
rotation = 3.14159
shape = SubResource( 1 )
          GDSC                   ������������τ�   �������϶���   �����������ض���             	                  3Y;�  �  PQY;�  �  PQYY`         [gd_scene load_steps=5 format=2]

[ext_resource path="res://SnakeTale.gd" type="Script" id=1]
[ext_resource path="res://tale.png" type="Texture" id=2]

[sub_resource type="CanvasItemMaterial" id=2]
render_priority = 1

[sub_resource type="CircleShape2D" id=3]
radius = 13.426

[node name="SnakeTale" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
material = SubResource( 2 )
use_parent_material = true
scale = Vector2( 2, 2 )
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
scale = Vector2( 0.5, 0.5 )
shape = SubResource( 3 )
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-1275d5393a91cd14391be32c23f21719.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Exports/SnakeWin/icon.png"
dest_files=[ "res://.import/icon.png-1275d5393a91cd14391be32c23f21719.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDSC         #   �      ���ӄ�   ��¶   �����϶�   ���������ض�   ������������������¶   ������¶   �������Ӷ���   ��Ѷ   ��������������������Ķ��   ����   �������Ŷ���   ����������Ӷ   �������ض���   ��������Ҷ��      res://Eat.tscn                                                            	      
                     #      '      (      )      *      +      ,      -      .      /      0      6      :      ;      <      B      K      T      Z       t   !   z   "      #   3YY;�  ?PQYYYYYYY0�  PQV�  �  PQ�  �  PQ�  �  PQ�  �  PQ�  �  YYYYYYYY0�  PQV�  �  PQ�  �  Y0�  PQV�  ;�  �  T�  PQ�  ;�  �  T�	  PQ�  �  T�%  PQ�  ;�
  �  P�  T�  P�  R�  QR�  T�  P�  R�  QQ�  �  T�  �
  �  �  P�  QY`  [gd_scene load_steps=5 format=2]

[ext_resource path="res://Snake.tscn" type="PackedScene" id=1]
[ext_resource path="res://background1.webp" type="Texture" id=2]
[ext_resource path="res://Eat.tscn" type="PackedScene" id=3]
[ext_resource path="res://Main.gd" type="Script" id=4]

[node name="Main" type="Node2D"]
script = ExtResource( 4 )

[node name="TextureRect" type="TextureRect" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -1600.0
margin_top = -1600.0
margin_right = -800.0
margin_bottom = -800.0
rect_scale = Vector2( 4, 4 )
rect_pivot_offset = Vector2( 0.637543, 0.478661 )
texture = ExtResource( 2 )
stretch_mode = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Eat" parent="." instance=ExtResource( 3 )]
position = Vector2( 260.678, 136.225 )

[node name="Snake" parent="." instance=ExtResource( 1 )]
[connection signal="spawn_eat" from="Snake" to="." method="_on_Snake_spawn_eat"]
   GDSC   $      9   v     ���ӄ�   ���Ӷ���   ��¶   ����������Ҷ   ���Ӷ���   ��������¶��   ��������¶��   ����¶��   ���������������������Ҷ�   ��������������Ӷ   ��������Ҷ��   �������ض���   �������Ŷ���   ����׶��   ��������Ӷ��   ߶��   ��������������¶   ��������   ��������Ҷ��   ���Ķ���   �����������ض���   �������϶���   �������������Ӷ�   ���������Ҷ�   ����Ҷ��   ��Ҷ   �������Ӷ���   �������Ӷ���   ��������Ҷ��   �����ׄ򶶶�   ���۶���   �����Ӷ�   ������Ӷ   �������Ӷ���   ��������������������������¶   ����������ڶ      res://SnakeTale.tscn      res://Eat.tscn    {�G�z�?          	   ui_accept         hellp              �?        �������?  -C��6?   
      	   spawn_eat                                                       	   "   
   #      )      2      7      ?      @      G      K      O      W      [      _      `      f      s      }      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -   (  .   +  /   7  0   R  1   S  2   T  3   Z  4   b  5   i  6   n  7   s  8   t  9   3YY;�  ?PQY;�  ?P�  QYY;�  �  Y;�  �  YYB�  YY0�  PQV�  &�  T�  P�  QV�  �?  P�  Q�  �	  PW�
  T�  QYY0�  P�  QV�  �  PQ�  �  �  �  &P�  �  QV�  �  PQ�  �  �  YY0�  PQV�  )�  �K  P�  R�  PQQV�  ;�  �  P�  �  Q�  ;�  �  P�  Q�  �  T�  �  T�  �  &�  �  �  V�  �  T�  �  T�  PP�  T�  �  T�  QT�  PQW�
  T�  �  Q�  (V�  �  T�  �  T�  PP�  T�  �  T�  QT�  PQW�
  T�  �  Q�  �  YY0�	  P�  QV�  ;�  �  T�  PQ�  �  �  T�  �  �  �  T�  �  �  �  P�  Q�  �  ;�  �  P�  PQ�  Q�  ;�  �  P�  PQ�  Q�  &�  PQ�  V�  �  T�  �  T�  �  T�  �	  �  (V�  �  T�  �  T�  �  T�  �  W�
  �  T�  W�
  �  T�  W�
  �  T�   T�!  PQ�
  YYY0�"  PQV�  �	  PW�
  T�  Q�  W�
  T�  �  �  �#  P�  Q�  �#  P�  Q�  Y`              [gd_scene load_steps=3 format=2]

[ext_resource path="res://Snake.gd" type="Script" id=1]
[ext_resource path="res://SnakeHead.tscn" type="PackedScene" id=2]

[node name="Snake" type="Node2D"]
script = ExtResource( 1 )

[node name="SnakeHead" parent="." instance=ExtResource( 2 )]
position = Vector2( 0.471939, -0.943878 )

[node name="Camera2D" type="Camera2D" parent="SnakeHead"]
current = true
limit_left = -1600
limit_top = -1600
limit_right = 1600
limit_bottom = 1600
limit_smoothed = true
drag_margin_h_enabled = true
drag_margin_v_enabled = true
smoothing_enabled = true
smoothing_speed = 4.0
offset_h = 0.05
offset_v = 0.05
[connection signal="catch_the_eat" from="SnakeHead" to="." method="_on_SnakeHead_catch_the_eat"]
        GDSC      
   X   g     ������������τ�   ����Ҷ��   ���������Ҷ�   �����޶�   �������϶���   ������������¶��   �������������Ӷ�   ����ƶ��   ������¶   �������۶���   �����¶�   ��������ض��   �������Ķ���   ��������¶��   ����¶��   ���������������������Ҷ�   ���������¶�   Ҷ��   �������ض���   ����������Ҷ   �����Ѷ�   ϶��   ζ��   ���������Ҷ�   ���������������Ŷ���   ����׶��   �������������Ӷ�   ��¶   ����������ڶ   �                     ui_right      ui_left       ui_down       ui_up                     catch_the_eat                                                    !   	   "   
   &      )      ,      /      1      3      4      8      <      =      C      D      M      Q      W      `      d      j      s      w      }      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7     8     9     :     ;     <   $  =   *  >   4  ?   5  @   <  A   =  B   A  C   H  D   I  E   O  F   T  G   U  H   V  I   W  J   X  K   Y  L   Z  M   [  N   \  O   ]  P   ^  Q   _  R   `  S   a  T   b  U   c  V   d  W   e  X   3Y8P�  Q;�  Y;�  �  YY;�  �  Y;�  �  PQYYB�  YY>�  N�  �  R�  �  R�  �	  R�  �
  YOYY;�  SY;�  SYY0�  PQVY�  &�  T�  P�  QV�  �  �  �  �  �  T�  �  &�  T�  P�  QV�  �  �  �  �  �  T�
  �  &�  T�  P�  QV�  �  �  �  �  �  T�	  �  &�  T�  P�  QV�  �  �  �  �  �  T�  �  �  Y0�  P�  QV�  �  �  �  �  �  �  Y0�  PQV�  &�  �  V�  /�  V�  �  T�	  V�  PZQ�  �  T�
  V�  PZ�  Q�  �  T�  V�  P�  Q�  �  T�  V�  PZ�  QYY0�  PQV�  �  �  PQ�  �  �  PQ�  �  PQ�  &�  �  T�	  V�  �  T�  �  �  &�  �  T�  V�  �  T�  �  �  �  &�  �  T�
  V�  �  T�  �  �  &�  �  T�  V�  �  T�  �  �  �  �  T�  PQ�  �  Y0�  P�  QV�  �  �  PQ�  �  �  P�  QYY0�  PQV�  �  P�	  QYYYYYYY�  Y�  YYYYYYYY` [gd_scene load_steps=4 format=2]

[ext_resource path="res://SnakeHead.gd" type="Script" id=1]
[ext_resource path="res://head.png" type="Texture" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 19.6724

[node name="SnakeHead" type="KinematicBody2D"]
collision_layer = 4
collision_mask = 2147483650
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 15.5597, -6.07507 )
scale = Vector2( 2.5, 2.5 )
texture = ExtResource( 3 )
offset = Vector2( -6.1662, 2.64643 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0.813019, 0.587719 )
rotation = 3.14159
shape = SubResource( 1 )

[node name="RayCast2D" type="RayCast2D" parent="."]
rotation = 3.14159
scale = Vector2( 3.5, 0.3 )
enabled = true
      GDSC                   ������������τ�   �������϶���   �����������ض���             	                  3Y;�  �  PQY;�  �  PQYY`         [gd_scene load_steps=5 format=2]

[ext_resource path="res://SnakeTale.gd" type="Script" id=1]
[ext_resource path="res://tale.png" type="Texture" id=2]

[sub_resource type="CanvasItemMaterial" id=2]
render_priority = 1

[sub_resource type="CircleShape2D" id=3]
radius = 12.0606

[node name="SnakeTale" type="KinematicBody2D"]
collision_layer = 2
collision_mask = 3
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
material = SubResource( 2 )
use_parent_material = true
scale = Vector2( 2, 2 )
texture = ExtResource( 2 )
offset = Vector2( 0.113548, -0.249921 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 3 )
             RSRC                    BitMap                                                                       resource_local_to_scene    resource_name    data    script        
   local://1 �          BitMap                   size 
     �A  �A      data    !                                       RSRC        [remap]

importer="bitmap"
type="BitMap"
path="res://.import/background1.bmp-3eadea2a4841a235afa0780d7584ac38.res"

[deps]

source_file="res://background1.bmp"
dest_files=[ "res://.import/background1.bmp-3eadea2a4841a235afa0780d7584ac38.res" ]

[params]

create_from=0
threshold=0.5
     GDST               �  PNG �PNG

   IHDR         ��h6   sRGB ���  rIDAT(�M��kUW����׹��s�ƁtZ:u"bt�,AP�0�� b��J"T�D��/0`��8un�)��p�$�7��s�>�� ��њ,�Ţ��Z�~>�xi���EQĈ@�;%���v�ۯ���c�!pQ���H5�/���=��3wrq�Җ�����G�^�GF��1R�F���p��9J���������H Y)��޴F{iZ%D[�"1�X�k
���Lʴ�_���Ri;1��֋��"��Q`߱FEI	 s�vM��j�����L�Ϸ7��A��7^.�-�Mѫ��)ʦCS�3;��&�?{��00>*�n?���*	��  �Iw�����g�*����g�O8�U���LT���  �@��n�[��L\����֬ls��;%� '�A B���^�-��ȷ2���� y���Q��Λ�W vۉȡ2v�3���*l�H �du{ji���˼S����c(��B;U4��f:�@�Ѷ�֋@D45=�ux�8�wW��0(��N:+���m2���ү��v��x%D�^����u��Ʃܙ/���� d�ܙ����{��{��<0ypr��u$ ����ˌW������0�i�S�l�7w�MAD)��`�f�
�-��I    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/background1.jpg-8f09570e239df7571f65d4a046b34658.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://background1.jpg"
dest_files=[ "res://.import/background1.jpg-8f09570e239df7571f65d4a046b34658.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST               4  PNG �PNG

   IHDR         ��h6   sRGB ���   �IDAT(���1�0���.JL4��b�17��;:�!�x��@�q8��t��z��Zg�� @��*��S�,���u�3���QFz���+?����(/7�����o�f���0!��G�y�$uH��kߠi�sB��S�7����;�y*t�C�ٮ���:;O�*9V�T��' f��uz�.� �D���q\%<�0kV7kIa���!I$�E뒋v�b~�3{^h�Y7��}`��o����n    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/background1.webp-2adc7bc7f6dbd3821c1e0d00cf1ba22a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://background1.webp"
dest_files=[ "res://.import/background1.webp-2adc7bc7f6dbd3821c1e0d00cf1ba22a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8�cL*Z������>�Ȑ,�,ƀG��	Y�6����4
�!��1�h��c;&����<��H҅��p��Vy��10��±�P\�K3N`�Ҍ� b4�5 Y3z�4 �f�0AXc����t@���/�h� ��Fȝ�D�    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/head.png-0428d563356e710cdcd7f6194063b110.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://head.png"
dest_files=[ "res://.import/head.png-0428d563356e710cdcd7f6194063b110.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST                  PNG �PNG

   IHDR         ��a   sRGB ���   5IDAT8�cL*Z��D�f�؎I$i��ȣ�F5`p ���Mw  ��� �    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tale.png-4ed180d451bfbfe4cbe42b1e0bbfa7e6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tale.png"
dest_files=[ "res://.import/tale.png-4ed180d451bfbfe4cbe42b1e0bbfa7e6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST�   �            �  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  �IDATx��۽kw����PBb� hJ���!/���А:��Rp�d��P���ɐf�
�K��)I뒡�R2h	��z0�ܘ$."�� �Y��仜��!����W��������e4{|9U\����_=V�������(D-�f�/�Jd���ԅ��q�_�M�?�n$��l���ߏ.���K��2�W�@0�$�:ye���� �$�=ye����A��$&=ye��'������=�*2OQn��6�Y��e�������IOb��$P /�<=���(�}����U�@Y���_U���'&�<��O���z���"�ĕ�"K�$0�G���ȼ��B���(� �I��:�
)��}�������?���#�37���7S�I�F�q�7��X*�&Б��_���3<�_$nA�J~Q�˒��,���.�p��;�e���;�j�����S��9��V����=�k,V�Vazοe`����Ә;Bj���������Ir�n������ �z�C� -@_!X�g��N� B�����=O�u����h�������ȃb=@~jj4�F��юL��m�M�No�d�ź[�$�Q+j����[�����w3�єV���k��z��WW�>���>q�秽N0*��,_�mzE`�fݱ�|�-K�f����o�M��~�߹��H*�_�*~!he���VԾ�-g�>8�s��$S��^ϧ�O�;\Y0�ӳ^�{���?Z�_�k�ʂ�=�x�q��Ռܮ��DQ$�"����x���cAW�{-�>��7���4X�^���HzM�t��3�8HO~h��zu�������G�����F��S��g��g��3�t��!I��^~���7������1�iolh����{r�ۗi�v7д76$I˿>R�Vӿ���w'�� ��K����^�xQ��N�%Q'r=@�VSǶ���M���c����<Pn��&�cۚZ[���Kj�v�ǆ��ښ��߱m/��J'�@��t��ѣ^����M}���ϑ#�>�?�)�|I��Z����o��PPK��<s&q ɟ^3��H>                                                          `��d��@�    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/texturemap.png-c860c754793a041aef3a55715581077f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://texturemap.png"
dest_files=[ "res://.import/texturemap.png-c860c754793a041aef3a55715581077f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
            [remap]

path="res://Eat.gdc"
  [remap]

path="res://Main.gdc"
 [remap]

path="res://Snake.gdc"
[remap]

path="res://SnakeHead.gdc"
            [remap]

path="res://SnakeTale.gdc"
            �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         snake      application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �     display/window/size/test_width            display/window/size/test_height      X     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/ui_leftP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/ui_rightP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/ui_upP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/ui_downP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script      )   rendering/environment/default_environment          res://default_env.tres      
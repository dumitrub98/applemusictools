FasdUAS 1.101.10   ��   ��    k             l     ��  ��    > 8 AppleScript for randomizing a playlist in the Music app     � 	 	 p   A p p l e S c r i p t   f o r   r a n d o m i z i n g   a   p l a y l i s t   i n   t h e   M u s i c   a p p   
  
 l     ��������  ��  ��        l     ��  ��    5 / Prompt the user for the original playlist name     �   ^   P r o m p t   t h e   u s e r   f o r   t h e   o r i g i n a l   p l a y l i s t   n a m e      l     ����  I    ��  
�� .sysodlogaskr        TEXT  m        �   P E n t e r   t h e   n a m e   o f   t h e   o r i g i n a l   p l a y l i s t :  �� ��
�� 
dtxt  m       �    ��  ��  ��        l    ����  r        n       !   1   	 ��
�� 
ttxt ! l   	 "���� " 1    	��
�� 
rslt��  ��    o      ���� ,0 originalplaylistname originalPlaylistName��  ��     # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   ' ; 5 The name of the randomized playlist (temporary name)    ( � ) ) j   T h e   n a m e   o f   t h e   r a n d o m i z e d   p l a y l i s t   ( t e m p o r a r y   n a m e ) &  * + * l    ,���� , r     - . - b     / 0 / o    ���� ,0 originalplaylistname originalPlaylistName 0 m     1 1 � 2 2    ( R a n d o m i z e d ) . o      ���� 00 randomizedplaylistname randomizedPlaylistName��  ��   +  3 4 3 l     ��������  ��  ��   4  5 6 5 l     �� 7 8��   7 !  Open the Music application    8 � 9 9 6   O p e n   t h e   M u s i c   a p p l i c a t i o n 6  : ; : l   � <���� < O    � = > = k    � ? ?  @ A @ l   �� B C��   B , & Check if the original playlist exists    C � D D L   C h e c k   i f   t h e   o r i g i n a l   p l a y l i s t   e x i s t s A  E F E Z    L G H���� G H    ) I I l   ( J���� J I   (�� K��
�� .coredoexnull���     obj  K l   $ L���� L 6   $ M N M 3    ��
�� 
cPly N =   # O P O 1    ��
�� 
pnam P o     "���� ,0 originalplaylistname originalPlaylistName��  ��  ��  ��  ��   H k   , H Q Q  R S R I  , E�� T U
�� .sysodlogaskr        TEXT T b   , 1 V W V b   , / X Y X m   , - Z Z � [ [  P l a y l i s t   ' Y o   - .���� ,0 originalplaylistname originalPlaylistName W m   / 0 \ \ � ] ]  '   n o t   f o u n d ! U �� ^ _
�� 
btns ^ J   4 9 ` `  a�� a m   4 7 b b � c c  O K��   _ �� d��
�� 
dflt d m   < ? e e � f f  O K��   S  g�� g L   F H����  ��  ��  ��   F  h i h l  M M��������  ��  ��   i  j k j l  M M�� l m��   l E ? Delete the previous randomized playlist if it exists (cleanup)    m � n n ~   D e l e t e   t h e   p r e v i o u s   r a n d o m i z e d   p l a y l i s t   i f   i t   e x i s t s   ( c l e a n u p ) k  o p o Z   M t q r���� q l  M ] s���� s I  M ]�� t��
�� .coredoexnull���     obj  t l  M Y u���� u 6  M Y v w v 3   M P��
�� 
cPly w =  Q X x y x 1   R T��
�� 
pnam y o   U W���� 00 randomizedplaylistname randomizedPlaylistName��  ��  ��  ��  ��   r I  ` p�� z��
�� .coredelonull���     obj  z l  ` l {���� { 6  ` l | } | 3   ` c��
�� 
cPly } =  d k ~  ~ 1   e g��
�� 
pnam  o   h j���� 00 randomizedplaylistname randomizedPlaylistName��  ��  ��  ��  ��   p  � � � l  u u��������  ��  ��   �  � � � l  u u�� � ���   �   Create a new playlist    � � � � ,   C r e a t e   a   n e w   p l a y l i s t �  � � � r   u � � � � I  u ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   y |��
�� 
cUsP � �� ���
�� 
prdt � K    � � � �� ���
�� 
pnam � o   � ����� 00 randomizedplaylistname randomizedPlaylistName��  ��   � o      ���� (0 randomizedplaylist randomizedPlaylist �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � !  Find the original playlist    � � � � 6   F i n d   t h e   o r i g i n a l   p l a y l i s t �  � � � r   � � � � � l  � � ����� � 6  � � � � � 3   � ���
�� 
cPly � =  � � � � � 1   � ���
�� 
pnam � o   � ����� ,0 originalplaylistname originalPlaylistName��  ��   � o      ���� $0 originalplaylist originalPlaylist �  � � � r   � � � � � n   � � � � � 2  � ���
�� 
cTrk � o   � ����� $0 originalplaylist originalPlaylist � o      ���� 0 	tracklist 	trackList �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � &   Shuffle the order of the tracks    � � � � @   S h u f f l e   t h e   o r d e r   o f   t h e   t r a c k s �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 simpleshuffle simpleShuffle �  ��� � o   � ����� 0 	tracklist 	trackList��  ��   �  f   � � � o      ���� 0 shuffledlist shuffledList �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 2 , Add the shuffled tracks to the new playlist    � � � � X   A d d   t h e   s h u f f l e d   t r a c k s   t o   t h e   n e w   p l a y l i s t �  � � � X   � � ��� � � I  � ��� � �
�� .coreclon****      � **** � o   � ����� 0 atrack aTrack � �� ���
�� 
insh � o   � ����� (0 randomizedplaylist randomizedPlaylist��  �� 0 atrack aTrack � o   � ����� 0 shuffledlist shuffledList �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � #  Delete the original playlist    � � � � :   D e l e t e   t h e   o r i g i n a l   p l a y l i s t �  � � � I  � ��� ���
�� .coredelonull���     obj  � o   � ����� $0 originalplaylist originalPlaylist��   �  � � � l  � ���~�}�  �~  �}   �  � � � l  � ��| � ��|   � : 4 Rename the randomized playlist to the original name    � � � � h   R e n a m e   t h e   r a n d o m i z e d   p l a y l i s t   t o   t h e   o r i g i n a l   n a m e �  � � � r   � � � � � o   � ��{�{ ,0 originalplaylistname originalPlaylistName � n       � � � 1   � ��z
�z 
pnam � o   � ��y�y (0 randomizedplaylist randomizedPlaylist �  � � � l  � ��x�w�v�x  �w  �v   �  ��u � I  � ��t ��s
�t .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � �  P l a y l i s t   ' � o   � ��r�r ,0 originalplaylistname originalPlaylistName � m   � � � � � � � Z '   h a s   b e e n   s h u f f l e d   a n d   u p d a t e d   s u c c e s s f u l l y !�s  �u   > m     � ��                                                                                      @ alis    ,  Macintosh HD               �y��BD ����	Music.app                                                      �����y��        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ��  ��   ;  � � � l     �q�p�o�q  �p  �o   �  � � � l     �n � ��n   � "  Simplified shuffle function    � � � � 8   S i m p l i f i e d   s h u f f l e   f u n c t i o n �  ��m � i      � � � I      �l ��k�l 0 simpleshuffle simpleShuffle �  ��j � o      �i�i 0 thelist theList�j  �k   � k     A � �  � � � r      � � � o     �h�h 0 thelist theList � o      �g�g 0 shuffledlist shuffledList �  � � � r     � � � I   	�f ��e
�f .corecnte****       **** � o    �d�d 0 shuffledlist shuffledList�e   � o      �c�c 0 totaltracks totalTracks �  � � � Y    > �b�a  k    9  r    ! l   �`�_ I   �^�]	
�^ .sysorandnmbr    ��� nmbr�]  	 �\

�\ 
from
 o    �[�[ 0 i   �Z�Y
�Z 
to   o    �X�X 0 totaltracks totalTracks�Y  �`  �_   o      �W�W 0 	randindex 	randIndex  l  " "�V�V     Swap the items    �    S w a p   t h e   i t e m s  r   " ( n   " & 4   # &�U
�U 
cobj o   $ %�T�T 0 i   o   " #�S�S 0 shuffledlist shuffledList o      �R�R 0 	temptrack 	tempTrack  r   ) 2 n   ) - 4   * -�Q
�Q 
cobj o   + ,�P�P 0 	randindex 	randIndex o   ) *�O�O 0 shuffledlist shuffledList n       !  4   . 1�N"
�N 
cobj" o   / 0�M�M 0 i  ! o   - .�L�L 0 shuffledlist shuffledList #�K# r   3 9$%$ o   3 4�J�J 0 	temptrack 	tempTrack% n      &'& 4   5 8�I(
�I 
cobj( o   6 7�H�H 0 	randindex 	randIndex' o   4 5�G�G 0 shuffledlist shuffledList�K  �b 0 i   m    �F�F  o    �E�E 0 totaltracks totalTracks�a   � )�D) L   ? A** o   ? @�C�C 0 shuffledlist shuffledList�D  �m       �B+,-�B  + �A�@�A 0 simpleshuffle simpleShuffle
�@ .aevtoappnull  �   � ****, �? ��>�=./�<�? 0 simpleshuffle simpleShuffle�> �;0�; 0  �:�: 0 thelist theList�=  . �9�8�7�6�5�4�9 0 thelist theList�8 0 shuffledlist shuffledList�7 0 totaltracks totalTracks�6 0 i  �5 0 	randindex 	randIndex�4 0 	temptrack 	tempTrack/ �3�2�1�0�/�.
�3 .corecnte****       ****
�2 
from
�1 
to  �0 
�/ .sysorandnmbr    ��� nmbr
�. 
cobj�< B�E�O�j  E�O 1k�kh *��� E�O��/E�O��/��/FO���/F[OY��O�- �-1�,�+23�*
�- .aevtoappnull  �   � ****1 k     �44  55  66  *77  :�)�)  �,  �+  2 �(�( 0 atrack aTrack3 & �' �&�%�$�# 1�" ��!8� � Z \� b� e���������������� � �
�' 
dtxt
�& .sysodlogaskr        TEXT
�% 
rslt
�$ 
ttxt�# ,0 originalplaylistname originalPlaylistName�" 00 randomizedplaylistname randomizedPlaylistName
�! 
cPly8  
�  
pnam
� .coredoexnull���     obj 
� 
btns
� 
dflt� 
� .coredelonull���     obj 
� 
kocl
� 
cUsP
� 
prdt
� .corecrel****      � null� (0 randomizedplaylist randomizedPlaylist� $0 originalplaylist originalPlaylist
� 
cTrk� 0 	tracklist 	trackList� 0 simpleshuffle simpleShuffle� 0 shuffledlist shuffledList
� 
cobj
� .corecnte****       ****
� 
insh
� .coreclon****      � ****�* ����l O��,E�O��%E�O� �*�.�[�,\Z�81j  !��%�%a a kva a a  OhY hO*�.�[�,\Z�81j  *�.�[�,\Z�81j Y hO*a a a ��la  E` O*�.�[�,\Z�81E` O_ a -E` O)_ k+ E` O %_ [a a  l !kh  �a "_ l #[OY��O_ j O�_ �,FOa $�%a %%j Uascr  ��ޭ
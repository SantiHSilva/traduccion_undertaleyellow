instance_destroy(obj_radio)
audio_stop_all()
alpha = 0
yy = 540
scrollSpeed = 0
scrollMax = -3800
scroll = 0
draw_bye = 0
global.cutscene = true
obj_pl.image_alpha = 0
string_credits = "Project Lead#\r\nMasterSwordRemix##\r\n\r\nProgramming#\r\nSpasco#MysteryRacer#Deadkat##\r\n\r\nStory and Dialogue#\r\nMasterSwordRemix#Pippy V.#AWildDaydreamer##\r\n\r\nConcept Artists#\r\nAmethysuto      EliArt      Figburn#\r\nGaziter      Glitched Pie      HyaDoki#\r\nMarshie      NeroDawg      Vegard Jensen#\r\nTheAllKnowingNoodle      Grey Duovis##\r\n\r\nSprites#\r\nFigburn      Glitched Pie      Gaziter#\r\nDeadkat      Vegard Jensen      Bloquito#\r\nAmethysuto      NoteBlock#\r\nTheAllKnowingNoodle ##\r\n\r\nEditors#\r\nAWildDaydreamer#JillianBrodsky#TifaPunchFace##\r\n\r\nThe Voice of Mew Mew#\r\nphichanVA##\r\n\r\nSpecial Thanks#\r\nToby Fox      Temmie Chang#\r\nAeroArtwork      angelasamshi#\r\nAnissa Hustins     astroAmphibian#\r\nAutumn     Blumod#\r\ncandy5hark     CommissionerTadpole#\r\nDoggybag     DYLZAL#\r\nEmmalume     Evan Jr.#\r\nGrey Duovis     HyaDoki#\r\nHobo Nate     Icewolf#\r\nInfernoCop     JustMishy#\r\nLitvac     2XMM2#\r\nLumpyTouch     NightMargin#\r\nNinjaTori     Orane#\r\nRaymes     RealDennington#\r\nRonin     Saltydkdan#\r\nSpacedino2     Squiish#\r\nSr. Pelo     Still Liam#\r\nSuperSonic7CE     Sweaterbat#\r\nTaxiderby     The Shufflers#\r\nVegard Jensen     Wolfman98002015#\r\nWrecking Fist     Wrog#\r\nXxAnonymous_xX     Zarla#\r\nZippyjake#\r\n######\r\n\r\nThe End"
string_credits_yellow = "Project Lead#\r\n                ##\r\n\r\nProgramming#\r\n      #            #       ##\r\n\r\nStory and Dialogue#\r\n                #        #               ##\r\n\r\nConcept Artists#\r\n                                   #\r\n                                      #\r\n                                        #\r\n                                    ##\r\n\r\nSprites#\r\n                                      #\r\n                                        #\r\n                         #\r\n                    ##\r\n\r\nEditors#\r\n               #              #             ##\r\n\r\nThe Voice of Mew Mew#\r\n         ##\r\n\r\nSpecial Thanks#\r\n                          #\r\n                             #\r\n                                 #\r\n                 #\r\n                                  #\r\n                   #\r\n                     #\r\n                       #\r\n                     #\r\n                        #\r\n                     #\r\n                          #\r\n                   #\r\n                         #\r\n                    #\r\n                      #\r\n                       #\r\n                            #\r\n                           #\r\n                                 #\r\n                      #\r\n                            #\r\n         #\r\n######\r\n\r\nThe End"
{*******************************************************************************

     The contents of this file are subject to the Mozilla Public License
     Version 1.1 (the "License"); you may not use this file except in
     compliance with the License. You may obtain a copy of the License at
     http://www.mozilla.org/MPL/

     Software distributed under the License is distributed on an "AS IS"
     basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
     License for the specific language governing rights and limitations
     under the License.

*******************************************************************************}

unit wbDefinitionsTES5;

interface

procedure DefineTES5;

implementation

uses
  Types, Classes, SysUtils, Math, Variants,
  wbInterface;

const
  _00_IAD: TwbSignature = #$00'IAD';
  _01_IAD: TwbSignature = #$01'IAD';
  _02_IAD: TwbSignature = #$02'IAD';
  _03_IAD: TwbSignature = #$03'IAD';
  _04_IAD: TwbSignature = #$04'IAD';
  _05_IAD: TwbSignature = #$05'IAD';
  _06_IAD: TwbSignature = #$06'IAD';
  _07_IAD: TwbSignature = #$07'IAD';
  _08_IAD: TwbSignature = #$08'IAD';
  _09_IAD: TwbSignature = #$09'IAD';
  _0A_IAD: TwbSignature = #$0A'IAD';
  _0B_IAD: TwbSignature = #$0B'IAD';
  _0C_IAD: TwbSignature = #$0C'IAD';
  _0D_IAD: TwbSignature = #$0D'IAD';
  _0E_IAD: TwbSignature = #$0E'IAD';
  _0F_IAD: TwbSignature = #$0F'IAD';
  _10_IAD: TwbSignature = #$10'IAD';
  _11_IAD: TwbSignature = #$11'IAD';
  _12_IAD: TwbSignature = #$12'IAD';
  _13_IAD: TwbSignature = #$13'IAD';
  _14_IAD: TwbSignature = #$14'IAD';
  _40_IAD: TwbSignature = #$40'IAD';
  _41_IAD: TwbSignature = #$41'IAD';
  _42_IAD: TwbSignature = #$42'IAD';
  _43_IAD: TwbSignature = #$43'IAD';
  _44_IAD: TwbSignature = #$44'IAD';
  _45_IAD: TwbSignature = #$45'IAD';
  _46_IAD: TwbSignature = #$46'IAD';
  _47_IAD: TwbSignature = #$47'IAD';
  _48_IAD: TwbSignature = #$48'IAD';
  _49_IAD: TwbSignature = #$49'IAD';
  _4A_IAD: TwbSignature = #$4A'IAD';
  _4B_IAD: TwbSignature = #$4B'IAD';
  _4C_IAD: TwbSignature = #$4C'IAD';
  _4D_IAD: TwbSignature = #$4D'IAD';
  _4E_IAD: TwbSignature = #$4E'IAD';
  _4F_IAD: TwbSignature = #$4F'IAD';
  _50_IAD: TwbSignature = #$50'IAD';
  _51_IAD: TwbSignature = #$51'IAD';
  _52_IAD: TwbSignature = #$52'IAD';
  _53_IAD: TwbSignature = #$53'IAD';
  _54_IAD: TwbSignature = #$54'IAD';

{00TX} _00_0TX: TwbSignature = #$30'0TX';
{10TX} _10_0TX: TwbSignature = #$31'0TX';
{20TX} _20_0TX: TwbSignature = #$32'0TX';
{30TX} _30_0TX: TwbSignature = #$33'0TX';
{40TX} _40_0TX: TwbSignature = #$34'0TX';
{50TX} _50_0TX: TwbSignature = #$35'0TX';
{60TX} _60_0TX: TwbSignature = #$36'0TX';
{70TX} _70_0TX: TwbSignature = #$37'0TX';
{80TX} _80_0TX: TwbSignature = #$38'0TX';
{90TX} _90_0TX: TwbSignature = #$39'0TX';
{:0TX} _3A_0TX: TwbSignature = #$3A'0TX';
{;0TX} _3B_0TX: TwbSignature = #$3B'0TX';
{<0TX} _3C_0TX: TwbSignature = #$3C'0TX';
{=0TX} _3D_0TX: TwbSignature = #$3D'0TX';
{>0TX} _3E_0TX: TwbSignature = #$3E'0TX';
{?0TX} _3F_0TX: TwbSignature = #$3F'0TX';
{@0TX} _40h_0TX: TwbSignature = #$40'0TX';
{A0TX} A0TX: TwbSignature = 'A0TX';
{B0TX} B0TX: TwbSignature = 'B0TX';
{C0TX} C0TX: TwbSignature = 'C0TX';
{D0TX} D0TX: TwbSignature = 'D0TX';
{E0TX} E0TX: TwbSignature = 'E0TX';
{F0TX} F0TX: TwbSignature = 'F0TX';
{G0TX} G0TX: TwbSignature = 'G0TX';
{H0TX} H0TX: TwbSignature = 'H0TX';
{I0TX} I0TX: TwbSignature = 'I0TX';
{J0TX} J0TX: TwbSignature = 'J0TX';
{K0TX} K0TX: TwbSignature = 'K0TX';
{L0TX} L0TX: TwbSignature = 'L0TX';

  AACT : TwbSignature = 'AACT';
  ACBS : TwbSignature = 'ACBS';
  ACEC : TwbSignature = 'ACEC'; { New To Dawnguard }
  ACEP : TwbSignature = 'ACEP'; { New To Dawnguard }
  ACHR : TwbSignature = 'ACHR';
  ACID : TwbSignature = 'ACID'; { New To Dawnguard }
  ACPR : TwbSignature = 'ACPR'; { New To Skyrim }
  ACSR : TwbSignature = 'ACSR'; { New To Dawnguard }
  ACTI : TwbSignature = 'ACTI';
  ACUN : TwbSignature = 'ACUN'; { New To Dawnguard }
  ADDN : TwbSignature = 'ADDN';
  AHCF : TwbSignature = 'AHCF'; { New To Skyrim }
  AHCM : TwbSignature = 'AHCM'; { New To Skyrim }
  AIDT : TwbSignature = 'AIDT';
  ALCA : TwbSignature = 'ALCA'; { New To Skyrim }
  ALCH : TwbSignature = 'ALCH';
  ALCL : TwbSignature = 'ALCL'; { New To Skyrim }
  ALCO : TwbSignature = 'ALCO'; { New To Skyrim }
  ALDN : TwbSignature = 'ALDN'; { New To Skyrim }
  ALEA : TwbSignature = 'ALEA'; { New To Skyrim }
  ALED : TwbSignature = 'ALED'; { New To Skyrim }
  ALEQ : TwbSignature = 'ALEQ'; { New To Skyrim }
  ALFA : TwbSignature = 'ALFA'; { New To Skyrim }
  ALFC : TwbSignature = 'ALFC'; { New To Skyrim }
  ALFD : TwbSignature = 'ALFD'; { New To Skyrim }
  ALFE : TwbSignature = 'ALFE'; { New To Skyrim }
  ALFI : TwbSignature = 'ALFI'; { New To Skyrim }
  ALFL : TwbSignature = 'ALFL'; { New To Skyrim }
  ALFR : TwbSignature = 'ALFR'; { New To Skyrim }
  ALID : TwbSignature = 'ALID'; { New To Skyrim }
  ALLS : TwbSignature = 'ALLS'; { New To Skyrim }
  ALNA : TwbSignature = 'ALNA'; { New To Skyrim }
  ALNT : TwbSignature = 'ALNT'; { New To Skyrim }
  ALPC : TwbSignature = 'ALPC'; { New To Skyrim }
  ALRT : TwbSignature = 'ALRT'; { New To Skyrim }
  ALSP : TwbSignature = 'ALSP'; { New To Skyrim }
  ALST : TwbSignature = 'ALST'; { New To Skyrim }
  ALUA : TwbSignature = 'ALUA'; { New To Skyrim }
  AMMO : TwbSignature = 'AMMO';
  ANAM : TwbSignature = 'ANAM';
  ANIO : TwbSignature = 'ANIO';
  APPA : TwbSignature = 'APPA';
  ARMA : TwbSignature = 'ARMA';
  ARMO : TwbSignature = 'ARMO';
  ARTO : TwbSignature = 'ARTO';
  ASPC : TwbSignature = 'ASPC';
  ASTP : TwbSignature = 'ASTP';
  ATKD : TwbSignature = 'ATKD'; { New to Skyrim }
  ATKE : TwbSignature = 'ATKE'; { New to Skyrim }
  ATKR : TwbSignature = 'ATKR'; { New to Skyrim }
  ATXT : TwbSignature = 'ATXT';
  AVIF : TwbSignature = 'AVIF';
  AVSK : TwbSignature = 'AVSK'; { New to Skyrim }
  BAMT : TwbSignature = 'BAMT'; { New to Skyrim }
  BIDS : TwbSignature = 'BIDS'; { New to Skyrim }
  BIPL : TwbSignature = 'BIPL';
  BMCT : TwbSignature = 'BMCT';
  BNAM : TwbSignature = 'BNAM';
  BOD2 : TwbSignature = 'BOD2'; { New to Skyrim 1.6.91 CK}
  BODT : TwbSignature = 'BODT'; { New to Skyrim }
  BOOK : TwbSignature = 'BOOK';
  BPND : TwbSignature = 'BPND';
  BPNI : TwbSignature = 'BPNI';
  BPNN : TwbSignature = 'BPNN';
  BPNT : TwbSignature = 'BPNT';
  BPTD : TwbSignature = 'BPTD';
  BPTN : TwbSignature = 'BPTN';
  BTXT : TwbSignature = 'BTXT';
  CAMS : TwbSignature = 'CAMS';
  CELL : TwbSignature = 'CELL';
  CIS1 : TwbSignature = 'CIS1'; { New to Skyrim }
  CIS2 : TwbSignature = 'CIS2'; { New to Skyrim }
  CITC : TwbSignature = 'CITC'; { New to Skyrim }
  CLAS : TwbSignature = 'CLAS';
  CLDC : TwbSignature = 'CLDC'; { New to Skyrim, but unused }
  CLFM : TwbSignature = 'CLFM';
  CLMT : TwbSignature = 'CLMT';
  CNAM : TwbSignature = 'CNAM';
  CNTO : TwbSignature = 'CNTO';
  COBJ : TwbSignature = 'COBJ';
  COCT : TwbSignature = 'COCT'; { New to Skyrim 'Count'}
  COED : TwbSignature = 'COED';
  COLL : TwbSignature = 'COLL';
  CONT : TwbSignature = 'CONT';
  CPTH : TwbSignature = 'CPTH';
  CRDT : TwbSignature = 'CRDT';
  CRGR : TwbSignature = 'CRGR'; { New to Skyrim }
  CRIF : TwbSignature = 'CRIF'; { New to Skyrim }
  CRVA : TwbSignature = 'CRVA'; { New to Skyrim }
  CSCR : TwbSignature = 'CSCR';
  CSDC : TwbSignature = 'CSDC';
  CSDI : TwbSignature = 'CSDI';
  CSDT : TwbSignature = 'CSDT';
  CSFL : TwbSignature = 'CSFL'; { New to Skyrim }
  CSGD : TwbSignature = 'CSGD'; { New to Skyrim }
  CSLR : TwbSignature = 'CSLR'; { New to Skyrim }
  CSMD : TwbSignature = 'CSMD'; { New to Skyrim }
  CSME : TwbSignature = 'CSME'; { New to Skyrim }
  CSTY : TwbSignature = 'CSTY';
  CTDA : TwbSignature = 'CTDA';
  DALC : TwbSignature = 'DALC'; { New to Skyrim }
  DATA : TwbSignature = 'DATA';
  DEBR : TwbSignature = 'DEBR';
  DELE : TwbSignature = 'DELE';
  DEMO : TwbSignature = 'DEMO'; { New to Skyrim }
  DESC : TwbSignature = 'DESC';
  DEST : TwbSignature = 'DEST';
  DEVA : TwbSignature = 'DEVA'; { New to Skyrim }
  DFTF : TwbSignature = 'DFTF'; { New To Skyrim }
  DFTM : TwbSignature = 'DFTM'; { New To Skyrim }
  DIAL : TwbSignature = 'DIAL';
  DLBR : TwbSignature = 'DLBR';
  DLVW : TwbSignature = 'DLVW';
  DMAX : TwbSignature = 'DMAX'; { New to Skyrim }
  DMDL : TwbSignature = 'DMDL';
  DMDS : TwbSignature = 'DMDS'; { New to Skyrim }
  DMDT : TwbSignature = 'DMDT';
  DMIN : TwbSignature = 'DMIN'; { New to Skyrim }
  DNAM : TwbSignature = 'DNAM';
  DOBJ : TwbSignature = 'DOBJ';
  DODT : TwbSignature = 'DODT';
  DOFT : TwbSignature = 'DOFT'; { New to Skyrim }
  DOOR : TwbSignature = 'DOOR';
  DPLT : TwbSignature = 'DPLT'; { New to Skyrim }
  DSTD : TwbSignature = 'DSTD';
  DSTF : TwbSignature = 'DSTF';
  DUAL : TwbSignature = 'DUAL';
  EAMT : TwbSignature = 'EAMT';
  ECOR : TwbSignature = 'ECOR'; { New to Skyrim }
  ECZN : TwbSignature = 'ECZN';
  EDID : TwbSignature = 'EDID';
  EFID : TwbSignature = 'EFID';
  EFIT : TwbSignature = 'EFIT';
  EFSH : TwbSignature = 'EFSH';
  EITM : TwbSignature = 'EITM';
  ENAM : TwbSignature = 'ENAM';
  ENCH : TwbSignature = 'ENCH';
  ENIT : TwbSignature = 'ENIT';
  EPF2 : TwbSignature = 'EPF2';
  EPF3 : TwbSignature = 'EPF3';
  EPFD : TwbSignature = 'EPFD';
  EPFT : TwbSignature = 'EPFT';
  EQUP : TwbSignature = 'EQUP';
  ESCE : TwbSignature = 'ESCE';
  ETYP : TwbSignature = 'ETYP';
  EXPL : TwbSignature = 'EXPL';
  EYES : TwbSignature = 'EYES';
  FACT : TwbSignature = 'FACT';
  FCHT : TwbSignature = 'FCHT'; { New to Skyrim }
  FLMV : TwbSignature = 'FLMV'; { New to Skyrim }
  FLOR : TwbSignature = 'FLOR';
  FLST : TwbSignature = 'FLST';
  FLTR : TwbSignature = 'FLTR'; { New to Skyrim }
  FLTV : TwbSignature = 'FLTV';
  FNAM : TwbSignature = 'FNAM';
  FNMK : TwbSignature = 'FNMK'; { New to Skyrim }
  FNPR : TwbSignature = 'FNPR'; { New to Skyrim }
  FPRT : TwbSignature = 'FPRT'; { New to Skyrim }
  FSTP : TwbSignature = 'FSTP';
  FSTS : TwbSignature = 'FSTS';
  FTSF : TwbSignature = 'FTSF'; { New to Skyrim }
  FTSM : TwbSignature = 'FTSM'; { New to Skyrim }
  FTST : TwbSignature = 'FTST'; { New to Skyrim }
  FULL : TwbSignature = 'FULL';
  FURN : TwbSignature = 'FURN';
  GLOB : TwbSignature = 'GLOB';
  GMST : TwbSignature = 'GMST';
  GNAM : TwbSignature = 'GNAM';
  GRAS : TwbSignature = 'GRAS';
  GWOR : TwbSignature = 'GWOR'; { New to Skyrim }
  HAIR : TwbSignature = 'HAIR'; { Unused in Skyrim, but contained in Skyrim.esm }
  HAZD : TwbSignature = 'HAZD';
  HCLF : TwbSignature = 'HCLF'; { New to Skyrim }
  HDPT : TwbSignature = 'HDPT';
  HEAD : TwbSignature = 'HEAD'; { New to Skyrim }
  HEDR : TwbSignature = 'HEDR';
  HNAM : TwbSignature = 'HNAM';
  HTID : TwbSignature = 'HTID'; { New to Skyrim }
  ICO2 : TwbSignature = 'ICO2';
  ICON : TwbSignature = 'ICON';
  IDLA : TwbSignature = 'IDLA';
  IDLB : TwbSignature = 'IDLB';
  IDLC : TwbSignature = 'IDLC';
  IDLE : TwbSignature = 'IDLE';
  IDLF : TwbSignature = 'IDLF';
  IDLM : TwbSignature = 'IDLM';
  IDLT : TwbSignature = 'IDLT';
  IMAD : TwbSignature = 'IMAD';
  IMGS : TwbSignature = 'IMGS';
  IMSP : TwbSignature = 'IMSP'; { New to Skyrim }
  INAM : TwbSignature = 'INAM';
  INCC : TwbSignature = 'INCC'; { New to Skyrim }
  INDX : TwbSignature = 'INDX';
  INFO : TwbSignature = 'INFO';
  INGR : TwbSignature = 'INGR';
  INTV : TwbSignature = 'INTV';
  IPCT : TwbSignature = 'IPCT';
  IPDS : TwbSignature = 'IPDS';
  ITXT : TwbSignature = 'ITXT';
  JAIL : TwbSignature = 'JAIL'; { New To Skyrim }
  JNAM : TwbSignature = 'JNAM';
  JOUT : TwbSignature = 'JOUT'; { New To Skyrim }
  KEYM : TwbSignature = 'KEYM';
  KNAM : TwbSignature = 'KNAM';
  KSIZ : TwbSignature = 'KSIZ';
  KWDA : TwbSignature = 'KWDA';
  KYWD : TwbSignature = 'KYWD';
  LAND : TwbSignature = 'LAND';
  LCEC : TwbSignature = 'LCEC'; { New to Skyrim }
  LCEP : TwbSignature = 'LCEP'; { New to Skyrim }
  LCID : TwbSignature = 'LCID'; { New to Skyrim }
  LCPR : TwbSignature = 'LCPR'; { New to Skyrim }
  LCRT : TwbSignature = 'LCRT';
  LCSR : TwbSignature = 'LCSR'; { New to Skyrim }
  LCTN : TwbSignature = 'LCTN';
  LCUN : TwbSignature = 'LCUN'; { New to Skyrim }
  LGTM : TwbSignature = 'LGTM';
  LIGH : TwbSignature = 'LIGH';
  LLCT : TwbSignature = 'LLCT'; {New to Skyrim, part of LVLI 'Count'}
  LNAM : TwbSignature = 'LNAM';
  LSCR : TwbSignature = 'LSCR';
  LTEX : TwbSignature = 'LTEX';
  LTMP : TwbSignature = 'LTMP';
  LVLC : TwbSignature = 'LVLC';
  LVLD : TwbSignature = 'LVLD';
  LVLF : TwbSignature = 'LVLF';
  LVLG : TwbSignature = 'LVLG';
  LVLI : TwbSignature = 'LVLI';
  LVLN : TwbSignature = 'LVLN';
  LVLO : TwbSignature = 'LVLO';
  LVSP : TwbSignature = 'LVSP';
  MAST : TwbSignature = 'MAST';
  MATO : TwbSignature = 'MATO';
  MATT : TwbSignature = 'MATT';
  MCHT : TwbSignature = 'MCHT'; { New to Skyrim }
  MDOB : TwbSignature = 'MDOB';
  MESG : TwbSignature = 'MESG';
  MGEF : TwbSignature = 'MGEF';
  MHDT : TwbSignature = 'MHDT'; { New to Skyrim }
  MIC2 : TwbSignature = 'MIC2';
  MICO : TwbSignature = 'MICO';
  MISC : TwbSignature = 'MISC';
  MNAM : TwbSignature = 'MNAM';
  MO2S : TwbSignature = 'MO2S';
  MO2T : TwbSignature = 'MO2T';
  MO3S : TwbSignature = 'MO3S';
  MO3T : TwbSignature = 'MO3T';
  MO4S : TwbSignature = 'MO4S';
  MO4T : TwbSignature = 'MO4T';
  MO5S : TwbSignature = 'MO5S'; { New to Skyrim }
  MO5T : TwbSignature = 'MO5T'; { New to Skyrim }
  MOD2 : TwbSignature = 'MOD2';
  MOD3 : TwbSignature = 'MOD3';
  MOD4 : TwbSignature = 'MOD4';
  MOD5 : TwbSignature = 'MOD5'; { New to Skyrim }
  MODD : TwbSignature = 'MODD';
  MODL : TwbSignature = 'MODL';
  MODS : TwbSignature = 'MODS';
  MODT : TwbSignature = 'MODT';
  MOVT : TwbSignature = 'MOVT';
  MPAI : TwbSignature = 'MPAI'; { New To Skyrim }
  MPAV : TwbSignature = 'MPAV'; { New To Skyrim }
  MPRT : TwbSignature = 'MPRT'; { New to Skyrim }
  MSTT : TwbSignature = 'MSTT';
  MTNM : TwbSignature = 'MTNM'; { New to Skyrim }
  MTYP : TwbSignature = 'MTYP'; { New To Skyrim }
  MUSC : TwbSignature = 'MUSC';
  MUST : TwbSignature = 'MUST';
  NAM0 : TwbSignature = 'NAM0';
  NAM1 : TwbSignature = 'NAM1';
  NAM2 : TwbSignature = 'NAM2';
  NAM3 : TwbSignature = 'NAM3';
  NAM4 : TwbSignature = 'NAM4';
  NAM5 : TwbSignature = 'NAM5';
  NAM6 : TwbSignature = 'NAM6';
  NAM7 : TwbSignature = 'NAM7';
  NAM8 : TwbSignature = 'NAM8';
  NAM9 : TwbSignature = 'NAM9';
  NAMA : TwbSignature = 'NAMA'; { New to Skyrim }
  NAME : TwbSignature = 'NAME';
  NAVI : TwbSignature = 'NAVI';
  NAVM : TwbSignature = 'NAVM';
  NEXT : TwbSignature = 'NEXT';
  NNAM : TwbSignature = 'NNAM';
  NPC_ : TwbSignature = 'NPC_';
  NULL : TwbSignature = 'NULL';
  NVER : TwbSignature = 'NVER';
  NVMI : TwbSignature = 'NVMI';
  NVNM : TwbSignature = 'NVNM'; { New to Skyrim }
  NVPP : TwbSignature = 'NVPP'; { New to Skyrim }
  NVSI : TwbSignature = 'NVSI'; { New to Dawnguard }
  OBND : TwbSignature = 'OBND';
  OCOR : TwbSignature = 'OCOR'; { New to Skyrim }
  OFST : TwbSignature = 'OFST';
  ONAM : TwbSignature = 'ONAM';
  OTFT : TwbSignature = 'OTFT';
  PACK : TwbSignature = 'PACK';
  PARW : TwbSignature = 'PARW'; { New to Skyrim }
  PBAR : TwbSignature = 'PBAR'; { New to Skyrim }
  PBEA : TwbSignature = 'PBEA'; { New to Skyrim }
  PCON : TwbSignature = 'PCON'; { New to Skyrim }
  PDTO : TwbSignature = 'PDTO'; { New to Skyrim }
  PERK : TwbSignature = 'PERK';
  PFIG : TwbSignature = 'PFIG';
  PFLA : TwbSignature = 'PFLA'; { New to Skyrim }
  PFO2 : TwbSignature = 'PFO2'; { New to Skyrim }
  PFOR : TwbSignature = 'PFOR'; { New to Skyrim }
  PFPC : TwbSignature = 'PFPC';
  PGRE : TwbSignature = 'PGRE';
  PHTN : TwbSignature = 'PHTN'; { New to Skyrim }
  PHWT : TwbSignature = 'PHWT'; { New to Skyrim }
  PHZD : TwbSignature = 'PHZD';
  PKC2 : TwbSignature = 'PKC2'; { New to Skyrim }
  PKCU : TwbSignature = 'PKCU'; { New to Skyrim }
  PKDT : TwbSignature = 'PKDT';
  PKID : TwbSignature = 'PKID';
  PLCN : TwbSignature = 'PLCN'; { New to Skyrim }
  PLDT : TwbSignature = 'PLDT';
  PLVD : TwbSignature = 'PLVD'; { New to Skyrim }
  PLYR : TwbSignature = 'PLYR';
  PMIS : TwbSignature = 'PMIS';
  PNAM : TwbSignature = 'PNAM';
  POBA : TwbSignature = 'POBA';
  POCA : TwbSignature = 'POCA';
  POEA : TwbSignature = 'POEA';
  PRCB : TwbSignature = 'PRCB'; { New to Skyrim }
  PRKC : TwbSignature = 'PRKC';
  PRKE : TwbSignature = 'PRKE';
  PRKF : TwbSignature = 'PRKF';
  PRKR : TwbSignature = 'PRKR'; { New to Skyrim }
  PRKZ : TwbSignature = 'PRKZ'; { New to Skyrim }
  PROJ : TwbSignature = 'PROJ';
  PSDT : TwbSignature = 'PSDT';
  PTDA : TwbSignature = 'PTDA'; { New to Skyrim }
  PWAT : TwbSignature = 'PWAT'; { Unused in Skyrim, but contained in Skyrim.esm }
  QNAM : TwbSignature = 'QNAM';
  QOBJ : TwbSignature = 'QOBJ';
  QSDT : TwbSignature = 'QSDT';
  QSTA : TwbSignature = 'QSTA';
  QTGL : TwbSignature = 'QTGL'; { New To Skyrim }
  QUAL : TwbSignature = 'QUAL'; { New To Skyrim }
  QUST : TwbSignature = 'QUST';
  RACE : TwbSignature = 'RACE';
  RCEC : TwbSignature = 'RCEC'; { New To Skyrim }
  RCLR : TwbSignature = 'RCLR';
  RCPR : TwbSignature = 'RCPR'; { New to Dawnguard }
  RCSR : TwbSignature = 'RCSR'; { New To Skyrim }
  RCUN : TwbSignature = 'RCUN'; { New To Skyrim }
  RDAT : TwbSignature = 'RDAT';
  RDGS : TwbSignature = 'RDGS';
  RDMO : TwbSignature = 'RDMO';
  RDMP : TwbSignature = 'RDMP';
  RDOT : TwbSignature = 'RDOT';
  RDSA : TwbSignature = 'RDSA'; { New to Skyrim }
  RDWT : TwbSignature = 'RDWT';
  REFR : TwbSignature = 'REFR';
  REGN : TwbSignature = 'REGN';
  RELA : TwbSignature = 'RELA';
  REPL : TwbSignature = 'REPL';
  RGDL : TwbSignature = 'RGDL';{ Unused in Skyrim, but contained in Skyrim.esm }
  REVB : TwbSignature = 'REVB';
  RFCT : TwbSignature = 'RFCT';
  RNAM : TwbSignature = 'RNAM';
  RNMV : TwbSignature = 'RNMV'; { New to Skyrim }
  RPLD : TwbSignature = 'RPLD';
  RPLI : TwbSignature = 'RPLI';
  RPRF : TwbSignature = 'RPRF'; { New To Skyrim }
  RPRM : TwbSignature = 'RPRM'; { New To Skyrim }
  SCDA : TwbSignature = 'SCDA';
  SCEN : TwbSignature = 'SCEN';
  SCHR : TwbSignature = 'SCHR';
  SCOL : TwbSignature = 'SCOL'; { Unused in Skyrim, but contained in Skyrim.esm }
  SCPT : TwbSignature = 'SCPT'; { Unused in Skyrim, but contained in Skyrim.esm }
  SCRL : TwbSignature = 'SCRL';
  SCRN : TwbSignature = 'SCRN';
  SCRO : TwbSignature = 'SCRO';
  SCTX : TwbSignature = 'SCTX';
  SDSC : TwbSignature = 'SDSC'; { New to Skyrim }
  SHOU : TwbSignature = 'SHOU';
  SHRT : TwbSignature = 'SHRT'; { New to Skyrim }
  SLCP : TwbSignature = 'SLCP';
  SLGM : TwbSignature = 'SLGM';
  SMBN : TwbSignature = 'SMBN';
  SMEN : TwbSignature = 'SMEN';
  SMQN : TwbSignature = 'SMQN';
  SNAM : TwbSignature = 'SNAM';
  SNCT : TwbSignature = 'SNCT';
  SNDD : TwbSignature = 'SNDD';
  SNDR : TwbSignature = 'SNDR';
  SNMV : TwbSignature = 'SNMV'; { New to Skyrim }
  SOFT : TwbSignature = 'SOFT'; { New to Skyrim }
  SOPM : TwbSignature = 'SOPM';
  SOUL : TwbSignature = 'SOUL';
  SOUN : TwbSignature = 'SOUN';
  SPCT : TwbSignature = 'SPCT'; { New to Skyrim }
  SPED : TwbSignature = 'SPED'; { New To Skyrim }
  SPEL : TwbSignature = 'SPEL';
  SPGD : TwbSignature = 'SPGD';
  SPIT : TwbSignature = 'SPIT';
  SPLO : TwbSignature = 'SPLO';
  SPMV : TwbSignature = 'SPMV'; { New To Skyrim }
  SPOR : TwbSignature = 'SPOR'; { New to Skyrim }
  STAT : TwbSignature = 'STAT';
  STOL : TwbSignature = 'STOL'; { New to Skyrim }
  SWMV : TwbSignature = 'SWMV'; { New to Skyrim }
  TACT : TwbSignature = 'TACT';
  TCLT : TwbSignature = 'TCLT';
  TES4 : TwbSignature = 'TES4';
  TIAS : TwbSignature = 'TIAS'; { New to Skyrim }
  TIFC : TwbSignature = 'TIFC'; { New To Skyrim }
  TINC : TwbSignature = 'TINC'; { New to Skyrim }
  TIND : TwbSignature = 'TIND'; { New to Skyrim }
  TINI : TwbSignature = 'TINI'; { New to Skyrim }
  TINL : TwbSignature = 'TINL'; { New to Skyrim }
  TINP : TwbSignature = 'TINP'; { New to Skyrim }
  TINT : TwbSignature = 'TINT'; { New to Skyrim }
  TINV : TwbSignature = 'TINV'; { New to Skyrim }
  TIRS : TwbSignature = 'TIRS'; { New to Skyrim }
  TNAM : TwbSignature = 'TNAM';
  TPIC : TwbSignature = 'TPIC';
  TPLT : TwbSignature = 'TPLT';
  TRDT : TwbSignature = 'TRDT';
  TREE : TwbSignature = 'TREE';
  TVDT : TwbSignature = 'TVDT'; { New To Skyrim }
  TWAT : TwbSignature = 'TWAT'; { New To Skyrim }
  TX00 : TwbSignature = 'TX00';
  TX01 : TwbSignature = 'TX01';
  TX02 : TwbSignature = 'TX02';
  TX03 : TwbSignature = 'TX03';
  TX04 : TwbSignature = 'TX04';
  TX05 : TwbSignature = 'TX05';
  TX06 : TwbSignature = 'TX06'; { New To Skyrim }
  TX07 : TwbSignature = 'TX07'; { New To Skyrim }
  TXST : TwbSignature = 'TXST';
  UNAM : TwbSignature = 'UNAM';
  UNES : TwbSignature = 'UNES'; { New To Skyrim }
  VATS : TwbSignature = 'VATS';
  VCLR : TwbSignature = 'VCLR';
  VENC : TwbSignature = 'VENC'; { New To Skyrim }
  VEND : TwbSignature = 'VEND'; { New To Skyrim }
  VENV : TwbSignature = 'VENV'; { New To Skyrim }
  VHGT : TwbSignature = 'VHGT';
  VMAD : TwbSignature = 'VMAD';
  VNAM : TwbSignature = 'VNAM';
  VNML : TwbSignature = 'VNML';
  VTCK : TwbSignature = 'VTCK';
  VTEX : TwbSignature = 'VTEX';
  VTXT : TwbSignature = 'VTXT';
  VTYP : TwbSignature = 'VTYP';
  WAIT : TwbSignature = 'WAIT'; { New To Skyrim }
  WATR : TwbSignature = 'WATR';
  WBDT : TwbSignature = 'WBDT'; { New to Skyrim }
  WCTR : TwbSignature = 'WCTR'; { New To Skyrim }
  WEAP : TwbSignature = 'WEAP';
  WKMV : TwbSignature = 'WKMV'; { New to Skyrim }
  WLST : TwbSignature = 'WLST';
  WNAM : TwbSignature = 'WNAM';
  WOOP : TwbSignature = 'WOOP';
  WRLD : TwbSignature = 'WRLD';
  WTHR : TwbSignature = 'WTHR';
  XACT : TwbSignature = 'XACT';
  XALP : TwbSignature = 'XALP'; { New To Skyrim }
  XAPD : TwbSignature = 'XAPD';
  XAPR : TwbSignature = 'XAPR';
  XATR : TwbSignature = 'XATR'; { New To Dawnguard }
  XCAS : TwbSignature = 'XCAS';
  XCCM : TwbSignature = 'XCCM';
  XCHG : TwbSignature = 'XCHG';
  XCIM : TwbSignature = 'XCIM';
  XCLC : TwbSignature = 'XCLC';
  XCLL : TwbSignature = 'XCLL';
  XCLP : TwbSignature = 'XCLP';
  XCLR : TwbSignature = 'XCLR';
  XCLW : TwbSignature = 'XCLW';
  XCMO : TwbSignature = 'XCMO';
  XCNT : TwbSignature = 'XCNT';
  XCVL : TwbSignature = 'XCVL'; { New To Skyrim }
  XCWT : TwbSignature = 'XCWT';
  XCZA : TwbSignature = 'XCZA'; { New To Skyrim }
  XCZC : TwbSignature = 'XCZC'; { New To Skyrim }
  XCZR : TwbSignature = 'XCZR'; { New To Skyrim }
  XDCR : TwbSignature = 'XDCR';
  XEMI : TwbSignature = 'XEMI';
  XESP : TwbSignature = 'XESP';
  XEZN : TwbSignature = 'XEZN';
  XFVC : TwbSignature = 'XFVC'; { New To Skyrim }
  XGLB : TwbSignature = 'XGLB';
  XHLP : TwbSignature = 'XHLP';
  XHOR : TwbSignature = 'XHOR'; { New To Skyrim }
  XHTW : TwbSignature = 'XHTW'; { New To Skyrim }
  XIBS : TwbSignature = 'XIBS';
  XILL : TwbSignature = 'XILL'; { New To Skyrim }
  XIS2 : TwbSignature = 'XIS2'; { New To Skyrim }
  XLCM : TwbSignature = 'XLCM';
  XLCN : TwbSignature = 'XLCN'; { New To Skyrim }
  XLIB : TwbSignature = 'XLIB'; { New To Skyrim }
  XLIG : TwbSignature = 'XLIG'; { New To Skyrim }
  XLKR : TwbSignature = 'XLKR';
  XLOC : TwbSignature = 'XLOC';
  XLOD : TwbSignature = 'XLOD';
  XLRL : TwbSignature = 'XLRL'; { New To Skyrim }
  XLRM : TwbSignature = 'XLRM';
  XLRT : TwbSignature = 'XLRT'; { New To Skyrim }
  XLTW : TwbSignature = 'XLTW';
  XMBO : TwbSignature = 'XMBO';
  XMBP : TwbSignature = 'XMBP';
  XMBR : TwbSignature = 'XMBR';
  XMRC : TwbSignature = 'XMRC';
  XMRK : TwbSignature = 'XMRK';
  XNAM : TwbSignature = 'XNAM';
  XNDP : TwbSignature = 'XNDP';
  XOCP : TwbSignature = 'XOCP';
  XORD : TwbSignature = 'XORD';
  XOWN : TwbSignature = 'XOWN';
  XPOD : TwbSignature = 'XPOD';
  XPPA : TwbSignature = 'XPPA';
  XPRD : TwbSignature = 'XPRD';
  XPRM : TwbSignature = 'XPRM';
  XPTL : TwbSignature = 'XPTL';
  XPWR : TwbSignature = 'XPWR';
  XRDS : TwbSignature = 'XRDS';
  XRGB : TwbSignature = 'XRGB';
  XRGD : TwbSignature = 'XRGD';
  XRMR : TwbSignature = 'XRMR';
  XRNK : TwbSignature = 'XRNK';
  XSCL : TwbSignature = 'XSCL';
  XSPC : TwbSignature = 'XSPC'; { New To Skyrim }
  XTEL : TwbSignature = 'XTEL';
  XTNM : TwbSignature = 'XTNM'; { New To Skyrim }
  XTRI : TwbSignature = 'XTRI';
  XWEM : TwbSignature = 'XWEM'; { New To Skyrim }
  XWCN : TwbSignature = 'XWCN'; { New To Skyrim }
  XWCS : TwbSignature = 'XWCS'; { New To Skyrim }
  XWCU : TwbSignature = 'XWCU'; { New To Skyrim }
  XXXX : TwbSignature = 'XXXX';
  YNAM : TwbSignature = 'YNAM';
  ZNAM : TwbSignature = 'ZNAM';

var
  wbPKDTSpecificFlagsUnused : Boolean;
  wbEDID: IwbSubRecordDef;
  wbSoulGemEnum: IwbEnumDef;
  wbCOED: IwbSubRecordDef;
  wbXLCM: IwbSubRecordDef;
  wbEITM: IwbSubRecordDef;
  wbOBND: IwbSubRecordDef;
  wbOBNDReq: IwbSubRecordDef;
  wbDEST: IwbSubRecordStructDef;
  wbDESTActor: IwbSubRecordStructDef;
  wbDODT: IwbSubRecordDef;
  wbXGLB: IwbSubRecordDef;
  wbXRGD: IwbSubRecordDef;
  wbXRGB: IwbSubRecordDef;
  wbEquipType: IwbFlagsDef;
  wbEmotionTypeEnum: IwbEnumDef;
  wbFurnitureAnimTypeEnum: IwbEnumDef;
  wbFurnitureEntryTypeFlags: IwbFlagsDef;
  wbWeaponAnimTypeEnum: IwbEnumDef;
  wbWardStateEnum: IwbEnumDef;
  wbEventFunctionEnum: IwbEnumDef;
  wbEventMemberEnum: IwbEnumDef;
  wbMusicEnum: IwbEnumDef;
  wbSoundLevelEnum: IwbEnumDef;
  wbBodyPartIndexEnum: IwbEnumDef;
  wbAttackAnimationEnum: IwbEnumDef;
  wbSPLO: IwbSubRecordDef;
  wbSPLOs: IwbSubRecordArrayDef;
  wbCNTO: IwbSubRecordStructDef;
  wbCNTOs: IwbSubRecordArrayDef;
  wbAIDT: IwbSubRecordDef;
  wbCSDT: IwbSubRecordStructDef;
  wbCSDTs: IwbSubRecordArrayDef;
  wbFULL: IwbSubRecordDef;
  wbFULLActor: IwbSubRecordDef;
  wbFULLReq: IwbSubRecordDef;
  wbDESC: IwbSubRecordDef;
  wbDESCReq: IwbSubRecordDef;
  wbXSCL: IwbSubRecordDef;
  wbDATAPosRot: IwbSubRecordDef;
  wbPosRot: IwbStructDef;
  wbMODD: IwbSubRecordDef;
  wbMODL: IwbSubRecordStructDef;
  wbMODS: IwbSubRecordDef;
  wbMO2S: IwbSubRecordDef;
  wbMO3S: IwbSubRecordDef;
  wbMO4S: IwbSubRecordDef;
  wbMODLActor: IwbSubRecordStructDef;
  wbMODLReq: IwbSubRecordStructDef;
  wbCTDA: IwbSubRecordStructDef;
  wbCTDAs: IwbSubRecordArrayDef;
  wbCTDAsReq: IwbSubRecordArrayDef;
  wbCTDAsCount: IwbSubRecordArrayDef;
  wbCTDAsReqCount: IwbSubRecordArrayDef;
  wbXLOD: IwbSubRecordDef;
  wbXESP: IwbSubRecordDef;
  wbICON: IwbSubRecordStructDef;
  wbICONReq: IwbSubRecordStructDef;
  wbICO2: IwbSubRecordStructDef;
  wbActorValue: IwbIntegerDef;
  wbCrimeTypeEnum: IwbEnumDef;
  wbVatsValueFunctionEnum: IwbEnumDef;
  wbSkillEnum: IwbEnumDef;
  wbETYP: IwbSubRecordDef;
  wbETYPReq: IwbSubRecordDef;
  wbFormTypeEnum: IwbEnumDef;
  wbMiscStatEnum: IwbEnumDef;
  wbAdvanceActionEnum: IwbEnumDef;
  wbAlignmentEnum: IwbEnumDef;
  wbAxisEnum: IwbEnumDef;
  wbCastingSourceEnum: IwbEnumDef;
  wbCriticalStageEnum: IwbEnumDef;
  wbSexEnum: IwbEnumDef;
  wbObjectTypeEnum: IwbEnumDef;
  wbQuadrantEnum: IwbEnumDef;
  wbBlendModeEnum: IwbEnumDef;
  wbBlendOpEnum: IwbEnumDef;
  wbZTestFuncEnum: IwbEnumDef;
  wbEFID: IwbSubRecordDef;
  wbEFIT: IwbSubRecordDef;
  wbFunctionsEnum: IwbEnumDef;
  wbEffectsReq: IwbSubRecordArrayDef;
  wbFirstPersonFlagsU32: IwbIntegerDef;
  wbBODT: IwbSubRecordDef;
  wbBOD2: IwbSubRecordDef;
  wbBODTBOD2: IwbSubRecordUnionDef;
  wbScriptEntry: IwbStructDef;
  wbPropTypeEnum: IwbEnumDef;
  wbScriptObject: IwbUnionDef;
  wbScriptFragments: IwbStructDef;
  wbScriptFragmentsQuest: IwbStructDef;
  wbScriptFragmentsInfo: IwbStructDef;
  wbScriptFragmentsPack: IwbStructDef;
  wbScriptFragmentsPerk: IwbStructDef;
  wbScriptFragmentsScen: IwbStructDef;
  wbEntryPointsEnum: IwbEnumDef;
  wbLocationEnum: IwbEnumDef;
  wbPLDT: IwbSubRecordDef;
  wbPLVD: IwbSubRecordDef;
  wbTargetData: IwbStructDef;
  wbAttackData: IwbSubRecordStructDef;
  wbLLCT: IwbSubRecordDef;
  wbLVLD: IwbSubRecordDef;
  wbVMAD: IwbSubRecordDef;
  wbCOCT: IwbSubRecordDef;
  wbKSIZ: IwbSubRecordDef;
  wbKWDAs: IwbSubRecordDef;
  wbCNAM: IwbSubRecordDef;
  wbCNAMReq: IwbSubRecordDef;
  wbCITC: IwbSubRecordDef;
  wbMGEFData: IwbSubRecordStructDef;
  wbMGEFType: IwbIntegerDef;
  wbCastEnum: IwbEnumDef;
  wbTargetEnum: IwbEnumDef;
  wbMDOB: IwbSubRecordDef;
  wbSPIT: IwbSubRecordDef;
  wbDMDSs: IwbSubRecordDef;
  wbMO5S: IwbSubRecordDef;
  wbSPCT: IwbSubRecordDef;
  wbTints: IwbSubRecordArrayDef;
  wbMODT: IwbSubRecordDef;
  wbDMDT: IwbSubRecordDef;
  wbOwnership: IwbSubRecordStructDef;
  wbAmbientColors: IwbStructDef;
  wbSMNodeFlags: IwbFlagsDef;
  wbBipedObjectEnum: IwbEnumDef;
  wbBipedObjectFlags: IwbFlagsDef;
  wbArmorTypeEnum: IwbEnumDef;
  wbRACE_DATAFlags01: IwbIntegerDef;
  wbPhonemeTargets: IwbSubRecordDef;
  wbNoseMorphFlags: IwbIntegerDef;
  wbBrowMorphFlags: IwbIntegerDef;
  wbEyesMorphFlags01: IwbIntegerDef;
  wbEyesMorphFlags02: IwbIntegerDef;
  wbLipMorphFlags: IwbIntegerDef;
  wbPHWT: IwbSubRecordStructDef;
  wbMorphs: IwbSubRecordStructDef;
  wbHeadPart: IwbSubRecordStructDef;
  wbTintMaskTypeEnum: IwbEnumDef;
  wbQUSTAliasFlags: IwbSubRecordDef;
  wbPKDTFlags: IwbFlagsDef;
  wbPKDTInterruptFlags: IwbFlagsDef;
  wbPDTO: IwbSubRecordDef;
  wbPDTOs: IwbSubRecordArrayDef;
  wbUNAMs: IwbSubRecordArrayDef;
  wbNull: IwbValueDef;

function Sig2Int(aSignature: TwbSignature): Int64; inline;
begin
  Result := Ord(aSignature[3]) shl 24 +
            Ord(aSignature[2]) shl 16 +
            Ord(aSignature[1]) shl  8 +
            Ord(aSignature[0]);
end;

function wbEPFDActorValueToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  AsCardinal : Cardinal;
  AsFloat    : Single;
begin
  AsCardinal := aInt;
  AsFloat := PSingle(@AsCardinal)^;
  aInt := Round(AsFloat);
  case aType of
    ctToStr: Result := wbActorValueEnum.ToString(aInt, aElement);
    ctToSortKey: Result := wbActorValueEnum.ToSortKey(aInt, aElement);
    ctCheck: Result := wbActorValueEnum.Check(aInt, aElement);
    ctToEditValue: Result := wbActorValueEnum.ToEditValue(aInt, aElement);
    ctEditType: Result := 'ComboBox';
    ctEditInfo: Result := wbActorValueEnum.EditInfo[aInt, aElement];
  end;
end;

function wbEPFDActorValueToInt(const aString: string; const aElement: IwbElement): Int64;
var
  AsCardinal : Cardinal;
  AsFloat    : Single;
begin
  AsFloat := wbActorValueEnum.FromEditValue(aString, aElement);
  PSingle(@AsCardinal)^ := AsFloat;
  Result := AsCardinal;
end;

function wbCTDAParam2QuestStageToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Container  : IwbContainerElementRef;
  Param1     : IwbElement;
  MainRecord : IwbMainRecord;
  EditInfos  : TStringList;
  Stages     : IwbContainerElementRef;
  Stage      : IwbContainerElementRef;
  i, j       : Integer;
  s, t       : string;
begin
  case aType of
    ctToStr: Result := IntToStr(aInt) + ' <Warning: Could not resolve Parameter 1>';
    ctToEditValue: Result := IntToStr(aInt);
    ctToSortKey: begin
      Result := IntToHex64(aInt, 8);
      Exit;
    end;
    ctCheck: Result := '<Warning: Could not resolve Parameter 1>';
    ctEditType: Result := '';
    ctEditInfo: Result := '';
  end;

  if not Assigned(aElement) then Exit;
  Container := GetContainerRefFromUnionOrValue(aElement);
  if not Assigned(Container) then Exit;

  Param1 := Container.ElementByName['Parameter #1'];

  if not Assigned(Param1) then
    Exit;

  if not Supports(Param1.LinksTo, IwbMainRecord, MainRecord) then
    Exit;

  if MainRecord.Signature <> QUST then begin
    case aType of
      ctToStr: Result := IntToStr(aInt) + ' <Warning: "'+MainRecord.ShortName+'" is not a Quest record>';
      ctCheck: Result := '<Warning: "'+MainRecord.ShortName+'" is not a Quest record>';
    end;
    Exit;
  end;

  case aType of
    ctEditType: begin
      Result := 'ComboBox';
      Exit;
    end;
    ctEditInfo:
      EditInfos := TStringList.Create;
  else
    EditInfos := nil;
  end;
  try
    if Supports(MainRecord.ElementByName['Stages'], IwbContainerElementRef, Stages) then begin
      for i := 0 to Pred(Stages.ElementCount) do
        if Supports(Stages.Elements[i], IwbContainerElementRef, Stage) then begin
          j := Stage.ElementNativeValues['INDX\Stage Index'];
          s := Trim(Stage.ElementValues['Log Entries\Log Entry\CNAM']);
          t := IntToStr(j);
          while Length(t) < 3 do
            t := '0' + t;
          if s <> '' then
            t := t + ' ' + s;
          if Assigned(EditInfos) then
            EditInfos.AddObject(t, TObject(j))
          else if j = aInt then begin
            case aType of
              ctToStr, ctToEditValue: Result := t;
              ctCheck: Result := '';
            end;
            Exit;
          end;
        end;
    end;

    case aType of
      ctToStr: Result := IntToStr(aInt) + ' <Warning: Quest Stage not found in "' + MainRecord.Name + '">';
      ctCheck: Result := '<Warning: Quest Stage not found in "' + MainRecord.Name + '">';
      ctEditInfo: begin
        EditInfos.Sort;
        Result := EditInfos.CommaText;
      end;
    end;
  finally
    FreeAndNil(EditInfos);
  end;
end;

function wbPerkDATAQuestStageToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Container  : IwbContainerElementRef;
  Param1     : IwbElement;
  MainRecord : IwbMainRecord;
  EditInfos  : TStringList;
  Stages     : IwbContainerElementRef;
  Stage      : IwbContainerElementRef;
  i, j       : Integer;
  s, t       : string;
begin
  case aType of
    ctToStr: Result := IntToStr(aInt) + ' <Warning: Could not resolve Quest>';
    ctToEditValue: Result := IntToStr(aInt);
    ctToSortKey: begin
      Result := IntToHex64(aInt, 8);
      Exit;
    end;
    ctCheck: Result := '<Warning: Could not resolve Quest>';
    ctEditType: Result := '';
    ctEditInfo: Result := '';
  end;

  if not Assigned(aElement) then Exit;
  Container := GetContainerRefFromUnionOrValue(aElement);
  if not Assigned(Container) then Exit;

  Param1 := Container.ElementByName['Quest'];

  if not Assigned(Param1) then
    Exit;

  if not Supports(Param1.LinksTo, IwbMainRecord, MainRecord) then
    Exit;

  if MainRecord.Signature <> QUST then begin
    case aType of
      ctToStr: Result := IntToStr(aInt) + ' <Warning: "'+MainRecord.ShortName+'" is not a Quest record>';
      ctCheck: Result := '<Warning: "'+MainRecord.ShortName+'" is not a Quest record>';
    end;
    Exit;
  end;

  case aType of
    ctEditType: begin
      Result := 'ComboBox';
      Exit;
    end;
    ctEditInfo:
      EditInfos := TStringList.Create;
  else
    EditInfos := nil;
  end;
  try
    if Supports(MainRecord.ElementByName['Stages'], IwbContainerElementRef, Stages) then begin
      for i := 0 to Pred(Stages.ElementCount) do
        if Supports(Stages.Elements[i], IwbContainerElementRef, Stage) then begin
          j := Stage.ElementNativeValues['INDX\Stage Index'];
          s := Trim(Stage.ElementValues['Log Entries\Log Entry\CNAM']);
          t := IntToStr(j);
          while Length(t) < 3 do
            t := '0' + t;
          if s <> '' then
            t := t + ' ' + s;
          if Assigned(EditInfos) then
            EditInfos.AddObject(t, TObject(j))
          else if j = aInt then begin
            case aType of
              ctToStr, ctToEditValue: Result := t;
              ctCheck: Result := '';
            end;
            Exit;
          end;
        end;
    end;

    case aType of
      ctToStr: Result := IntToStr(aInt) + ' <Warning: Quest Stage not found in "' + MainRecord.Name + '">';
      ctCheck: Result := '<Warning: Quest Stage not found in "' + MainRecord.Name + '">';
      ctEditInfo: begin
        EditInfos.Sort;
        Result := EditInfos.CommaText;
      end;
    end;
  finally
    FreeAndNil(EditInfos);
  end;
end;

function wbCTDAParam2QuestStageToInt(const aString: string; const aElement: IwbElement): Int64;
var
  i    : Integer;
  s    : string;
begin
  i := 1;
  s := Trim(aString);
  while (i <= Length(s)) and (s[i] in ['0'..'9']) do
    Inc(i);
  s := Copy(s, 1, Pred(i));

  Result := StrToInt(s);
end;

{ Alias to string conversion, requires quest reference or quest record specific to record that references alias }
function wbAliasToStr(aInt: Int64; const aQuestRef: IwbElement; aType: TwbCallbackType): string;
var
  MainRecord : IwbMainRecord;
  EditInfos  : TStringList;
  Aliases    : IwbContainerElementRef;
  Alias      : IwbContainerElementRef;
  i, j       : Integer;
  s, t       : string;
begin
  case aType of
    ctToStr: if aInt = -1 then Result := 'None' else
      Result := IntToStr(aInt) + ' <Warning: Could not resolve alias>';
    ctToEditValue: if aInt = -1 then Result := 'None' else
      Result := IntToStr(aInt);
    ctToSortKey: begin
      Result := IntToHex64(aInt, 8);
      Exit;
    end;
    ctCheck: if aInt = -1 then Result := '' else
      Result := '<Warning: Could not resolve alias>';
    ctEditType: Result := '';
    ctEditInfo: Result := '';
  end;

  if (aInt = -1) and (aType <> ctEditType) and (aType <> ctEditInfo) then
    Exit;

  if not Assigned(aQuestRef) then
    Exit;

  // aQuestRef can be a QUST record or reference to QUST record
  if not Supports(aQuestRef, IwbMainRecord, MainRecord) then
    if not Supports(aQuestRef.LinksTo, IwbMainRecord, MainRecord) then
      Exit;

  if MainRecord.Signature <> QUST then begin
    case aType of
      ctToStr: Result := IntToStr(aInt) + ' <Warning: "' + MainRecord.ShortName + '" is not a Quest record>';
      ctCheck: Result := '<Warning: "' + MainRecord.ShortName + '" is not a Quest record>';
    end;
    Exit;
  end;

  case aType of
    ctEditType: begin
      Result := 'ComboBox';
      Exit;
    end;
    ctEditInfo:
      EditInfos := TStringList.Create;
  else
    EditInfos := nil;
  end;

  try
    if Supports(MainRecord.ElementByName['Aliases'], IwbContainerElementRef, Aliases) then begin
      for i := 0 to Pred(Aliases.ElementCount) do
        if Supports(Aliases.Elements[i], IwbContainerElementRef, Alias) then begin
          j := Alias.Elements[0].NativeValue;
          s := Alias.ElementEditValues['ALID'];
          t := IntToStr(j);
          while Length(t) < 3 do
            t := '0' + t;
          if s <> '' then
            t := t + ' ' + s;
          if Assigned(EditInfos) then
            EditInfos.Add(t)
          else if j = aInt then begin
            case aType of
              ctToStr, ctToEditValue: Result := t;
              ctCheck: Result := '';
            end;
            Exit;
          end;
        end;
    end;

    case aType of
      ctToStr: Result := IntToStr(aInt) + ' <Warning: Quest Alias not found in "' + MainRecord.Name + '">';
      ctCheck: Result := '<Warning: Quest Alias not found in "' + MainRecord.Name + '">';
      ctEditInfo: begin
        EditInfos.Add('None');
        EditInfos.Sort;
        Result := EditInfos.CommaText;
      end;
    end;
  finally
    FreeAndNil(EditInfos);
  end;
end;

function wbStrToAlias(const aString: string; const aElement: IwbElement): Int64;
var
  i    : Integer;
  s    : string;
begin
  Result := -1;

  if aString = 'None' then
    Exit;

  i := 1;
  s := Trim(aString);
  while (i <= Length(s)) and (s[i] in ['-', '0'..'9']) do
    Inc(i);
  s := Copy(s, 1, Pred(i));

  Result := StrToIntDef(s, -1);
end;

function wbScriptObjectAliasToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Container  : IwbContainerElementRef;
begin
  if not wbResolveAlias then begin
    case aType of
      ctToStr, ctToEditValue: Result := IntToStr(aInt);
      ctToSortKey: Result := IntToHex64(aInt, 8);
    else
      Result := '';
    end;
    Exit;
  end;

  if not Assigned(aElement) then
    Exit;

  Container := GetContainerRefFromUnionOrValue(aElement);

  if not Assigned(Container) then
    Exit;

  Result := wbAliasToStr(aInt, Container.ElementByName['FormID'], aType);
end;

function wbPackageLocationAliasToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Container  : IwbContainer;
begin
  if not wbResolveAlias then begin
    case aType of
      ctToStr, ctToEditValue: Result := IntToStr(aInt);
      ctToSortKey: Result := IntToHex64(aInt, 8);
    else
      Result := '';
    end;
    Exit;
  end;

  if not Assigned(aElement) then
    Exit;

  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;
  while Assigned(Container) and (Container.ElementType <> etMainRecord) do
    Container := Container.Container;

  if not Assigned(Container) then
    Exit;

  Result := wbAliasToStr(aInt, Container.ElementBySignature['QNAM'], aType);
end;

function wbQuestAliasToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Container  : IwbContainer;
begin
  if not wbResolveAlias then begin
    case aType of
      ctToStr, ctToEditValue: Result := IntToStr(aInt);
      ctToSortKey: Result := IntToHex64(aInt, 8);
    else
      Result := '';
    end;
    Exit;
  end;

  if not Assigned(aElement) then
    Exit;

  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;
  while Assigned(Container) and (Container.ElementType <> etMainRecord) do
    Container := Container.Container;

  if not Assigned(Container) then
    Exit;

  Result := wbAliasToStr(aInt, Container, aType);
end;

function wbQuestExternalAliasToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Container  : IwbContainer;
begin
  if not wbResolveAlias then begin
    case aType of
      ctToStr, ctToEditValue: Result := IntToStr(aInt);
      ctToSortKey: Result := IntToHex64(aInt, 8);
    else
      Result := '';
    end;
    Exit;
  end;

  if not Assigned(aElement) then
    Exit;

  Container := aElement.Container;

  if not Assigned(Container) then
    Exit;

  Result := wbAliasToStr(aInt, Container.ElementBySignature['ALEQ'] , aType);
end;

function wbConditionAliasToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Container  : IwbContainer;
  MainRecord : IwbMainRecord;
  GroupRecord : IwbGroupRecord;
begin
  if not wbResolveAlias then begin
    case aType of
      ctToStr, ctToEditValue: Result := IntToStr(aInt);
      ctToSortKey: Result := IntToHex64(aInt, 8);
    else
      Result := '';
    end;
    Exit;
  end;

  if not Assigned(aElement) then
    Exit;

  Result := IntToStr(aInt); Exit;

  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;
  while Assigned(Container) and (Container.ElementType <> etMainRecord) do
    Container := Container.Container;

  if not Assigned(Container) then
    Exit;

  if not Supports(Container, IwbMainRecord, MainRecord) then
    Exit;

  if MainRecord.Signature = QUST then
    Result := wbAliasToStr(aInt, Container, aType)
  else if MainRecord.Signature = SCEN then
    Result := wbAliasToStr(aInt, Container.ElementBySignature['PNAM'], aType)
  else if MainRecord.Signature = PACK then
    Result := wbAliasToStr(aInt, Container.ElementBySignature['QNAM'], aType)
  else if MainRecord.Signature = INFO then begin
    // discovered memory leak
    // test on 00015C73
    if Supports(MainRecord.Container, IwbGroupRecord, GroupRecord) then
      Result := wbAliasToStr(aInt, GroupRecord.ChildrenOf.ElementBySignature['QNAM'], aType);
  end;
end;

function wbClmtMoonsPhaseLength(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  PhaseLength : Byte;
  Masser      : Boolean;
  Secunda     : Boolean;
begin
  Result := '';
  if aType = ctToSortKey then begin
    Result := IntToHex64(aInt, 2);
  end else if aType = ctToStr then begin
    PhaseLength := aInt mod 64;
    Masser := (aInt and 64) <> 0;
    Secunda := (aInt and 128) <> 0;
    if Masser then
      if Secunda then
        Result := 'Masser, Secunda / '
      else
        Result := 'Masser / '
    else
      if Secunda then
        Result := 'Secunda / '
      else
        Result := 'No Moon / ';
    Result := Result + IntToStr(PhaseLength);
  end;
end;

function wbClmtTime(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
begin
  if aType = ctToSortKey then
    Result := IntToHex64(aInt, 4)
  else if aType = ctToStr then
    Result := TimeToStr( EncodeTime(aInt div 6, (aInt mod 6) * 10, 0, 0) )
  else
    Result := '';
end;

function wbAlocTime(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
begin
  if aType = ctToSortKey then
    Result := IntToHex64(aInt, 4)
  else if aType = ctToStr then
    Result := TimeToStr( aInt / 256 )
  else
    Result := '';
end;


var
  wbCtdaTypeFlags : IwbFlagsDef;

function wbCtdaTypeToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  s: string;
begin
  Result := '';

  if not Assigned(wbCtdaTypeFlags) then
    wbCtdaTypeFlags := wbFlags([
      {0x01} 'Or',
      {0x02} 'Use aliases',
      {0x04} 'Use global',
      {0x08} 'Use packdata',
      {0x10} 'Swap Subject and Target'
    ]);
{
    Compare operator (upper 3 bits)
    LGE
    000    0=Equal to
    001    1=Not equal to
    010    2=Greater than
    011    3=Greater than or equal to
    100    4=Less than
    101    5=Less than or equal to

    Flags (lower 5 bits)
        0x01=OR (default is to AND conditions together)
        0x02=Parameters (use aliases) : Force function parameters to use quest alias data (exclusive with "use pack data")
        0x04=Use global
        0x08=Use Pack Data : Force function parameters to use pack data (exclusive with "use aliases")
        0x10=Swap Subject and Target
}
  case aType of
    ctEditType:
      Result := 'CheckComboBox';
    ctEditInfo:
      Result := 'Equal,Greater,Lesser,Or,"Use Aliases","Use Global","Use Packdata","Swap Subject and Target"';
    ctToEditValue: begin
      Result := '00000000';
      case aInt and $E0 of
        $00 : Result[1] := '1';
        $40 : Result[2] := '1';
        $60 : begin
                Result[1] := '1';
                Result[2] := '1';
              end;
        $80 : Result[3] := '1';
        $A0 : begin
                Result[1] := '1';
                Result[3] := '1';
              end;
      end;
      if (aInt and $01) <> 0 then // Or
        Result[4] := '1';
      if (aInt and $02) <> 0 then // Use aliases
        Result[5] := '1';
      if (aInt and $04) <> 0 then // Use global
        Result[6] := '1';
      if (aInt and $08) <> 0 then // Use packdata
        Result[7] := '1';
      if (aInt and $10) <> 0 then // Swap Subject and Target
        Result[8] := '1';
    end;
    ctToStr: begin
      case aInt and $E0 of
        $00 : Result := 'Equal to';
        $20 : Result := 'Not equal to';
        $40 : Result := 'Greater than';
        $60 : Result := 'Greater than or equal to';
        $80 : Result := 'Less than';
        $A0 : Result := 'Less than or equal to';
      else
        Result := '<Unknown Compare operator>'
      end;
      s := wbCtdaTypeFlags.ToString(aInt and $1F, aElement);
      if s <> '' then
        Result := Result + ' / ' + s;
    end;
    ctToSortKey: begin
      Result := IntToHex64(aInt, 2);
      Exit;
    end;
    ctCheck: begin
      case aInt and $E0 of
        $00, $20, $40, $60, $80, $A0 : Result := '';
      else
        Result := '<Unknown Compare operator>'
      end;
      s := wbCtdaTypeFlags.Check(aInt and $1F, aElement);
      if s <> '' then
        Result := Result + ' / ' + s;
    end;
  end;
end;

function wbCtdaTypeToInt(const aString: string; const aElement: IwbElement): Int64;
var
  s: string;
begin
  s := aString + '00000000';
  if s[1] = '1' then begin
    if s[2] = '1' then begin
      if s[3] = '1' then begin
        Result := $00;
      end else begin
        Result := $60;
      end;
    end else begin
      if s[3] = '1' then begin
        Result := $A0;
      end else begin
        Result := $00;
      end;
    end;
  end else begin
    if s[2] = '1' then begin
      if s[3] = '1' then begin
        Result := $20;
      end else begin
        Result := $40;
      end;
    end else begin
      if s[3] = '1' then begin
        Result := $80;
      end else begin
        Result := $20;
      end;
    end;
  end;
  // Or
  if s[4] = '1' then
    Result := Result or $01;
  // Use aliases
  if s[5] = '1' then
    Result := Result or $02;
  // Use global
  if s[6] = '1' then
    Result := Result or $04;
  // Use packdata
  if s[7] = '1' then
    Result := Result or $08;
  // Swap Subject and Target
  if s[8] = '1' then
    Result := Result or $10;
end;

var
  wbEventFunctionAndMemberEditInfo: string;

function wbEventFunctionAndMemberToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  EventFunction, EventMember: Integer;
  i, j: Integer;
  s1, s2: string;
  slMember: TStringList;
begin
  Result := '';
  EventFunction := aInt and $FFFF;
  EventMember := aInt shr 16;
  case aType of
    ctToStr, ctToEditValue: begin
      Result := wbEventFunctionEnum.ToEditValue(EventFunction, nil);
      Result := Result + ':' + wbEventMemberEnum.ToEditValue(EventMember, nil);
    end;
    ctToSortKey: Result := IntToHex(aInt, 8);
    ctCheck: begin
      s1 := wbEventFunctionEnum.Check(EventFunction, nil);
      if s1 <> '' then
        s1 := 'EventFunction' + s1;
      s2 := wbEventMemberEnum.Check(EventMember, nil);
      if s2 <> '' then
        s2 := 'EventMember' + s2;
      if (s1 <> '') or (s2 <> '') then
        Result := s1 + ':' + s2;
    end;
    ctEditType:
      Result := 'ComboBox';
    ctEditInfo: begin
      Result := wbEventFunctionAndMemberEditInfo;
      if Result = '' then try
        slMember := TStringList.Create;
        slMember.CommaText := wbEventMemberEnum.EditInfo[0, nil];
        with TStringList.Create do try
          for i := 0 to Pred(wbEventFunctionEnum.NameCount) do
            for j := 0 to Pred(slMember.Count) do
              Add(wbEventFunctionEnum.Names[i] + ':' + slMember[j]);
          Sort;
          Result := CommaText;
        finally
          Free;
        end;
        wbEventFunctionAndMemberEditInfo := Result;
      finally
        FreeAndNil(slMember);
      end
    end;
  end;
end;

function wbEventFunctionAndMemberToInt(const aString: string; const aElement: IwbElement): Int64;
var
  EventFunction, EventMember, i: Integer;
begin
  i := Pos(':', aString);
  if i > 0 then begin
    EventFunction := wbEventFunctionEnum.FromEditValue(Copy(aString, 1, i-1), nil);
    EventMember := wbEventMemberEnum.FromEditValue(Copy(aString, i+1, Length(aString)), nil);
  end
  else begin
    EventFunction := 0;
    EventMember := 0;
  end;
  Result := EventMember shl 16 + EventFunction;
end;

procedure wbMESGDNAMAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  OldValue, NewValue : Integer;
  Container          : IwbContainerElementRef;
begin
  if VarSameValue(aOldValue, aNewValue) then
    Exit;
  if Supports(aElement.Container, IwbContainerElementRef, Container) then begin
    OldValue := Integer(aOldValue) and 1;
    NewValue := Integer(aNewValue) and 1;
    if NewValue = OldValue then
      Exit;
    if NewValue = 1 then
      Container.RemoveElement('TNAM')
    else
      Container.Add('TNAM', True);
  end;
end;

procedure wbGMSTEDIDAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  OldValue, NewValue : string;
  Container          : IwbContainerElementRef;
begin
  if VarSameValue(aOldValue, aNewValue) then
    Exit;
  if Supports(aElement.Container, IwbContainerElementRef, Container) then begin
    OldValue := aOldValue;
    NewValue := aNewValue;
    if (Length(OldValue) < 1) or (Length(OldValue) < 1) or (OldValue[1] <> NewValue[1]) then begin
      Container.RemoveElement('DATA');
      Container.Add('DATA', True);
    end;
  end;
end;

procedure wbFLSTEDIDAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  OldValue, NewValue     : string;
  OldOrdered, NewOrdered : Boolean;
  Container              : IwbContainerElementRef;
const
  OrderedList = 'OrderedList';
begin
  if VarSameValue(aOldValue, aNewValue) then
    Exit;
  if Supports(aElement.Container, IwbContainerElementRef, Container) then begin
    OldValue := aOldValue;
    NewValue := aNewValue;

    if Length(OldValue) > Length(OrderedList) then
      Delete(OldValue, 1, Length(OldValue)-Length(OrderedList));
    if Length(NewValue) > Length(OrderedList) then
      Delete(NewValue, 1, Length(NewValue)-Length(OrderedList));

    OldOrdered := SameText(OldValue, OrderedList);
    NewOrdered := SameText(NewValue, OrderedList);

    if OldOrdered <> NewOrdered then
      Container.RemoveElement('FormIDs');
  end;
end;

procedure wbCtdaTypeAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  OldValue, NewValue: Integer;
  Container: IwbContainerElementRef;
begin
  if VarSameValue(aOldValue, aNewValue) then
    Exit;
  if not Supports(aElement, IwbContainerElementRef, Container) then
    Exit;

  // reset value if "use global" has changed
  OldValue := aOldValue and $04;
  NewValue := aNewValue and $04;
  if OldValue <> NewValue then
    Container.ElementNativeValues['..\Comparison Value'] := 0;

  {>>> "run on target", no such flag in Skyrim <<<}
//  if aNewValue and $02 then begin
//    Container.ElementNativeValues['..\Run On'] := 1;
//    if Integer(Container.ElementNativeValues['..\Run On']) = 1 then
//      aElement.NativeValue := Byte(aNewValue) and not $02;
//  end;
end;

procedure wbAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  Exit;
end;

function wbMODTCallback(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Strings: TDynStrings;
  i: Integer;
begin
  Result := '';
  if wbLoaderDone and (aType in [ctToStr, ctToSortKey] ) then begin
    Strings := wbContainerHandler.ResolveHash(aInt);
    for i := Low(Strings) to High(Strings) do
      Result := Result + Strings[i] + ', ';
    SetLength(Result, Length(Result) -2 );
  end;
end;

{>>> Needs revision for Skyrim <<<}
//function wbIdleAnam(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
//begin
//  Result := '';
//  case aType of
//    ctToStr: begin
//      case aInt and not $C0 of
//        0: Result := 'Idle';
//        1: Result := 'Movement';
//        2: Result := 'Left Arm';
//        3: Result := 'Left Hand';
//        4: Result := 'Weapon';
//        5: Result := 'Weapon Up';
//        6: Result := 'Weapon Down';
//        7: Result := 'Special Idle';
//       20: Result := 'Whole Body';
//       21: Result := 'Upper Body';
//      else
//        Result := '<Unknown: '+IntToStr(aInt and not $C0)+'>';
//      end;
//
//      if (aInt and $80) = 0 then
//        Result := Result + ', Must return a file';
//      if (aInt and $40) = 1 then
//        Result := Result + ', Unknown Flag';
//    end;
//    ctToSortKey: begin
//      Result := IntToHex64(aInt, 2);
//    end;
//    ctCheck: begin
//      case aInt and not $C0 of
//        0..7, 20, 21: Result := '';
//      else
//        Result := '<Unknown: '+IntToStr(aInt and not $C0)+'>';
//      end;
//    end;
//  end;
//end;

function wbScaledInt4ToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
const
  PlusMinus : array[Boolean] of string = ('+', '-');
begin
  Result := '';
  case aType of
    ctToStr, ctToEditValue: Result := FloatToStrF(aInt / 10000, ffFixed, 99, 4);
    ctToSortKey: begin
      Result := FloatToStrF(aInt / 10000, ffFixed, 99, 4);
      if Length(Result) < 22 then
        Result := StringOfChar('0', 22 - Length(Result)) + Result;
      Result := PlusMinus[aInt < 0] + Result;
    end;
    ctCheck: Result := '';
  end;
end;

function wbScaledInt4ToInt(const aString: string; const aElement: IwbElement): Int64;
var
  f: Extended;
begin
  f := StrToFloat(aString);
  f := f * 10000;
  Result := Round(f);
end;

function wbCloudSpeedToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
begin
  Result := '';
  case aType of
    ctToStr, ctToEditValue: Result := FloatToStrF((aInt - 127)/127/10, ffFixed, 99, 4);
    ctCheck: Result := '';
  end;
end;

function wbCloudSpeedToInt(const aString: string; const aElement: IwbElement): Int64;
var
  f: Extended;
begin
  f := StrToFloat(aString);
  f := f*10*127 + 127;
  Result := Min(Round(f), 254);
end;

function wbShortXYtoStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  x, y: SmallInt;
begin
  y := aInt and $FFFF;
  x := aInt shr 16 and $FFFF;
  Result := '';
  case aType of
    ctToStr, ctToEditValue: Result := Format('%d, %d', [x, y]);
    ctCheck: Result := '';
  end;
end;

function wbStrToShortXY(const aString: string; const aElement: IwbElement): Int64;
var
  x, y: SmallInt;
  Value: Cardinal;
begin
  y := StrToIntDef(Copy(aString, 1, Pred(Pos(', ', aString))), 0);
  x := StrToIntDef(Copy(aString, Pos(', ', aString) + 2, Length(aString)), 0);
  PWord(@Value)^ := x;
  PWord(Cardinal(@Value) + SizeOf(SmallInt))^ := y;
  Result := Value;
end;

function wbHideFFFF(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
begin
  Result := '';
  if aType = ctToSortKey then
    Result := IntToHex64(aInt, 4)
  else if aType = ctToStr then
    if aInt = $FFFF then
      Result := 'None'
    else
      Result := IntToStr(aInt);
end;

function wbAtxtPosition(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
begin
  Result := '';
  if aType = ctToSortKey then
    Result := IntToHex64(aInt div 17, 2) + IntToHex64(aInt mod 17, 2)
  else if aType = ctCheck then begin
    if (aInt < 0) or (aInt > 288) then
      Result := '<Out of range: '+IntToStr(aInt)+'>'
    else
      Result := '';
  end else if aType = ctToStr then
    Result := IntToStr(aInt) + ' -> ' + IntToStr(aInt div 17) + ':' + IntToStr(aInt mod 17);
end;

function wbGLOBFNAM(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
begin
  Result := '';
  case aType of
    ctToStr: begin
      case aInt of
        Ord('s'): Result := 'Short';
        Ord('l'): Result := 'Long';
        Ord('f'): Result := 'Float';
        Ord('b'): Result := 'Boolean';
      else
        Result := '<Unknown: '+IntToStr(aInt)+'>';
      end;
    end;
    ctToSortKey: Result := Chr(aInt);
    ctCheck: begin
      case aInt of
        Ord('s'), Ord('l'), Ord('f'), Ord('b'): Result := '';
      else
        Result := '<Unknown: '+IntToStr(aInt)+'>';
      end;
    end;
  end;
end;

function wbPlacedAddInfo(const aMainRecord: IwbMainRecord): string;
var
  Rec: IwbRecord;
  Container: IwbContainer;
  s: string;
begin
  Result := '';

  Rec := aMainRecord.RecordBySignature['NAME'];
  if Assigned(Rec) then begin
    s := Trim(Rec.Value);
    if s <> '' then
      Result := 'places ' + s;
  end;

  Container := aMainRecord.Container;
  while Assigned(Container) and (Container.ElementType <> etGroupRecord) do
    Container := Container.Container;

  if Assigned(Container) then begin
    s := Trim(Container.Name);
    if s <> '' then begin
      if Result <> '' then
        Result := Result + ' ';
      Result := Result + 'in ' + s;
    end;
  end;
end;

function wbINFOAddInfo(const aMainRecord: IwbMainRecord): string;
var
  Container: IwbContainer;
  s: string;
begin
  Result := Trim(aMainRecord.ElementValues['Responses\Response\NAM1']);
  if Result <> '' then
    Result := '''' + Result + '''';

  Container := aMainRecord.Container;
  while Assigned(Container) and (Container.ElementType <> etGroupRecord) do
    Container := Container.Container;

  if Assigned(Container) then begin
    s := Trim(Container.Name);
    if s <> '' then begin
      if Result <> '' then
        Result := Result + ' ';
      Result := Result + 'in ' + s;
    end;
  end;

  s := Trim(aMainRecord.ElementValues['QNAM']);
  if s <> '' then begin
    if Result <> '' then
      Result := Result + ' ';
    Result := Result + 'for ' + s;
  end;
end;

function wbNAVMAddInfo(const aMainRecord: IwbMainRecord): string;
var
  Container: IwbContainer;
  s: string;
begin
  Result := '';

  Container := aMainRecord.Container;
  while Assigned(Container) and (Container.ElementType <> etGroupRecord) do
    Container := Container.Container;

  if Assigned(Container) then begin
    s := Trim(Container.Name);
    if s <> '' then begin
      if Result <> '' then
        Result := Result + ' ';
      Result := Result + 'in ' + s;
    end;
  end;
end;

//function wbNAVMAddInfo(const aMainRecord: IwbMainRecord): string;
//var
//  Rec        : IwbRecord;
//  Element    : IwbElement;
//  s          : string;
//begin
//  Result := '';
//
//  Rec := aMainRecord.RecordBySignature['DATA'];
//  if Assigned(Rec) then begin
//    Element := Rec.ElementByName['Cell'];
//    if Assigned(Element) then
//      Element := Element.LinksTo;
//    if Assigned(Element) then
//      s := Trim(Element.Name);
//    if s <> '' then
//      Result := 'for ' + s;
//  end;
//end;

function wbCellAddInfo(const aMainRecord: IwbMainRecord): string;
var
  Rec: IwbRecord;
  Container: IwbContainer;
  GroupRecord : IwbGroupRecord;
  s: string;
begin
  Result := '';

  Rec := aMainRecord.RecordBySignature['XCLC'];
  if Assigned(Rec) then
      Result := 'at ' + Rec.Elements[0].Value + ',' + Rec.Elements[1].Value;

  Container := aMainRecord.Container;
  while Assigned(Container) and not
    (Supports(Container, IwbGroupRecord, GroupRecord) and (GroupRecord.GroupType = 1))  do
    Container := Container.Container;

  if Assigned(Container) then begin
    s := wbFormID.ToString(GroupRecord.GroupLabel, aMainRecord);
    if s <> '' then begin
      if Result <> '' then
        s := s + ' ';
      Result := 'in ' + s + Result;
    end;
  end;
end;

procedure wbCTDARunOnAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  if aOldValue <> aNewValue then
    if aNewValue <> 2 then
      aElement.Container.ElementNativeValues['Reference'] := 0;
end;

{>>> Needs revision for Skyrim <<<}
procedure wbPERKPRKETypeAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  Container : IwbContainerElementRef;
//  rDATA     : IwbRecord;
begin
  if aOldValue <> aNewValue then
    if Supports(aElement.Container, IwbContainerElementRef, Container) then begin
      if Supports(Container.Container, IwbContainerElementRef, Container) then begin
        Container.RemoveElement('DATA');
        Container.Add('DATA', True);
        Container.RemoveElement('Perk Conditions');
        Container.RemoveElement('Entry Point Function Parameters');
        if aNewValue = 2 then begin
          Container.Add('EPFT', True);
          Container.ElementNativeValues['DATA\Entry Point\Function'] := 2;
        end;
      end;
    end;
end;

function wbNPCLevelDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container: IwbContainer;
  i: Int64;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  i := Container.ElementByName['Flags'].NativeValue;
  if i and $00000080 <> 0 then
    Result := 1;
end;

function wbMGEFAssocItemDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container     : IwbContainer;
  Archtype      : Variant;
  DataContainer : IwbDataContainer;
  Element       : IwbElement;
const
  OffsetArchtype = 56;

begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  VarClear(ArchType);
  Element := Container.ElementByName['Archtype'];
  if Assigned(Element) then
    ArchType := Element.NativeValue
  else if Supports(Container, IwbDataContainer, DataContainer) and
          DataContainer.IsValidOffset(aBasePtr, aEndPtr, OffsetArchtype) then begin // we are part a proper structure
      aBasePtr := Pointer(Cardinal(aBasePtr) + OffsetArchtype);
      ArchType := PCardinal(aBasePtr)^;
    end;

  if not VarIsEmpty(ArchType) then
    case Integer(ArchType) of
      12: Result := 1; // Light
      17: Result := 2; // Bound Item
      18: Result := 3; // Summon Creature
      25: Result := 4; // Guide
      34: Result := 8; // Peak Mod
      35: Result := 5; // Cloak
      36: Result := 6; // Werewolf
      39: Result := 7; // Enhance Weapon
      40: Result := 4; // Spawn Hazard
      46: Result := 6; // Vampire Lord
    end;
end;

procedure wbMGEFAssocItemAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  Container : IwbContainer;
  Element   : IwbElement;
begin
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;
  if (aNewValue <> 0) then begin
    Element := Container.ElementByName['Archtype'];
    if Assigned(Element) and (Element.NativeValue = 0) then
        Element.NativeValue := $FF; // Signals ArchType that it should not mess with us on the next change!
          // I assume this will alo protect Second AV Weight (The two actor values are after ArchType)
  end;
end;

procedure wbMGEFAV2WeightAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  Container : IwbContainer;
  Element   : IwbElement;
begin
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;
  if (aNewValue <> 0.0) then begin
    Element := Container.ElementByName['Archtype'];
    if Assigned(Element) and (Element.NativeValue = 0) then
        Element.NativeValue := $FF; // Signals ArchType that it should not mess with us on the next change!
  end;
end;

procedure wbMGEFArchtypeAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  Container: IwbContainerElementRef;
begin
  if VarSameValue(aOldValue, aNewValue) then
    Exit;
  if not Supports(aElement, IwbContainerElementRef, Container) then
    Exit;
  if (aNewValue < $FF) and (aOldValue < $FF) then begin
    Container.ElementNativeValues['..\Assoc. Item'] := 0;
    case Integer(aNewValue) of
      06: Container.ElementNativeValues['..\Actor Value'] := 00;//Agression
      07: Container.ElementNativeValues['..\Actor Value'] := 01;//Confidence
      08: Container.ElementNativeValues['..\Actor Value'] := 00;//Agression
      11: Container.ElementNativeValues['..\Actor Value'] := 54;//Invisibility
      21: Container.ElementNativeValues['..\Actor Value'] := 53;//Paralysis
      24: Container.ElementNativeValues['..\Actor Value'] := 01;//Confidence
      38: Container.ElementNativeValues['..\Actor Value'] := 01;//Confidence
      42: Container.ElementNativeValues['..\Actor Value'] := 01;//Confidence
    else
      Container.ElementNativeValues['..\Actor Value'] := -1;
    end;
    Container.ElementNativeValues['..\Second Actor Value'] := -1;
    Container.ElementNativeValues['..\Second AV Weight'] := 0.0;
  end;
end;

function wbCTDAReferenceDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container     : IwbContainer;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  if Integer(Container.ElementNativeValues['Run On']) = 2 then
    Result := 1;
end;

function wbNAVIIslandDataDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container   : IwbContainer;
  SubRecord   : IwbMainRecord;
  Element     : IwbElement;
begin
  Result := 0;

  Container := aElement.Container;
  while Assigned(Container) and (Container.ElementType <> etsubRecord) do
    Container := Container.Container;

  if not Supports(Container, IwbSubRecord, SubRecord) then
    Exit;

  Element := SubRecord.ElementByName['Is Island'];
  if not Assigned(Element) then
    Exit;

  Result := Element.NativeValue;
end;

function wbNAVIParentDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container   : IwbContainer;
  SubRecord   : IwbMainRecord;
  Element     : IwbElement;
begin
  Result := 0;

  Container := aElement.Container;
  while Assigned(Container) and (Container.ElementType <> etsubRecord) do
    Container := Container.Container;

  if not Supports(Container, IwbSubRecord, SubRecord) then
    Exit;

  Element := SubRecord.ElementByName['Parent Worldspace'];
  if not Assigned(Element) then
    Exit;

  if (Element.NativeValue = 0) then
    Result := 1;
end;

function wbNVNMParentDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container   : IwbContainer;
  Current     : IwbContainer;
  Parent      : IwbContainer;
  GroupRecord : IwbGroupRecord;
  MainRecord  : IwbMainRecord;
  rData       : IwbRecord;
  i           : integer;
begin
  Result := 0;

  Container := aElement.Container;
  while Assigned(Container) and (Container.ElementType <> etGroupRecord) do
    Container := Container.Container;

  if not Supports(Container, IwbGroupRecord, GroupRecord) then
    Exit;

  MainRecord := GroupRecord.ChildrenOf;     // This does NOT work while adding master!

  if not Assigned(MainRecord) then begin // we expect:
     //   plugin \ CELL group \ Block \ Sub Block \ CELL
     //                                           \ CELL Children group \ Permanent children group
     //                                                                 \ Temporary children group = GroupRecord = Container
    if Assigned(Container) and (Container.ElementType = etGroupRecord) then
      Container := Container.Container;
    if Assigned(Container) and (Container.ElementType = etGroupRecord) then
      Parent := Container.Container;
    i := 0;
    while (i < Parent.ElementCount) and Supports(Parent.Elements[i], IwbContainer, Current) and (Current <> Container) do
      Inc(i);
    if (i = 0) or (i = Parent.ElementCount) or not Supports(Parent.Elements[i-1], IwbMainRecord,MainRecord) then begin
      wbProgressCallback('Parent of a NVNM is not a MainRecord');
//      Assert(Assigned(MainRecord)); // Better an exception than to destroy the plugin.
      Exit;
    end;
  end;
  if (MainRecord.Signature<>CELL) then begin
    wbProgressCallback('Parent of a NVNM is not identified as a CELL');
    Assert(MainRecord.Signature=CELL); // Better an exception than to destroy the plugin.
    Exit;
  end;

  rDATA := MainRecord.RecordBySignature['DATA'];

  if not Assigned(rData) then
    Exit;

  i := rData.NativeValue;

  // is interior cell?
  if i and 1 <> 0 then
    Result := 1;
end;

function wbCOEDOwnerDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container  : IwbContainer;
  LinksTo    : IwbElement;
  MainRecord : IwbMainRecord;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  LinksTo := Container.ElementByName['Owner'].LinksTo;

  if Supports(LinksTo, IwbMainRecord, MainRecord) then
    if MainRecord.Signature = 'NPC_' then
      Result := 1
    else if MainRecord.Signature = 'FACT' then
      Result := 2;
end;

function wbGMSTUnionDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  rEDID: IwbRecord;
  s: string;
begin
  Result := 1;
  rEDID := aElement.Container.RecordBySignature[EDID];
  if Assigned(rEDID) then begin
    s := rEDID.Value;
    if Length(s) > 0 then
      case s[1] of
        's': Result := 0; {String} {>>> Localization Strings <<<}
        'i': Result := 1; {intS32}
        'f': Result := 2; {Float}
        'b': Result := 3; {Boolean}
      end;
  end;
end;

function wbMHDTDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  rMHDT : IwbRecord;
begin
  Result := 0;
  if Supports(aElement.Container, IwbRecord, rMHDT) then
    if Assigned(aBasePtr) then  // if not assigned we cannot conclude anyway
      if rMHDT.DataSize = 1028 then
          Result := 1;
end;

function wbFLSTLNAMIsSorted(const aContainer: IwbContainer): Boolean;
var
  rEDID      : IwbRecord;
  s          : string;
const
  OrderedList = 'OrderedList';
begin
  Result := False; {>>> Should not be sorted according to Arthmoor and JustinOther <<<}
  rEDID := aContainer.RecordBySignature[EDID];
  if Assigned(rEDID) then begin
    s := rEDID.Value;
    if Length(s) > Length(OrderedList) then
      Delete(s, 1, Length(s)-Length(OrderedList));
    if SameText(s, OrderedList) then
      Result := False;
  end;
end;

function wbPerkDATADecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  rPRKE: IwbRecord;
  eType: IwbElement;
begin
  Result := 0;
  rPRKE := aElement.Container.RecordBySignature[PRKE];
  if Assigned(rPRKE) then begin
    eType := rPRKE.ElementByName['Type'];
    if Assigned(eType) then begin
      Result := eType.NativeValue;
    end;
  end;
end;

function wbEPFDDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container: IwbContainerElementRef;
begin
  Result := 0;
  if not Assigned(aElement) then
    Exit;
  if not Supports(aElement.Container, IwbContainerElementRef, Container) then
    Exit;
  Result := Container.ElementNativeValues['EPFT'];
  if Result = 2 then
    case Integer(Container.ElementNativeValues['..\DATA\Entry Point\Function']) of
      5, 12, 13, 14: Result := 8;
    end;
end;

{>>> For VMAD <<<}
function wbScriptObjFormatDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  ObjFormat: Integer;
  Container: IwbContainer;
begin
  Result := 0;

  Container := aElement.Container;
  while Assigned(Container) and (Container.ElementType <> etSubRecord) do
    Container := Container.Container;

  if not Assigned(Container) then Exit;

  ObjFormat := Container.ElementNativeValues['Object Format'];

  if ObjFormat = 1 then
    Result := 1;
end;

{>>> For VMAD <<<}
function wbScriptPropertyDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container     : IwbContainer;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  case Integer(Container.ElementNativeValues['Type']) of
     1: Result := 1;
     2: Result := 2;
     3: Result := 3;
     4: Result := 4;
     5: Result := 5;
    11: Result := 6;
    12: Result := 7;
    13: Result := 8;
    14: Result := 9;
    15: Result := 10;
  end;
end;

{>>> For VMAD <<<}
function wbScriptFragmentExistsDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container  : IwbContainer;
  MainRecord : IwbMainRecord;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;
  while Assigned(Container) and (Container.ElementType <> etMainRecord) do
    Container := Container.Container;
  if not Assigned(Container) then Exit;

  Supports(Container, IwbMainRecord, MainRecord);
  if MainRecord.Signature = INFO then
    Result := 1
  else if MainRecord.Signature = PACK then
    Result := 2
  else if MainRecord.Signature = PERK then
    Result := 3
  else if MainRecord.Signature = QUST then
    Result := 4
  else if MainRecord.Signature = SCEN then
    Result := 5;
end;

{>>> For VMAD <<<}
function wbScriptFragmentsDontShow(const aElement: IwbElement): Boolean;
var
  Container: IwbContainer;
begin
  Result := True;
  if Assigned(aElement) then
    if Supports(aElement, IwbContainer, Container) then
      if Container.ElementCount > 0 then
        if Assigned(Container.Elements[0]) then
          Result := VarIsClear(Container.Elements[0].NativeValue);
end;

{>>> For VMAD <<<}
function wbScriptFragmentsQuestCounter(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container     : IwbContainer;

begin
  Result := 0;
  if aElement.ElementType = etValue then
    Container := aElement.Container
  else
    Container := aElement as IwbContainer;
  if not Assigned(Container) then Exit;
  while Assigned(Container) and (Pos('Script Fragments Quest', Container.Name) <> 1) do
    Container := Container.Container;
  if not Assigned(Container) then Exit;

  Result := Integer(Container.ElementNativeValues['fragmentCount']);
end;

{>>> For VMAD <<<}
function wbScriptFragmentsInfoCounter(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container     : IwbContainer;
  F             : Integer;
  i             : Integer;
begin
  Result := 0;
  if aElement.ElementType = etValue then
    Container := aElement.Container
  else
    Container := aElement as IwbContainer;
  if not Assigned(Container) then Exit;
  while Assigned(Container) and (Pos('Script Fragments Info', Container.Name) <> 1) do
    Container := Container.Container;
  if not Assigned(Container) then Exit;

  F := Container.ElementByName['Info Fragments Flags'].NativeValue;
  for i := 0 to 2 do begin
    if (F and 1) = 1 then
      Inc(Result);
    F := F shr 1;
  end;
  for i := 3 to 7 do begin
    if (F and 1) = 1 then begin
      Inc(Result);
    if Assigned(wbProgressCallback) then
      wbProgressCallback('==='+aElement.Name+'       ['+Container.Name+':'+Container.Path+'] = unknown info VMAD flag bit '+IntToStr(i));
  end;
    F := F shr 1;
  end;
end;

{>>> For VMAD <<<}
function wbScriptFragmentsSceneCounter(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container     : IwbContainer;
  F             : Integer;
  i             : Integer;
begin
  Result := 0;
  if aElement.ElementType = etValue then
    Container := aElement.Container
  else
    Container := aElement as IwbContainer;
  if not Assigned(Container) then Exit;
  while Assigned(Container) and (Pos('Script Fragments Scene', Container.Name) <> 1) do
    Container := Container.Container;
  if not Assigned(Container) then Exit;

  F := Container.ElementByName['Scene Fragments Flags'].NativeValue;
  for i := 0 to 2 do begin
    if (F and 1) = 1 then
      Inc(Result);
    F := F shr 1;
  end;
  for i := 3 to 7 do begin
    if (F and 1) = 1 then begin
      Inc(Result);
  if Assigned(wbProgressCallback) then
      wbProgressCallback('==='+aElement.Name+'       ['+Container.Name+':'+Container.Path+'] = unknown scene VMAD flag bit '+IntToStr(i));
  end;
    F := F shr 1;
  end;
end;

{>>> For VMAD <<<}
function wbScriptFragmentsPackCounter(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container     : IwbContainer;
  F             : Integer;
  i             : Integer;
begin
  Result := 0;
  if aElement.ElementType = etValue then
    Container := aElement.Container
  else
    Container := aElement as IwbContainer;
  if not Assigned(Container) then Exit;
  while Assigned(Container) and (Pos('Script Fragments Pack', Container.Name) <> 1) do
    Container := Container.Container;
  if not Assigned(Container) then Exit;

  F := Container.ElementByName['Package Fragments Flags'].NativeValue;
  for i := 0 to 7 do begin
    if (F and 1) = 1 then
      Inc(Result);
    F := F shr 1;
  end;
end;

function wbBOOKTeachesDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container: IwbContainer;
  i: Int64;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  i := Container.ElementByName['Flags'].NativeValue;
  if i and $00000004 <> 0 then Result := 1;
end;


type
  TCTDAFunctionParamType = (
    ptNone,
    ptInteger,
    ptFloat,
    ptVariableName,  //Integer
    ptSex,           //Enum: Male, Female
    ptActorValue,    //Enum: wbActorValue
    ptCrimeType,     //?? Enum
    ptAxis,          //?? Char
    ptQuestStage,    //?? Integer
    ptMiscStat,      //?? Enum
    ptAlignment,     //?? Enum
    ptEquipType,     //?? Enum
    ptFormType,      //?? Enum
    ptCriticalStage, //?? Enum
    ptObjectReference,    //REFR, ACHR
    ptInventoryObject,    //ARMO, BOOK, MISC, WEAP, AMMO, KEYM, ALCH, ARMA, LIGH, LVLI, COBJ
    ptActor,              //ACHR
    ptVoiceType,          //VTYP
    ptIdleForm,           //IDLE
    ptFormList,           //FLST
    ptQuest,              //QUST
    ptFaction,            //FACT
    ptCell,               //CELL
    ptClass,              //CLAS
    ptRace,               //RACE
    ptActorBase,          //NPC_
    ptGlobal,             //GLOB
    ptWeather,            //WTHR
    ptPackage,            //PACK
    ptEncounterZone,      //ECZN
    ptPerk,               //PERK
    ptOwner,              //FACT, NPC_
    ptFurniture,          //FURN
    ptMagicItem,          //SPEL
    ptMagicEffect,        //MGEF
    ptWorldspace,         //WRLD
    ptVATSValueFunction,
    ptVATSValueParam,
    ptReferencableObject,
    ptRegion,             //REGN
    ptKeyword,            //KYWD
    ptAdvanceAction,      // ?? Enum
    ptCastingSource,      // ?? Enum
    ptShout,              //SHOU
    ptLocation,           //LCTN
    ptRefType,            //LCRT
    ptAlias,              // index into QUST quest aliases
    ptPackdata,           // index into PACK package data inputs
    ptAssociationType,    // ASTP
    ptFurnitureAnim,      // enum
    ptFurnitureEntry,     // flags
    ptScene,              // SCEN
    ptWardState,          // enum
    ptEvent,              // Struct
    ptEventData           // LCTN, KYWD or FLST
  );

  PCTDAFunction = ^TCTDAFunction;
  TCTDAFunction = record
    Index: Integer;
    Name: string;
    ParamType1: TCTDAFunctionParamType;
    ParamType2: TCTDAFunctionParamType;
    ParamType3: TCTDAFunctionParamType;
  end;

const
  {>> N means New, V means verified that the name has not changed <<<}
  wbCTDAFunctions : array[0..394] of TCTDAFunction = (
{N} (Index:   0; Name: 'GetWantBlocking'),
{V} (Index:   1; Name: 'GetDistance'; ParamType1: ptObjectReference),
{V} (Index:   5; Name: 'GetLocked'),
{V} (Index:   6; Name: 'GetPos'; ParamType1: ptAxis),
{V} (Index:   8; Name: 'GetAngle'; ParamType1: ptAxis),
{V} (Index:  10; Name: 'GetStartingPos'; ParamType1: ptAxis),
{V} (Index:  11; Name: 'GetStartingAngle'; ParamType1: ptAxis),
{V} (Index:  12; Name: 'GetSecondsPassed'),
{V} (Index:  14; Name: 'GetActorValue'; ParamType1: ptActorValue),
{V} (Index:  18; Name: 'GetCurrentTime'),
{V} (Index:  24; Name: 'GetScale'),
{V} (Index:  25; Name: 'IsMoving'),
{V} (Index:  26; Name: 'IsTurning'),
{V} (Index:  27; Name: 'GetLineOfSight'; ParamType1: ptObjectReference),
{V} (Index:  32; Name: 'GetInSameCell'; ParamType1: ptObjectReference),
{V} (Index:  35; Name: 'GetDisabled'),
{V} (Index:  36; Name: 'MenuMode'; ParamType1: ptInteger), // was ptMenuMode
{V} (Index:  39; Name: 'GetDisease'),
{V} (Index:  41; Name: 'GetClothingValue'),
{V} (Index:  42; Name: 'SameFaction'; ParamType1: ptActor),
{V} (Index:  43; Name: 'SameRace'; ParamType1: ptActor),
{V} (Index:  44; Name: 'SameSex'; ParamType1: ptActor),
{V} (Index:  45; Name: 'GetDetected'; ParamType1: ptActor),
{V} (Index:  46; Name: 'GetDead'),
{V} (Index:  47; Name: 'GetItemCount'; ParamType1: ptInventoryObject),
{V} (Index:  48; Name: 'GetGold'),
{V} (Index:  49; Name: 'GetSleeping'),
{V} (Index:  50; Name: 'GetTalkedToPC'),
{V} (Index:  53; Name: 'GetScriptVariable'; ParamType1: ptObjectReference; ParamType2: ptVariableName),
{V} (Index:  56; Name: 'GetQuestRunning'; ParamType1: ptQuest),
{V} (Index:  58; Name: 'GetStage'; ParamType1: ptQuest),
{V} (Index:  59; Name: 'GetStageDone'; ParamType1: ptQuest; ParamType2: ptQuestStage),
{V} (Index:  60; Name: 'GetFactionRankDifference'; ParamType1: ptFaction; ParamType2: ptActor),
{V} (Index:  61; Name: 'GetAlarmed'),
{V} (Index:  62; Name: 'IsRaining'),
{V} (Index:  63; Name: 'GetAttacked'),
{V} (Index:  64; Name: 'GetIsCreature'),
{V} (Index:  65; Name: 'GetLockLevel'),
{V} (Index:  66; Name: 'GetShouldAttack'; ParamType1: ptActor),
{V} (Index:  67; Name: 'GetInCell'; ParamType1: ptCell),
{V} (Index:  68; Name: 'GetIsClass'; ParamType1: ptClass),
{V} (Index:  69; Name: 'GetIsRace'; ParamType1: ptRace),
{V} (Index:  70; Name: 'GetIsSex'; ParamType1: ptSex),
{V} (Index:  71; Name: 'GetInFaction'; ParamType1: ptFaction),
{V} (Index:  72; Name: 'GetIsID'; ParamType1: ptReferencableObject),
{V} (Index:  73; Name: 'GetFactionRank'; ParamType1: ptFaction),
{V} (Index:  74; Name: 'GetGlobalValue'; ParamType1: ptGlobal),
{V} (Index:  75; Name: 'IsSnowing'),
{V} (Index:  77; Name: 'GetRandomPercent'),
{V} (Index:  79; Name: 'GetQuestVariable'; ParamType1: ptQuest; ParamType2: ptVariableName),
{V} (Index:  80; Name: 'GetLevel'),
{N} (Index:  81; Name: 'IsRotating'),
{V} (Index:  84; Name: 'GetDeadCount'; ParamType1: ptActorBase),
{V} (Index:  91; Name: 'GetIsAlerted'),
{V} (Index:  98; Name: 'GetPlayerControlsDisabled'; ParamType1: ptInteger; ParamType2: ptInteger),
{V} (Index:  99; Name: 'GetHeadingAngle'; ParamType1: ptObjectReference),
{N} (Index: 101; Name: 'IsWeaponMagicOut'),
{V} (Index: 102; Name: 'IsTorchOut'),
{V} (Index: 103; Name: 'IsShieldOut'),
{V} (Index: 106; Name: 'IsFacingUp'),
{V} (Index: 107; Name: 'GetKnockedState'),
{V} (Index: 108; Name: 'GetWeaponAnimType'),
{V} (Index: 109; Name: 'IsWeaponSkillType'; ParamType1: ptActorValue),
{V} (Index: 110; Name: 'GetCurrentAIPackage'),
{V} (Index: 111; Name: 'IsWaiting'),
{V} (Index: 112; Name: 'IsIdlePlaying'),
{N} (Index: 116; Name: 'IsIntimidatebyPlayer'),
{N} (Index: 117; Name: 'IsPlayerInRegion'; ParamType1: ptRegion),
{V} (Index: 118; Name: 'GetActorAggroRadiusViolated'),
{V} (Index: 122; Name: 'GetCrime'; ParamType1: ptActor; ParamType2: ptCrimeType),
{V} (Index: 123; Name: 'IsGreetingPlayer'),
{V} (Index: 125; Name: 'IsGuard'),
{V} (Index: 127; Name: 'HasBeenEaten'),
{V} (Index: 128; Name: 'GetStaminaPercentage'),
{V} (Index: 129; Name: 'GetPCIsClass'; ParamType1: ptClass),
{V} (Index: 130; Name: 'GetPCIsRace'; ParamType1: ptRace),
{V} (Index: 131; Name: 'GetPCIsSex'; ParamType1: ptSex),
{V} (Index: 132; Name: 'GetPCInFaction'; ParamType1: ptFaction),
{V} (Index: 133; Name: 'SameFactionAsPC'),
{V} (Index: 134; Name: 'SameRaceAsPC'),
{V} (Index: 135; Name: 'SameSexAsPC'),
{V} (Index: 136; Name: 'GetIsReference'; ParamType1: ptObjectReference),
{V} (Index: 141; Name: 'IsTalking'),
{V} (Index: 142; Name: 'GetWalkSpeed'),
{V} (Index: 143; Name: 'GetCurrentAIProcedure'),
{V} (Index: 144; Name: 'GetTrespassWarningLevel'),
{V} (Index: 145; Name: 'IsTrespassing'),
{V} (Index: 146; Name: 'IsInMyOwnedCell'),
{V} (Index: 147; Name: 'GetWindSpeed'),
{V} (Index: 148; Name: 'GetCurrentWeatherPercent'),
{V} (Index: 149; Name: 'GetIsCurrentWeather'; ParamType1: ptWeather),
{V} (Index: 150; Name: 'IsContinuingPackagePCNear'),
{N} (Index: 152; Name: 'GetIsCrimeFaction'; ParamType1: ptFaction),
{V} (Index: 153; Name: 'CanHaveFlames'),
{V} (Index: 154; Name: 'HasFlames'),
{V} (Index: 157; Name: 'GetOpenState'),
{V} (Index: 159; Name: 'GetSitting'),
{V} (Index: 161; Name: 'GetIsCurrentPackage'; ParamType1: ptPackage),
{V} (Index: 162; Name: 'IsCurrentFurnitureRef'; ParamType1: ptObjectReference),
{V} (Index: 163; Name: 'IsCurrentFurnitureObj'; ParamType1: ptFurniture),
{V} (Index: 170; Name: 'GetDayOfWeek'),
{V} (Index: 172; Name: 'GetTalkedToPCParam'; ParamType1: ptActor),
{V} (Index: 175; Name: 'IsPCSleeping'),
{V} (Index: 176; Name: 'IsPCAMurderer'),
{N} (Index: 180; Name: 'HasSameEditorLocAsRef'; ParamType1: ptObjectReference; ParamType2: ptKeyword),
{N} (Index: 181; Name: 'HasSameEditorLocAsRefAlias'; ParamType1: ptAlias; ParamType2: ptKeyword),
{V} (Index: 182; Name: 'GetEquipped'; ParamType1: ptInventoryObject),
{V} (Index: 185; Name: 'IsSwimming'),
{V} (Index: 190; Name: 'GetAmountSoldStolen'),
{V} (Index: 192; Name: 'GetIgnoreCrime'),
{V} (Index: 193; Name: 'GetPCExpelled'; ParamType1: ptFaction),
{V} (Index: 195; Name: 'GetPCFactionMurder'; ParamType1: ptFaction),
{V} (Index: 197; Name: 'GetPCEnemyofFaction'; ParamType1: ptFaction),
{V} (Index: 199; Name: 'GetPCFactionAttack'; ParamType1: ptFaction),
{V} (Index: 203; Name: 'GetDestroyed'),
{V} (Index: 214; Name: 'HasMagicEffect'; ParamType1: ptMagicEffect),
{V} (Index: 215; Name: 'GetDefaultOpen'),
{V} (Index: 219; Name: 'GetAnimAction'),
{V} (Index: 223; Name: 'IsSpellTarget'; ParamType1: ptMagicItem),
{V} (Index: 224; Name: 'GetVATSMode'),
{V} (Index: 225; Name: 'GetPersuasionNumber'),
{V} (Index: 226; Name: 'GetVampireFeed'),
{V} (Index: 227; Name: 'GetCannibal'),
{V} (Index: 228; Name: 'GetIsClassDefault'; ParamType1: ptClass),
{V} (Index: 229; Name: 'GetClassDefaultMatch'),
{V} (Index: 230; Name: 'GetInCellParam'; ParamType1: ptCell; ParamType2: ptObjectReference),
{V} (Index: 235; Name: 'GetVatsTargetHeight'),
{V} (Index: 237; Name: 'GetIsGhost'),
{V} (Index: 242; Name: 'GetUnconscious'),
{V} (Index: 244; Name: 'GetRestrained'),
{V} (Index: 246; Name: 'GetIsUsedItem'; ParamType1: ptReferencableObject),
{V} (Index: 247; Name: 'GetIsUsedItemType'; ParamType1: ptFormType),
{N} (Index: 248; Name: 'IsScenePlaying'; ParamType1: ptScene),
{N} (Index: 249; Name: 'IsInDialogueWithPlayer'),
{N} (Index: 250; Name: 'GetLocationCleared'; ParamType1: ptLocation),
{V} (Index: 254; Name: 'GetIsPlayableRace'),
{V} (Index: 255; Name: 'GetOffersServicesNow'),
{N} (Index: 258; Name: 'HasAssociationType'; ParamType1: ptActor; ParamType2: ptAssociationType),
{N} (Index: 259; Name: 'HasFamilyRelationship'; ParamType1: ptActor),
{N} (Index: 261; Name: 'HasParentRelationship'; ParamType1: ptActor),
{N} (Index: 262; Name: 'IsWarningAbout'; ParamType1: ptFormList),
{V} (Index: 263; Name: 'IsWeaponOut'),
{N} (Index: 264; Name: 'HasSpell'; ParamType1: ptMagicItem),
{V} (Index: 265; Name: 'IsTimePassing'),
{V} (Index: 266; Name: 'IsPleasant'),
{V} (Index: 267; Name: 'IsCloudy'),
{N} (Index: 274; Name: 'IsSmallBump'),
{V} (Index: 277; Name: 'GetBaseActorValue'; ParamType1: ptActorValue),
{V} (Index: 278; Name: 'IsOwner'; ParamType1: ptOwner),
{V} (Index: 280; Name: 'IsCellOwner'; ParamType1: ptCell; ParamType2: ptOwner),
{V} (Index: 282; Name: 'IsHorseStolen'),
{V} (Index: 285; Name: 'IsLeftUp'),
{V} (Index: 286; Name: 'IsSneaking'),
{V} (Index: 287; Name: 'IsRunning'),
{V} (Index: 288; Name: 'GetFriendHit'),
{V} (Index: 289; Name: 'IsInCombat'; ParamType1: ptInteger),
{V} (Index: 300; Name: 'IsInInterior'),
{V} (Index: 304; Name: 'IsWaterObject'),
{N} (Index: 305; Name: 'GetPlayerAction'),
{V} (Index: 306; Name: 'IsActorUsingATorch'),
{V} (Index: 309; Name: 'IsXBox'),
{V} (Index: 310; Name: 'GetInWorldspace'; ParamType1: ptWorldSpace),
{V} (Index: 312; Name: 'GetPCMiscStat'; ParamType1: ptMiscStat),
{N} (Index: 313; Name: 'GetPairedAnimation'),
{V} (Index: 314; Name: 'IsActorAVictim'),
{V} (Index: 315; Name: 'GetTotalPersuasionNumber'),
{V} (Index: 318; Name: 'GetIdleDoneOnce'),
{V} (Index: 320; Name: 'GetNoRumors'),
{N} (Index: 323; Name: 'GetCombatState'),
{N} (Index: 325; Name: 'GetWithinPackageLocation'; ParamType1: ptPackdata),
{V} (Index: 327; Name: 'IsRidingMount'),
{N} (Index: 329; Name: 'IsFleeing'),
{V} (Index: 332; Name: 'IsInDangerousWater'),
{V} (Index: 338; Name: 'GetIgnoreFriendlyHits'),
{V} (Index: 339; Name: 'IsPlayersLastRiddenMount'),
{V} (Index: 353; Name: 'IsActor'),
{V} (Index: 354; Name: 'IsEssential'),
{V} (Index: 358; Name: 'IsPlayerMovingIntoNewSpace'),
{N} (Index: 359; Name: 'GetInCurrentLoc'; ParamType1: ptLocation),
{N} (Index: 360; Name: 'GetInCurrentLocAlias'; ParamType1: ptAlias),
{V} (Index: 361; Name: 'GetTimeDead'),
{N} (Index: 362; Name: 'HasLinkedRef'; ParamType1: ptKeyword),
{V} (Index: 365; Name: 'IsChild'),
{N} (Index: 366; Name: 'GetStolenItemValueNoCrime'; ParamType1: ptFaction),
{V} (Index: 367; Name: 'GetLastPlayerAction'),
{V} (Index: 368; Name: 'IsPlayerActionActive'; ParamType1: ptInteger), // was ptPlayerAction
{V} (Index: 370; Name: 'IsTalkingActivatorActor'; ParamType1: ptActor),
{V} (Index: 372; Name: 'IsInList'; ParamType1: ptFormList),
{N} (Index: 373; Name: 'GetStolenItemValue'; ParamType1: ptFaction),
{N} (Index: 375; Name: 'GetCrimeGoldViolent'),
{N} (Index: 376; Name: 'GetCrimeGoldNonviolent'),
{N} (Index: 378; Name: 'HasShout'; ParamType1: ptShout),
{V} (Index: 381; Name: 'GetHasNote'; ParamType1: ptInteger), // was ptNote
{V} (Index: 390; Name: 'GetHitLocation'),
{V} (Index: 391; Name: 'IsPC1stPerson'),
{V} (Index: 396; Name: 'GetCauseofDeath'),
{V} (Index: 397; Name: 'IsLimbGone'; ParamType1: ptInteger), // was ptBodyLocation
{V} (Index: 398; Name: 'IsWeaponInList'; ParamType1: ptFormList),
{N} (Index: 402; Name: 'IsBribedbyPlayer'),
{V} (Index: 403; Name: 'GetRelationshipRank'; ParamType1: ptObjectReference),
{V} (Index: 407; Name: 'GetVATSValue'; ParamType1: ptVATSValueFunction; ParamType2: ptVATSValueParam),
{V} (Index: 408; Name: 'IsKiller'; ParamType1: ptActor),
{V} (Index: 409; Name: 'IsKillerObject'; ParamType1: ptFormList),
{V} (Index: 410; Name: 'GetFactionCombatReaction'; ParamType1: ptFaction; ParamType2: ptFaction),
{V} (Index: 414; Name: 'Exists'; ParamType1: ptObjectReference),
{V} (Index: 415; Name: 'GetGroupMemberCount'),
{V} (Index: 416; Name: 'GetGroupTargetCount'),
{V} (Index: 426; Name: 'GetIsVoiceType'; ParamType1: ptVoiceType),
{V} (Index: 427; Name: 'GetPlantedExplosive'),
{N} (Index: 429; Name: 'IsScenePackageRunning'),
{V} (Index: 430; Name: 'GetHealthPercentage'),
{V} (Index: 432; Name: 'GetIsObjectType'; ParamType1: ptFormType),
{V} (Index: 434; Name: 'GetDialogueEmotion'),
{V} (Index: 435; Name: 'GetDialogueEmotionValue'),
{V} (Index: 437; Name: 'GetIsCreatureType'; ParamType1: ptInteger),
{N} (Index: 444; Name: 'GetInCurrentLocFormList'; ParamType1: ptFormList),
{V} (Index: 445; Name: 'GetInZone'; ParamType1: ptEncounterZone),
{N} (Index: 446; Name: 'GetVelocity'; ParamType1: ptAxis),
{N} (Index: 447; Name: 'GetGraphVariableFloat'; ParamType1: ptVariableName),
{V} (Index: 448; Name: 'HasPerk'; ParamType1: ptPerk; ParamType2: ptInteger{Alt?}),
{V} (Index: 449; Name: 'GetFactionRelation'; ParamType1: ptActor),
{V} (Index: 450; Name: 'IsLastIdlePlayed'; ParamType1: ptIdleForm),
{V} (Index: 453; Name: 'GetPlayerTeammate'),
{V} (Index: 454; Name: 'GetPlayerTeammateCount'),
{V} (Index: 458; Name: 'GetActorCrimePlayerEnemy'),
{V} (Index: 459; Name: 'GetCrimeGold'),
{V} (Index: 463; Name: 'IsPlayerGrabbedRef'; ParamType1: ptObjectReference),
{N} (Index: 465; Name: 'GetKeywordItemCount'; ParamType1: ptKeyword),
{V} (Index: 470; Name: 'GetDestructionStage'),
{V} (Index: 473; Name: 'GetIsAlignment'; ParamType1: ptAlignment),
{N} (Index: 476; Name: 'IsProtected'),
{V} (Index: 477; Name: 'GetThreatRatio'; ParamType1: ptActor),
{V} (Index: 479; Name: 'GetIsUsedItemEquipType'; ParamType1: ptEquipType),
{N} (Index: 487; Name: 'IsCarryable'),
{V} (Index: 488; Name: 'GetConcussed'),
{V} (Index: 491; Name: 'GetMapMarkerVisible'),
{N} (Index: 493; Name: 'PlayerKnows'; ParamType1: ptMagicEffect),
{V} (Index: 494; Name: 'GetPermanentActorValue'; ParamType1: ptActorValue),
{V} (Index: 495; Name: 'GetKillingBlowLimb'),
{N} (Index: 497; Name: 'CanPayCrimeGold'),
{N} (Index: 499; Name: 'GetDaysInJail'),
{N} (Index: 500; Name: 'EPAlchemyGetMakingPoison'),
{N} (Index: 501; Name: 'EPAlchemyEffectHasKeyword'; ParamType1: ptKeyword),
{N} (Index: 503; Name: 'GetAllowWorldInteractions'),
{V} (Index: 508; Name: 'GetLastHitCritical'),
{N} (Index: 513; Name: 'IsCombatTarget'; ParamType1: ptActor),
{V} (Index: 515; Name: 'GetVATSRightAreaFree'; ParamType1: ptObjectReference),
{V} (Index: 516; Name: 'GetVATSLeftAreaFree'; ParamType1: ptObjectReference),
{V} (Index: 517; Name: 'GetVATSBackAreaFree'; ParamType1: ptObjectReference),
{V} (Index: 518; Name: 'GetVATSFrontAreaFree'; ParamType1: ptObjectReference),
{N} (Index: 519; Name: 'GetLockIsBroken'),
{N} (Index: 520; Name: 'IsPS3'),
{N} (Index: 521; Name: 'IsWin32'),
{V} (Index: 522; Name: 'GetVATSRightTargetVisible'; ParamType1: ptObjectReference),
{V} (Index: 523; Name: 'GetVATSLeftTargetVisible'; ParamType1: ptObjectReference),
{V} (Index: 524; Name: 'GetVATSBackTargetVisible'; ParamType1: ptObjectReference),
{V} (Index: 525; Name: 'GetVATSFrontTargetVisible'; ParamType1: ptObjectReference),
{V} (Index: 528; Name: 'IsInCriticalStage'; ParamType1: ptCriticalStage),
{N} (Index: 530; Name: 'GetXPForNextLevel'),
{N} (Index: 533; Name: 'GetInfamy'),
{N} (Index: 534; Name: 'GetInfamyViolent'),
{N} (Index: 535; Name: 'GetInfamyNonViolent'),
{V} (Index: 543; Name: 'GetQuestCompleted'; ParamType1: ptQuest),
{V} (Index: 547; Name: 'IsGoreDisabled'),
{N} (Index: 550; Name: 'IsSceneActionComplete'; ParamType1: ptScene; ParamType2: ptInteger),
{V} (Index: 552; Name: 'GetSpellUsageNum'; ParamType1: ptMagicItem),
{N} (Index: 554; Name: 'GetActorsInHigh'),
{V} (Index: 555; Name: 'HasLoaded3D'),
{N} (Index: 560; Name: 'HasKeyword'; ParamType1: ptKeyword),
{N} (Index: 561; Name: 'HasRefType'; ParamType1: ptRefType),
{N} (Index: 562; Name: 'LocationHasKeyword'; ParamType1: ptKeyword),
{N} (Index: 563; Name: 'LocationHasRefType'; ParamType1: ptRefType),
{N} (Index: 565; Name: 'GetIsEditorLocation'; ParamType1: ptLocation),
{N} (Index: 566; Name: 'GetIsAliasRef'; ParamType1: ptAlias),
{N} (Index: 567; Name: 'GetIsEditorLocAlias'; ParamType1: ptAlias),
{N} (Index: 568; Name: 'IsSprinting'),
{N} (Index: 569; Name: 'IsBlocking'),
{N} (Index: 570; Name: 'HasEquippedSpell'; ParamType1: ptCastingSource),
{N} (Index: 571; Name: 'GetCurrentCastingType'; ParamType1: ptCastingSource),
{N} (Index: 572; Name: 'GetCurrentDeliveryType'; ParamType1: ptCastingSource),
{N} (Index: 574; Name: 'GetAttackState'),
{N} (Index: 576; Name: 'GetEventData'; ParamType1: ptEvent; ParamType2: ptEventData; ParamType3: ptNone),
{N} (Index: 577; Name: 'IsCloserToAThanB'; ParamType1: ptObjectReference; ParamType2: ptObjectReference),
{N} (Index: 579; Name: 'GetEquippedShout'; ParamType1: ptShout),
{N} (Index: 580; Name: 'IsBleedingOut'),
{N} (Index: 584; Name: 'GetRelativeAngle'; ParamType1: ptObjectReference; ParamType2: ptAxis),
{N} (Index: 589; Name: 'GetMovementDirection'),
{N} (Index: 590; Name: 'IsInScene'),
{N} (Index: 591; Name: 'GetRefTypeDeadCount'; ParamType1: ptLocation; ParamType2: ptRefType),
{N} (Index: 592; Name: 'GetRefTypeAliveCount'; ParamType1: ptLocation; ParamType2: ptRefType),
{N} (Index: 594; Name: 'GetIsFlying'),
{N} (Index: 595; Name: 'IsCurrentSpell'; ParamType1: ptMagicItem; ParamType2: ptCastingSource),
{N} (Index: 596; Name: 'SpellHasKeyword'; ParamType1: ptCastingSource; ParamType2: ptKeyword),
{N} (Index: 597; Name: 'GetEquippedItemType'; ParamType1: ptCastingSource),
{N} (Index: 598; Name: 'GetLocationAliasCleared'; ParamType1: ptAlias),
{N} (Index: 600; Name: 'GetLocAliasRefTypeDeadCount'; ParamType1: ptAlias; ParamType2: ptRefType),
{N} (Index: 601; Name: 'GetLocAliasRefTypeAliveCount'; ParamType1: ptAlias; ParamType2: ptRefType),
{N} (Index: 602; Name: 'IsWardState'; ParamType1: ptWardState),
{N} (Index: 603; Name: 'IsInSameCurrentLocAsRef'; ParamType1: ptObjectReference; ParamType2: ptKeyword),
{N} (Index: 604; Name: 'IsInSameCurrentLocAsRefAlias'; ParamType1: ptAlias; ParamType2: ptKeyword),
{N} (Index: 605; Name: 'LocAliasIsLocation'; ParamType1: ptAlias; ParamType2: ptLocation),
{N} (Index: 606; Name: 'GetKeywordDataForLocation'; ParamType1: ptLocation; ParamType2: ptKeyword),
{N} (Index: 608; Name: 'GetKeywordDataForAlias'; ParamType1: ptAlias; ParamType2: ptKeyword),
{N} (Index: 610; Name: 'LocAliasHasKeyword'; ParamType1: ptAlias; ParamType2: ptKeyword),
{N} (Index: 611; Name: 'IsNullPackageData'; ParamType1: ptPackdata),
{N} (Index: 612; Name: 'GetNumericPackageData'; ParamType1: ptInteger),
{N} (Index: 613; Name: 'IsFurnitureAnimType'; ParamType1: ptFurnitureAnim),
{N} (Index: 614; Name: 'IsFurnitureEntryType'; ParamType1: ptFurnitureEntry),
{N} (Index: 615; Name: 'GetHighestRelationshipRank'),
{N} (Index: 616; Name: 'GetLowestRelationshipRank'),
{N} (Index: 617; Name: 'HasAssociationTypeAny'; ParamType1: ptAssociationType),
{N} (Index: 618; Name: 'HasFamilyRelationshipAny'),
{N} (Index: 619; Name: 'GetPathingTargetOffset'; ParamType1: ptAxis),
{N} (Index: 620; Name: 'GetPathingTargetAngleOffset'; ParamType1: ptAxis),
{N} (Index: 621; Name: 'GetPathingTargetSpeed'),
{N} (Index: 622; Name: 'GetPathingTargetSpeedAngle'; ParamType1: ptAxis),
{N} (Index: 623; Name: 'GetMovementSpeed'),
{N} (Index: 624; Name: 'GetInContainer'; ParamType1: ptObjectReference),
{N} (Index: 625; Name: 'IsLocationLoaded'; ParamType1: ptLocation),
{N} (Index: 626; Name: 'IsLocAliasLoaded'; ParamType1: ptAlias),
{N} (Index: 627; Name: 'IsDualCasting'),
{N} (Index: 629; Name: 'GetVMQuestVariable'; ParamType1: ptQuest; ParamType2: ptVariableName),
{N} (Index: 630; Name: 'GetVMScriptVariable'; ParamType1: ptObjectReference; ParamType2: ptVariableName),
{N} (Index: 631; Name: 'IsEnteringInteractionQuick'),
{N} (Index: 632; Name: 'IsCasting'),
{N} (Index: 633; Name: 'GetFlyingState'),
{N} (Index: 635; Name: 'IsInFavorState'),
{N} (Index: 636; Name: 'HasTwoHandedWeaponEquipped'),
{N} (Index: 637; Name: 'IsExitingInstant'),
{N} (Index: 638; Name: 'IsInFriendStateWithPlayer'),
{N} (Index: 639; Name: 'GetWithinDistance'; ParamType1: ptObjectReference; ParamType2: ptFloat),
{N} (Index: 640; Name: 'GetActorValuePercent'; ParamType1: ptActorValue),
{N} (Index: 641; Name: 'IsUnique'),
{N} (Index: 642; Name: 'GetLastBumpDirection'),
{N} (Index: 644; Name: 'IsInFurnitureState'; ParamType1: ptFurnitureAnim),
{N} (Index: 645; Name: 'GetIsInjured'),
{N} (Index: 646; Name: 'GetIsCrashLandRequest'),
{N} (Index: 647; Name: 'GetIsHastyLandRequest'),
{N} (Index: 650; Name: 'IsLinkedTo'; ParamType1: ptObjectReference; ParamType2: ptKeyword),
{N} (Index: 651; Name: 'GetKeywordDataForCurrentLocation'; ParamType1: ptKeyword),
{N} (Index: 652; Name: 'GetInSharedCrimeFaction'; ParamType1: ptObjectReference),
{N} (Index: 654; Name: 'GetBribeSuccess'),
{N} (Index: 655; Name: 'GetIntimidateSuccess'),
{N} (Index: 656; Name: 'GetArrestedState'),
{N} (Index: 657; Name: 'GetArrestingActor'),
{N} (Index: 659; Name: 'EPTemperingItemIsEnchanted'),
{N} (Index: 660; Name: 'EPTemperingItemHasKeyword'; ParamType1: ptKeyword),
{N} (Index: 664; Name: 'GetReplacedItemType'; ParamType1: ptCastingSource),
{N} (Index: 672; Name: 'IsAttacking'),
{N} (Index: 673; Name: 'IsPowerAttacking'),
{N} (Index: 674; Name: 'IsLastHostileActor'),
{N} (Index: 675; Name: 'GetGraphVariableInt'; ParamType1: ptVariableName),
{N} (Index: 676; Name: 'GetCurrentShoutVariation'),
{N} (Index: 678; Name: 'ShouldAttackKill'; ParamType1: ptActor),
{N} (Index: 680; Name: 'GetActivatorHeight'),
{N} (Index: 681; Name: 'EPMagic_IsAdvanceSkill'; ParamType1: ptActorValue),
{N} (Index: 682; Name: 'WornHasKeyword'; ParamType1: ptKeyword),
{N} (Index: 683; Name: 'GetPathingCurrentSpeed'),
{N} (Index: 684; Name: 'GetPathingCurrentSpeedAngle'; ParamType1: ptAxis),
{N} (Index: 691; Name: 'EPModSkillUsage_AdvanceObjectHasKeyword'; ParamType1: ptKeyword),
{N} (Index: 692; Name: 'EPModSkillUsage_IsAdvanceAction'; ParamType1: ptAdvanceAction),
{N} (Index: 693; Name: 'EPMagic_SpellHasKeyword'; ParamType1: ptKeyword),
{N} (Index: 694; Name: 'GetNoBleedoutRecovery'),
{N} (Index: 696; Name: 'EPMagic_SpellHasSkill'; ParamType1: ptActorValue),
{N} (Index: 697; Name: 'IsAttackType'; ParamType1: ptKeyword),
{N} (Index: 698; Name: 'IsAllowedToFly'),
{N} (Index: 699; Name: 'HasMagicEffectKeyword'; ParamType1: ptKeyword),
{N} (Index: 700; Name: 'IsCommandedActor'),
{N} (Index: 701; Name: 'IsStaggered'),
{N} (Index: 702; Name: 'IsRecoiling'),
{N} (Index: 703; Name: 'IsExitingInteractionQuick'),
{N} (Index: 704; Name: 'IsPathing'),
{N} (Index: 705; Name: 'GetShouldHelp'; ParamType1: ptActor),
{N} (Index: 706; Name: 'HasBoundWeaponEquipped'; ParamType1: ptCastingSource),
{N} (Index: 707; Name: 'GetCombatTargetHasKeyword'; ParamType1: ptKeyword),
{N} (Index: 709; Name: 'GetCombatGroupMemberCount'),
{N} (Index: 710; Name: 'IsIgnoringCombat'),
{N} (Index: 711; Name: 'GetLightLevel'),
{N} (Index: 713; Name: 'SpellHasCastingPerk'; ParamType1: ptPerk),
{N} (Index: 714; Name: 'IsBeingRidden'),
{N} (Index: 715; Name: 'IsUndead'),
{N} (Index: 716; Name: 'GetRealHoursPassed'),
{N} (Index: 718; Name: 'IsUnlockedDoor'),
{N} (Index: 719; Name: 'IsHostileToActor'; ParamType1: ptActor),
{N} (Index: 720; Name: 'GetTargetHeight'; ParamType1: ptObjectReference),
{N} (Index: 721; Name: 'IsPoison'),
{N} (Index: 722; Name: 'WornApparelHasKeywordCount'; ParamType1: ptKeyword),
{N} (Index: 723; Name: 'GetItemHealthPercent'),
{N} (Index: 724; Name: 'EffectWasDualCast'),
{N} (Index: 725; Name: 'GetKnockedStateEnum'),
{N} (Index: 726; Name: 'DoesNotExist'),
{N} (Index: 730; Name: 'IsOnFlyingMount'),
{N} (Index: 731; Name: 'CanFlyHere'),
{N} (Index: 732; Name: 'IsFlyingMountPatrolQueud'),
{N} (Index: 733; Name: 'IsFlyingMountFastTravelling')
  );
var
  wbCTDAFunctionEditInfo: string;

function CmpU32(a, b : Cardinal) : Integer;
asm
  xor ecx, ecx
  cmp eax, edx
  ja @@GT
  je @@EQ
@@LT:
  dec ecx
  dec ecx
@@GT:
  inc ecx
@@EQ:
  mov eax, ecx
end;

function wbCTDAParamDescFromIndex(aIndex: Integer): PCTDAFunction;
var
  L, H, I, C: Integer;
begin
  Result := nil;

  L := Low(wbCTDAFunctions);
  H := High(wbCTDAFunctions);
  while L <= H do begin
    I := (L + H) shr 1;
    C := CmpU32(wbCTDAFunctions[I].Index, aIndex);
    if C < 0 then
      L := I + 1
    else begin
      H := I - 1;
      if C = 0 then begin
        L := I;
        Result := @wbCTDAFunctions[L];
      end;
    end;
  end;
end;

function wbCTDACompValueDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container: IwbContainer;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  // "use global" flag
  if Integer(Container.ElementByName['Type'].NativeValue) and $04 <> 0 then
    Result := 1;
end;

function wbCTDAParam1Decider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Desc: PCTDAFunction;
  Container: IwbContainer;
  ParamFlag: Byte;
  ParamType: TCTDAFunctionParamType;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  Desc := wbCTDAParamDescFromIndex(Container.ElementByName['Function'].NativeValue);

  if Assigned(Desc) then begin
    ParamType := Desc.ParamType1;
    ParamFlag := Container.ElementByName['Type'].NativeValue;
    if ParamType in [ptObjectReference, ptActor, ptPackage] then begin
      if ParamFlag and $02 > 0 then ParamType := ptAlias else {>>> 'use aliases' is set <<<}
      if ParamFlag and $08 > 0 then ParamType := ptPackdata;  {>>> 'use packdata' is set <<<}
    end;
    Result := Succ(Integer(ParamType));
  end;
end;

function wbCTDAParam2Decider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Desc: PCTDAFunction;
  Container: IwbContainer;
  ParamFlag: Byte;
  ParamType: TCTDAFunctionParamType;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  Desc := wbCTDAParamDescFromIndex(Container.ElementByName['Function'].NativeValue);

  if Assigned(Desc) then begin
    ParamType := Desc.ParamType2;
    ParamFlag := Container.ElementByName['Type'].NativeValue;
    if ParamType in [ptObjectReference, ptActor, ptPackage] then begin
      if ParamFlag and $02 > 0 then ParamType := ptAlias else {>>> 'use aliases' is set <<<}
      if ParamFlag and $08 > 0 then ParamType := ptPackdata;  {>>> 'use packdata' is set <<<}
    end;
    Result := Succ(Integer(ParamType));
  end;
end;

function wbCTDAParam2VATSValueParamDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container : IwbContainer;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  Result := Container.ElementByName['Parameter #1'].NativeValue;
end;

function wbCTDAFunctionToStr(aInt: Int64; const aElement: IwbElement; aType: TwbCallbackType): string;
var
  Desc : PCTDAFunction;
  i    : Integer;
begin
  Result := '';
  case aType of
    ctToStr, ctToEditValue: begin
      Desc := wbCTDAParamDescFromIndex(aInt);
      if Assigned(Desc) then
        Result := Desc.Name
      else if aType = ctToEditValue then
        Result := IntToStr(aInt)
      else
        Result := '<Unknown: '+IntToStr(aInt)+'>';
    end;
    ctToSortKey: Result := IntToHex(aInt, 8);
    ctCheck: begin
      Desc := wbCTDAParamDescFromIndex(aInt);
      if Assigned(Desc) then
        Result := ''
      else
        Result := '<Unknown: '+IntToStr(aInt)+'>';
    end;
    ctEditType:
      Result := 'ComboBox';
    ctEditInfo: begin
      Result := wbCTDAFunctionEditInfo;
      if Result = '' then begin
        with TStringList.Create do try
          for i := Low(wbCTDAFunctions) to High(wbCTDAFunctions) do
            Add(wbCTDAFunctions[i].Name);
          Sort;
          Result := CommaText;
        finally
          Free;
        end;
        wbCTDAFunctionEditInfo := Result;
      end;
    end;
  end;
end;

function wbCTDAFunctionToInt(const aString: string; const aElement: IwbElement): Int64;
var
  i: Integer;
begin
  for i := Low(wbCTDAFunctions) to High(wbCTDAFunctions) do
    with wbCTDAFunctions[i] do
      if SameText(Name, aString) then begin
        Result := Index;
        Exit;
      end;
  Result := StrToInt64(aString);
end;

function wbNeverShow(const aElement: IwbElement): Boolean;
begin
  Result := wbHideNeverShow;
end;

function GetREGNType(aElement: IwbElement): Integer;
var
  Container: IwbContainerElementRef;
begin
  Result := -1;
  if not Assigned(aElement) then
    Exit;
  while aElement.Name <> 'Region Data Entry' do begin
    aElement := aElement.Container;
    if not Assigned(aElement) then
      Exit;
  end;
  if not Supports(aElement, IwbContainerElementRef, Container) then
    Exit;
  Result := Container.ElementNativeValues['RDAT\Type'];
end;

function wbREGNObjectsDontShow(const aElement: IwbElement): Boolean;
begin
  Result := GetREGNType(aElement) <> 2;
end;

function wbREGNWeatherDontShow(const aElement: IwbElement): Boolean;
begin
  Result := GetREGNType(aElement) <> 3;
end;

function wbREGNMapDontShow(const aElement: IwbElement): Boolean;
begin
  Result := GetREGNType(aElement) <> 4;
end;

function wbREGNLandDontShow(const aElement: IwbElement): Boolean;
begin
  Result := GetREGNType(aElement) <> 5;
end;

function wbREGNGrassDontShow(const aElement: IwbElement): Boolean;
begin
  Result := GetREGNType(aElement) <> 6;
end;

function wbREGNSoundDontShow(const aElement: IwbElement): Boolean;
begin
  Result := GetREGNType(aElement) <> 7;
end;

function wbREGNImposterDontShow(const aElement: IwbElement): Boolean;
begin
  Result := GetREGNType(aElement) <> 8;
end;

function wbMESGTNAMDontShow(const aElement: IwbElement): Boolean;
var
  Container  : IwbContainerElementRef;
  MainRecord : IwbMainRecord;
begin
  Result := False;
  if not Supports(aElement, IwbMainRecord, MainRecord) then
    Exit;
  if not Supports(aElement, IwbContainerElementRef, Container) then
    Exit;
  if Integer(Container.ElementNativeValues['DNAM']) and 1 <> 0 then
    Result := True;
end;

function wbEPFDDontShow(const aElement: IwbElement): Boolean;
var
  Container: IwbContainerElementRef;
begin
  Result := False;
  if aElement.Name <> 'Entry Point Function Parameters' then
    Exit;
  if not Supports(aElement, IwbContainerElementRef, Container) then
    Exit;
  if not (Integer(Container.ElementNativeValues['EPFT']) in [1..3]) then
    Result := True;
end;

function wbTES4ONAMDontShow(const aElement: IwbElement): Boolean;
var
  MainRecord : IwbMainRecord;
begin
  Result := False;
  if not Assigned(aElement) then
    Exit;
  MainRecord := aElement.ContainingMainRecord;
  if not Assigned(MainRecord) then
    Exit;
  if not MainRecord.IsESM then
    Result := True;
end;

function wbEPF2DontShow(const aElement: IwbElement): Boolean;
var
  Container: IwbContainerElementRef;
begin
  Result := False;
  if aElement.Name <> 'Entry Point Function Parameters' then
    Exit;
  if not Supports(aElement, IwbContainerElementRef, Container) then
    Exit;
  if not (Integer(Container.ElementNativeValues['EPFT']) in [4]) then
    Result := True;
end;

procedure wbRemoveOFST(const aElement: IwbElement);
var
  Container: IwbContainer;
  rOFST: IwbRecord;
begin
  if not wbRemoveOffsetData then
    Exit;

  if Supports(aElement, IwbContainer, Container) then begin
    if wbBeginInternalEdit then try
      Container.RemoveElement(OFST);
    finally
      wbEndInternalEdit;
    end else begin
      rOFST := Container.RecordBySignature[OFST];
      if Assigned(rOFST) then
        Container.RemoveElement(rOFST);
    end;
  end;
end;

procedure wbWRLDAfterLoad(const aElement: IwbElement);
var
  MainRecord: IwbMainRecord;
begin
  wbRemoveOFST(aElement);

  if wbBeginInternalEdit then try

    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;

    if MainRecord.ElementExists['Unused RNAM'] then
      MainRecord.RemoveElement('Unused RNAM');

  finally
    wbEndInternalEdit;
  end;
end;

function wbActorTemplateUseTraits(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000001) <> 0;
  end;
end;

function wbActorTemplateUseStats(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000002) <> 0;
  end;
end;

function wbActorAutoCalcDontShow(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Flags'];
    Result := (i and $00000010) <> 0;
  end;
end;

function wbActorTemplateUseStatsAutoCalc(const aElement: IwbElement): Boolean;
begin
  Result := wbActorTemplateUseStats(aElement) or wbActorAutoCalcDontShow(aElement);
end;

function wbActorTemplateUseFactions(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000004) <> 0;
  end;
end;

function wbActorTemplateUseActorEffectList(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000008) <> 0;
  end;
end;

function wbActorTemplateUseAIData(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000010) <> 0;
  end;
end;

function wbActorTemplateUseAIPackages(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000020) <> 0;
  end;
end;

function wbActorTemplateUseModelAnimation(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000040) <> 0;
  end;
end;

function wbActorTemplateUseBaseData(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000080) <> 0;
  end;
end;

function wbActorTemplateUseInventory(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000100) <> 0;
  end;
end;

function wbActorTemplateUseScript(const aElement: IwbElement): Boolean;
var
  Element    : IwbElement;
  MainRecord : IwbMainRecord;
  i          : Int64;
begin
  Result := False;
  Element := aElement;
  MainRecord := nil;
  while Assigned(Element) and not Supports(Element, IwbMainRecord, MainRecord) do
    Element := Element.Container;
  if Assigned(MainRecord) then begin
    i := MainRecord.ElementNativeValues['ACBS\Template Flags'];
    Result := (i and $00000200) <> 0;
  end;
end;

procedure wbRemoveEmptyKWDA(const aElement: IwbElement);
var
  Container  : IwbContainerElementRef;
  MainRecord : IwbMainRecord;
begin
  if wbBeginInternalEdit then try
    if not Supports(aElement, IwbContainerElementRef, Container) then
      Exit;

    if Container.ElementCount < 1 then
      Exit;

    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;

    if MainRecord.IsDeleted then
      Exit;

    if not Assigned(Container.ElementBySignature['KSIZ']) then
      if Assigned(Container.ElementBySignature['KWDA']) then
        Container.ElementBySignature['KWDA'].Remove;

  finally
    wbEndInternalEdit;
  end;
end;

procedure wbReplaceBODTwithBOD2(const aElement: IwbElement);
var
  MainRecord    : IwbMainRecord;
  ContainerBOD2 : IwbContainerElementRef;
  ContainerBODT : IwbContainerElementRef;
begin
  Exit; {>>> Looks like causes problems with Dawnguard.esm <<<}

  if wbBeginInternalEdit then try
    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;

    if not Supports(MainRecord.ElementBySignature[BODT], IwbContainerElementRef, ContainerBODT) then
      Exit;

    if Supports(MainRecord.Add('BOD2', True), IwbContainerElementRef, ContainerBOD2) then begin
       ContainerBOD2.ElementNativeValues['First Person Flags'] := ContainerBODT.ElementNativeValues['First Person Flags'];
       ContainerBOD2.ElementNativeValues['Armor Type'] := ContainerBODT.ElementNativeValues['Armor Type'];
       MainRecord.RemoveElement(BODT);
    end;

  finally
    wbEndInternalEdit;
  end;
end;

procedure wbARMOAfterLoad(const aElement: IwbElement);
begin
  wbRemoveEmptyKWDA(aElement);
  wbReplaceBODTwithBOD2(aElement);
end;

procedure wbARMAAfterLoad(const aElement: IwbElement);
{var
  MainRecord    : IwbMainRecord;}
begin
  wbReplaceBODTwithBOD2(aElement);
  {if wbBeginInternalEdit then try
    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;
    if MainRecord.ElementNativeValues['DNAM\Weight slider - Male'] = 0 then
      MainRecord.ElementNativeValues['DNAM\Weight slider - Male'] := 2;
    if MainRecord.ElementNativeValues['DNAM\Weight slider - Female'] = 0 then
      MainRecord.ElementNativeValues['DNAM\Weight slider - Female'] := 2;
  finally
    wbEndInternalEdit;
  end;}
end;

procedure wbNPCAfterLoad(const aElement: IwbElement);
begin
  wbRemoveEmptyKWDA(aElement);
end;

procedure wbREFRAfterLoad(const aElement: IwbElement);
var
  Container  : IwbContainerElementRef;
  MainRecord : IwbMainRecord;
begin
  if wbBeginInternalEdit then try
    if not Supports(aElement, IwbContainerElementRef, Container) then
      Exit;

    if Container.ElementCount < 1 then
      Exit;

    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;

    if MainRecord.IsDeleted then
      Exit;

    if Container.ElementExists['XLOC'] then begin
      if Container.ElementNativeValues['XLOC - Lock Data\Level'] = 0 then
        Container.ElementNativeValues['XLOC - Lock Data\Level'] := 1;
    end;

    Container.RemoveElement('XPTL');
  finally
    wbEndInternalEdit;
  end;
end;

procedure wbRACEAfterLoad(const aElement: IwbElement);
begin
  wbReplaceBODTwithBOD2(aElement);
end;

procedure wbWEAPAfterLoad(const aElement: IwbElement);
var
  Container  : IwbContainerElementRef;
  MainRecord : IwbMainRecord;
  Flags      : Cardinal;
begin
  wbRemoveEmptyKWDA(aElement);

  if wbBeginInternalEdit then try
    if not Supports(aElement, IwbContainerElementRef, Container) then
      Exit;

    if Container.ElementCount < 1 then
      Exit;

    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;

    if MainRecord.IsDeleted then
      Exit;

    // clear IronSights flags which are randomly assigned in CK
    if Container.ElementExists['DNAM'] then begin
      Flags := Container.ElementNativeValues['DNAM - Data\Flags'];
      Flags := Flags and ($FFFF xor $0040);
      Container.ElementNativeValues['DNAM - Data\Flags'] := Flags;
      Flags := Container.ElementNativeValues['DNAM - Data\Flags2'];
      Flags := Flags and ($FFFFFFFF xor $0100);
      Container.ElementNativeValues['DNAM - Data\Flags2'] := Flags;
    end;

  finally
    wbEndInternalEdit;
  end;
end;

procedure wbCELLAfterLoad(const aElement: IwbElement);
var
  Container    : IwbContainerElementRef;
//  Container2   : IwbContainerElementRef;
  MainRecord   : IwbMainRecord;
begin
  if wbBeginInternalEdit then try
    if not Supports(aElement, IwbContainerElementRef, Container) then
      Exit;

    if Container.ElementCount < 1 then
      Exit;

    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;

    if MainRecord.IsDeleted then
      Exit;

    if not Container.ElementExists['DATA'] then
      Exit;

    // 'Default' water height for exterior cells if not set (so water height will be taken from WRLD by game)
    if (not Container.ElementExists['XCLW']) and ((Integer(Container.ElementNativeValues['DATA']) and $02) <> 0) then begin
      Container.Add('XCLW', True);
      Container.ElementEditValues['XCLW'] := 'Default';
    end;

//    if Supports(Container.ElementBySignature[XCLR], IwbContainerElementRef, Container2) then begin
//      for i := Pred(Container2.ElementCount) downto 0 do
//        if not Supports(Container2.Elements[i].LinksTo, IwbMainRecord, MainRecord) or (MainRecord.Signature <> 'REGN') then
//          Container2.RemoveElement(i);
//      if Container2.ElementCount < 1 then
//        Container2.Remove;
//    end;
  finally
    wbEndInternalEdit;
  end;
end;

procedure wbMESGAfterLoad(const aElement: IwbElement);
var
  Container    : IwbContainerElementRef;
  MainRecord   : IwbMainRecord;
  IsMessageBox : Boolean;
  HasTimeDelay : Boolean;
begin
  if wbBeginInternalEdit then try
    if not Supports(aElement, IwbContainerElementRef, Container) then
      Exit;

    if Container.ElementCount < 1 then
      Exit;

    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;

    if MainRecord.IsDeleted then
      Exit;

    IsMessageBox := (Integer(Container.ElementNativeValues['DNAM']) and 1) = 1;
    HasTimeDelay := Container.ElementExists['TNAM'];

    if IsMessageBox = HasTimeDelay then
      if IsMessageBox then
        Container.RemoveElement('TNAM')
      else begin
        if not Container.ElementExists['DNAM'] then
          Container.Add('DNAM', True);
        Container.ElementNativeValues['DNAM'] := Integer(Container.ElementNativeValues['DNAM']) or 1;
      end;

  finally
    wbEndInternalEdit;
  end;
end;


{>>>
  Updated, but not called for Skyrim
  Why is it required to fix particle counts? Because 1 pass = 79 particles?
>>>}
//procedure wbEFSHAfterLoad(const aElement: IwbElement);
//var
//  Container: IwbContainerElementRef;
//  MainRecord   : IwbMainRecord;
//  FullParticleBirthRatio : Extended;
//  PersistantParticleCount : Extended;
//begin
//  if wbBeginInternalEdit then try
//    if not Supports(aElement, IwbContainerElementRef, Container) then
//      Exit;
//
//    if Container.ElementCount < 1 then
//      Exit;
//
//    if not Supports(aElement, IwbMainRecord, MainRecord) then
//      Exit;
//
//    if MainRecord.IsDeleted then
//      Exit;
//
//    if not Container.ElementExists['DATA'] then
//      Exit;
//
//    FullParticleBirthRatio := Container.ElementNativeValues['DATA\Particle Shader - Full Particle Birth Ratio'];
//    PersistantParticleCount := Container.ElementNativeValues['DATA\Particle Shader - Persistant Particle Count'];
//
//    if ((FullParticleBirthRatio <> 0) and (FullParticleBirthRatio <= 1)) then begin
//      FullParticleBirthRatio := FullParticleBirthRatio * 78.0;
//      Container.ElementNativeValues['DATA\Particle Shader - Full Particle Birth Ratio'] := FullParticleBirthRatio;
//    end;
//
//    if ((PersistantParticleCount <> 0) and (PersistantParticleCount <= 1)) then begin
//      PersistantParticleCount := PersistantParticleCount * 78.0;
//      Container.ElementNativeValues['DATA\Particle Shader - Persistant Particle Count'] := PersistantParticleCount;
//    end;
//
//  finally
//    wbEndInternalEdit;
//  end;
//end;

procedure wbLIGHAfterLoad(const aElement: IwbElement);
var
  Container: IwbContainerElementRef;
  MainRecord   : IwbMainRecord;
begin
  if wbBeginInternalEdit then try
    if not Supports(aElement, IwbContainerElementRef, Container) then
      Exit;

    if Container.ElementCount < 1 then
      Exit;

    if not Supports(aElement, IwbMainRecord, MainRecord) then
      Exit;

    if MainRecord.IsDeleted then
      Exit;

    if not Container.ElementExists['FNAM'] then begin
      Container.Add('FNAM', True);
      Container.ElementNativeValues['FNAM'] := 1.0;
    end;

    if Container.ElementExists['DATA'] then begin
      if SameValue(Container.ElementNativeValues['DATA\Falloff Exponent'], 0.0) then
        Container.ElementNativeValues['DATA\Falloff Exponent'] := 1.0;
      if SameValue(Container.ElementNativeValues['DATA\FOV'], 0.0) then
        Container.ElementNativeValues['DATA\FOV'] := 90.0;
    end;

  finally
    wbEndInternalEdit;
  end;
end;

procedure wbEFITAfterLoad(const aElement: IwbElement);
var
  Container : IwbContainerElementRef;
  Element   : IwbElement;
  ActorValue: Variant;
  MainRecord: IwbMainRecord;
begin
  if wbBeginInternalEdit then try
    if not Supports(aElement, IwbContainerElementRef, Container) then
      Exit;

    if Container.ElementCount < 1 then
      Exit;

    MainRecord := Container.ContainingMainRecord;
    if not Assigned(MainRecord) or MainRecord.IsDeleted then
      Exit;

    Element := Container.ElementByPath['..\EFID'];
    if not Assigned(Element) then
      Exit;
    if not Supports(Element.LinksTo, IwbMainRecord, MainRecord) then
      Exit;
    if MainRecord.Signature <> 'MGEF' then
      Exit;
    ActorValue := MainRecord.ElementNativeValues['DATA - Data\Actor Value'];
    if VarIsNull(ActorValue) or VarIsClear(ActorValue) then
      Exit;
    if VarCompareValue(ActorValue, Container.ElementNativeValues['Actor Value']) <> vrEqual then
      Container.ElementNativeValues['Actor Value'] := ActorValue;
  finally
    wbEndInternalEdit;
  end;
end;

procedure wbRPLDAfterLoad(const aElement: IwbElement);
var
  Container: IwbContainer;
  a, b: Single;
  NeedsFlip: Boolean;
begin
  if wbBeginInternalEdit then try
    if Supports(aElement, IwbContainer, Container) then begin
      NeedsFlip := False;
      if Container.ElementCount > 1 then begin
        a := StrToFloat((Container.Elements[0] as IwbContainer).Elements[0].Value);
        b := StrToFloat((Container.Elements[Pred(Container.ElementCount)] as IwbContainer).Elements[0].Value);
        case CompareValue(a, b) of
          EqualsValue: begin
            a := StrToFloat((Container.Elements[0] as IwbContainer).Elements[1].Value);
            b := StrToFloat((Container.Elements[Pred(Container.ElementCount)] as IwbContainer).Elements[1].Value);
            NeedsFlip := CompareValue(a, b) = GreaterThanValue;
          end;
          GreaterThanValue:
            NeedsFlip := True;
        end;
      end;
      if NeedsFlip then
        Container.ReverseElements;
    end;
  finally
    wbEndInternalEdit;
  end;
end;

function wbPubPackCNAMDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  rANAM: IwbRecord;
  ctype: string;
begin
  Result := 0;
  rANAM := aElement.Container.RecordBySignature[ANAM];
  if Assigned(rANAM) then begin
    ctype := rANAM.NativeValue;
    if ctype = 'Bool' then Result := 1 else
    if ctype = 'Int' then Result := 2 else
    if ctype = 'Float' then Result := 3 else
    if ctype = 'ObjectList' then Result := 3;
  end;
end;

function wbTypeDecider(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container : IwbContainer;
  Element   : IwbElement;
begin
  Result := 0;
  if not Assigned(aElement) then Exit;
  Container := GetContainerFromUnion(aElement);
  if not Assigned(Container) then Exit;

  Element := Container.ElementByName['Type'];
  if Assigned(Element) then
    Result := Element.NativeValue
  else if wbMoreInfoForDecider then
    wbProgressCallback('"'+Container.Name+'" does not contain an element named Type');
end;

function wbCounterAfterSet(aCounterName: String; const aElement: IwbElement): Boolean;
var
  Element         : IwbElement;
  Container       : IwbContainer;
  SelfAsContainer : IwbContainer;
begin
  Result := False;
  if wbBeginInternalEdit then try
    if (Length(aCounterName)>=4) and Supports(aElement.Container, IwbContainer, Container) and
       Supports(aElement, IwbContainer, SelfAsContainer) then begin
      Element := Container.ElementByName[aCounterName];
      if not Assigned(Element) then  // Signatures not listed in mrDef cannot be added
        Element := Container.Add(Copy(aCounterName, 1, 4));
      if Assigned(Element) and (Element.Name = aCounterName) then try
        if (Element.GetNativeValue<>SelfAsContainer.GetElementCount) then
          Element.SetNativeValue(SelfAsContainer.GetElementCount);
        Result := True;
      except
        // No exception if the value cannot be set, expected non value
      end;
    end;
  finally
    wbEndInternalEdit;
  end;
end;

function wbCounterContainerAfterSet(aCounterName: String; anArrayName: String; const aElement: IwbElement; DeleteOnEmpty: Boolean = False): Boolean;
var
  Element         : IwbElement;
  Elems           : IwbElement;
  Container       : IwbContainer;
begin
  Result := False;  // You may need to check alterative counter name
  if wbBeginInternalEdit then try
    if Supports(aElement, IwbContainer, Container) then begin
      Element := Container.ElementByName[aCounterName];
      Elems   := Container.ElementByName[anArrayName];
      if Assigned(Element) then begin
        if not Assigned(Elems) then
          if Element.GetNativeValue<>0 then
            Element.SetNativeValue(0)
          else if DeleteOnEmpty then
            Container.RemoveElement(aCounterName);
        Result := True; // Counter member exists
      end;
    end;
  finally
    wbEndInternalEdit;
  end;
end;

procedure wbCNTOsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterAfterSet('COCT - Count', aElement);
end;

procedure wbContainerAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterContainerAfterSet('COCT - Count', 'Items', aElement);
  wbCounterContainerAfterSet('KSIZ - Keyword Count', 'KWDA - Keywords', aElement);
end;

procedure wbSPLOsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterAfterSet('SPCT - Count', aElement);
end;

procedure wbKWDAsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterAfterSet('KSIZ - Keyword Count', aElement);
end;

procedure wbNPCAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterContainerAfterSet('SPCT - Count', 'Actor Effects', aElement);
  wbCounterContainerAfterSet('LLCT - Count', 'Leveled List Entries', aElement);
  wbCounterContainerAfterSet('KSIZ - Keyword Count', 'KWDA - Keywords', aElement);
  wbCounterContainerAfterSet('PRKZ - Perk Count', 'Perks', aElement);
end;

procedure wbRaceAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterContainerAfterSet('SPCT - Count', 'Actor Effects', aElement);
  wbCounterContainerAfterSet('KSIZ - Keyword Count', 'KWDA - Keywords', aElement);
end;

procedure wbKeywordsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterContainerAfterSet('KSIZ - Keyword Count', 'KWDA - Keywords', aElement);
end;

procedure wbLVLOsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterAfterSet('LLCT - Count', aElement);
end;

procedure wbLLEAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterContainerAfterSet('LLCT - Count', 'Leveled List Entries', aElement);
end;

procedure wbPRKRsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterAfterSet('PRKZ - Perk Count', aElement);
end;

procedure wbSMQNQuestsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterAfterSet('QNAM - Quest Count', aElement);
end;

procedure wbCTDAsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterAfterSet('CITC - Condition Count', aElement);
end;

procedure wbConditionsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
begin
  wbCounterContainerAfterSet('CITC - Condition Count', 'Conditions', aElement);
end;

procedure wbIDLAsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  Element         : IwbElement;
  Container       : IwbContainer;
  SelfAsContainer : IwbContainer;
begin
  if wbBeginInternalEdit then try
    if not wbCounterAfterSet('IDLC - Animation Count', aElement) then
      if Supports(aElement.Container, IwbContainer, Container) then begin
        Element := Container.ElementByPath['IDLC\Animation Count'];
        if Assigned(Element) and Supports(aElement, IwbContainer, SelfAsContainer) and
          (Element.GetNativeValue<>SelfAsContainer.GetElementCount) then
          Element.SetNativeValue(SelfAsContainer.GetElementCount);
      end;
  finally
    wbEndInternalEdit;
  end;
end;

procedure wbAnimationsAfterSet(const aElement: IwbElement; const aOldValue, aNewValue: Variant);
var
  Element         : IwbElement;
  Elems           : IwbElement;
  Container       : IwbContainer;
begin
  if wbBeginInternalEdit then try
    if not wbCounterContainerAfterSet('IDLC - Animation Count', 'IDLA - Animations', aElement) then
      if Supports(aElement, IwbContainer, Container) then begin
        Element := Container.ElementByPath['IDLC\Animation Count'];
        Elems   := Container.ElementByName['IDLA - Animations'];
        if Assigned(Element) and not Assigned(Elems) then
          if Element.GetNativeValue<>0 then
            Element.SetNativeValue(0);
      end;
  finally
    wbEndInternalEdit;
  end;
end;

function wbOffsetDataColsCounter(aBasePtr: Pointer; aEndPtr: Pointer; const aElement: IwbElement): Integer;
var
  Container : IwbDataContainer;
  Element   : IwbElement;
  fResult   : Extended;
begin
  Result := 0;

  if Supports(aElement.Container, IwbDataContainer, Container) and (Container.Name = 'OFST - Offset Data') and
     Supports(Container.Container, IwbDataContainer, Container) then begin
    Element := Container.ElementByPath['Object Bounds\NAM0 - Min\X'];
    if Assigned(Element) then begin
      fResult :=  Element.NativeValue;
      if fResult >= MaxInt then
        Result := 0
      else
        Result := Trunc(fResult);
      Element := Container.ElementByPath['Object Bounds\NAM9 - Max\X'];
      if Assigned(Element) then begin
        fResult :=  Element.NativeValue;
        if fResult >= MaxInt then
          Result := 1
        else
          Result := Trunc(fResult) - Result + 1;
      end;
    end;
  end;
end;

procedure DefineTES5a;
var
  wbRecordFlagsEnum : IwbFlagsDef;

begin
  wbNull := wbByteArray('Unused', -255);
  wbLLCT := wbInteger(LLCT, 'Count', itU8, nil, cpBenign);
  wbCITC := wbInteger(CITC, 'Condition Count', itU32, nil, cpBenign);
  wbLVLD := wbInteger(LVLD, 'Chance None', itU8, nil, cpNormal, True);

  wbSPCT := wbInteger(SPCT, 'Count', itU32, nil, cpBenign);
  wbSPLO := wbFormIDCk(SPLO, 'Actor Effect', [SPEL, SHOU, LVSP]);
  wbSPLOs := wbRArrayS('Actor Effects', wbSPLO, cpNormal, False, nil, wbSPLOsAfterSet, nil{wbActorTemplateUseActorEffectList});

  wbKSIZ := wbInteger(KSIZ, 'Keyword Count', itU32, nil, cpBenign);
  wbKWDAs := wbArrayS(KWDA, 'Keywords', wbFormIDCk('Keyword', [KYWD, NULL]), 0, cpNormal, False, nil, wbKWDAsAfterSet);

  wbCOED := wbStructExSK(COED, [2], [0, 1], 'Extra Data', [
    {00} wbFormIDCkNoReach('Owner', [NPC_, FACT, NULL]),
    {04} wbUnion('Global Variable / Required Rank', wbCOEDOwnerDecider, [
           wbByteArray('Unused', 4, cpIgnore),
           wbFormIDCk('Global Variable', [GLOB, NULL]),
           wbInteger('Required Rank', itS32)
         ]),
    {08} wbFloat('Item Condition')
  ]);

  wbCNTO :=
    wbRStructExSK([0], [1], 'Item', [
      wbStructExSK(CNTO, [0], [1], 'Item', [
        wbFormIDCk('Item', [ARMO, AMMO, APPA, MISC, WEAP, BOOK, LVLI, KEYM, ALCH, INGR, LIGH, SLGM, SCRL]),
        wbInteger('Count', itS32)
      ]),
      wbCOED
    ], []);
  wbCOCT := wbInteger(COCT, 'Count', itU32, nil, cpBenign);
  wbCNTOs := wbRArrayS('Items', wbCNTO, cpNormal, False, nil, wbCNTOsAfterSet);

  wbArmorTypeEnum := wbEnum([
    'Light Armor',
    'Heavy Armor',
    'Clothing'
  ]);

  {>>> When Set to None this Equals FF FF FF FF <<<}
  {>>> When NAME is user defined these will be incorrect <<<}
  wbBipedObjectEnum := wbEnum([
    '30 - Head',
    '31 - Hair',
    '32 - Body',
    '33 - Hands',
    '34 - Forearms',
    '35 - Amulet',
    '36 - Ring',
    '37 - Feet',
    '38 - Calves',
    '39 - Shield',
    '40 - Tail',
    '41 - LongHair',
    '42 - Circlet',
    '43 - Unnamed',
    '44 - Unnamed',
    '45 - Unnamed',
    '46 - Unnamed',
    '47 - Unnamed',
    '48 - Unnamed',
    '49 - Unnamed',
    '50 - DecapitateHead',
    '51 - Decapitate',
    '52 - Unnamed',
    '53 - Unnamed',
    '54 - Unnamed',
    '55 - Unnamed',
    '56 - Unnamed',
    '57 - Unnamed',
    '58 - Unnamed',
    '59 - Unnamed',
    '60 - Unnamed',
    '61 - FX01'
  ], [
    -1, 'None'
  ]);

  wbBipedObjectFlags := wbFlags([
    {0x00000001} '30 - Head',
    {0x00000002} '31 - Hair',
    {0x00000004} '32 - Body',
    {0x00000008} '33 - Hands',
    {0x00000010} '34 - Forearms',
    {0x00000020} '35 - Amulet',
    {0x00000040} '36 - Ring',
    {0x00000080} '37 - Feet',
    {0x00000100} '38 - Calves',
    {0x00000200} '39 - Shield',
    {0x00000400} '40 - Tail',
    {0x00000800} '41 - LongHair',
    {0x00001000} '42 - Circlet',
    {0x00002000} '43 - Unnamed',
    {0x00004000} '44 - Unnamed',
    {0x00008000} '45 - Unnamed',
    {0x00010000} '46 - Unnamed',
    {0x00020000} '47 - Unnamed',
    {0x00040000} '48 - Unnamed',
    {0x00080000} '49 - Unnamed',
    {0x00100000} '50 - DecapitateHead',
    {0x00200000} '51 - Decapitate',
    {0x00400000} '52 - Unnamed',
    {0x00800000} '53 - Unnamed',
    {0x01000000} '54 - Unnamed',
    {0x02000000} '55 - Unnamed',
    {0x03000000} '56 - Unnamed',
    {0x08000000} '57 - Unnamed',
    {0x10000000} '58 - Unnamed',
    {0x20000000} '59 - Unnamed',
    {0x40000000} '60 - Unnamed',
    {0x80000000} '61 - FX01'
  ], True);

  wbFirstPersonFlagsU32 := wbInteger('First Person Flags', itU32, wbBipedObjectFlags);

  wbBODT := wbStruct(BODT, 'Body Template', [
    wbFirstPersonFlagsU32,
    wbInteger('General Flags', itU8, wbFlags([
      {0x00000001}'(ARMA)Modulates Voice', {>>> From ARMA <<<}
      {0x00000002}'Unknown 2',
      {0x00000004}'Unknown 3',
      {0x00000008}'Unknown 4',
      {0x00000010}'(ARMO)Non-Playable', {>>> From ARMO <<<}
      {0x00000020}'Unknown 6',
      {0x00000040}'Unknown 7',
      {0x00000080}'Unknown 8'
    ], True)),
    wbByteArray('Unused', 3, cpIgnore),
    wbInteger('Armor Type', itU32, wbArmorTypeEnum)
  ], cpNormal, False, nil, 3);

  wbBOD2 := wbStruct(BOD2, 'Biped Body Template', [
    wbFirstPersonFlagsU32,
    wbInteger('Armor Type', itU32, wbArmorTypeEnum)
  ], cpNormal, False);

  wbBODTBOD2 :=
    wbRUnion('Biped Body Template', [
      wbStruct(BOD2, 'Biped Body Template', [
        wbFirstPersonFlagsU32,
        wbInteger('General Flags', it0, wbFlags([
          {0x00000001}'(ARMA)Modulates Voice', {>>> From ARMA <<<}
          {0x00000002}'Unknown 2',
          {0x00000004}'Unknown 3',
          {0x00000008}'Unknown 4',
          {0x00000010}'(ARMO)Non-Playable', {>>> From ARMO <<<}
          {0x00000020}'Unknown 6',
          {0x00000040}'Unknown 7',
          {0x00000080}'Unknown 8'
        ], True)),
        wbEmpty('Unused'),
        wbInteger('Armor Type', itU32, wbArmorTypeEnum)
      ], cpNormal, False),
      wbStruct(BODT, 'Body Template', [
        wbFirstPersonFlagsU32,
        wbInteger('General Flags', itU8, wbFlags([
          {0x00000001}'(ARMA)Modulates Voice', {>>> From ARMA <<<}
          {0x00000002}'Unknown 2',
          {0x00000004}'Unknown 3',
          {0x00000008}'Unknown 4',
          {0x00000010}'(ARMO)Non-Playable', {>>> From ARMO <<<}
          {0x00000020}'Unknown 6',
          {0x00000040}'Unknown 7',
          {0x00000080}'Unknown 8'
        ], True)),
        wbByteArray('Unused', 3, cpIgnore),
        wbInteger('Armor Type', itU32, wbArmorTypeEnum)
      ], cpNormal, False, nil, 3)
    ], []);

  wbMDOB := wbFormID(MDOB, 'Menu Display Object', cpNormal, False);
  wbCNAM := wbStruct(CNAM, 'Color', [
    wbInteger('Red', itU8),
    wbInteger('Green', itU8),
    wbInteger('Blue', itU8),
    wbByteArray('Unknown', 1)
  ]);
  wbCNAMReq := wbStruct(CNAM, 'Color', [
    wbInteger('Red', itU8),
    wbInteger('Green', itU8),
    wbInteger('Blue', itU8),
    wbByteArray('Unknown', 1)
  ], cpNormal, True);

  wbDODT := wbStruct(DODT, 'Decal Data', [
    wbFloat('Min Width'),
    wbFloat('Max Width'),
    wbFloat('Min Height'),
    wbFloat('Max Height'),
    wbFloat('Depth'),
    wbFloat('Shininess'),
    wbStruct('Parallax', [
      wbFloat('Scale'),
      wbInteger('Passes', itU8) {>>> This can't be higher than 30 <<<}
    ]),
    wbInteger('Flags', itU8, wbFlags([
      {0x01}'Parallax',
      {0x02}'Alpha - Blending',
      {0x04}'Alpha - Testing',
      {0x08}'No Subtextures'
    ], True)),
    wbByteArray('Unknown', 2),
    wbStruct('Color', [
      wbInteger('Red', itU8),
      wbInteger('Green', itU8),
      wbInteger('Blue', itU8),
      wbByteArray('Unknown', 1)
    ])
  ]);

  wbRecordFlagsEnum := wbFlags([
    {>>> 0x00000000 ACTI: Collision Geometry (default) <<<}
    {0x00000001}'ESM',
    {0x00000002}'Unknown 2',
    {>>> 0x00000004 ARMO: Not playable <<<}
    {0x00000004}'NotPlayable',
    {0x00000008}'Unknown 4',
    {0x00000010}'Unknown 5',
    {0x00000020}'Deleted',
    {>>> 0x00000040 ACTI: Has Tree LOD <<<}
    {>>> 0x00000040 REGN: Border Region <<<}
    {>>> 0x00000040 STAT: Has Tree LOD <<<}
    {>>> 0x00000040 REFR: Hidden From Local Map <<<}
    {0x00000040}'Constant HiddenFromLocalMap BorderRegion HasTreeLOD',
    {>>> 0x00000080 TES4: Localized <<<}
    {>>> 0x00000080 PHZD: Turn Off Fire <<<}
    {>>> 0x00000080 SHOU: Treat Spells as Powers <<<}
    {>>> 0x00000080 STAT: Add-on LOD Object <<<}
    {0x00000080}'Localized IsPerch AddOnLODObject TurnOffFire TreatSpellsAsPowers',
    {>>> 0x00000100 ACTI: Must Update Anims <<<}
    {>>> 0x00000100 REFR: Inaccessible <<<}
    {>>> 0x00000100 REFR for LIGH: Doesn't light water <<<}
    {0x00000100}'MustUpdateAnims Inaccessible DoesntLightWater',
    {>>> 0x00000200 ACTI: Local Map - Turns Flag Off, therefore it is Hidden <<<}
    {>>> 0x00000200 REFR: MotionBlurCastsShadows <<<}
    {0x00000200}'HiddenFromLocalMap StartsDead MotionBlurCastsShadows',
    {>>> 0x00000400 LSCR: Displays in Main Menu <<<}
    {0x00000400}'PersistentReference QuestItem DisplaysInMainMenu',
    {0x00000800}'InitiallyDisabled',
    {0x00001000}'Ignored',
    {0x00002000}'ActorChanged',
    {0x00004000}'Unknown 15',
    {>>> 0x00008000 STAT: Has Distant LOD <<<}
    {0x00008000}'VWD',
    {>>> 0x00010000 ACTI: Random Animation Start <<<}
    {>>> 0x00010000 REFR light: Never fades <<<}
    {0x00010000}'RandomAnimationStart NeverFades',
    {>>> 0x00020000 ACTI: Dangerous <<<}
    {>>> 0x00020000 REFR light: Doesn't light landscape <<<}
    {>>> 0x00020000 SLGM: Can hold NPC's soul <<<}
    {>>> 0x00020000 STAT: Use High-Detail LOD Texture <<<}
    {0x00020000}'Dangerous OffLimits DoesntLightLandscape HighDetailLOD CanHoldNPC',
    {0x00040000}'Compressed',
    {>>> 0x00080000 STAT: Has Currents <<<}
    {0x00080000}'CantWait HasCurrents',
    {>>> 0x00100000 ACTI: Ignore Object Interaction <<<}
    {0x00100000}'IgnoreObjectInteraction',
    {0x00200000}'(Used in Memory Changed Form)',
    {0x00400000}'Unknown 23',
    {>>> 0x00800000 ACTI: Is Marker <<<}
    {0x00800000}'IsMarker',
    {0x01000000}'Unknown 25',
    {>>> 0x02000000 ACTI: Obstacle <<<}
    {>>> 0x02000000 REFR: No AI Acquire <<<}
    {0x02000000}'Obstacle NoAIAcquire',
    {>>> 0x04000000 ACTI: Filter <<<}
    {0x04000000}'NavMeshFilter',
    {>>> 0x08000000 ACTI: Bounding Box <<<}
    {0x08000000}'NavMeshBoundingBox',
    {>>> 0x10000000 STAT: Show in World Map <<<}
    {0x10000000}'MustExitToTalk ShowInWorldMap',
    {>>> 0x20000000 ACTI: Child Can Use <<<}
    {>>> 0x20000000 REFR: Don't Havok Settle <<<}
    {0x20000000}'ChildCanUse DontHavokSettle',
    {>>> 0x40000000 ACTI: GROUND <<<}
    {>>> 0x40000000 REFR: NoRespawn <<<}
    {0x40000000}'NavMeshGround NoRespawn',
    {>>> 0x80000000 REFR: MultiBound <<<}
    {0x80000000}'MultiBound'
  ]);
  wbRecordFlags := wbInteger('Record Flags', itU32, wbRecordFlagsEnum);

(*   wbInteger('Record Flags 2', itU32, wbFlags([
    {0x00000001}'Unknown 1',
    {0x00000002}'Unknown 2',
    {0x00000004}'Unknown 3',
    {0x00000008}'Unknown 4',
    {0x00000010}'Unknown 5',
    {0x00000020}'Unknown 6',
    {0x00000040}'Unknown 7',
    {0x00000080}'Unknown 8',
    {0x00000100}'Unknown 9',
    {0x00000200}'Unknown 10',
    {0x00000400}'Unknown 11',
    {0x00000800}'Unknown 12',
    {0x00001000}'Unknown 13',
    {0x00002000}'Unknown 14',
    {0x00004000}'Unknown 15',
    {0x00008000}'Unknown 16',
    {0x00010000}'Unknown 17',
    {0x00020000}'Unknown 18',
    {0x00040000}'Unknown 19',
    {0x00080000}'Unknown 20',
    {0x00100000}'Unknown 21',
    {0x00200000}'Unknown 22',
    {0x00400000}'Unknown 23',
    {0x00800000}'Unknown 24',
    {0x01000000}'Unknown 25',
    {0x02000000}'Unknown 26',
    {0x03000000}'Unknown 27',
    {0x08000000}'Unknown 28',
    {0x10000000}'Unknown 29',
    {0x20000000}'Unknown 30',
    {0x40000000}'Unknown 31',
    {0x80000000}'Unknown 32'
  ]));                (**)

  wbMainRecordHeader := wbStruct('Record Header', [
    wbString('Signature', 4, cpCritical),
    wbInteger('Data Size', itU32, nil, cpIgnore),
    wbRecordFlags,
    wbFormID('FormID', cpFormID),
    wbByteArray('Version Control Info 1', 4, cpIgnore),
    wbInteger('Form Version', itU16, nil, cpIgnore),
    wbByteArray('Version Control Info 2', 2, cpIgnore)
  ]);

  wbSizeOfMainRecordStruct := 24;

  wbIgnoreRecords.Add(XXXX);

  wbXRGD := wbByteArray(XRGD, 'Ragdoll Data');
  wbXRGB := wbByteArray(XRGB, 'Ragdoll Biped Data');

  wbMusicEnum := wbEnum(['Default', 'Public', 'Dungeon']);
  wbSoundLevelEnum := wbEnum([
     'Loud',
     'Normal',
     'Silent',
     'Very Loud'
    ]);

  wbEntryPointsEnum := wbEnum([
    { 0} 'Calculate Weapon Damage',
    { 1} 'Calculate My Critical Hit Chance',
    { 2} 'Calculate My Critical Hit Damage',
    { 3} 'Calculate Mine Explode Chance',
    { 4} 'Adjust Limb Damage',
    { 5} 'Adjust Book Skill Points',
    { 6} 'Mod Recovered Health',
    { 7} 'Get Should Attack',
    { 8} 'Mod Buy Prices',
    { 9} 'Add Leveled List On Death',
    {10} 'Get Max Carry Weight',
    {11} 'Mod Addiction Chance',
    {12} 'Mod Addiction Duration',
    {13} 'Mod Positive Chem Duration',
    {14} 'Activate',
    {15} 'Ignore Running During Detection',
    {16} 'Ignore Broken Lock',
    {17} 'Mod Enemy Critical Hit Chance',
    {18} 'Mod Sneak Attack Mult',
    {19} 'Mod Max Placeable Mines',
    {20} 'Mod Bow Zoom',
    {21} 'Mod Recover Arrow Chance',
    {22} 'Mod Skill Use',
    {23} 'Mod Telekinesis Distance',
    {24} 'Mod Telekinesis Damage Mult',
    {25} 'Mod Telekinesis Damage',
    {26} 'Mod Bashing Damage',
    {27} 'Mod Power Attack Stamina',
    {28} 'Mod Power Attack Damage',
    {29} 'Mod Spell Magnitude',
    {30} 'Mod Spell Duration',
    {31} 'Mod Secondary Value Weight',
    {32} 'Mod Armor Weight',
    {33} 'Mod Incoming Stagger',
    {34} 'Mod Target Stagger',
    {35} 'Mod Attack Damage',
    {36} 'Mod Incoming Damage',
    {37} 'Mod Target Damage Resistance',
    {38} 'Mod Spell Cost',
    {39} 'Mod Percent Blocked',
    {40} 'Mod Shield Deflect Arrow Chance',
    {41} 'Mod Incoming Spell Magnitude',
    {42} 'Mod Incoming Spell Duration',
    {43} 'Mod Player Intimidation',
    {44} 'Mod Player Reputation',
    {45} 'Mod Favor Points',
    {46} 'Mod Bribe Amount',
    {47} 'Mod Detection Light',
    {48} 'Mod Detection Movement',
    {49} 'Mod Soul Gem Recharge',
    {50} 'Set Sweep Attack',
    {51} 'Apply Combat Hit Spell',
    {52} 'Apply Bashing Spell',
    {53} 'Apply Reanimate Spell',
    {54} 'Set Boolean Graph Variable',
    {55} 'Mod Spell Casting Sound Event',
    {56} 'Mod Pickpocket Chance',
    {57} 'Mod Detection Sneak Skill',
    {58} 'Mod Falling Damage',
    {59} 'Mod Lockpick Sweet Spot',
    {60} 'Mod Sell Prices',
    {61} 'Can Pickpocket Equipped Item',
    {62} 'Mod Lockpick Level Allowed',
    {63} 'Set Lockpick Starting Arc',
    {64} 'Set Progression Picking',
    {65} 'Make Lockpicks Unbreakable',
    {66} 'Mod Alchemy Effectiveness',
    {67} 'Apply Weapon Swing Spell',
    {68} 'Mod Commanded Actor Limit',
    {69} 'Apply Sneaking Spell',
    {70} 'Mod Player Magic Slowdown',
    {71} 'Mod Ward Magicka Absorption Pct',
    {72} 'Mod Initial Ingredient Effects Learned',
    {73} 'Purify Alchemy Ingredients',
    {74} 'Filter Activation',
    {75} 'Can Dual Cast Spell',
    {76} 'Mod Tempering Health',
    {77} 'Mod Enchantment Power',
    {78} 'Mod Soul Pct Captured to Weapon',
    {79} 'Mod Soul Gem Enchanting',
    {80} 'Mod # Applied Enchantments Allowed',
    {81} 'Set Activate Label',
    {82} 'Mod Shout OK',
    {83} 'Mod Poison Dose Count',
    {84} 'Should Apply Placed Item',
    {85} 'Mod Armor Rating',
    {86} 'Mod Lockpicking Crime Chance',
    {87} 'Mod Ingredients Harvested',
    {88} 'Mod Spell Range (Target Loc.)',
    {89} 'Mod Potions Created',
    {90} 'Mod Lockpicking Key Reward Chance',
    {91} 'Allow Mount Actor'
  ]);

  wbLocationEnum := wbEnum([
    {0} 'Near reference',
    {1} 'In cell',
    {2} 'Near package start location',
    {3} 'Near editor location',
    {4} 'Object ID',
    {5} 'Object Type',
    {6} 'Near linked reference',
    {7} 'At package location',
    {8} 'Alias (reference)',
    {9} 'Alias (location)',
   {10} 'Unknown 10',
   {11} 'Unknown 11',
   {12} 'Near self'
  ]);

  wbEquipType := wbFlags([
    {0x00000001}'Hand To Hand Melee',
    {0x00000002}'One Hand Sword',
    {0x00000004}'One Hand Dagger',
    {0x00000008}'One Hand Axe',
    {0x00000010}'One Hand Mace',
    {0x00000020}'Two Hand Sword',
    {0x00000040}'Two Hand Axe',
    {0x00000080}'Bow',
    {0x00000100}'Staff',
    {0x00000200}'Spell',
    {0x00000400}'Shield',
    {0x00000800}'Torch',
    {0x00001000}'Crossbow'
  ], True);

  wbEmotionTypeEnum := wbEnum([
    {0} 'Neutral',
    {1} 'Anger',
    {2} 'Disgust',
    {3} 'Fear',
    {4} 'Sad',
    {5} 'Happy',
    {6} 'Surprise',
    {7} 'Puzzled'
  ]);

  wbFurnitureAnimTypeEnum := wbEnum([
    {0} '',
    {1} 'Sit',
    {2} 'Lay',
    {3} '',
    {4} 'Lean'
  ]);

  wbFurnitureEntryTypeFlags := wbFlags([
    {0x01} 'Front',
    {0x02} 'Behind',
    {0x04} 'Right',
    {0x08} 'Left',
    {0x10} 'Up'
  ]);

  wbWardStateEnum := wbEnum([
    'None',
    'Absorb',
    'Break'
  ]);

  wbEventFunctionEnum := wbEnum([
    'GetIsID',
    'IsInList',
    'GetValue',
    'HasKeyword',
    'GetItemValue'
  ]);

  // Event member names and availability are different depending on event type
  // Using generic names for the last 3 of them: Form, Value1, Value2
  wbEventMemberEnum := wbEnum([], [
    $0000, 'None',
    $314F, 'CreatedObject',
    $314C, '(Old)Location',
    $324C, '(New)Location',
    $314B, 'Keyword',
    $3146, 'Form',
    $3156, 'Value1',
    $3256, 'Value2'
  ]);

  wbWeaponAnimTypeEnum := wbEnum([
    {0} 'HandToHandMelee',
    {1} 'OneHandSword',
    {2} 'OneHandDagger',
    {3} 'OneHandAxe',
    {4} 'OneHandMace',
    {5} 'TwoHandSword',
    {6} 'TwoHandAxe',
    {7} 'Bow',
    {8} 'Staff',
    {9} 'Crossbow'
  ]);

  wbEDID := wbString(EDID, 'Editor ID', 0, cpNormal); // not cpBenign according to Arthmoor
  wbFULL := wbLStringKC(FULL, 'Name', 0, cpTranslate);
  wbFULLActor := wbLStringKC(FULL, 'Name', 0, cpTranslate, False, nil{wbActorTemplateUseBaseData});
  wbFULLReq := wbLStringKC(FULL, 'Name', 0, cpNormal, True);
  wbDESC := wbLStringKC(DESC, 'Description', 0, cpTranslate);
  wbDESCReq := wbLStringKC(DESC, 'Description', 0, cpTranslate, True);
  wbXSCL := wbFloat(XSCL, 'Scale');

  wbOBND := wbStruct(OBND, 'Object Bounds', [
    wbInteger('X1', itS16),
    wbInteger('Y1', itS16),
    wbInteger('Z1', itS16),
    wbInteger('X2', itS16),
    wbInteger('Y2', itS16),
    wbInteger('Z2', itS16)
  ]);

  wbOBNDReq := wbStruct(OBND, 'Object Bounds', [
    wbInteger('X1', itS16),
    wbInteger('Y1', itS16),
    wbInteger('Z1', itS16),
    wbInteger('X2', itS16),
    wbInteger('Y2', itS16),
    wbInteger('Z2', itS16)
  ], cpNormal, True);

  wbPropTypeEnum := wbEnum([
    {00} '',
    {01} 'Object',
    {02} 'String',
    {03} 'Int32',
    {04} 'Float',
    {05} 'Bool',
    {06} '',
    {07} '',
    {08} '',
    {09} '',
    {10} '',
    {11} 'Array of Object',
    {12} 'Array of String',
    {13} 'Array of Int32',
    {14} 'Array of Float',
    {15} 'Array of Bool'
  ]);

  wbScriptObject := wbUnion('Object Union', wbScriptObjFormatDecider, [
    wbStructSK([1], 'Object v2', [
      wbInteger('Unused', itU16, nil, cpIgnore),
      wbInteger('Alias', itS16, wbScriptObjectAliasToStr, wbStrToAlias),
      wbFormID('FormID')
    ]),
    wbStructSK([1], 'Object v1', [
      wbFormID('FormID'),
      wbInteger('Alias', itS16, wbScriptObjectAliasToStr, wbStrToAlias),
      wbInteger('Unused', itU16, nil, cpIgnore)
    ], [2, 1, 0])
  ]);

  wbScriptEntry := wbStructSK([0], 'Script', [
    wbLenString('scriptName', 2),
    wbInteger('Flags', itU8, wbEnum([
      {0x00} 'Local',
      {0x01} 'Inherited',
      {0x02} 'Removed',
      {0x03} 'Inherited and Removed'
    ])),
    wbArrayS('Properties', wbStructSK([0], 'Property', [
      wbLenString('propertyName', 2),
      wbInteger('Type', itU8, wbPropTypeEnum),
      wbInteger('Flags', itU8, wbEnum([
        {0x00} '',
        {0x01} 'Edited',
        {0x02} '',
        {0x03} 'Removed'
      ])),
      wbUnion('Value', wbScriptPropertyDecider, [
        {00} wbInteger('Null', itU32),
        {01} wbScriptObject,
        {02} wbLenString('String', 2),
        {03} wbInteger('Int32', itS32),
        {04} wbFloat('Float'),
        {05} wbInteger('Bool', itU8, wbEnum(['False', 'True'])),
        {11} wbArray('Array of Object', wbScriptObject, -1),
        {12} wbArray('Array of String', wbLenString('Element', 2), -1),
        {13} wbArray('Array of Int32', wbInteger('Element', itS32), -1),
        {14} wbArray('Array of Float', wbFloat('Element'), -1),
        {15} wbArray('Array of Bool', wbInteger('Element', itU8, wbEnum(['False', 'True'])), -1)
      ])
    ]), -2, cpNormal, False, nil, nil, nil, False)
  ]);

  wbScriptFragmentsInfo := wbStruct('Script Fragments Info', [
    wbInteger('Unknown', itS8),
    wbInteger('Info Fragments Flags', itU8, wbFlags([
      {1} 'OnBegin',
      {2} 'OnEnd'
    ])),
    wbLenString('fileName', 2),
    wbArray('Info Fragments',  // Do NOT sort, ordered OnBegin, OnEnd
      wbStruct('Info Fragment', [
        wbInteger('Unknown', itS8),
        wbLenString('scriptName', 2),
        wbLenString('fragmentName', 2)
      ]), [], wbScriptFragmentsInfoCounter)
  ], cpNormal, false, wbScriptFragmentsDontShow);

  wbScriptFragmentsPack := wbStruct('Script Fragments Package', [
    wbInteger('Unknown', itS8),
    wbInteger('Package Fragments Flags', itU8, wbFlags([
      {1} 'OnBegin',
      {2} 'OnEnd',
      {4} 'OnChange'
    ])),
    wbLenString('fileName', 2),
    wbArray('Package Fragments',  // Do NOT sort, ordered OnBegin, OnEnd, OnChange
      wbStruct('Package Fragment', [
        wbInteger('Unknown', itS8),
        wbLenString('scriptName', 2),
        wbLenString('fragmentName', 2)
      ]), [], wbScriptFragmentsPackCounter)
  ], cpNormal, false, wbScriptFragmentsDontShow);

  wbScriptFragmentsPerk := wbStruct('Script Fragments Perk', [
    wbInteger('Unknown', itS8),
    wbLenString('fileName', 2),
    wbArrayS('Perk Fragments',
      wbStructSK([0], 'Perk Fragment', [
        wbInteger('Fragment Index', itU16),
        wbInteger('Unknown', itS16),
        wbInteger('Unknown', itS8),
        wbLenString('scriptName', 2),
        wbLenString('fragmentName', 2)
      ]), -2)
  ], cpNormal, false, wbScriptFragmentsDontShow);

  wbScriptFragmentsQuest := wbStruct('Script Fragments Quest', [
    wbInteger('Unknown', itS8),
    wbInteger('fragmentCount', itU16),
    wbLenString('fileName', 2),
    wbArrayS('Quest Fragments',
      wbStructSK([0, 2], 'Quest Fragment', [
        wbInteger('Quest Stage', itU16),
        wbInteger('Unknown', itS16),
        wbInteger('Quest Stage Index', itS32),
        wbInteger('Unknown', itS8),
        wbLenString('scriptName', 2),
        wbLenString('fragmentName', 2)
      ]), wbScriptFragmentsQuestCounter),
    wbArrayS('Aliases', wbStructSK([0], 'Alias', [
      wbScriptObject,
      wbInteger('Version', itS16, nil, cpIgnore),
      wbInteger('Object Format', itS16, nil, cpIgnore),
	    wbArrayS('Alias Scripts', wbScriptEntry, -2)
	  ]), -2)
  ], cpNormal, false, wbScriptFragmentsDontShow);

  wbScriptFragmentsScen := wbStruct('Script Fragments Scene', [
    wbInteger('Unknown', itS8),
    wbInteger('Scene Fragments Flags', itU8, wbFlags([
      {1} 'OnBegin',
      {2} 'OnEnd'
    ])),
    wbLenString('fileName', 2),
    wbArray('Scene Fragments',  // Do NOT sort, ordered OnBegin, OnEnd
      wbStruct('Scene Fragment', [
        wbInteger('Unknown', itS8),
        wbLenString('scriptName', 2),
        wbLenString('fragmentName', 2)
      ]), [], wbScriptFragmentsSceneCounter),
    wbArray('Phase Fragments',
      wbStructSK([0, 1], 'Phase Fragment', [
        wbInteger('Phase Flag', itU8, wbFlags([
          {1} 'OnStart',
          {2} 'OnCompletion'
        ])),
        wbInteger('Phase Index', itU8),
        wbInteger('Unknown', itS16),
        wbInteger('Unknown', itS8),
        wbInteger('Unknown', itS8),
        wbLenString('scriptName', 2),
        wbLenString('fragmentName', 2)
      ]), -2)
  ], cpNormal, false, wbScriptFragmentsDontShow);

  {>>> http://www.uesp.net/wiki/Tes5Mod:Mod_File_Format/VMAD_Field <<<}
  wbVMAD := wbStruct(VMAD, 'Virtual Machine Adapter', [
    wbInteger('Version', itS16, nil, cpIgnore),
    wbInteger('Object Format', itS16, nil, cpIgnore),
    wbUnion('Data', wbScriptFragmentExistsDecider, [
      wbArrayS('Scripts', wbScriptEntry, -2, cpNormal, False, nil, nil, nil, False),
      wbStruct('Info VMAD', [
        wbArrayS('Scripts', wbScriptEntry, -2, cpNormal, False, nil, nil, nil, False),
        wbScriptFragmentsInfo
      ], cpNormal, False, nil, 0),
      wbStruct('Pack VMAD', [
        wbArrayS('Scripts', wbScriptEntry, -2, cpNormal, False, nil, nil, nil, False),
        wbScriptFragmentsPack
      ], cpNormal, False, nil, 0),
      wbStruct('Perk VMAD', [
        wbArrayS('Scripts', wbScriptEntry, -2, cpNormal, False, nil, nil, nil, False),
        wbScriptFragmentsPerk
      ], cpNormal, False, nil, 0),
      wbStruct('Quest VMAD', [
        wbArrayS('Scripts', wbScriptEntry, -2, cpNormal, False, nil, nil, nil, False),
        wbScriptFragmentsQuest
      ], cpNormal, False, nil, 0),
      wbStruct('Scene VMAD', [
        wbArrayS('Scripts', wbScriptEntry, -2, cpNormal, False, nil, nil, nil, False),
        wbScriptFragmentsScen
      ], cpNormal, False, nil, 0)
    ])
  ], cpNormal, false, nil, -1);

  wbAttackData := wbRStructSK([1], 'Attack', [
    wbStruct(ATKD, 'Attack Data', [
      wbFloat('Damage Mult'),
      wbFloat('Attack Chance'),
      wbFormIDCk('Attack Spell', [SPEL, SHOU, NULL]),
      wbInteger('Attack Flags', itU32, wbFlags([
        {0x00000001}'Ignore Weapon',
        {0x00000002}'Bash Attack',
        {0x00000004}'Power Attack',
        {0x00000008}'Left Attack',
        {0x00000010}'Rotating Attack',
        {0x00000020}'Unknown 6',
        {0x00000040}'Unknown 7',
        {0x00000080}'Unknown 8',
        {0x00000100}'Unknown 9',
        {0x00000200}'Unknown 10',
        {0x00000400}'Unknown 11',
        {0x00000800}'Unknown 12',
        {0x00001000}'Unknown 13',
        {0x00002000}'Unknown 14',
        {0x00004000}'Unknown 15',
        {0x00008000}'Unknown 16'
      ], True)),
      wbFloat('Attack Angle'),
      wbFloat('Strike Angle'),
      wbFloat('Stagger'),
      wbFormIDCk('Attack Type', [KYWD, NULL]),
      wbFloat('Knockdown'),
      wbFloat('Recovery Time'),
      wbFloat('Stamina Mult')
    ]),
    wbString(ATKE, 'Attack Event')
  ], []);

  wbPLDT := wbStruct(PLDT, 'Location', [
    wbInteger('Type', itS32, wbLocationEnum),
    wbUnion('Location Value', wbTypeDecider, [
      {0} wbFormIDCkNoReach('Reference', [NULL, DOOR, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      {1} wbFormIDCkNoReach('Cell', [NULL, CELL]),
      {2} wbByteArray('Near Package Start Location', 4, cpIgnore),
      {3} wbByteArray('Near Editor Location', 4, cpIgnore),
      {4} wbFormIDCkNoReach('Object ID', [NULL, ACTI, DOOR, STAT, FURN, SPEL, SCRL, NPC_, CONT, ARMO, AMMO, MISC, WEAP, BOOK, KEYM, ALCH, LIGH, FACT, FLST, IDLM, SHOU]),
      {5} wbInteger('Object Type', itU32, wbObjectTypeEnum),
      {6} wbFormIDCk('Keyword', [NULL, KYWD]),
      {7} wbByteArray('Unknown', 4, cpIgnore),
      {8} wbInteger('Alias', itS32, wbPackageLocationAliasToStr, wbStrToAlias),
      {9} wbFormIDCkNoReach('Reference', [NULL, DOOR, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
     {10} wbByteArray('Unknown', 4, cpIgnore),
     {11} wbByteArray('Unknown', 4, cpIgnore),
     {12} wbByteArray('Unknown', 4, cpIgnore)
    ]),
    wbInteger('Radius', itS32)
  ]);

  wbPLVD := wbStruct(PLVD, 'Location', [
    wbInteger('Type', itS32, wbLocationEnum),
    wbUnion('Location Value', wbTypeDecider, [
      {0} wbFormIDCkNoReach('Reference', [NULL, DOOR, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      {1} wbFormIDCkNoReach('Cell', [NULL, CELL]),
      {2} wbByteArray('Near Package Start Location', 4, cpIgnore),
      {3} wbByteArray('Near Editor Location', 4, cpIgnore),
      {4} wbFormIDCkNoReach('Object ID', [NULL, ACTI, DOOR, STAT, FURN, SPEL, SCRL, NPC_, CONT, ARMO, AMMO, MISC, WEAP, BOOK, KEYM, ALCH, INGR, LIGH, FACT, FLST, IDLM, SHOU]),
      {5} wbInteger('Object Type', itU32, wbObjectTypeEnum),
      {6} wbFormIDCk('Keyword', [NULL, KYWD]),
      {7} wbByteArray('Unknown', 4, cpIgnore),
      {8} wbInteger('Alias', itS32, wbPackageLocationAliasToStr, wbStrToAlias),
      {9} wbFormIDCkNoReach('Reference', [NULL, DOOR, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
     {10} wbByteArray('Unknown', 4, cpIgnore),
     {11} wbByteArray('Unknown', 4, cpIgnore),
     {12} wbByteArray('Unknown', 4, cpIgnore)
    ]),
    wbInteger('Radius', itS32)
  ]);

  wbTargetData := wbStruct('Target Data', [
    wbInteger('Type', itS32, wbEnum([
      {0} 'Specific Reference',
      {1} 'Object ID',
      {2} 'Object Type',
      {3} 'Linked Reference',
      {4} 'Ref Alias',
      {5} 'Unknown 5',
      {6} 'Self'
    ]), cpNormal, False, nil, nil, 2),
    wbUnion('Target', wbTypeDecider, [
      {0} wbFormIDCkNoReach('Reference', [NULL, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA], True),
      {1} wbFormIDCkNoReach('Object ID', [NULL, ACTI, DOOR, STAT, FURN, SPEL, SCRL, NPC_, CONT, ARMO, AMMO, MISC, WEAP, BOOK, KEYM, ALCH, INGR, LIGH, FACT, FLST, IDLM, SHOU, SOUN, TXST, PROJ]),
      {2} wbInteger('Object Type', itU32, wbObjectTypeEnum),
      {3} wbFormID('Reference'),
      {4} wbInteger('Alias', itS32, wbPackageLocationAliasToStr, wbStrToAlias),
      {5} wbByteArray('Unknown', 4, cpIgnore),
      {6} wbByteArray('Unknown', 4, cpIgnore)
    ]),
    wbInteger('Count / Distance', itS32)
  ]);

  wbEITM := wbFormIDCk(EITM, 'Object Effect', [ENCH, SPEL]);

  wbPosRot :=
    wbStruct('Position/Rotation', [
      wbStruct('Position', [
        wbFloat('X'),
        wbFloat('Y'),
        wbFloat('Z')
      ]),
      wbStruct('Rotation', [
        wbFloat('X', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize),
        wbFloat('Y', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize),
        wbFloat('Z', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize)
      ])
    ]);

  wbDATAPosRot :=
    wbStruct(DATA, 'Position/Rotation', [
      wbStruct('Position', [
        wbFloat('X'),
        wbFloat('Y'),
        wbFloat('Z')
      ]),
      wbStruct('Rotation', [
        wbFloat('X', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize),
        wbFloat('Y', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize),
        wbFloat('Z', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize)
      ])
    ], cpNormal, True);

  wbMO2S :=
    wbArrayS(MO2S, 'Alternate Textures',
      wbStructSK([0, 2], 'Alternate Texture', [
        wbLenString('3D Name'),
        wbFormIDCk('New Texture', [TXST]),
        wbInteger('3D Index', itS32)
      ]),
    -1);
  wbMO3S :=
    wbArrayS(MO3S, 'Alternate Textures',
      wbStructSK([0, 2], 'Alternate Texture', [
        wbLenString('3D Name'),
        wbFormIDCk('New Texture', [TXST]),
        wbInteger('3D Index', itS32)
      ]),
    -1);
  wbMO4S :=
    wbArrayS(MO4S, 'Alternate Textures',
      wbStructSK([0, 2], 'Alternate Texture', [
        wbLenString('3D Name'),
        wbFormIDCk('New Texture', [TXST]),
        wbInteger('3D Index', itS32)
      ]),
    -1);
  wbMO5S :=
    wbArrayS(MO5S, 'Alternate Textures',
      wbStructSK([0, 2], 'Alternate Texture', [
        wbLenString('3D Name'),
        wbFormIDCk('New Texture', [TXST]),
        wbInteger('3D Index', itS32)
      ]),
    -1);

  wbMODS :=
    wbArrayS(MODS, 'Alternate Textures',
      wbStructSK([0, 2], 'Alternate Texture', [
        wbLenString('3D Name'),
        wbFormIDCk('New Texture', [TXST]),
        wbInteger('3D Index', itS32)
      ]),
    -1);

  wbMODD :=
    wbInteger(MODD, 'FaceGen Model Flags', itU8, wbFlags([
      'Head',
      'Torso',
      'Right Hand',
      'Left Hand'
    ]));

	wbMODT := wbByteArray(MODT, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow);
	wbDMDT := wbByteArray(DMDT, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow);

  wbMODL :=
    wbRStructSK([0], 'Model', [
      wbString(MODL, 'Model Filename'),
      wbMODT,
      wbMODS
    ], [], cpNormal, False, nil, True);

  wbMODLActor :=
    wbRStructSK([0], 'Model', [
      wbString(MODL, 'Model Filename'),
      wbMODT,
      wbMODS
    ], [], cpNormal, False, nil{wbActorTemplateUseModelAnimation}, True);

  wbMODLReq :=
    wbRStructSK([0], 'Model', [
      wbString(MODL, 'Model Filename'),
      wbMODT,
      wbMODS
    ], [], cpNormal, True, nil, True);

  wbDMDSs := wbArrayS(DMDS, 'Alternate Textures',
    wbStructSK([0, 2], 'Alternate Texture', [
      wbLenString('3D Name'),
      wbFormIDCk('New Texture', [TXST]),
      wbInteger('3D Index', itS32)
    ]),
  -1);

  wbDEST := wbRStruct('Destructable', [
    wbStruct(DEST, 'Header', [
      wbInteger('Health', itS32),
      wbInteger('DEST Count', itU8),
      wbInteger('VATS Targetable', itU8, wbEnum(['False', 'True'])),
      wbByteArray('Unknown', 2)
    ]),
    wbRArray('Stages',
      wbRStruct('Stage', [
        wbStruct(DSTD, 'Destruction Stage Data', [
          wbInteger('Health %', itU8),
          wbInteger('Index', itU8),
          wbInteger('Model Damage Stage', itU8),
          wbInteger('Flags', itU8, wbFlags([
            'Cap Damage',
            'Disable',
            'Destroy',
            'Ignore External Dmg'
          ])),
          wbInteger('Self Damage per Second', itS32),
          wbFormIDCk('Explosion', [EXPL, NULL]),
          wbFormIDCk('Debris', [DEBR, NULL]),
          wbInteger('Debris Count', itS32)
        ], cpNormal, True),
        wbRStructSK([0], 'Model', [
          wbString(DMDL, 'Model Filename'),
          wbDMDT,
          wbDMDSs
        ], [], cpNormal, False, nil),
        wbEmpty(DSTF, 'End Marker', cpNormal, True)
      ], [], cpNormal, False, nil)
    )
  ], [], cpNormal, False, nil);

  wbDESTActor := wbRStruct('Destructable', [
    wbStruct(DEST, 'Header', [
      wbInteger('Health', itS32),
      wbInteger('Count', itU8),
      wbInteger('VATS Targetable', itU8, wbEnum(['False', 'True'])),
      wbByteArray('Unknown', 2)
    ]),
    wbRArray('Stages',  // Begin Stage Array
      wbRStruct('Stage', [ // Begin Stage RStruct
        wbStruct(DSTD, 'Destruction Stage Data', [ // Begin DSTD
          wbInteger('Health %', itU8),
          wbInteger('Index', itU8),
          wbInteger('Damage Stage', itU8),
          wbInteger('Flags', itU8, wbFlags([
            'Cap Damage',
            'Disable',
            'Destroy'
          ])),
          wbInteger('Self Damage per Second', itS32),
          wbFormIDCk('Explosion', [EXPL, NULL]),
          wbFormIDCk('Debris', [DEBR, NULL]),
          wbInteger('Debris Count', itS32)
        ], cpNormal, True), // End DSTD
        wbRStructSK([0], 'Model', [ // Begin DMDL
          wbString(DMDL, 'Model Filename')
        ], []), // End DMDL
        wbDMDT,
        wbDMDSs,
        wbEmpty(DSTF, 'End Marker', cpNormal, True)
      ], []) // Begin Stage RStruct
    ) // End Stage Array
  ], [], cpNormal, False, nil{wbActorTemplateUseModelAnimation});

  wbXLOD := wbArray(XLOD, 'Distant LOD Data', wbFloat('Unknown'), 3);

  wbXESP := wbStruct(XESP, 'Enable Parent', [
    wbFormIDCk('Reference', [PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
    wbInteger('Flags', itU8, wbFlags([
      'Set Enable State to Opposite of Parent',
      'Pop In'
    ])),
    wbByteArray('Unused', 3, cpIgnore)
  ]);

  wbPDTO :=
    wbStruct(PDTO, 'Topic Data', [
      wbInteger('Type', itU32, wbEnum([
        'Topic Ref',
        'Topic Subtype'
      ])),
      wbUnion('Data', wbTypeDecider, [
        wbFormIDCk('Topic', [DIAL, NULL]),
        wbString('Subtype', 4)
      ])
    ]);

  wbPDTOs := wbRArray('Topic', wbPDTO, cpNormal, False, nil);

  wbXLCM := wbInteger(XLCM, 'Level Modifier', itS32, wbEnum([
    'Easy',
    'Medium',
    'Hard',
    'Very Hard'
  ]));

  wbOwnership := wbRStruct('Ownership', [
    wbFormIDCkNoReach(XOWN, 'Owner', [FACT, ACHR, NPC_]),
    wbInteger(XRNK, 'Faction rank', itS32)
  ], []);

  wbAmbientColors := wbStruct('Directional Ambient', [
    wbArray('Colors',
      wbStruct('Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      ['X+', 'X-', 'Y+', 'Y-', 'Z+', 'Z-']
    ),
    wbStruct('Specular', [
      wbStruct('Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbFloat('Fresnel Power')
    ])
  ], cpNormal, False, nil, 1);

  wbXGLB := wbFormIDCk(XGLB, 'Global variable', [GLOB]);

end;

procedure DefineTES5b;
begin

  wbRecord(ACHR, 'Placed NPC', [
    wbEDID,
    wbVMAD,
    wbFormIDCk(NAME, 'Base', [NPC_], False, cpNormal, True),
    wbFormIDCk(XEZN, 'Encounter Zone', [ECZN]),

    {--- Ragdoll ---}
    wbXRGD,
    wbXRGB,

    {--- Patrol Data ---}
    wbRStruct('Patrol Data', [
      wbFloat(XPRD, 'Idle Time', cpNormal, True),
      wbEmpty(XPPA, 'Patrol Script Marker', cpNormal, True),
      wbFormIDCk(INAM, 'Idle', [IDLE, NULL], False, cpNormal, True),
      {>>> BEGIN leftover from earlier CK versions <<<}
      wbRStruct('Unused', [
        wbUnknown(SCHR),
        wbUnknown(SCDA),
        wbUnknown(SCTX),
        wbUnknown(QNAM),
        wbUnknown(SCRO)
      ], [], cpIgnore, false, wbNeverShow),
      {>>> END leftover from earlier CK versions <<<}
      wbPDTOs,
      wbFormIDCk(TNAM, 'Topic', [DIAL, NULL], False, cpNormal)
    ], []),

    {--- Leveled Actor ----}
    wbXLCM,

    {--- Merchant Container ----}
    wbFormIDCk(XMRC, 'Merchant Container', [REFR], True),

    {--- Extra ---}
    wbInteger(XCNT, 'Count', itS32),
    wbFloat(XRDS, 'Radius'),
    wbFloat(XHLP, 'Health'),

    wbRArrayS('Linked References', wbStructSK(XLKR, [0], 'Linked Reference', [
      wbFormIDCk('Keyword/Ref', [KYWD, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA, NULL]),
      wbFormIDCk('Ref', [PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA])
    ], cpNormal, False, nil, 1)),

    {--- Activate Parents ---}
    wbRStruct('Activate Parents', [
      wbInteger(XAPD, 'Flags', itU8, wbFlags([
        'Parent Activate Only'
      ], True)),
      wbRArrayS('Activate Parent Refs',
        wbStructSK(XAPR, [0], 'Activate Parent Ref', [
          wbFormIDCk('Reference', [PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
          wbFloat('Delay')
        ])
      )
    ], []),

    {--- Linked Ref ---}
    wbStruct(XCLP, 'Linked Reference Color', [
      wbStruct('Link Start Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Link End Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ])
    ]),

    wbFormIDCk(XLCN, 'Persistent Location', [LCTN]),
    wbFormIDCk(XLRL, 'Location Reference', [LCRT, LCTN, NULL], False, cpBenignIfAdded),
    wbEmpty(XIS2, 'Ignored by Sandbox'),
    wbArray(XLRT, 'Location Ref Type', wbFormIDCk('Ref', [LCRT, NULL])),
		wbFormIDCk(XHOR, 'Horse', [ACHR]),
    wbFloat(XHTW, 'Head-Tracking Weight'),
    wbFloat(XFVC, 'Favor Cost'),

    {--- Enable Parent ---}
    wbXESP,

    {--- Ownership ---}
    wbOwnership,

    {--- Emittance ---}
    wbFormIDCk(XEMI, 'Emittance', [LIGH, REGN]),

    {--- MultiBound ---}
    wbFormIDCk(XMBR, 'MultiBound Reference', [REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),

    {--- Flags ---}
    wbEmpty(XIBS, 'Ignored By Sandbox'),

    {--- 3D Data ---}
    wbXSCL,
    wbDATAPosRot
  ], True, wbPlacedAddInfo);


  {>>> wbRecordFlags: 0x00000000 ACTI: Collision Geometry (default) <<<}
  wbRecord(ACTI, 'Activator', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbDEST,
    wbKSIZ,
    wbKWDAs,
    wbStruct(PNAM, 'Marker Color', [
      wbInteger('Red', itU8),
      wbInteger('Green', itU8),
      wbInteger('Blue', itU8),
      wbInteger('Unused', itU8)
    ]),
    wbFormIDCk(SNAM, 'Sound - Looping', [SNDR, SOUN]),
    wbFormIDCk(VNAM, 'Sound - Activation', [SNDR, SOUN]),
    wbFormIDCk(WNAM, 'Water Type', [WATR]),
    wbLString(RNAM, 'Activate Text Override'),
    wbInteger(FNAM, 'Flags', itU16, wbFlags([
      'No Displacement',
      'Ignored by Sandbox'
    ])),
    wbFormIDCk(KNAM, 'Interaction Keyword', [KYWD])
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

  wbRecord(TACT, 'Talking Activator', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbDEST,
    wbKSIZ,
    wbKWDAs,
    wbUnknown(PNAM, cpIgnore, True),
    wbFormIDCk(SNAM, 'Looping Sound', [SNDR, SOUN]),
    wbUnknown(FNAM, cpIgnore, True),
    wbFormIDCk(VNAM, 'Voice Type', [VTYP])
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

  wbICON := wbRStruct('Icon', [
    wbString(ICON, 'Large Icon filename'),
    wbString(MICO, 'Small Icon filename')
  ], [], cpNormal, False, nil, True);

  wbICONReq := wbRStruct('Icon', [
    wbString(ICON, 'Large Icon filename'),
    wbString(MICO, 'Small Icon filename')
  ], [], cpNormal, True, nil, True);

  wbICO2 := wbRStruct('Icon 2 (female)', [
    wbString(ICO2, 'Large Icon filename'),
    wbString(MIC2, 'Small Icon filename')
  ], [], cpNormal, False, nil, True);

  wbVatsValueFunctionEnum :=
    wbEnum([
      { 0} 'Weapon Is',
      { 1} 'Weapon In List',
      { 2} 'Target Is',
      { 3} 'Target In List',
      { 4} 'Target Distance',
      { 5} 'Target Part',
      { 6} 'VATS Action',
      { 7} 'Is Success',
      { 8} 'Is Critical',
      { 9} 'Critical Effect Is',
      {10} 'Critical Effect In List',
      {11} 'Is Fatal',
      {12} 'Explode Part',
      {13} 'Dismember Part',
      {14} 'Cripple Part',
      {15} 'Weapon Type Is',
      {16} 'Is Stranger',
      {17} 'Is Paralyzing Palm',
      {18} 'Projectile Type Is',
      {19} 'Delivery Type Is',
      {20} 'Casting Type Is'
    ]);

  wbActorValueEnum :=
    wbEnum([
    {00} 'Aggresion',
    {01} 'Confidence',
    {02} 'Energy',
    {03} 'Morality',
    {04} 'Mood',
    {05} 'Assistance',
    {06} 'One-Handed',
    {07} 'Two-Handed',
    {08} 'Archery',
    {09} 'Block',
    {10} 'Smithing',
    {11} 'Heavy Armor',
    {12} 'Light Armor',
    {13} 'Pickpocket',
    {14} 'Lockpicking',
    {15} 'Sneak',
    {16} 'Alchemy',
    {17} 'Speech',
    {18} 'Alteration',
    {19} 'Conjuration',
    {20} 'Destruction',
    {21} 'Illusion',
    {22} 'Restoration',
    {23} 'Enchanting',
    {24} 'Health',
    {25} 'Magicka',
    {26} 'Stamina',
    {27} 'Heal Rate',
    {28} 'Magicka Rate',
    {29} 'Stamina Rate',
    {30} 'Speed Mult',
    {31} 'Inventory Weight',
    {32} 'Carry Weight',
    {33} 'Critical Chance',
    {34} 'Melee Damage',
    {35} 'Unarmed Damage',
    {36} 'Mass',
    {37} 'Voice Points',
    {38} 'Voice Rate',
    {39} 'Damage Resist',
    {40} 'Poison Resist',
    {41} 'Resist Fire',
    {42} 'Resist Shock',
    {43} 'Resist Frost',
    {44} 'Resist Magic',
    {45} 'Resist Disease',
    {46} 'Unknown 46',
    {47} 'Unknown 47',
    {48} 'Unknown 48',
    {49} 'Unknown 49',
    {50} 'Unknown 50',
    {51} 'Unknown 51',
    {52} 'Unknown 52',
    {53} 'Paralysis',
    {54} 'Invisibility',
    {55} 'Night Eye',
    {56} 'Detect Life Range',
    {57} 'Water Breathing',
    {58} 'Water Walking',
    {59} 'Unknown 59',
    {60} 'Fame',
    {61} 'Infamy',
    {62} 'Jumping Bonus',
    {63} 'Ward Power',
    {64} 'Right Item Charge',
    {65} 'Armor Perks',
    {66} 'Shield Perks',
    {67} 'Ward Deflection',
    {68} 'Variable01',
    {69} 'Variable02',
    {70} 'Variable03',
    {71} 'Variable04',
    {72} 'Variable05',
    {73} 'Variable06',
    {74} 'Variable07',
    {75} 'Variable08',
    {76} 'Variable09',
    {77} 'Variable10',
    {78} 'Bow Speed Bonus',
    {79} 'Favor Active',
    {80} 'Favors Per Day',
    {81} 'Favors Per Day Timer',
    {82} 'Left Item Charge',
    {83} 'Absorb Chance',
    {84} 'Blindness',
    {85} 'Weapon Speed Mult',
    {86} 'Shout Recovery Mult',
    {87} 'Bow Stagger Bonus',
    {88} 'Telekinesis',
    {89} 'Favor Points Bonus',
    {90} 'Last Bribed Intimidated',
    {91} 'Last Flattered',
    {92} 'Movement Noise Mult',
    {93} 'Bypass Vendor Stolen Check',
    {94} 'Bypass Vendor Keyword Check',
    {95} 'Waiting For Player',
    {96} 'One-Handed Modifier',
    {97} 'Two-Handed Modifier',
    {98} 'Marksman Modifier',
    {99} 'Block Modifier',
   {100} 'Smithing Modifier',
   {101} 'Heavy Armor Modifier',
   {102} 'Light Armor Modifier',
   {103} 'Pickpocket Modifier',
   {104} 'Lockpicking Modifier',
   {105} 'Sneaking Modifier',
   {106} 'Alchemy Modifier',
   {107} 'Speechcraft Modifier',
   {108} 'Alteration Modifier',
   {109} 'Conjuration Modifier',
   {110} 'Destruction Modifier',
   {111} 'Illusion Modifier',
   {112} 'Restoration Modifier',
   {113} 'Enchanting Modifier',
   {114} 'One-Handed Skill Advance',
   {115} 'Two-Handed Skill Advance',
   {116} 'Marksman Skill Advance',
   {117} 'Block Skill Advance',
   {118} 'Smithing Skill Advance',
   {119} 'Heavy Armor Skill Advance',
   {120} 'Light Armor Skill Advance',
   {121} 'Pickpocket Skill Advance',
   {122} 'Lockpicking Skill Advance',
   {123} 'Sneaking Skill Advance',
   {124} 'Alchemy Skill Advance',
   {125} 'Speechcraft Skill Advance',
   {126} 'Alteration Skill Advance',
   {127} 'Conjuration Skill Advance',
   {128} 'Destruction Skill Advance',
   {129} 'Illusion Skill Advance',
   {130} 'Restoration Skill Advance',
   {131} 'Enchanting Skill Advance',
   {132} 'Left Weapon Speed Multiply',
   {133} 'Dragon Souls',
   {134} 'Combat Health Regen Multiply',
   {135} 'One-Handed Power Modifier',
   {136} 'Two-Handed Power Modifier',
   {137} 'Marksman Power Modifier',
   {138} 'Block Power Modifier',
   {139} 'Smithing Power Modifier',
   {140} 'Heavy Armor Power Modifier',
   {141} 'Light Armor Power Modifier',
   {142} 'Pickpocket Power Modifier',
   {143} 'Lockpicking Power Modifier',
   {144} 'Sneaking Power Modifier',
   {145} 'Alchemy Power Modifier',
   {146} 'Speechcraft Power Modifier',
   {147} 'Alteration Power Modifier',
   {148} 'Conjuration Power Modifier',
   {149} 'Destruction Power Modifier',
   {150} 'Illusion Power Modifier',
   {151} 'Restoration Power Modifier',
   {152} 'Enchanting Power Modifier',
   {153} 'Dragon Rend',
   {154} 'Attack Damage Mult',
   {155} 'Heal Rate Mult',
   {156} 'Magicka Rate Mult',
   {157} 'Stamina Rate Mult',
   {158} 'Werewolf Perks',
   {159} 'Vampire Perks',
   {160} 'Grab Actor Offset',
   {161} 'Grabbed',
   {162} 'Unknown 162',
   {163} 'Reflect Damage'
      ], [
        -1, 'None'
      ]);

  wbSkillEnum :=
    wbEnum([
      'Unknown 1',
      'Unknown 2',
      'Unknown 3',
      'Unknown 4',
      'Unknown 5',
      'Unknown 6',
      'One Handed',
      'Two Handed',
      'Archery',
      'Block',
      'Smithing',
      'Heavy Armor',
      'Light Armor',
      'Pickpocket',
      'Lockpicking',
      'Sneak',
      'Alchemy',
      'Speech',
      'Alteration',
      'Conjuration',
      'Destruction',
      'Illusion',
      'Restoration',
      'Enchanting'
    ], [
    -1, 'None'
    ]);

  wbCastEnum := wbEnum([
    {0} 'Constant Effect',
    {1} 'Fire and Forget',
    {2} 'Concentration',
    {3} 'Scroll'
  ]);

  wbTargetEnum := wbEnum([
    {0} 'Self',
    {1} 'Touch',
    {2} 'Aimed',
    {3} 'Target Actor',
    {4} 'Target Location'
  ]);

  wbCastingSourceEnum := wbEnum([
    'Left',
    'Right',
    'Voice',
    'Instant'
  ]);

  wbCrimeTypeEnum :=
    wbEnum([
      'Steal',
      'Pickpocket',
      'Trespass',
      'Attack',
      'Murder',
      'Escape Jail',
      'Werewolf Transformation'
    ], [
      -1, 'None'
    ]);

  wbActorValue := wbInteger('Actor Value', itS32, wbActorValueEnum);

  wbETYP := wbFormIDCk(ETYP, 'Equipment Type', [EQUP, NULL]);
  wbETYPReq := wbFormIDCk(ETYP, 'Equipment Type', [EQUP, NULL], False, cpNormal, True);

  wbFormTypeEnum := wbEnum([], [
     0, 'Activator',
     1, 'Armor',
     2, 'Book',
     3, 'Container',
     4, 'Door',
     5, 'Ingredient',
     6, 'Light',
     7, 'MiscItem',
     8, 'Static',
     9, 'Grass',
    10, 'Tree',
    12, 'Weapon',
    13, 'Actor',
    14, 'LeveledCharacter',
    15, 'Spell',
    16, 'Enchantment',
    17, 'Potion',
    18, 'LeveledItem',
    19, 'Key',
    20, 'Ammo',
    21, 'Flora',
    22, 'Furniture',
    23, 'Sound Marker',
    24, 'LandTexture',
    25, 'CombatStyle',
    26, 'LoadScreen',
    27, 'LeveledSpell',
    28, 'AnimObject',
    29, 'WaterType',
    30, 'IdleMarker',
    31, 'EffectShader',
    32, 'Projectile',
    33, 'TalkingActivator',
    34, 'Explosion',
    35, 'TextureSet',
    36, 'Debris',
    37, 'MenuIcon',
    38, 'FormList',
    39, 'Perk',
    40, 'BodyPartData',
    41, 'AddOnNode',
    42, 'MovableStatic',
    43, 'CameraShot',
    44, 'ImpactData',
    45, 'ImpactDataSet',
    46, 'Quest',
    47, 'Package',
    48, 'VoiceType',
    49, 'Class',
    50, 'Race',
    51, 'Eyes',
    52, 'HeadPart',
    53, 'Faction',
    54, 'Note',
    55, 'Weather',
    56, 'Climate',
    57, 'ArmorAddon',
    58, 'Global',
    59, 'Imagespace',
    60, 'Imagespace Modifier',
    61, 'Encounter Zone',
    62, 'Message',
    63, 'Constructible Object',
    64, 'Acoustic Space',
    65, 'Ragdoll',
    66, 'Script',
    67, 'Magic Effect',
    68, 'Music Type',
    69, 'Static Collection',
    70, 'Keyword',
    71, 'Location',
    72, 'Location Ref Type',
    73, 'Footstep',
    74, 'Footstep Set',
    75, 'Material Type',
    76, 'Actor Action',
    77, 'Music Track',
    78, 'Word of Power',
    79, 'Shout',
    80, 'Relationship',
    81, 'Equip Slot',
    82, 'Association Type',
    83, 'Outfit',
    84, 'Art Object',
    85, 'Material Object',
    87, 'Lighting Template',
    88, 'Shader Particle Geometry',
    89, 'Visual Effect',
    90, 'Apparatus',
    91, 'Movement Type',
    92, 'Hazard',
    93, 'SM Event Node',
    94, 'Sound Descriptor',
    95, 'Dual Cast Data',
    96, 'Sound Category',
    97, 'Soul Gem',
    98, 'Sound Output Model',
    99, 'Collision Layer',
   100, 'Scroll',
   101, 'ColorForm',
   102, 'Reverb Parameters'
  ]);

  wbMiscStatEnum := wbEnum([], [
    Int64($FCDD5011), 'Animals Killed',
    Int64($366D84CF), 'Armor Improved',
    Int64($023497E6), 'Armor Made',
    Int64($8E20D7C9), 'Assaults',
    Int64($579FFA75), 'Automations Killed',
    Int64($B9B50725), 'Backstabs',
    Int64($ED6A0EF2), 'Barters',
    Int64($CCB952CE), 'Books Read',
    Int64($317E8B4C), 'Brawls Won',
    Int64($1D79006B), 'Bribes',
    Int64($3602DE8F), 'Bunnies Slaughtered',
    Int64($53D9E9B5), 'Chests Looted',
    Int64($683C1980), 'Civil War Quests Completed',
    Int64($66CCC50A), 'College of Winterhold Quests Completed',
    Int64($40B11EFE), 'Creatures Killed',
    Int64($22D5BA38), 'Critical Strikes',
    Int64($A930980F), 'Daedra Killed',
    Int64($3558374B), 'Daedric Quests Completed',
    Int64($37A76425), 'Dawnguard Quests Completed',
    Int64($2BDAC36F), 'Days as a Vampire',
    Int64($6E684590), 'Days as a Werewolf',
    Int64($B6F118DB), 'Days Jailed',
    Int64($3C626A90), 'Days Passed',
    Int64($8556AD88), 'Diseases Contracted',
    Int64($46D6FBBC), 'Dragon Souls Collected',
    Int64($AA444695), 'Dungeons Cleared',
    Int64($1A37F336), 'Eastmarch Bounty',
    Int64($5AC3A8ED), 'Falkreath Bounty',
    Int64($87B12ECC), 'Favorite School',
    Int64($518BBC4E), 'Favorite Shout',
    Int64($41DD77A6), 'Favorite Spell',
    Int64($171C5391), 'Favorite Weapon',
    Int64($4F041AA2), 'Fines Paid',
    Int64($9311B22B), 'Food Eaten',
    Int64($57C089F7), 'Gold Found',
    Int64($D20EDA4F), 'Haafingar Bounty',
    Int64($516C486D), 'Hjaalmarch Bounty',
    Int64($B0A1E32E), 'Horses Owned',
    Int64($EBAE35E8), 'Horses Stolen',
    Int64($FA024018), 'Hours Slept',
    Int64($CAD2ECA1), 'Hours Waiting',
    Int64($527DF857), 'Houses Owned',
    Int64($47B4A015), 'Ingredients Eaten',
    Int64($CE842356), 'Ingredients Harvested',
    Int64($7D2E57C0), 'Intimidations',
    Int64($C21702B5), 'Items Pickpocketed',
    Int64($82F190C2), 'Items Stolen',
    Int64($6627464B), 'Jail Escapes',
    Int64($3520E710), 'Largest Bounty',
    Int64($8A24FDE2), 'Locations Discovered',
    Int64($5829CC2E), 'Locks Picked',
    Int64($88089979), 'Magic Items Made',
    Int64($7EA26C2D), 'Main Quests Completed',
    Int64($7187A208), 'Mauls',
    Int64($98EE55DC), 'Misc Objectives Completed',
    Int64($FA06230B), 'Most Gold Carried',
    Int64($D37C6909), 'Murders',
    Int64($22C2CBD0), 'Necks Bitten',
    Int64($BEEBCC87), 'Nirnroots Found',
    Int64($56CCFC54), 'NumVampirePerks',
    Int64($76A1A5C0), 'NumWerewolfPerks',
    Int64($F22A8133), 'People Killed',
    Int64($47A78467), 'Persuasions',
    Int64($F2BAC234), 'Pockets Picked',
    Int64($17C64668), 'Poisons Mixed',
    Int64($7D8F2EA6), 'Poisons Used',
    Int64($4228DE85), 'Potions Mixed',
    Int64($9631EC11), 'Potions Used',
    Int64($DE6C73FE), 'Questlines Completed',
    Int64($0D7B8B16), 'Quests Completed',
    Int64($BB39399E), 'Shouts Learned',
    Int64($731B5333), 'Shouts Mastered',
    Int64($F921D8BA), 'Shouts Unlocked',
    Int64($B1AE4792), 'Side Quests Completed',
    Int64($ACE470D7), 'Skill Books Read',
    Int64($F33130CE), 'Skill Increases',
    Int64($B556CC52), 'Sneak Attacks',
    Int64($A74CBE83), 'Soul Gems Used',
    Int64($C2C9E233), 'Souls Trapped',
    Int64($5EC89F1A), 'Spells Learned',
    Int64($B251A346), 'Standing Stones Found',
    Int64($05D45702), 'Stores Invested In',
    Int64($D0FE7031), 'The Companions Quests Completed',
    Int64($52BA68CB), 'The Dark Brotherhood Quests Completed',
    Int64($3E267D77), 'The Pale Bounty',
    Int64($69B48177), 'The Reach Bounty',
    Int64($50A23F69), 'The Rift Bounty',
    Int64($62B2E95D), 'Thieves'' Guild Quests Completed',
    Int64($944CEA93), 'Times Jailed',
    Int64($50AAB633), 'Times Shouted',
    Int64($99BB86D8), 'Total Lifetime Bounty',
    Int64($4C252391), 'Training Sessions',
    Int64($7AEA9C2B), 'Trespasses',
    Int64($A67626F4), 'Tribal Orcs Bounty',
    Int64($41D4BC0F), 'Undead Killed',
    Int64($F39260A1), 'Vampirism Cures',
    Int64($61A5C5A9), 'Weapons Disarmed',
    Int64($1D3BA844), 'Weapons Improved',
    Int64($25F1EA25), 'Weapons Made',
    Int64($38A2DD66), 'Werewolf Transformations',
    Int64($4231FA4F), 'Whiterun Bounty',
    Int64($92565767), 'Wings Plucked',
    Int64($C7FC518D), 'Winterhold Bounty',
    Int64($949FA7BC), 'Words of Power Learned',
    Int64($2C6E3FC0), 'Words of Power Unlocked'
  ]);

  wbAdvanceActionEnum := wbEnum([
    'Normal Usage',
    'Power Attack',
    'Bash',
    'Lockpick Success',
    'Lockpick Broken'
  ]);

  wbAlignmentEnum :=
    wbEnum([
      'Good',
      'Neutral',
      'Evil',
      'Very Good',
      'Very Evil'
    ]);

  wbAxisEnum :=
    wbEnum([], [
      88, 'X',
      89, 'Y',
      90, 'Z'
    ]);

  wbCriticalStageEnum :=
    wbEnum([
      'None',
      'Goo Start',
      'Goo End',
      'Disintegrate Start',
      'Disintegrate End'
    ]);

  wbSexEnum := wbEnum(['Male','Female']);

  wbEFID := wbFormIDCk(EFID, 'Base Effect', [MGEF]);

  wbEFIT :=
    wbStructSK(EFIT, [3, 4], '', [
      wbFloat('Magnitude', cpNormal, True),
      wbInteger('Area', itU32),
      wbInteger('Duration', itU32)
    ], cpNormal, True, nil, -1, wbEFITAfterLoad);

  wbCTDA := wbRStruct('Condition', [
    wbStruct(CTDA, '', [
      wbInteger('Type', itU8, wbCtdaTypeToStr, wbCtdaTypeToInt, cpNormal, False, nil, wbCtdaTypeAfterSet),
      wbByteArray('Unknown', 3, cpIgnore, False, wbNeverShow),
      wbUnion('Comparison Value', wbCTDACompValueDecider, [
        wbFloat('Comparison Value - Float'),
        wbFormIDCk('Comparison Value - Global', [GLOB])
      ]),
      wbInteger('Function', itU16, wbCTDAFunctionToStr, wbCTDAFunctionToInt),
      wbByteArray('Unknown', 2, cpIgnore, False, wbNeverShow),
      wbUnion('Parameter #1', wbCTDAParam1Decider, [
        wbByteArray('Unknown', 4),
        wbByteArray('None', 4, cpIgnore),
        wbInteger('Integer', itS32),
        wbFloat('Float'),
        wbByteArray('Variable Name (unused)', 4, cpIgnore),
        wbInteger('Sex', itU32, wbSexEnum),
        wbInteger('Actor Value', itS32, wbActorValueEnum),
        wbInteger('Crime Type', itU32, wbCrimeTypeEnum),
        wbInteger('Axis', itU32, wbAxisEnum),
        wbInteger('Quest Stage (unused)', itS32),
        wbInteger('Misc Stat', itU32, wbMiscStatEnum),
        wbInteger('Alignment', itU32, wbAlignmentEnum),
        wbFormIDCkNoReach('Equip Type', [EQUP]),
        wbInteger('Form Type', itU32, wbFormTypeEnum),
        wbInteger('Critical Stage', itU32, wbCriticalStageEnum),
        wbFormIDCkNoReach('Object Reference', [NULL, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
        wbFormIDCkNoReach('Inventory Object', [ARMO, BOOK, MISC, WEAP, AMMO, KEYM, ALCH, SCRL, SLGM, INGR, FLST, LIGH, LVLI, COBJ]),
        wbFormIDCkNoReach('Actor', [NULL, PLYR, ACHR, REFR]),
        wbFormIDCkNoReach('Voice Type', [VTYP, FLST]),
        wbFormIDCkNoReach('Idle', [IDLE]),
        wbFormIDCkNoReach('Form List', [FLST]),
        wbFormIDCkNoReach('Quest', [QUST]),
        wbFormIDCkNoReach('Faction', [FACT]),
        wbFormIDCkNoReach('Cell', [CELL]),
        wbFormIDCkNoReach('Class', [CLAS]),
        wbFormIDCkNoReach('Race', [RACE]),
        wbFormIDCkNoReach('Actor Base', [NPC_]),
        wbFormIDCkNoReach('Global', [GLOB]),
        wbFormIDCkNoReach('Weather', [WTHR]),
        wbFormIDCkNoReach('Package', [PACK]),
        wbFormIDCkNoReach('Encounter Zone', [ECZN]),
        wbFormIDCkNoReach('Perk', [PERK]),
        wbFormIDCkNoReach('Owner', [NULL, FACT, NPC_]),
        wbFormIDCkNoReach('Furniture', [FURN, FLST]),
        wbFormIDCkNoReach('Effect Item', [SPEL, ENCH, ALCH, INGR, SCRL]),
        wbFormIDCkNoReach('Base Effect', [MGEF]),
        wbFormIDCkNoReach('Worldspace', [WRLD, FLST]),
        wbInteger('VATS Value Function', itU32, wbVATSValueFunctionEnum),
        wbInteger('VATS Value Param (INVALID)', itU32),
        wbFormIDCkNoReach('Referenceable Object', [NULL, NPC_, PROJ, TREE, SOUN, ACTI, DOOR, STAT, FURN, CONT, ARMO, AMMO, MISC, WEAP, BOOK, KEYM, ALCH, LIGH, GRAS, ASPC, IDLM, ARMA, MSTT, TACT, FLST, LVLI, LVSP, SPEL, SCRL, SHOU, SLGM, ENCH], [NPC_, PROJ, TREE, SOUN, ACTI, DOOR, STAT, FURN, CONT, ARMO, AMMO, MISC, WEAP, BOOK, KEYM, ALCH, LIGH, GRAS, ASPC, IDLM, ARMA, MSTT, TACT, LVLI, LVSP, SPEL, SCRL, SHOU, SLGM, ENCH]),
        wbFormIDCkNoReach('Region', [REGN]),
        wbFormIDCkNoReach('Keyword', [KYWD, NULL]),
        wbInteger('Player Action', itU32, wbAdvanceActionEnum),
        wbInteger('Casting Type', itU32, wbCastingSourceEnum),
        wbFormIDCkNoReach('Shout', [SHOU]),
        wbFormIDCkNoReach('Location', [LCTN]),
        wbFormIDCkNoReach('Location Ref Type', [LCRT]),
        wbInteger('Alias', itS32, wbConditionAliasToStr, wbStrToAlias),
        wbInteger('Packdata ID', itU32),
        wbFormIDCk('Association Type', [ASTP]),
        wbInteger('Furniture Anim', itU32, wbFurnitureAnimTypeEnum),
        wbInteger('Furniture Entry', itU32, wbEnum([], [$010000, 'Front', $020000, 'Behind', $040000, 'Right', $80000, 'Left', $100000, 'Up'])),
        wbFormIDCk('Scene', [NULL, SCEN]),
        wbInteger('Ward State', itU32, wbWardStateEnum),
        wbInteger('Event', itU32, wbEventFunctionAndMemberToStr, wbEventFunctionAndMemberToInt),
        wbFormID('Event Data')
      ]),
      wbUnion('Parameter #2', wbCTDAParam2Decider, [
        wbByteArray('Unknown', 4),
        wbByteArray('None', 4, cpIgnore),
        wbInteger('Integer', itS32),
        wbFloat('Float'),
        wbByteArray('Variable Name (unused)', 4, cpIgnore),
        wbInteger('Sex', itU32, wbSexEnum),
        wbInteger('Actor Value', itS32, wbActorValueEnum),
        wbInteger('Crime Type', itU32, wbCrimeTypeEnum),
        wbInteger('Axis', itU32, wbAxisEnum),
        wbInteger('Quest Stage', itS32, wbCTDAParam2QuestStageToStr, wbCTDAParam2QuestStageToInt),
        wbInteger('Misc Stat', itU32, wbMiscStatEnum),
        wbInteger('Alignment', itU32, wbAlignmentEnum),
        wbFormIDCkNoReach('Equip Type', [EQUP]),
        wbInteger('Form Type', itU32, wbFormTypeEnum),
        wbInteger('Critical Stage', itU32, wbCriticalStageEnum),
        wbFormIDCkNoReach('Object Reference', [NULL, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
        wbFormIDCkNoReach('Inventory Object', [ARMO, BOOK, MISC, WEAP, AMMO, KEYM, ALCH, SCRL, SLGM, INGR, FLST, LIGH, LVLI, COBJ]),
        wbFormIDCkNoReach('Actor', [NULL, PLYR, ACHR, REFR]),
        wbFormIDCkNoReach('Voice Type', [VTYP, FLST]),
        wbFormIDCkNoReach('Idle', [IDLE]),
        wbFormIDCkNoReach('Form List', [FLST]),
        wbFormIDCkNoReach('Quest', [QUST]),
        wbFormIDCkNoReach('Faction', [FACT]),
        wbFormIDCkNoReach('Cell', [CELL]),
        wbFormIDCkNoReach('Class', [CLAS]),
        wbFormIDCkNoReach('Race', [RACE]),
        wbFormIDCkNoReach('Actor Base', [NPC_]),
        wbFormIDCkNoReach('Global', [GLOB]),
        wbFormIDCkNoReach('Weather', [WTHR]),
        wbFormIDCkNoReach('Package', [PACK]),
        wbFormIDCkNoReach('Encounter Zone', [ECZN]),
        wbFormIDCkNoReach('Perk', [PERK]),
        wbFormIDCkNoReach('Owner', [NULL, FACT, NPC_]),
        wbFormIDCkNoReach('Furniture', [FURN, FLST]),
        wbFormIDCkNoReach('Effect Item', [SPEL, ENCH, ALCH, INGR, SCRL]),
        wbFormIDCkNoReach('Base Effect', [MGEF]),
        wbFormIDCkNoReach('Worldspace', [WRLD, FLST]),
        wbInteger('VATS Value Function', itU32, wbVATSValueFunctionEnum),
        wbUnion('VATS Value Param', wbCTDAParam2VATSValueParamDecider, [
         { 0} wbFormIDCkNoReach('Weapon', [WEAP]),
         { 1} wbFormIDCkNoReach('Weapon List', [FLST], [WEAP]),
         { 2} wbFormIDCkNoReach('Target', [NPC_]),
         { 3} wbFormIDCkNoReach('Target List', [FLST], [NPC_]),
         { 4} wbByteArray('Unknown', 4, cpIgnore),
         { 5} wbInteger('Target Part', itS32, wbActorValueEnum),
         { 6} wbInteger('VATS Action', itU32, wbEnum([
                'Unarmed Attack',
                'One Hand Melee Attack',
                'Two Hand Melee Attack',
                'Magic Attack',
                'Ranged Attack',
                'Reload',
                'Crouch',
                'Stand',
                'Switch Weapon',
                'Toggle Weapon Drawn',
                'Heal',
                'Player Death'
          ])),
         { 7} wbByteArray('Unknown', 4, cpIgnore),
         { 8} wbByteArray('Unknown', 4, cpIgnore),
         { 9} wbFormIDCkNoReach('Critical Effect', [SPEL]),
         {10} wbFormIDCkNoReach('Critical Effect List', [FLST], [SPEL]),
         {11} wbByteArray('Unknown', 4, cpIgnore),
         {12} wbByteArray('Unknown', 4, cpIgnore),
         {13} wbByteArray('Unknown', 4, cpIgnore),
         {14} wbByteArray('Unknown', 4, cpIgnore),
         {15} wbInteger('Weapon Type', itU32, wbWeaponAnimTypeEnum),
         {16} wbByteArray('Unknown', 4, cpIgnore),
         {17} wbByteArray('Unknown', 4, cpIgnore),
         {18} wbInteger('Projectile Type', itU32, wbEnum([
                'Missile',
                'Lobber',
                'Beam',
                'Flame',
                'Cone',
                'Barrier',
                'Arrow'
              ])),
         {19} wbInteger('Delivery Type', itU32, wbTargetEnum),
         {20} wbInteger('Casting Type', itU32, wbCastEnum)
        ]),
        wbFormIDCkNoReach('Referenceable Object', [NULL, NPC_, PROJ, TREE, SOUN, ACTI, DOOR, STAT, FURN, CONT, ARMO, AMMO, MISC, WEAP, BOOK, KEYM, ALCH, LIGH, GRAS, ASPC, IDLM, ARMA, MSTT, TACT, FLST, LVLI, LVSP, SPEL, SCRL, SHOU, SLGM, ENCH], [NPC_, PROJ, TREE, SOUN, ACTI, DOOR, STAT, FURN, CONT, ARMO, AMMO, MISC, WEAP, BOOK, KEYM, ALCH, LIGH, GRAS, ASPC, IDLM, ARMA, MSTT, TACT, LVLI, LVSP, SPEL, SCRL, SHOU, SLGM, ENCH]),
        wbFormIDCkNoReach('Region', [REGN]),
        wbFormIDCkNoReach('Keyword', [KYWD, NULL]),
        wbInteger('Player Action', itU32, wbAdvanceActionEnum),
        wbInteger('Casting Type', itU32, wbCastingSourceEnum),
        wbFormIDCkNoReach('Shout', [SHOU]),
        wbFormIDCkNoReach('Location', [LCTN]),
        wbFormIDCkNoReach('Location Ref Type', [LCRT]),
        wbInteger('Alias', itS32, wbConditionAliasToStr, wbStrToAlias),
        wbInteger('Packdata ID', itU32),
        wbFormIDCk('Association Type', [ASTP]),
        wbInteger('Furniture Anim', itU32, wbFurnitureAnimTypeEnum),
        wbInteger('Furniture Entry', itU32, wbEnum([], [$010000, 'Front', $020000, 'Behind', $040000, 'Right', $80000, 'Left', $100000, 'Up'])),
        wbFormIDCk('Scene', [NULL, SCEN]),
        wbInteger('Ward State', itU32, wbWardStateEnum),
        wbInteger('Event', itU32, wbEventFunctionAndMemberToStr, wbEventFunctionAndMemberToInt),
        wbFormID('Event Data')
      ]),
      wbInteger('Run On', itU32, wbEnum([
        {0} 'Subject',
        {1} 'Target',
        {2} 'Reference',
        {3} 'Combat Target',
        {4} 'Linked Reference',
        {5} 'Quest Alias',
        {6} 'Package Data',
        {7} 'Event Data'
      ]), cpNormal, False, nil, wbCTDARunOnAfterSet),
      wbUnion('Reference', wbCTDAReferenceDecider, [
        wbInteger('Unused', itU32, nil, cpIgnore),
        wbFormIDCkNoReach('Reference', [NULL, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA], False)
      ]),
      wbInteger('Parameter #3', itS32)
    ], cpNormal, False{, nil, 0, wbCTDAAfterLoad}),
    wbString(CIS1, 'Parameter #1'),
    wbString(CIS2, 'Parameter #2')
  ], [], cpNormal);

  wbCTDAs := wbRArray('Conditions', wbCTDA, cpNormal, False);
  wbCTDAsCount := wbRArray('Conditions', wbCTDA, cpNormal, False, nil, wbCTDAsAfterSet);
  wbCTDAsReq := wbRArray('Conditions', wbCTDA, cpNormal, True);
  wbCTDAsReqCount := wbRArray('Conditions', wbCTDA, cpNormal, True, nil, wbCTDAsAfterSet);

  wbEffectsReq :=
    wbRStructs('Effects', 'Effect', [
      wbEFID,
      wbEFIT,
      wbCTDAs
    ], [], cpNormal, True);

  wbRecord(ALCH, 'Ingestible', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbKSIZ,
    wbKWDAs,
    wbDESC,
    wbMODL,
    wbDEST,
    wbICON,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbETYP,
    wbFloat(DATA, 'Weight', cpNormal, True),
    wbStruct(ENIT, 'Effect Data', [
      wbInteger('Value', itS32),
      wbInteger('Flags', itU32, wbFlags([
        {0x00000001} 'No Auto-Calc (Unused)',
        {0x00000002} 'Food Item',
        {0x00000004} 'Unknown 3',
        {0x00000008} 'Unknown 4',
        {0x00000010} 'Unknown 5',
				{0x00000020} 'Unknown 6',
				{0x00000040} 'Unknown 7',
				{0x00000080} 'Unknown 8',
				{0x00000100} 'Unknown 9',
				{0x00000200} 'Unknown 10',
				{0x00000400} 'Unknown 11',
				{0x00000800} 'Unknown 12',
				{0x00001000} 'Unknown 13',
				{0x00002000} 'Unknown 14',
				{0x00004000} 'Unknown 15',
				{0x00008000} 'Unknown 16',
				{0x00010000} 'Medicine',
				{0x00020000} 'Poison'
      ])),
      wbFormID('Addiction'),
      wbFloat('Addiction Chance'),
      wbFormIDCk('Sound - Consume', [SNDR, NULL])
    ], cpNormal, True),
    wbEffectsReq
  ], False, nil, cpNormal, False, wbRemoveEmptyKWDA, wbKeywordsAfterSet);

  wbRecord(AMMO, 'Ammunition', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbICON,
    wbDEST,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbDESC,
    wbKSIZ,
    wbKWDAs,
    wbStruct(DATA, 'Data', [
      wbFormIDCk('Projectile', [PROJ, NULL]),
        wbInteger('Flags', itU32, wbFlags([
          'Ignores Normal Weapon Resistance',
          'Non-Playable',
          'Non-Bolt'
        ])),
      wbFloat('Damage'),
      wbInteger('Value', itU32)
    ], cpNormal, True),
    wbString(ONAM, 'Short Name')
  ], False, nil, cpNormal, False, wbRemoveEmptyKWDA, wbKeywordsAfterSet);

  wbRecord(ANIO, 'Animated Object', [
    wbEDID,
    wbMODL,
    wbString(BNAM, 'Type')
  ]);

  wbRecord(ARMO, 'Armor', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbEITM,
    wbInteger(EAMT, 'Enchantment Amount', itU16),
    wbRStruct('Male world model', [
      wbString(MOD2, 'Model Filename'),
      wbByteArray(MO2T, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow),
      wbMO2S
    ], []),
    wbICON,
    wbRStruct('Female world model', [
      wbString(MOD4, 'Model Filename'),
      wbByteArray(MO4T, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow),
      wbMO4S
    ], []),
    wbICO2,
//    wbBODT,
//    wbBOD2,
    wbBODTBOD2,
    wbDEST,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbString(BMCT, 'Ragdoll Constraint Template'),
    wbETYP,
    wbFormIDCk(BIDS, 'Bash Impact Data Set', [IPDS]),
    wbFormIDCk(BAMT, 'Alternate Block Material', [MATT]),
    wbFormIDCk(RNAM, 'Race', [RACE]),
    wbKSIZ,
    wbKWDAs,
    wbDESC,
    wbRArray('Armature', wbFormIDCK(MODL, 'Model Filename', [ARMA, NULL])),
    wbStruct(DATA, 'Data', [
      wbInteger('Value', itS32),
      wbFloat('Weight')
    ], cpNormal, True),
    wbInteger(DNAM, 'Armor Rating', itS32, wbDiv(100), cpNormal, True),
    wbFormIDCk(TNAM, 'Template Armor', [ARMO])
  ], False, nil, cpNormal, False, wbARMOAfterLoad, wbKeywordsAfterSet);

  wbRecord(ARMA, 'Armor Addon', [
    wbEDID,
//    wbBODT,
//    wbBOD2,
    wbBODTBOD2,
    wbFormIDCk(RNAM, 'Race', [RACE]),
    wbStruct(DNAM, 'Data', [
      wbInteger('Male Priority', itU8),
      wbInteger('Female Priority', itU8),
      // essentialy a number of world models for different weights (Enabled = 2 models _0.nif and _1.nif)
      wbInteger('Weight slider - Male', itU8, wbFlags([
        {0x01} 'Unknown 0',
        {0x02} 'Enabled'
      ])),
      wbInteger('Weight slider - Female', itU8, wbFlags([
        {0x01} 'Unknown 0',
        {0x02} 'Enabled'
      ])),
      wbByteArray('Unknown', 2),
      wbInteger('Detection Sound Value', itU8),
      wbByteArray('Unknown', 1),
      wbFloat('Weapon Adjust')
    ], cpNormal, True),
    wbRStruct('Male world model', [
      wbString(MOD2, 'Model Filename'),
      wbByteArray(MO2T, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow),
      wbMO2S
    ], [], cpNormal, False),
    wbRStruct('Female world model', [
      wbString(MOD3, 'Model Filename'),
      wbByteArray(MO3T, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow),
      wbMO3S
    ], []),
    wbRStruct('Male 1st Person', [
      wbString(MOD4, 'Model Filename'),
      wbByteArray(MO4T, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow),
      wbMO4S
    ], []),
    wbRStruct('Female 1st Person', [
      wbString(MOD5, 'Model Filename'),
      wbByteArray(MO5T, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow),
      wbMO5S
    ], []),
    wbFormIDCK(NAM0, 'Male Skin Texture', [TXST, NULL]),
    wbFormIDCK(NAM1, 'Female Skin texture', [TXST, NULL]),
    wbFormIDCK(NAM2, 'Male Skin Texture Swap List', [FLST, NULL]),
    wbFormIDCK(NAM3, 'Female Skin Texture Swap List', [FLST, NULL]),
    wbRArrayS('Additional Races', wbFormIDCK(MODL, 'Race', [RACE, NULL])),
    wbFormIDCk(SNDD, 'Footstep Sound', [FSTS, NULL]),
    wbFormIDCk(ONAM, 'Art Object', [ARTO])
  ], False, nil, cpNormal, False, wbARMAAfterLoad);

  wbRecord(BOOK, 'Book', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbICON,
    wbLStringKC(DESC, 'Book Text', 0, cpNormal, True),
    wbDEST,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbKSIZ,
    wbKWDAs,
    wbStruct(DATA, 'Data', [
      wbInteger('Flags', itU8, wbFlags([
       {0x01} 'Teaches Skill',
       {0x02} 'Can''t be Taken',
       {0x04} 'Teaches Spell',
       {0x08} 'Unknown 4',
       {0x10} 'Unknown 5',
       {0x20} 'Unknown 6',
       {0x40} 'Unknown 7',
       {0x80} 'Unknown 8'
      ])),
      wbInteger('Type', itU8, wbEnum([], [
        0, 'Book/Tome', 255, 'Note/Scroll'
      ])),
      wbByteArray('Unused', 2),
      wbUnion('Teaches', wbBOOKTeachesDecider, [
        wbInteger('Skill', itS32, wbSkillEnum),
        wbFormIDCk('Spell', [SPEL, NULL])
      ]),
      wbInteger('Value', itU32),
      wbFloat('Weight')
    ], cpNormal, True),
    wbFormIDCk(INAM, 'Inventory Art', [STAT]),
    wbLString(CNAM, 'Description')
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);
end;

procedure DefineTES5c;

  procedure ReferenceRecord(aSignature: TwbSignature; const aName: string);
  begin
    wbRecord(aSignature, aName, [
      wbEDID,
      wbVMAD,
      wbFormIDCk(NAME, 'Projectile', [PROJ, HAZD]),
      wbFormIDCk(XEZN, 'Encounter Zone', [ECZN]),
      wbOwnership,
      wbFloat(XHTW, 'Head-Tracking Weight'),
      wbFloat(XFVC, 'Favor Cost'),
      wbRArrayS('Reflected/Refracted By',
        wbStructSK(XPWR, [0], 'Water', [
          wbFormIDCk('Reference', [REFR]),
          wbInteger('Type', itU32, wbFlags([
            'Reflection',
            'Refraction'
          ]))
        ], cpNormal, False, nil, 1)
      ),
      wbRArrayS('Linked References', wbStructSK(XLKR, [0], 'Linked Reference', [
        wbFormIDCk('Keyword/Ref', [KYWD, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA, NULL]),
        wbFormIDCk('Ref', [PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA])
      ], cpNormal, False, nil, 1)),
      wbRStruct('Activate Parents', [
        wbInteger(XAPD, 'Flags', itU8, wbFlags([
          'Parent Activate Only'
        ], True)),
        wbRArrayS('Activate Parent Refs',
          wbStructSK(XAPR, [0], 'Activate Parent Ref', [
            wbFormIDCk('Reference', [PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
            wbFloat('Delay')
          ])
        )
      ], []),
      wbXESP,
      wbFormIDCk(XEMI, 'Emittance', [LIGH, REGN]),
      wbFormIDCk(XMBR, 'MultiBound Reference', [REFR]),
      wbEmpty(XIS2, 'Ignored by Sandbox'),
      wbArray(XLRT, 'Location Ref Type', wbFormIDCk('Ref', [LCRT, NULL])),
      wbFormIDCk(XLRL, 'Location Reference', [LCRT, LCTN, NULL], False, cpBenignIfAdded),
      wbXLOD,
      wbXSCL,
      wbDataPosRot
    ], True, wbPlacedAddInfo);
  end;

begin
{>>>
  Skrim has its own ref record for every projectile type
  PARW 'Arrow'
  PBEA 'Beam'
  PFLA 'Flame'
  PCON 'Cone' (voice)
  PBAR 'Barrier'
  PGRE 'Traps'
  PHZD 'Hazards'
  I guess all of them have the same structure
<<<}
  ReferenceRecord(PARW, 'Placed Arrow');
  ReferenceRecord(PBAR, 'Placed Barrier');
  ReferenceRecord(PBEA, 'Placed Beam');
  ReferenceRecord(PCON, 'Placed Cone/Voice');
  ReferenceRecord(PFLA, 'Placed Flame');
  ReferenceRecord(PGRE, 'Placed Projectile');
  ReferenceRecord(PHZD, 'Placed Hazard');
  ReferenceRecord(PMIS, 'Placed Missile');

  if wbSimpleRecords then begin

    wbRecord(CELL, 'Cell', [
      wbEDID,
      wbFULL,
      {>>>
      Flags can be itU8, but CELL\DATA has a critical role in various wbImplementation.pas routines
      and replacing it with wbUnion generates error when setting for example persistent flag in REFR.
      So let it be always itU16
      <<<}
      wbInteger(DATA, 'Flags', itU16, wbFlags([
        {0x0001} 'Is Interior Cell',
        {0x0002} 'Has Water',
        {0x0004} 'Can''t Travel From Here',
        {0x0008} 'No LOD Water',
        {0x0010} 'Unknown 5',
        {0x0020} 'Public Area',
        {0x0040} 'Hand Changed',
        {0x0080} 'Show Sky',
        {0x0100} 'Use Sky Lighting'
      ]), cpNormal, True),
      wbStruct(XCLC, 'Grid', [
        wbInteger('X', itS32),
        wbInteger('Y', itS32),
        wbInteger('Force Hide Land', itU32, wbFlags([
          'Quad 1',
          'Quad 2',
          'Quad 3',
          'Quad 4'
        ], True))
      ], cpNormal, False, nil, 2),
      wbStruct(XCLL, 'Lighting', [
        wbStruct('Ambient Color', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        wbStruct('Directional Color', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        wbStruct('Fog Color Near', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        wbFloat('Fog Near'),
        wbFloat('Fog Far'),
        wbInteger('Directional Rotation XY', itS32),
        wbInteger('Directional Rotation Z', itS32),
        wbFloat('Directional Fade'),
        wbFloat('Fog Clip Distance'),
        wbFloat('Fog Power'),
        wbAmbientColors,
        wbStruct('Fog Color Far', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        wbFloat('Fog Max'),
        wbFloat('Light Fade Begin'),
        wbFloat('Light Fade End'),
        wbInteger('Inherits', itU32, wbFlags([
          {0x00000001}'Ambient Color',
          {0x00000002}'Directional Color',
          {0x00000004}'Fog Color',
          {0x00000008}'Fog Near',
          {0x00000010}'Fog Far',
          {0x00000020}'Directional Rotation',
          {0x00000040}'Directional Fade',
          {0x00000080}'Clip Distance',
          {0x00000100}'Fog Power',
          {0x00000200}'Fog Max',
          {0x00000400}'Light Fade Distances'
        ]))
      ], cpNormal, False, nil, 11),

      wbByteArray(TVDT, 'Unknown', 0, cpNormal),
      wbByteArray(MHDT, 'Max Height Data', 0, cpNormal),
      wbFormIDCk(LTMP, 'Lighting Template', [LGTM, NULL], False, cpNormal, True),
      wbByteArray(LNAM, 'Unknown', 0, cpIgnore), // leftover flags, they are now in XCLC

      {>>> XCLW sometimes has $FF7FFFFF and causes invalid floation point <<<}
      wbFloat(XCLW, 'Water Height'),
      //wbByteArray(XCLW, 'Water Height', 4),
      wbString(XNAM, 'Water Noise Texture'),
      wbArrayS(XCLR, 'Regions', wbFormIDCk('Region', [REGN])),
      wbFormIDCk(XLCN, 'Location', [LCTN]),
      wbByteArray(XWCN, 'Unknown', 0, cpIgnore), // leftover
      wbByteArray(XWCS, 'Unknown', 0, cpIgnore), // leftover
      wbStruct(XWCU, 'Water Velocity', [
        wbFloat('X Offset'),
        wbFloat('Y Offset'),
        wbFloat('Z Offset'),
        wbByteArray('Unknown', 4),
        wbFloat('X Angle'),
        wbFloat('Y Angle'),
        wbFloat('Z Angle'),
        wbByteArray('Unknown', 0)
      ]),
      wbFormIDCk(XCWT, 'Water', [WATR]),

      {--- Ownership ---}
      wbOwnership,
      wbFormIDCk(XILL, 'Lock List', [FLST, NPC_]),

      wbString(XWEM, 'Water Environment Map'),
      wbFormIDCk(XCCM, 'Sky/Weather from Region', [REGN]),
      wbFormIDCk(XCAS, 'Acoustic Space', [ASPC]),
      wbFormIDCk(XEZN, 'Encounter Zone', [ECZN]),
      wbFormIDCk(XCMO, 'Music Type', [MUSC]),
      wbFormIDCk(XCIM, 'Image Space', [IMGS])
    ], True, wbCellAddInfo, cpNormal, False, wbCELLAfterLoad)

  end else begin

    wbRecord(CELL, 'Cell', [
      wbEDID,
      wbFULL,
      {>>>
      Flags can be itU8, but CELL\DATA has a critical role in various wbImplementation.pas routines
      and replacing it with wbUnion generates error when setting for example persistent flag in REFR.
      So let it be always itU16
      <<<}
      wbInteger(DATA, 'Flags', itU16, wbFlags([
        {0x0001} 'Is Interior Cell',
        {0x0002} 'Has Water',
        {0x0004} 'Can''t Travel From Here',
        {0x0008} 'No LOD Water',
        {0x0010} 'Unknown 5',
        {0x0020} 'Public Area',
        {0x0040} 'Hand Changed',
        {0x0080} 'Show Sky',
        {0x0100} 'Use Sky Lighting'
      ]), cpNormal, True),
      wbStruct(XCLC, 'Grid', [
        wbInteger('X', itS32),
        wbInteger('Y', itS32),
        wbInteger('Force Hide Land', itU32, wbFlags([
          'Quad 1',
          'Quad 2',
          'Quad 3',
          'Quad 4'
        ], True))
      ], cpNormal, False, nil, 2),
      wbStruct(XCLL, 'Lighting', [
        wbStruct('Ambient Color', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        wbStruct('Directional Color', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        wbStruct('Fog Color Near', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        wbFloat('Fog Near'),
        wbFloat('Fog Far'),
        wbInteger('Directional Rotation XY', itS32),
        wbInteger('Directional Rotation Z', itS32),
        wbFloat('Directional Fade'),
        wbFloat('Fog Clip Distance'),
        wbFloat('Fog Power'),
        wbAmbientColors,
        wbStruct('Fog Color Far', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        wbFloat('Fog Max'),
        wbFloat('Light Fade Begin'),
        wbFloat('Light Fade End'),
        wbInteger('Inherits', itU32, wbFlags([
          {0x00000001}'Ambient Color',
          {0x00000002}'Directional Color',
          {0x00000004}'Fog Color',
          {0x00000008}'Fog Near',
          {0x00000010}'Fog Far',
          {0x00000020}'Directional Rotation',
          {0x00000040}'Directional Fade',
          {0x00000080}'Clip Distance',
          {0x00000100}'Fog Power',
          {0x00000200}'Fog Max',
          {0x00000400}'Light Fade Distances'
        ]))
      ], cpNormal, False, nil, 11),

      wbByteArray(TVDT, 'Unknown', 0, cpNormal),
      wbByteArray(MHDT, 'Max Height Data', 0, cpNormal),
//      wbArray(TVDT, 'Unknown', wbInteger('Unknown', itS32)),
//      wbStruct(MHDT, 'Max Height Data', [ // Rolled back temporarily due to issues while copying.
//         wbUnion('Unknown', wbMHDTDecider, [wbNull, wbInteger('Unknown', itU32)]), // First DWord is Endian swapped if the record size is 1028
//         wbArray('Unknown', wbInteger('Data', itS8))
//      ]),
      wbFormIDCk(LTMP, 'Lighting Template', [LGTM, NULL], False, cpNormal, True),
      wbByteArray(LNAM, 'Unknown', 0, cpIgnore), // leftover flags, they are now in XCLC

      {>>> XCLW sometimes has $FF7FFFFF and causes invalid floation point <<<}
      wbFloat(XCLW, 'Water Height'),
      //wbByteArray(XCLW, 'Water Height', 4),
      wbString(XNAM, 'Water Noise Texture'),
      wbArrayS(XCLR, 'Regions', wbFormIDCk('Region', [REGN])),
      wbFormIDCk(XLCN, 'Location', [LCTN]),
      wbByteArray(XWCN, 'Unknown', 0, cpIgnore), // leftover
      wbByteArray(XWCS, 'Unknown', 0, cpIgnore), // leftover
      wbStruct(XWCU, 'Water Velocity', [
        wbFloat('X Offset'),
        wbFloat('Y Offset'),
        wbFloat('Z Offset'),
        wbByteArray('Unknown', 4),
        wbFloat('X Angle'),
        wbFloat('Y Angle'),
        wbFloat('Z Angle'),
        wbByteArray('Unknown', 0)
      ]),
      wbFormIDCk(XCWT, 'Water', [WATR]),

      {--- Ownership ---}
      wbOwnership,
      wbFormIDCk(XILL, 'Lock List', [FLST, NPC_]),

      wbString(XWEM, 'Water Environment Map'),
      wbFormIDCk(XCCM, 'Sky/Weather from Region', [REGN]),
      wbFormIDCk(XCAS, 'Acoustic Space', [ASPC]),
      wbFormIDCk(XEZN, 'Encounter Zone', [ECZN]),
      wbFormIDCk(XCMO, 'Music Type', [MUSC]),
      wbFormIDCk(XCIM, 'Image Space', [IMGS])
    ], True, wbCellAddInfo, cpNormal, False, wbCELLAfterLoad);

  end;

  wbRecord(CLAS, 'Class', [
    wbEDID,
    wbFULLReq,
    wbDESCReq,
    wbICON,
    wbStruct(DATA, '', [
      wbByteArray('Unknown', 4),
      wbInteger('Teaches', itS8, wbEnum([
        'One Handed',
        'Two Handed',
        'Archery',
        'Block',
        'Smithing',
        'Heavy Armor',
        'Light Armor',
        'Pickpocket',
        'Lockpicking',
        'Sneak',
        'Alchemy',
        'Speech',
        'Alteration',
        'Conjuration',
        'Destruction',
        'Illusion',
        'Restoration',
        'Enchanting'
      ])),
      wbInteger('Maximum training level', itU8),
      wbArray('Skill Weights', wbInteger('Weight', itU8), [
        'One Handed',
        'Two Handed',
        'Archery',
        'Block',
        'Smithing',
        'Heavy Armor',
        'Light Armor',
        'Pickpocket',
        'Lockpicking',
        'Sneak',
        'Alchemy',
        'Speech',
        'Alteration',
        'Conjuration',
        'Destruction',
        'Illusion',
        'Restoration',
        'Enchanting'
      ]),
      wbFloat('Bleedout Default'),
      wbInteger('Voice Points', itU32),
      wbArray('Attribute Weights', wbInteger('Weight', itU8), [
        'Health',
        'Magicka',
        'Stamina',
        'Unknown'
      ])
    ], cpNormal, True)
  ]);

  wbRecord(CLMT, 'Climate', [
    wbEDID,
    wbArrayS(WLST, 'Weather Types', wbStructSK([0], 'Weather Type', [
      wbFormIDCk('Weather', [WTHR, NULL]),
      wbInteger('Chance', itS32),
      wbFormIDCk('Global', [GLOB, NULL])
    ])),
    wbString(FNAM, 'Sun Texture'),
    wbString(GNAM, 'Sun Glare Texture'),
    wbMODL,
    wbStruct(TNAM, 'Timing', [
      wbStruct('Sunrise', [
        wbInteger('Begin', itU8, wbClmtTime),
        wbInteger('End', itU8, wbClmtTime)
      ]),
      wbStruct('Sunset', [
        wbInteger('Begin', itU8, wbClmtTime),
        wbInteger('End', itU8, wbClmtTime)
      ]),
      wbInteger('Volatility', itU8),
      wbInteger('Moons / Phase Length', itU8, wbClmtMoonsPhaseLength)
    ], cpNormal, True)
  ]);

  wbRecord(SPGD, 'Shader Particle Geometry', [
    wbEDID,
    wbStruct(DATA, 'Data', [
      wbFloat('Gravity Velocity'),
      wbFloat('Rotation Velocity'),
      wbFloat('Particle Size X'),
      wbFloat('Particle Size Y'),
      wbFloat('Center Offset Min'),
      wbFloat('Center Offset Max'),
      wbFloat('Initial Rotation Range'),
      wbInteger('# of Subtextures X', itU32),
      wbInteger('# of Subtextures Y', itU32),
      wbInteger('Type', itU32, wbEnum([
        'Rain',
        'Snow'
      ])),
      wbInteger('Box Size', itU32),
      wbFloat('Particle Density')
    ], cpNormal, True, nil, 10),
    wbString(ICON, 'Particle Texture')
  ]);

  wbRecord(RFCT, 'Visual Effect', [
    wbEDID,
    wbStruct(DATA, 'Effect Data', [
			wbFormIDCK('Effect Art', [ARTO, NULL]),
      wbFormIDCK('Shader', [EFSH, NULL]),
      wbInteger('Flags', itU32, wbFlags([
        {0x00000001}'Rotate to Face Target',
        {0x00000002}'Attach to Camera',
        {0x00000004}'Inherit Rotation'
      ]))
    ], cpNormal, True)
  ]);

  wbRecord(CONT, 'Container', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbCOCT,
    wbCNTOs,
    wbDEST,
    wbStruct(DATA, '', [
      wbInteger('Flags', itU8, wbFlags([
        {0x01} 'Allow Sounds When Animation',
        {0x02} 'Respawns',
        {0x04} 'Show Owner'
      ])),
      wbFloat('Weight')
    ], cpNormal, True),
    wbFormIDCk(SNAM, 'Sound - Open', [SOUN, SNDR]),
    wbFormIDCk(QNAM, 'Sound - Close', [SOUN, SNDR])
  ], True, nil, cpNormal, False, nil, wbContainerAfterSet);

  wbCSDT := wbRStructSK([0], 'Sound Type', [
    wbInteger(CSDT, 'Type', itU32,wbEnum([
      {00} 'Left Foot',
      {01} 'Right Foot',
      {02} 'Left Back Foot',
      {03} 'Right Back Foot',
      {04} 'Idle',
      {05} 'Aware',
      {06} 'Attack',
      {07} 'Hit',
      {08} 'Death',
      {09} 'Weapon',
      {10} 'Movement Loop',
      {11} 'Conscious Loop',
      {12} 'Auxiliary 1',
      {13} 'Auxiliary 2',
      {14} 'Auxiliary 3',
      {15} 'Auxiliary 4',
      {16} 'Auxiliary 5',
      {17} 'Auxiliary 6',
      {18} 'Auxiliary 7',
      {19} 'Auxiliary 8',
      {19} 'Auxiliary 8',
      {20} 'Jump',
      {21} 'PlayRandom/Loop'
    ])),
    wbRArrayS('Sounds', wbRStructSK([0], 'Sound', [
      wbFormIDCk(CSDI, 'Sound', [SOUN, SNDR, NULL], False, cpNormal, True),
      wbInteger(CSDC, 'Sound Chance', itU8, nil, cpNormal, True)
    ], []), cpNormal, True)
  ], []);

  wbCSDTs := wbRArrayS('Sound Types', wbCSDT, cpNormal, False, nil, nil, nil{wbActorTemplateUseModelAnimation});

  wbAIDT :=
    wbStruct(AIDT, 'AI Data', [
     {00} wbInteger('Aggression', itU8, wbEnum([
            'Unaggressive',
            'Aggressive',
            'Very Aggressive',
            'Frenzied'
          ])),
     {01} wbInteger('Confidence', itU8, wbEnum([
            'Cowardly',
            'Cautious',
            'Average',
            'Brave',
            'Foolhardy'
          ])),
     {02} wbInteger('Energy Level', itU8),
     {03} wbInteger('Responsibility', itU8, wbEnum([
            'Any crime',
            'Violence against enemies',
            'Property crime only',
            'No crime'
          ])),
     {04} wbInteger('Mood', itU8, wbEnum([
            'Neutral',
            'Angry',
            'Fear',
            'Happy',
            'Sad',
            'Surprised',
            'Puzzled',
            'Disgusted'
          ])),
          wbInteger('Assistance', itU8, wbEnum([
            'Helps Nobody',
            'Helps Allies',
            'Helps Friends and Allies'
          ])),
          wbStruct('Aggro', [
            wbInteger('Aggro Radius Behavior', itU8, wbEnum(['False', 'True'])),
            wbInteger('Unknown', itU8),
            wbInteger('Warn', itU32),
            wbInteger('Warn/Attack', itU32),
            wbInteger('Attack', itU32)
          ])
    ], cpNormal, True, nil{wbActorTemplateUseAIData});

  wbAttackAnimationEnum := wbEnum([], [
     26, 'AttackLeft',
     32, 'AttackRight',
     38, 'Attack3',
     44, 'Attack4',
     50, 'Attack5',
     56, 'Attack6',
     62, 'Attack7',
     68, 'Attack8',
     74, 'AttackLoop',
     80, 'AttackSpin',
     86, 'AttackSpin2',
     97, 'PlaceMine',
    103, 'PlaceMine2',
    109, 'AttackThrow',
    115, 'AttackThrow2',
    121, 'AttackThrow3',
    127, 'AttackThrow4',
    133, 'AttackThrow5',
    255, ' DEFAULT'
  ]);

  wbRecord(CSTY, 'Combat Style', [
    wbEDID,
    wbStruct(CSGD, 'General', [
      wbFloat('Offensive Mult'),
      wbFloat('Defensive Mult'),
      wbFloat('Group Offensive Mult'),
      // keep as separate floats, some elements can be omitted
      wbFloat('Equipment Score Mult - Melee'),
      wbFloat('Equipment Score Mult - Magic'),
      wbFloat('Equipment Score Mult - Ranged'),
      wbFloat('Equipment Score Mult - Shout'),
      wbFloat('Equipment Score Mult - Unarmed'),
      wbFloat('Equipment Score Mult - Staff'),
      wbFloat('Avoid Threat Chance')
    ], cpNormal, True, nil, 0),
    wbUnknown(CSMD, cpIgnore),
    wbStruct(CSME, 'Melee', [
      wbFloat('Attack Staggered Mult'),
      wbFloat('Power Attack Staggered Mult'),
      wbFloat('Power Attack Blocking Mult'),
      wbFloat('Bash Mult'),
      wbFloat('Bash Recoil Mult'),
      wbFloat('Bash Attack Mult'),
      wbFloat('Bash Power Attack Mult'),
      wbFloat('Special Attack Mult')
    ], cpNormal, False, nil, 0),
    wbStruct(CSCR, 'Close Range', [
      wbFloat('Circle Mult'),
      wbFloat('Fallback Mult'),
      wbFloat('Flank Distance'),
      wbFloat('Stalk Time')
    ], cpNormal, False, nil, 0),
    wbStruct(CSLR, 'Long Range', [
      wbFloat('Strafe Mult')
    ], cpNormal, False),
    wbStruct(CSFL, 'Flight', [
      wbFloat('Hover Chance'),
      wbFloat('Dive Bomb Chance'),
      wbFloat('Ground Attack Chance'),
      wbFloat('Hover Time'),
      wbFloat('Ground Attack Time'),
      wbFloat('Perch Attack Chance'),
      wbFloat('Perch Attack Time'),
      wbFloat('Flying Attack Chance')
    ], cpNormal, False, nil, 0),
    wbInteger(DATA, 'Flags', itU32, wbFlags([
      {0x01} 'Dueling',
      {0x02} 'Flanking',
      {0x04} 'Allow Dual Wielding'
    ]), cpNormal, False)
  ]);
end;

procedure DefineTES5d;
begin
  wbRecord(DIAL, 'Dialog Topic', [
    wbEDID,
    wbFULL,
    wbFloat(PNAM, 'Priority', cpNormal, True, 1, -1, nil, nil, 50.0),
    wbFormIDCk(BNAM, 'Branch', [DLBR, NULL]),
    wbFormIDCk(QNAM, 'Quest', [QUST, NULL], False, cpNormal, False),
    wbStruct(DATA, 'Data', [
      // this should not be named Flags since TwbFile.BuildReachable
      // expects Top-Level flag here from FNV
      wbInteger('Topic Flags', itU8, wbFlags([
        'Do All Before Repeating'
      ]), cpNormal, True),
      wbInteger('Category', itU8, wbEnum([
        {0} 'Topic',
        {1} 'Favor', // only in DA14 quest topics
        {2} 'Scene',
        {3} 'Combat',
        {4} 'Favors',
        {5} 'Detection',
        {6} 'Service',
        {7} 'Miscellaneous'
      ])),
      wbInteger('Subtype', itU16, wbEnum([], [
         0, 'Custom',
         1, 'ForceGreet',
         2, 'Rumors',
         3, 'Custom?',
         4, 'Intimidate',
         5, 'Flatter',
         6, 'Bribe',
         7, 'Ask Gift',
         8, 'Gift',
         9, 'Ask Favor',
        10, 'Favor',
        11, 'Show Relationships',
        12, 'Folow',
        13, 'Reject',
        14, 'Scene',
        15, 'Show',
        16, 'Agree',
        17, 'Refuse',
        18, 'ExitFavorState',
        19, 'MoralRefusal',
        20, 'FlyingMountLand',
        21, 'FlyingMountCancelLand',
        22, 'FlyingMountAcceptTarget',
        23, 'FlyingMountRejectTarget',
        24, 'FlyingMountNoTarget',
        25, 'FlyingMountDestinationReached',
        26, 'Attack',
        27, 'PowerAttack',
        28, 'Bash',
        29, 'Hit',
        30, 'Flee',
        31, 'Bleedout',
        32, 'AvoidThreat',
        33, 'Death',
        34, 'GroupStrategy',
        35, 'Block',
        36, 'Taunt',
        37, 'AllyKilled',
        38, 'Steal',
        39, 'Yield',
        40, 'AcceptYield',
        41, 'PickpocketCombat',
        42, 'Assault',
        43, 'Murder',
        44, 'AssaultNC',
        45, 'MurderNC',
        46, 'PickpocketNC',
        47, 'StealFromNC',
        48, 'TrespassAgainstNC',
        49, 'Trespass',
        50, 'WereTransformCrime',
        51, 'VoicePowerStartShort',
        52, 'VoicePowerStartLong',
        53, 'VoicePowerEndShort',
        54, 'VoicePowerEndLong',
        55, 'AlertIdle',
        56, 'LostIdle',
        57, 'NormalToAlert',
        58, 'AlertToCombat',
        59, 'NormalToCombat',
        60, 'AlertToNormal',
        61, 'CombatToNormal',
        62, 'CombatToLost',
        63, 'LostToNormal',
        64, 'LostToCombat',
        65, 'DetectFriendDie',
        66, 'ServiceRefusal',
        67, 'Repair',
        68, 'Travel',
        69, 'Training',
        70, 'BarterExit',
        71, 'RepairExit',
        72, 'Recharge',
        73, 'RechargeExit',
        74, 'TrainingExit',
        75, 'ObserveCombat',
        76, 'NoticeCorpse',
        77, 'TimeToGo',
        78, 'GoodBye',
        79, 'Hello',
        80, 'SwingMeleeWeapon',
        81, 'ShootBow',
        82, 'ZKeyObject',
        83, 'Jump',
        84, 'KnockOverObject',
        85, 'DestroyObject',
        86, 'StandonFurniture',
        87, 'LockedObject',
        88, 'PickpocketTopic',
        89, 'PursueIdleTopic',
        90, 'SharedInfo',
        91, 'PlayerCastProjectileSpell',
        92, 'PlayerCastSelfSpell',
        93, 'PlayerShout',
        94, 'Idle',
        95, 'EnterSprintBreath',
        96, 'EnterBowZoomBreath',
        97, 'ExitBowZoomBreath',
        98, 'ActorCollidewithActor',
        99, 'PlayerinIronSights',
       100, 'OutofBreath',
       101, 'CombatGrunt',
       102, 'LeaveWaterBreath'
      ]))
    ]),
    wbString(SNAM, 'Subtype Name', 4),
    wbInteger(TIFC, 'Info Count', itU32, nil, cpBenign)
  ]);

  wbRecord(DOOR, 'Door', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbDEST,
    wbFormIDCk(SNAM, 'Sound - Open', [SOUN, SNDR]),
    wbFormIDCk(ANAM, 'Sound - Close', [SOUN, SNDR]),
    wbFormIDCk(BNAM, 'Sound - Loop', [SOUN, SNDR]),
    wbInteger(FNAM, 'Flags', itU8, wbFlags([
      '',
      'Automatic',
      'Hidden',
      'Minimal Use',
      'Sliding',
      'Do Not Open in Combat Search'
    ]), cpNormal, True)
  ]);

  wbBlendModeEnum := wbEnum([
    '',
    'Zero',
    'One',
    'Source Color',
    'Source Inverse Color',
    'Source Alpha',
    'Source Inverted Alpha',
    'Dest Alpha',
    'Dest Inverted Alpha',
    'Dest Color',
    'Dest Inverse Color',
    'Source Alpha SAT'
  ]);

  wbBlendOpEnum := wbEnum([
    '',
    'Add',
    'Subtract',
    'Reverse Subtract',
    'Minimum',
    'Maximum'
  ]);

  wbZTestFuncEnum := wbEnum([
    '',
    '',
    '',
    'Equal To',
    'Normal',
    'Greater Than',
    '',
    'Greater Than or Equal To',
    'Always Show'
  ]);

  wbRecord(EFSH, 'Effect Shader', [
    wbEDID,
    wbString(ICON, 'Fill Texture'),
    wbString(ICO2, 'Particle Shader Texture'),
    wbString(NAM7, 'Holes Texture'),
    wbString(NAM8, 'Membrane Palette Texture'),
    wbString(NAM9, 'Particle Palette Texture'),
    wbStruct(DATA, '', [
      wbByteArray('Unknown', 4),
      wbInteger('Membrane Shader - Source Blend Mode', itU32, wbBlendModeEnum),
      wbInteger('Membrane Shader - Blend Operation', itU32, wbBlendOpEnum),
      wbInteger('Membrane Shader - Z Test Function', itU32, wbZTestFuncEnum),
      wbStruct('Fill/Texture Effect - Color Key 1', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbFloat('Fill/Texture Effect - Alpha Fade In Time'),
      wbFloat('Fill/Texture Effect - Full Alpha Time'),
      wbFloat('Fill/Texture Effect - Alpha Fade Out Time'),
      wbFloat('Fill/Texture Effect - Presistent Alpha Ratio'),
      wbFloat('Fill/Texture Effect - Alpha Pulse Amplitude'),
      wbFloat('Fill/Texture Effect - Alpha Pulse Frequency'),
      wbFloat('Fill/Texture Effect - Texture Animation Speed (U)'),
      wbFloat('Fill/Texture Effect - Texture Animation Speed (V)'),
      wbFloat('Edge Effect - Fall Off'),
      wbStruct('Edge Effect - Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbFloat('Edge Effect - Alpha Fade In Time'),
      wbFloat('Edge Effect - Full Alpha Time'),
      wbFloat('Edge Effect - Alpha Fade Out Time'),
      wbFloat('Edge Effect - Persistent Alpha Ratio'),
      wbFloat('Edge Effect - Alpha Pulse Amplitude'),
      wbFloat('Edge Effect - Alpha Pulse Frequency'),
      wbFloat('Fill/Texture Effect - Full Alpha Ratio'),
      wbFloat('Edge Effect - Full Alpha Ratio'),
      wbInteger('Membrane Shader - Dest Blend Mode', itU32, wbBlendModeEnum),
      wbInteger('Particle Shader - Source Blend Mode', itU32, wbBlendModeEnum),
      wbInteger('Particle Shader - Blend Operation', itU32, wbBlendOpEnum),
      wbInteger('Particle Shader - Z Test Function', itU32, wbZTestFuncEnum),
      wbInteger('Particle Shader - Dest Blend Mode', itU32, wbBlendModeEnum),
      wbFloat('Particle Shader - Particle Birth Ramp Up Time'),
      wbFloat('Particle Shader - Full Particle Birth Time'),
      wbFloat('Particle Shader - Particle Birth Ramp Down Time'),
      wbFloat('Particle Shader - Full Particle Birth Ratio'),
      wbFloat('Particle Shader - Persistant Particle Count'),
      wbFloat('Particle Shader - Particle Lifetime'),
      wbFloat('Particle Shader - Particle Lifetime +/-'),
      wbFloat('Particle Shader - Initial Speed Along Normal'),
      wbFloat('Particle Shader - Acceleration Along Normal'),
      wbFloat('Particle Shader - Initial Velocity #1'),
      wbFloat('Particle Shader - Initial Velocity #2'),
      wbFloat('Particle Shader - Initial Velocity #3'),
      wbFloat('Particle Shader - Acceleration #1'),
      wbFloat('Particle Shader - Acceleration #2'),
      wbFloat('Particle Shader - Acceleration #3'),
      wbFloat('Particle Shader - Scale Key 1'),
      wbFloat('Particle Shader - Scale Key 2'),
      wbFloat('Particle Shader - Scale Key 1 Time'),
      wbFloat('Particle Shader - Scale Key 2 Time'),
      wbStruct('Color Key 1 - Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Color Key 2 - Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Color Key 3 - Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbFloat('Color Key 1 - Color Alpha'),
      wbFloat('Color Key 2 - Color Alpha'),
      wbFloat('Color Key 3 - Color Alpha'),
      wbFloat('Color Key 1 - Color Key Time'),
      wbFloat('Color Key 2 - Color Key Time'),
      wbFloat('Color Key 3 - Color Key Time'),
      wbFloat('Particle Shader - Initial Speed Along Normal +/-'),
      wbFloat('Particle Shader - Initial Rotation (deg)'),
      wbFloat('Particle Shader - Initial Rotation (deg) +/-'),
      wbFloat('Particle Shader - Rotation Speed (deg/sec)'),
      wbFloat('Particle Shader - Rotation Speed (deg/sec) +/-'),
      wbFormIDCk('Addon Models', [DEBR, NULL]),
      wbFloat('Holes - Start Time'),
      wbFloat('Holes - End Time'),
      wbFloat('Holes - Start Val'),
      wbFloat('Holes - End Val'),
      wbFloat('Edge Width (alpha units)'),
      wbStruct('Edge Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbFloat('Explosion Wind Speed'),
      wbInteger('Texture Count U', itU32),
      wbInteger('Texture Count V', itU32),
      wbFloat('Addon Models - Fade In Time'),
      wbFloat('Addon Models - Fade Out Time'),
      wbFloat('Addon Models - Scale Start'),
      wbFloat('Addon Models - Scale End'),
      wbFloat('Addon Models - Scale In Time'),
      wbFloat('Addon Models - Scale Out Time'),
      wbFormIDCk('Ambient Sound', [SNDR, SOUN, NULL]),
      wbStruct('Fill/Texture Effect - Color Key 2', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Fill/Texture Effect - Color Key 3', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Fill/Texture Effect - Color Key Scale/Time', [
        wbFloat('Color Key 1 - Scale'),
        wbFloat('Color Key 2 - Scale'),
        wbFloat('Color Key 3 - Scale'),
        wbFloat('Color Key 1 - Time'),
        wbFloat('Color Key 2 - Time'),
        wbFloat('Color Key 3 - Time')
      ]),
      wbFloat('Color Scale'),
      wbFloat('Birth Position Offset'),
      wbFloat('Birth Position Offset Range +/-'),
      wbStruct('Particle Shader Animated', [
        wbInteger('Start Frame', itU32),
        wbInteger('Start Frame Variation', itU32),
        wbInteger('End Frame', itU32),
        wbInteger('Loop Start Frame', itU32),
        wbInteger('Loop Start Variation', itU32),
        wbInteger('Frame Count', itU32),
        wbInteger('Frame Count Variation', itU32)
      ]),
      wbInteger('Flags', itU32, wbFlags([
        'No Membrane Shader',
        'Membrane Grayscale Color',
        'Membrane Grayscale Alpha',
        'No Particle Shader',
        'Edge Effect Inverse',
        'Affect Skin Only',
        'Ignore Alpha',
        'Project UVs',
        'Ignore Base Geometry Alpha',
        'Lighting',
        'No Weapons',
        'Unknown 11',
        'Unknown 12',
        'Unknown 13',
        'Unknown 14',
        'Particle Animated',
        'Particle Grayscale Color',
        'Particle Grayscale Alpha',
        'Unknown 18',
        'Unknown 19',
        'Unknown 20',
        'Unknown 21',
        'Unknown 22',
        'Unknown 23',
        'Use Blood Geometry'
      ])),
      wbFloat('Fill/Texture Effect - Texture Scale (U)'),
      wbFloat('Fill/Texture Effect - Texture Scale (V)'),
      wbInteger('Scene Graph Emit Depth Limit (unused)', itU32)
    ], cpNormal, True, nil, 0)
  ], False, nil, cpNormal, False, nil {wbEFSHAfterLoad});

  wbRecord(ENCH, 'Object Effect', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbStruct(ENIT, 'Effect Data', [
      wbInteger('Enchantment Cost', itS32),
      wbInteger('Flags', itU32, wbFlags([
        'No Auto-Calc',
        '',
        'Extend Duration On Recast'
      ])),
      wbInteger('Cast Type', itU32, wbCastEnum),
      wbInteger('Enchantment Amount', itS32),
      wbInteger('Target Type', itU32, wbTargetEnum),
      wbInteger('Enchant Type', itU32, wbEnum([], [
        $06, 'Enchantment',
        $0C, 'Staff Enchantment'
      ])),
      wbFloat('Charge Time'),
      wbFormIDCk('Base Enchantment', [ENCH, NULL]),
      wbFormIDCk('Worn Restrictions', [FLST, NULL])
    ], cpNormal, True, nil, 8),
    wbEffectsReq
  ]);

  wbRecord(EYES, 'Eyes', [
    wbEDID,
    wbFULLReq,
    wbString(ICON, 'Texture', 0, cpNormal, True),
    wbInteger(DATA, 'Flags', itU8, wbFlags([
      {0x01}'Playable',
      {0x02}'Not Male',
      {0x04}'Not Female',
      {0x08}'Unknown 4',
      {0x10}'Unknown 5',
      {0x20}'Unknown 6',
      {0x40}'Unknown 7',
      {0x80}'Unknown 8'
    ]), cpNormal, True)
  ]);

  wbRecord(FACT, 'Faction', [
    wbEDID,
    wbFULL,
    wbRArrayS('Relations',
      wbStructSK(XNAM, [0], 'Relation', [
        wbFormIDCkNoReach('Faction', [FACT, RACE]),
        wbInteger('Modifier', itS32),
        wbInteger('Group Combat Reaction', itU32, wbEnum([
        {0x00000001}'Neutral',
        {0x00000002}'Enemy',
        {0x00000004}'Ally',
        {0x00000008}'Friend'
      ]))
    ])),
    wbStruct(DATA, 'Flags', [
      wbInteger('Flags', itU32, wbFlags([
        {0x00000001}'Hidden From NPC',
        {0x00000002}'Special Combat',
        {0x00000004}'Unknown 3',
        {0x00000008}'Unknown 4',
        {0x00000010}'Unknown 5',
        {0x00000020}'Unknown 6',
        {0x00000040}'Track Crime',
        {0x00000080}'Ignore Crimes: Murder',
        {0x00000100}'Ignore Crimes: Assault',
        {0x00000200}'Ignore Crimes: Stealing',
        {0x00000400}'Ignore Crimes: Trespass',
        {0x00000800}'Do Not Report Crimes Against Members',
        {0x00001000}'Crime Gold - Use Defaults',
        {0x00002000}'Ignore Crimes: Pickpocket',
        {0x00004000}'Vendor',
        {0x00008000}'Can Be Owner',
        {0x00010000}'Ignore Crimes: Werewolf',
        {0x00020000}'Unknown 18',
        {0x00040000}'Unknown 19',
        {0x00080000}'Unknown 20',
        {0x00100000}'Unknown 21',
        {0x00200000}'Unknown 22',
        {0x00400000}'Unknown 23',
        {0x00800000}'Unknown 24',
        {0x01000000}'Unknown 25',
        {0x02000000}'Unknown 26',
        {0x04000000}'Unknown 27',
        {0x08000000}'Unknown 28',
        {0x10000000}'Unknown 29',
        {0x20000000}'Unknown 30',
        {0x40000000}'Unknown 31',
        {0x80000000}'Unknown 32'
      ]))
    ], cpNormal, True, nil, 1),
    wbFormIDCk(JAIL, 'Exterior Jail Marker', [REFR]),
    wbFormIDCk(WAIT, 'Follower Wait Marker', [REFR]),
    wbFormIDCk(STOL, 'Stolen Goods Container', [REFR]),
    wbFormIDCk(PLCN, 'Player Inventory Container', [REFR]),
    wbFormIDCk(CRGR, 'Shared Crime Faction List', [FLST]),
    wbFormIDCk(JOUT, 'Jail Outfit', [OTFT]),
    wbStruct(CRVA, 'Crime Values', [
      {01} wbInteger('Arrest', itU8, wbEnum(['False', 'True'])),
      {02} wbInteger('Attack On Sight', itU8, wbEnum(['False', 'True'])),
      {02} wbInteger('Murder', itU16),
      {02} wbInteger('Assault', itU16),
      {02} wbInteger('Trespass', itU16),
      {02} wbInteger('Pickpocket', itU16),
      {02} wbInteger('Unknown', itU16),
      {02} wbFloat('Steal Multiplier'),
      {02} wbInteger('Escape', itU16),
      {02} wbInteger('Werewolf', itU16)
      ], cpNormal, False, nil, 7),
    wbRStructsSK('Ranks', 'Rank', [0], [
      wbInteger(RNAM, 'Rank#', itU32),
      wbLString(MNAM, 'Male Title'),
      wbLString(FNAM, 'Female Title'),
      wbString(INAM, 'Insignia Unused')
    ], []),
    wbFormIDCk(VEND, 'Vendor Buy/Sell List', [FLST]),
    wbFormIDCk(VENC, 'Merchant Container', [REFR]),
    wbStruct(VENV, 'Vendor Values', [
      {01} wbInteger('Start Hour', itU16),
      {02} wbInteger('End Hour', itU16),
      {02} wbInteger('Radius', itU16),
      {02} wbByteArray('Unknown 1', 2),
           wbInteger('Only Buys Stolen Items', itU8, wbEnum(['False', 'True'])),
           wbInteger('Not/Sell Buy', itU8, wbEnum(['False', 'True'])),
      {02} wbByteArray('Unknown 2', 2)
      ]),
    wbPLVD,
    wbCITC,
    wbCTDAsCount
  ], False, nil, cpNormal, False, nil {wbFACTAfterLoad}, wbConditionsAfterSet);

  wbRecord(FURN, 'Furniture', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbDEST,
    wbKSIZ,
    wbKWDAs,
    wbUnknown(PNAM),
    wbInteger(FNAM, 'Flags', itU16, wbFlags([
      {0x0001} 'Unknown 0',
      {0x0002} 'Ignored By Sandbox'
    ])),
    wbFormIDCk(KNAM, 'Interaction Keyword', [KYWD, NULL]),
    wbInteger(MNAM, 'Active Markers / Flags', itU32, wbFlags([
      {0x00000001} 'Sit 0',
      {0x00000002} 'Sit 1',
      {0x00000004} 'Sit 2',
      {0x00000008} 'Sit 3',
      {0x00000010} 'Sit 4',
      {0x00000020} 'Sit 5',
      {0x00000040} 'Sit 6',
      {0x00000080} 'Sit 7',
      {0x00000100} 'Sit 8',
      {0x00000200} 'Sit 9',
      {0x00000400} 'Sit 10',
      {0x00000800} 'Sit 11',
      {0x00001000} 'Sit 12',
      {0x00002000} 'Sit 13',
      {0x00004000} 'Sit 14',
      {0x00008000} 'Sit 15',
      {0x00010000} 'Sit 16',
      {0x00020000} 'Sit 17',
      {0x00040000} 'Sit 18',
      {0x00080000} 'Sit 19',
      {0x00100000} 'Sit 20',
      {0x00200000} 'Sit 21',
      {0x00400000} 'Sit 22',
      {0x00800000} 'Sit 23',
      {0x01000000} 'Unknown 25',
      {0x02000000} 'Disables Activation',
      {0x04000000} 'Is Perch',
      {0x08000000} 'Must Exit to Talk',
      {0x10000000} 'Unknown 29',
      {0x20000000} 'Unknown 30',
      {0x40000000} 'Unknown 31',
      {0x80000000} 'Unknown 32'
    ])),
    wbStruct(WBDT, 'Workbench Data', [
      wbInteger('Bench Type', itU8, wbEnum([
        {0} 'None',
        {1} 'Create object',
        {2} 'Smithing Weapon',
        {3} 'Enchanting',
        {4} 'Enchanting Experiment',
        {5} 'Alchemy',
        {6} 'Alchemy Experiment',
        {7} 'Smithing Armor'
      ])),
      wbInteger('Uses Skill', itS8, wbSkillEnum)
    ]),
    wbFormIDCk(NAM1, 'Associated Spell', [SPEL]),
    wbRArray('Markers', wbRStruct('Marker', [
      wbInteger(ENAM, 'Marker Index', itU32),
      wbStruct(NAM0, 'Disabled Entry Points', [
        wbByteArray('Unknown', 2),
        wbInteger('Disabled Points', itU16, wbFurnitureEntryTypeFlags)
      ]),
      wbFormIDCk(FNMK, 'Marker Keyword', [KYWD, NULL])
    ], [])),
    wbRArray('Marker Entry Points', wbStruct(FNPR, 'Marker', [
      wbInteger('Type', itU16, wbFurnitureAnimTypeEnum),
      wbInteger('Entry Points', itU16, wbFurnitureEntryTypeFlags)
    ])),
    wbString(XMRK, 'Model Filename')
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

//----------------------------------------------------------------------------
// For expansion to use wbGLOBUnionDecider to display Short, Long, Float
// correctly without making a signed float by default
//----------------------------------------------------------------------------
  wbRecord(GLOB, 'Global', [
    wbEDID,
    wbInteger(FNAM, 'Type', itU8, wbGLOBFNAM, nil, cpNormal, True),
    wbFloat(FLTV, 'Value', cpNormal, True)
  ]);

  wbRecord(GMST, 'Game Setting', [
    wbString(EDID, 'Editor ID', 0, cpCritical, True, nil, wbGMSTEDIDAfterSet),
    wbUnion(DATA, 'Value', wbGMSTUnionDecider, [
      wbLString('Name'),
      wbInteger('Int', itS32),
      wbFloat('Float'),
      wbInteger('Bool', itU32, wbEnum(['False', 'True']))
    ], cpNormal, True)
  ]);

  wbRecord(KYWD, 'Keyword', [
    wbEDID,
    wbCNAM
  ]);
end;

procedure DefineTES5e;
begin
  wbRecord(LCRT, 'Location Reference Type', [
    wbEDID,
    wbCNAM
  ]);

  wbRecord(AACT, 'Action', [
    wbEDID,
    wbCNAM
  ]);

  wbRecord(TXST, 'Texture Set', [
    wbEDID,
    wbOBNDReq,
    wbRStruct('Textures (RGB/A)', [
      wbString(TX00,'Difuse'),
      wbString(TX01,'Normal/Gloss'),
      wbString(TX02,'Environment Mask/Subsurface Tint'),
      wbString(TX03,'Glow/Detail Map'),
      wbString(TX04,'Height'),
      wbString(TX05,'Environment'),
      wbString(TX06,'Multilayer'),
      wbString(TX07,'Backlight Mask/Specular')
    ], []),
    wbDODT,
    wbInteger(DNAM, 'Flags', itU16, wbFlags([
      {0x0001}'No Specular Map',
      {0x0002}'Facegen Textures',
      {0x0004}'Has Model Space Normal Map'
    ]), cpNormal, False)
  ]);

  wbRecord(HDPT, 'Head Part', [
    wbEDID,
    wbFULL,
    wbMODL,
    wbInteger(DATA, 'Flags', itU8, wbFlags([
      {0x01} 'Playable',
      {0x02} 'Male',
      {0x04} 'Female',
      {0x10} 'Is Extra Part',
      {0x20} 'Use Solid Tint'
    ]), cpNormal, True),
    wbInteger(PNAM, 'Type', itU32, wbEnum([
      'Misc',
      'Face',
      'Eyes',
      'Hair',
      'Facial Hair',
      'Scar',
      'Eyebrows'
    ])),
    wbRArrayS('Extra Parts',
      wbFormIDCk(HNAM, 'Part', [HDPT])
    ),
    wbRStructs('Parts', 'Part', [
      wbInteger(NAM0, 'Part Type', itU32, wbEnum([
        'Race Morph',
        'Tri',
        'Chargen Morph'
      ])),
      wbString(NAM1, 'Filename', 0, cpTranslate, True)
    ], []),
    wbFormIDCk(TNAM, 'Texture Set', [TXST, NULL]),
    wbFormIDCk(CNAM, 'Color', [CLFM, NULL]),
    wbFormIDCk(RNAM, 'Valid Races', [FLST, NULL])
  ]);

  wbRecord(ASPC, 'Acoustic Space', [
    wbEDID,
    wbOBNDReq,
    wbFormIDCk(SNAM, 'Ambient Sound', [SNDR]),
    wbFormIDCk(RDAT, 'Use Sound from Region (Interiors Only)', [REGN]),
    wbFormIDCk(BNAM, 'Environment Type (reverb)', [REVB])
  ]);

  wbRecord(MSTT, 'Moveable Static', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbDEST,
    wbInteger(DATA, 'Flags', itU8, wbFlags([
      'On Local Map',
      'Unknown 2'
    ]), cpNormal, True),
    wbFormIDCk(SNAM, 'Looping Sound', [SNDR])
  ]);
end;

procedure DefineTES5f;
begin
  wbRecord(IDLM, 'Idle Marker', [
    wbEDID,
    wbOBNDReq,
    wbInteger(IDLF, 'Flags', itU8, wbFlags([
      'Run in Sequence',
      'Unknown 1',
      'Do Once',
      'Unknown 3',
      'Ignored by Sandbox'
    ]), cpNormal, False),
    wbInteger(IDLC, 'Animation Count', itU8, nil, cpBenign),
    wbFloat(IDLT, 'Idle Timer Setting', cpNormal, False),
    wbArray(IDLA, 'Animations', wbFormIDCk('Animation', [IDLE]), 0, nil, wbIDLAsAfterSet, cpNormal, False),
    wbMODL
  ], False, nil, cpNormal, False, nil, wbAnimationsAfterSet);

  wbRecord(PROJ, 'Projectile', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbDEST,
    wbStruct(DATA, 'Data', [
      {00} wbInteger('Flags', itU16, wbFlags([
        'Hitscan',
        'Explosion',
        'Alt. Trigger',
        'Muzzle Flash',
        '',
        'Can Be Disabled',
        'Can Be Picked Up',
        'Supersonic',
        'Pins Limbs',
        'Pass Through Small Transparent',
        'Disable Combat Aim Correction',
        'Rotation'
      ])),
      {02} wbInteger('Type', itU16, wbEnum([], [
        $01, 'Missile',
        $02, 'Lobber',
        $04, 'Beam',
        $08, 'Flame',
        $10, 'Cone',
        $20, 'Barrier',
        $40, 'Arrow'
      ])),
      {04} wbFloat('Gravity'),
      {08} wbFloat('Speed'),
      {12} wbFloat('Range'),
      {16} wbFormIDCk('Light', [LIGH, NULL]),
      {20} wbFormIDCk('Muzzle Flash - Light', [LIGH, NULL]),
      {24} wbFloat('Tracer Chance'),
      {28} wbFloat('Explosion - Alt. Trigger - Proximity'),
      {32} wbFloat('Explosion - Alt. Trigger - Timer'),
      {36} wbFormIDCk('Explosion', [EXPL, NULL]),
      {40} wbFormIDCk('Sound', [SOUN, SNDR, NULL]),
      {44} wbFloat('Muzzle Flash - Duration'),
      {48} wbFloat('Fade Duration'),
      {52} wbFloat('Impact Force'),
      {56} wbFormIDCk('Sound - Countdown', [SOUN, SNDR, NULL]),
      {60} wbFormIDCk('Sound - Disable', [SOUN, SNDR, NULL]),
      {64} wbFormIDCk('Default Weapon Source', [WEAP, NULL]),
      {68} wbFloat('Cone Spread'),
      {72} wbFloat('Collision Radius'),
      {76} wbFloat('Lifetime'),
      {80} wbFloat('Relaunch Interval'),
           wbFormIDCk('Decal Data', [TXST, NULL]),
           wbFormIDCk('Collision Layer', [COLL, NULL])
    ], cpNormal, True, nil, 22),
    wbRStructSK([0], 'Muzzle Flash Model', [
      wbString(NAM1, 'Model Filename'),
      wbByteArray(NAM2, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow)
    ], [], cpNormal, True),
    wbInteger(VNAM, 'Sound Level', itU32, wbSoundLevelEnum, cpNormal, True)
  ]);

  wbRecord(HAZD, 'Hazard', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbFormIDCk(MNAM, 'Image Space Modifier', [IMAD, NULL]),
    wbStruct(DATA, 'Data', [
      wbInteger('Limit', itU32),
      wbFloat('Radius'),
      wbFloat('Lifetime'),
      wbFloat('Image Space Radius'),
      wbFloat('Target Interval'),
      wbInteger('Flags', itU32, wbFlags([
        {0x01} 'Affects Player Only',
        {0x02} 'Inherit Duration from Spawn Spell',
        {0x04} 'Align to Impact Normal',
        {0x08} 'Inherit Radius from Spawn Spell',
        {0x10} 'Drop to Ground'
      ])),
      wbFormIDCk('Spell', [SPEL, NULL]),
      wbFormIDCk('Light', [LIGH, NULL]),
      wbFormIDCk('Impact Data Set', [IPDS, NULL]),
      wbFormIDCk('Sound', [SNDR, NULL])
    ])
  ]);

  wbSoulGemEnum := wbEnum([
    {0} 'None',
    {1} 'Petty',
    {2} 'Lesser',
    {3} 'Common',
    {4} 'Greater',
    {5} 'Grand'
  ]);

  wbRecord(SLGM, 'Soul Gem', [
    wbEDID,
    wbOBND,
    wbFULL,
    wbMODL,
    wbICON,
    wbDEST,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbKSIZ,
    wbKWDAs,
    wbStruct(DATA, '', [
      wbInteger('Value', itU32),
      wbFloat('Weight')
    ], cpNormal, True),
    wbInteger(SOUL, 'Contained Soul', itU8, wbSoulGemEnum, cpNormal, True),
    wbInteger(SLCP, 'Maximum Capacity', itU8, wbSoulGemEnum, cpNormal, True),
    wbFormIDCk(NAM0, 'Linked To', [SLGM])
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

  if wbSimpleRecords then begin

    wbRecord(NAVI, 'Navigation Mesh Info Map', [
      wbEDID,
      wbInteger(NVER, 'Version', itU32),
      wbRArray('Navigation Map Infos',
        wbStruct(NVMI, 'Navigation Map Info', [
          wbFormIDCk('Navigation Mesh', [NAVM]),
          wbByteArray('Data', 20),
          wbArray('Merged To', wbFormIDCk('Mesh', [NAVM]), -1),
          wbArray('Preferred Merges', wbFormIDCk('Mesh', [NAVM]), -1),
          wbArray('Linked Doors', wbStruct('Door', [
            wbByteArray('Unknown', 4),
            wbFormIDCk('Door Ref', [REFR])
          ]), -1),
          wbInteger('Is Island', itU8, wbEnum(['False', 'True'])),
          wbUnion('Island', wbNAVIIslandDataDecider, [
            wbNull,
            wbStruct('Island Data', [
              wbByteArray('Unknown', 24),
              wbArray('Triangles', wbByteArray('Triangle', 6), -1),
              wbArray('Vertices', wbByteArray('Vertex', 12), -1)
            ])
          ]),
          wbByteArray('Unknown', 4),
          wbFormIDCk('Parent Worldspace', [WRLD, NULL]),
          wbUnion('Parent', wbNAVIParentDecider, [
            wbStruct('Coordinates', [
              wbInteger('Grid Y', itS16),
              wbInteger('Grid X', itS16)
            ]),
            wbFormIDCk('Parent Cell', [CELL])
          ])
        ])
      ),
      wbStruct(NVPP, 'Preferred Pathing', [
        wbArray('NavMeshes', wbArray('Set', wbFormIDCk('', [NAVM]), -1), -1),
        wbArray('NavMesh Tree?', wbStruct('', [
          wbFormIDCk('NavMesh', [NAVM]),
          wbInteger('Index/Node', itU32)
        ]), -1)
      ]),
      //wbArray(NVSI, 'Unknown', wbFormIDCk('Navigation Mesh', [NAVM]))
      wbUnknown(NVSI)
    ]);

    wbRecord(NAVM, 'Navigation Mesh', [
      wbEDID,
      wbStruct(NVNM, 'Geometry', [
        wbByteArray('Unknown', 8),
        wbFormIDCk('Parent Worldspace', [WRLD, NULL]),
        wbUnion('Parent', wbNVNMParentDecider, [
          wbStruct('Coordinates', [
            wbInteger('Grid Y', itS16),
            wbInteger('Grid X', itS16)
          ]),
          wbFormIDCk('Parent Cell', [CELL])
        ]),
        wbArray('Vertices', wbByteArray('Vertex', 12), -1),
        wbArray('Triangles', wbByteArray('Triangle', 16), -1),
        wbArray('External Connections',
          wbStruct('Connection', [
            wbByteArray('Unknown', 4),
            wbFormIDCk('Mesh', [NAVM]),
            wbInteger('Triangle', itS16)
          ])
        , -1),
        wbArray('Door Triangles',
          wbStruct('Door Triangle', [
            wbInteger('Triangle before door', itS16),
            wbByteArray('Unknown', 4),
            wbFormIDCk('Door', [REFR])
          ])
        , -1),
        wbUnknown
      ]),
      wbUnknown(ONAM),
      wbUnknown(PNAM),
      wbUnknown(NNAM)
    ], False, wbNAVMAddInfo);

  end else begin

    wbRecord(NAVI, 'Navigation Mesh Info Map', [
      wbEDID,
      wbInteger(NVER, 'Version', itU32),
      wbRArray('Navigation Map Infos',
        wbStruct(NVMI, 'Navigation Map Info', [
          wbFormIDCk('Navigation Mesh', [NAVM]),
          wbByteArray('Unknown', 4),
          wbFloat('X'),
          wbFloat('Y'),
          wbFloat('Z'),
          wbInteger('Preferred Merges Flag', itU32),
          wbArray('Merged To', wbFormIDCk('Mesh', [NAVM]), -1),
          wbArray('Preferred Merges', wbFormIDCk('Mesh', [NAVM]), -1),
          wbArray('Linked Doors', wbStruct('Door', [
            wbByteArray('Unknown', 4),
            wbFormIDCk('Door Ref', [REFR])
          ]), -1),
          wbInteger('Is Island', itU8, wbEnum(['False', 'True'])),
          wbUnion('Island', wbNAVIIslandDataDecider, [
            wbNull,
            wbStruct('Island Data', [
              wbFloat('Min X'),
              wbFloat('Min Y'),
              wbFloat('Min Z'),
              wbFloat('Max X'),
              wbFloat('Max Y'),
              wbFloat('Max Z'),
              wbArray('Triangles',
                wbStruct('Triangle', [
                  wbArray('Vertices', wbInteger('Vertex', itS16), 3)
                ])
              , -1),
              wbArray('Vertices', wbStruct('Vertex', [
                wbFloat('X'),
                wbFloat('Y'),
                wbFloat('Z')
              ]), -1)
            ])
          ]),
          wbByteArray('Unknown', 4),
          wbFormIDCk('Parent Worldspace', [WRLD, NULL]),
          wbUnion('Parent', wbNAVIParentDecider, [
            wbStruct('Coordinates', [
              wbInteger('Grid Y', itS16),
              wbInteger('Grid X', itS16)
            ]),
            wbFormIDCk('Parent Cell', [CELL])
          ])
        ])
      ),
      wbStruct(NVPP, 'Preferred Pathing', [
        wbArray('NavMeshes', wbArray('Set', wbFormIDCk('', [NAVM]), -1), -1),
        wbArray('NavMesh Tree?', wbStruct('', [
          wbFormIDCk('NavMesh', [NAVM]),
          wbInteger('Index/Node', itU32)
        ]), -1)
      ]),
      wbArray(NVSI, 'Unknown', wbFormIDCk('Navigation Mesh', [NAVM]))
    ]);

    wbRecord(NAVM, 'Navigation Mesh', [
      wbEDID,
      wbStruct(NVNM, 'Geometry', [
        wbInteger('Unknown', itU32),
        wbByteArray('Unknown', 4),
        wbFormIDCk('Parent Worldspace', [WRLD, NULL]),
        wbUnion('Parent', wbNVNMParentDecider, [
          wbStruct('Coordinates', [
            wbInteger('Grid Y', itS16),
            wbInteger('Grid X', itS16)
          ]),
          wbFormIDCk('Parent Cell', [CELL])
        ]),
        wbArray('Vertices', wbStruct('Vertex', [
          wbFloat('X'),
          wbFloat('Y'),
          wbFloat('Z')
        ]), -1),
        wbArray('Triangles',
          wbStruct('Triangle', [
            wbInteger('Vertex 0', itS16),
            wbInteger('Vertex 1', itS16),
            wbInteger('Vertex 2', itS16),
            wbInteger('Edge 0-1', itS16),
            wbInteger('Edge 1-2', itS16),
            wbInteger('Edge 2-0', itS16),
            wbInteger('Flags', itU16, wbFlags([
              'Edge 0-1 link',
              'Edge 1-2 link',
              'Edge 2-0 link',
              'Unknown 4',
              'Unknown 5',
              'Unknown 6',
              'Preferred',
              'Unknown 8',
              'Unknown 9',
              'Water',
              'Door',
              'Found',
              'Unknown 13',
              'Unknown 14',
              'Unknown 15',
              'Unknown 16'
            ])),
            wbInteger('Cover Flags', itU16, wbFlags([
              'Edge 0-1 wall',
              'Edge 0-1 ledge cover',
              'Unknown 3',
              'Unknown 4',
              'Edge 0-1 left',
              'Edge 0-1 right',
              'Edge 1-2 wall',
              'Edge 1-2 ledge cover',
              'Unknown 9',
              'Unknown 10',
              'Edge 1-2 left',
              'Edge 1-2 right',
              'Unknown 13',
              'Unknown 14',
              'Unknown 15',
              'Unknown 16'
            ]))
            //wbInteger('Cover Edge #1 Flags', itU8),
            //wbInteger('Cover Edge #2 Flags', itU8)
          ])
        , -1),
        wbArray('Edge Links',
          wbStruct('Edge Link', [
            wbByteArray('Unknown', 4),
            wbFormIDCk('Mesh', [NAVM]),
            wbInteger('Triangle', itS16)
          ])
        , -1),
        wbArray('Door Triangles',
          wbStruct('Door Triangle', [
            wbInteger('Triangle before door', itS16),
            wbByteArray('Unknown', 4),
            wbFormIDCk('Door', [REFR])
          ])
        , -1),
        wbArray('Cover Triangles', wbInteger('Triangle', itS16), -1),
        wbInteger('NavMeshGrid Divisor', itU32),
        wbFloat('Max X Distance'),
        wbFloat('Max Y Distance'),
        wbFloat('Min X'),
        wbFloat('Min Y'),
        wbFloat('Min Z'),
        wbFloat('Max X'),
        wbFloat('Max Y'),
        wbFloat('Max Z'),
        wbArray('NavMeshGrid', wbArray('NavMeshGridCell', wbInteger('Triangle', itS16), -1))
      ]),
      wbUnknown(ONAM),
      wbUnknown(PNAM),
      wbUnknown(NNAM)
    ], False, wbNAVMAddInfo);

  end;

end;

procedure DefineTES5g;
begin

   wbRecord(EXPL, 'Explosion', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbEITM,
    wbFormIDCk(MNAM, 'Image Space Modifier', [IMAD]),
    wbStruct(DATA, 'Data', [  // Contradicted by FireStormExplosion02 [EXPL:000877F9]
      wbFormIDCk('Light', [LIGH, NULL]),
      wbFormIDCk('Sound 1', [SNDR, NULL]),
      wbFormIDCk('Sound 2', [SNDR, NULL]),
      wbFormIDCk('Impact Data Set', [IPDS, NULL]),
      wbFormID('Placed Object'),
      wbFormIDCk('Spawn Projectile', [PROJ, NULL]),
      wbFloat('Force'),
      wbFloat('Damage'),
      wbFloat('Radius'),
      wbFloat('IS Radius'),
      wbFloat('Vertical Offset Mult'),
      wbInteger('Flags', itU32, wbFlags([
        'Unknown 0',
        'Always Uses World Orientation',
        'Knock Down - Always',
        'Knock Down - By Formula',
        'Ignore LOS Check',
        'Push Explosion Source Ref Only',
        'Ignore Image Space Swap',
        'Chain',
        'No Controller Vibration'
      ])),
      wbInteger('Sound Level', itU32, wbSoundLevelEnum, cpNormal, True)
    ], cpNormal, True, nil, 10)
  ]);

  wbRecord(DEBR, 'Debris', [
    wbEDID,
    wbRStructs('Models', 'Model', [
      wbStruct(DATA, 'Data', [
        wbInteger('Percentage', itU8),
        wbString('Model Filename'),
        wbInteger('Flags', itU8, wbFlags([
          'Has Collission Data'
        ]))
      ], cpNormal, True),
      wbMODT
    ], [], cpNormal, True)
  ]);

  wbRecord(IMGS, 'Image Space', [
    wbEDID,
    wbUnknown(ENAM, cpIgnore),
    wbStruct(HNAM, 'HDR', [
      wbFloat('Eye Adapt Speed'),
      wbFloat('Bloom Blur Radius'),
      wbFloat('Bloom Threshold'),
      wbFloat('Bloom Scale'),
      wbFloat('Receive Bloom Threshold'),
      wbFloat('White'),
      wbFloat('Sunlight Scale'),
      wbFloat('Sky Scale'),
      wbFloat('Eye Adapt Strength')
    ]),
    wbStruct(CNAM, 'Cinematic', [
      wbFloat('Saturation'),
      wbFloat('Brightness'),
      wbFloat('Contrast')
    ]),
    wbStruct(TNAM, 'Tint', [
      wbFloat('Amount'),
      wbStruct('Color', [
        wbFloat('Red', cpNormal, True, 255, 0),
        wbFloat('Green', cpNormal, True, 255, 0),
        wbFloat('Blue', cpNormal, True, 255, 0)
      ])
    ]),
    wbStruct(DNAM, 'Depth of Field', [
      wbFloat('Strength'),
      wbFloat('Distance'),
      wbFloat('Range'),
      wbByteArray('Unknown', 2),
      wbInteger('Sky / Blur Radius', itU16, wbEnum([], [
        16384, 'Radius 0',
        16672, 'Radius 1',
        16784, 'Radius 2',
        16848, 'Radius 3',
        16904, 'Radius 4',
        16936, 'Radius 5',
        16968, 'Radius 6',
        17000, 'Radius 7',
        16576, 'No Sky, Radius 0',
        16736, 'No Sky, Radius 1',
        16816, 'No Sky, Radius 2',
        16880, 'No Sky, Radius 3',
        16920, 'No Sky, Radius 4',
        16952, 'No Sky, Radius 5',
        16984, 'No Sky, Radius 6',
        17016, 'No Sky, Radius 7'
      ]))
    ], cpNormal, False, nil, 3)
  ]);

  {>>> Most wbUnknowns here are a series of floats that don't have values in CK <<<}
  wbRecord(IMAD, 'Image Space Adapter', [
    wbEDID,
    wbStruct(DNAM, 'Data', [
      wbInteger('Flags', itU32, wbFlags(['Animatable'])),
      wbFloat('Duration'),
      wbByteArray('Unknown', 4*48),
      wbInteger('Radial Blur Flags', itU32, wbFlags(['Use Target'])),
      wbFloat('Radial Blur Center X'),
      wbFloat('Radial Blur Center Y'),
      wbArray('Unknown', wbByteArray('Unknown', 4), 3),
      wbInteger('DoF Flags', itU32, wbFlags([
        {0x00000001}'Use Target',
        {0x00000002}'Unknown 2',
        {0x00000004}'Unknown 3',
        {0x00000008}'Unknown 4',
        {0x00000010}'Unknown 5',
        {0x00000020}'Unknown 6',
        {0x00000040}'Unknown 7',
        {0x00000080}'Unknown 8',
        {0x00000100}'Mode - Front',
        {0x00000200}'Mode - Back',
        {0x00000400}'No Sky',
        {0x00000800}'Blur Radius Bit 2',
        {0x00001000}'Blur Radius Bit 1',
        {0x00002000}'Blur Radius Bit 0'
      ])),
      wbUnknown
    ]),
    wbStruct(BNAM, 'Blur', [
      wbFloat('Unknown'),
      wbFloat('Radius'),
      wbUnknown
    ]),
    wbStruct(VNAM, 'Double Vision', [
      wbFloat('Unknown'),
      wbFloat('Strength'),
      wbUnknown
    ]),
    wbRStruct('Cinematic Colors', [
      wbStruct(TNAM, 'Tint', [
        wbFloat('Unknown'),
        wbStruct('Tint', [
          wbFloat('Red', cpNormal, True, 255, 0),
          wbFloat('Green', cpNormal, True, 255, 0),
          wbFloat('Blue', cpNormal, True, 255, 0),
          wbFloat('Alpha', cpNormal, True, 255, 0)
        ]),
        wbUnknown
      ]),
      wbStruct(NAM3, 'Fade', [
        wbFloat('Unknown'),
        wbStruct('Fade', [
          wbFloat('Red', cpNormal, True, 255, 0),
          wbFloat('Green', cpNormal, True, 255, 0),
          wbFloat('Blue', cpNormal, True, 255, 0),
          wbFloat('Alpha', cpNormal, True, 255, 0)
        ]),
        wbUnknown
      ])
    ], []),
    wbRStruct('Radial Blur', [
      wbStruct(RNAM, '', [
        wbFloat('Unknown'),
        wbFloat('Strength'),
        wbUnknown
      ]),
      wbStruct(SNAM, '', [
        wbFloat('Unknown'),
        wbFloat('Rampup'),
        wbUnknown
      ]),
      wbStruct(UNAM, '', [
        wbFloat('Unknown'),
        wbFloat('Start'),
        wbUnknown
      ]),
      wbStruct(NAM1, '', [
        wbFloat('Unknown'),
        wbFloat('Rampdown'),
        wbUnknown
      ]),
      wbStruct(NAM2, '', [
        wbFloat('Unknown'),
        wbFloat('Downstart'),
        wbUnknown
      ])
    ], []),
    wbRStruct('Depth of Field', [
      wbStruct(WNAM, 'Depth of Field', [
        wbFloat('Unknown'),
        wbFloat('Strength'),
        wbUnknown
      ]),
      wbStruct(XNAM, 'Depth of Field', [
        wbFloat('Unknown'),
        wbFloat('Distance'),
        wbUnknown
      ]),
      wbStruct(YNAM, 'Depth of Field', [
        wbFloat('Unknown'),
        wbFloat('Range'),
        wbUnknown
      ])
    ], []),
    wbStruct(NAM4, 'FullScreen Motion Blur', [
      wbFloat('Unknown'),
      wbFloat('Strength'),
      wbUnknown
    ]),
    wbRStruct('HDR', [
      wbStruct(_00_IAD, 'Eye Adapt Speed', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_40_IAD, 'Eye Adapt Speed', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_01_IAD, 'Bloom Blur Radius', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_41_IAD, 'Bloom Blur Radius', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_02_IAD, 'Bloom Threshold', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_42_IAD, 'Bloom Threshold', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_03_IAD, 'Bloom Scale', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_43_IAD, 'Bloom Scale', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_04_IAD, 'Target Lum Min', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_44_IAD, 'Target Lum Min', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_05_IAD, 'Target Lum Max', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_45_IAD, 'Target Lum Max', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_06_IAD, 'Sunlight Scale', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_46_IAD, 'Sunlight Scale', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_07_IAD, 'Sky Scale', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_47_IAD, 'Sky Scale', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ])
    ], []),
    wbUnknown(_08_IAD),
    wbUnknown(_48_IAD),
    wbUnknown(_09_IAD),
    wbUnknown(_49_IAD),
    wbUnknown(_0A_IAD),
    wbUnknown(_4A_IAD),
    wbUnknown(_0B_IAD),
    wbUnknown(_4B_IAD),
    wbUnknown(_0C_IAD),
    wbUnknown(_4C_IAD),
    wbUnknown(_0D_IAD),
    wbUnknown(_4D_IAD),
    wbUnknown(_0E_IAD),
    wbUnknown(_4E_IAD),
    wbUnknown(_0F_IAD),
    wbUnknown(_4F_IAD),
    wbUnknown(_10_IAD),
    wbUnknown(_50_IAD),
    wbRStruct('Cinematic', [
      wbStruct(_11_IAD, 'Saturation', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_51_IAD, 'Saturation', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_12_IAD, 'Brightness', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_52_IAD, 'Brightness', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ]),
      wbStruct(_13_IAD, 'Contrast', [
        wbFloat('Unknown'),
        wbFloat('Multiply'),
        wbUnknown
      ]),
      wbStruct(_53_IAD, 'Contrast', [
        wbFloat('Unknown'),
        wbFloat('Add'),
        wbUnknown
      ])
    ], []),
    wbUnknown(_14_IAD),
    wbUnknown(_54_IAD)
  ]);

  wbRecord(FLST, 'FormID List', [
    wbString(EDID, 'Editor ID', 0, cpBenign, True, nil, wbFLSTEDIDAfterSet),
    wbRArrayS('FormIDs', wbFormID(LNAM, 'FormID'), cpNormal, False, nil, nil, nil, wbFLSTLNAMIsSorted)
  ]);

  wbRecord(PERK, 'Perk', [
    wbEDID,
    wbVMAD,
    wbFULL,
    wbDESCReq,
    wbICON,
    wbCTDAs,
    wbStruct(DATA, 'Data', [
      wbInteger('Trait', itU8, wbEnum(['False', 'True'])),
      wbInteger('Level', itU8),
      wbInteger('Num Ranks', itU8),
      wbInteger('Playable', itU8, wbEnum(['False', 'True'])),
      wbInteger('Hidden', itU8, wbEnum(['False', 'True']))
    ], cpNormal, True),
    wbFormIDCK(NNAM, 'Next Perk', [PERK, NULL]),

    wbRStructsSK('Effects', 'Effect', [0, 1], [
      wbStructSK(PRKE, [1, 2, 0], 'Header', [
        wbInteger('Type', itU8, wbEnum([
          'Quest + Stage',
          'Ability',
          'Entry Point'
        ]), cpNormal, False, nil, wbPERKPRKETypeAfterSet),
        wbInteger('Rank', itU8),
        wbInteger('Priority', itU8)
      ]),
      wbUnion(DATA, 'Effect Data', wbPerkDATADecider, [
        wbStructSK([0, 1], 'Quest + Stage', [
          wbFormIDCk('Quest', [QUST]),
          wbInteger('Quest Stage', itU8, wbPerkDATAQuestStageToStr, wbCTDAParam2QuestStageToInt),
          wbByteArray('Unused', 3)
        ]),
        wbFormIDCk('Ability', [SPEL]),
        wbStructSK([0, 1], 'Entry Point', [
          wbInteger('Entry Point', itU8, wbEntryPointsEnum, cpNormal, True, nil{, wbPERKEntryPointAfterSet}),
          wbInteger('Function', itU8, wbEnum([
            {0} 'Unknown 0',
            {1} 'Set Value', // EPFT=1
            {2} 'Add Value', // EPFT=1
            {3} 'Multiply Value', // EPFT=1
            {4} 'Add Range To Value', // EPFT=2
            {5} 'Add Actor Value Mult', // EPFT=2
            {6} 'Absolute Value', // no params
            {7} 'Negative Absolute Value', // no params
            {8} 'Add Leveled List', // EPFT=3
            {9} 'Add Activate Choice', // EPFT=4
           {10} 'Select Spell', // EPFT=5
           {11} 'Select Text', // EPFT=6
           {12} 'Set to Actor Value Mult', // EPFT=2
           {13} 'Multiply Actor Value Mult', // EPFT=2
           {14} 'Multiply 1 + Actor Value Mult', // EPFT=2
           {15} 'Set Text' // EPFT=7
          ])),
          wbInteger('Perk Condition Tab Count', itU8, nil, cpIgnore)
        ])
      ], cpNormal, True),

      wbRStructsSK('Perk Conditions', 'Perk Condition', [0], [
        wbInteger(PRKC, 'Run On (Tab Index)', itS8{, wbPRKCToStr, wbPRKCToInt}),
        wbCTDAsReq
      ], [], cpNormal, False{, nil, nil, wbPERKPRKCDontShow}),

      wbRStruct('Function Parameters', [
        wbInteger(EPFT, 'Type', itU8, wbEnum([
          {0} 'None',
          {1} 'Float',
          {2} 'Float/AV,Float',
          {3} 'LVLI',
          {4} 'SPEL,lstring,flags',
          {5} 'SPEL',
          {6} 'string',
          {7} 'lstring'
        ])),
        // case(EPFT) of
        // 1: EPFD=float
        // 2: EPFD=float,float
        // 3: EPFD=LVLI
        // 4: EPFD=SPEL, EPF2=lstring, EPF3=int32 flags
        // 5: EPFD=SPEL
        // 6: EPFD=string
        // 7: EPFD=lstring
        wbLString(EPF2, 'Button Label'),
        wbStruct(EPF3, 'Script Flags', [
          wbInteger('Script Flags', itU8, wbFlags([
            'Run Immediately',
            'Replace Default'
          ])),
          wbByteArray('Unknown', 3)
        ]),
        wbUnion(EPFD, 'Data', wbEPFDDecider, [
          {0} wbByteArray('Unknown'),
          {1} wbFloat('Float'),
          {2} wbStruct('Float, Float', [
                wbFloat('Float 1'),
                wbFloat('Float 2')
              ]),
          {3} wbFormIDCk('Leveled Item', [LVLI]),
          {4} wbFormIDCk('Spell', [SPEL]),
          {5} wbFormIDCk('Spell', [SPEL]),
          {6} wbString('Text'),
          {7} wbLString('Text'),
          {8} wbStruct('Actor Value, Float', [
                wbInteger('Actor Value', itU32, wbEPFDActorValueToStr, wbEPFDActorValueToInt),
                wbFloat('Float')
              ])
        ], cpNormal, False{, wbEPFDDontShow})
      ], [], cpNormal, False{, wbPERKPRKCDontShow}),
      wbEmpty(PRKF, 'End Marker', cpIgnore, True)
    ], [])
  ]);

  wbRecord(BPTD, 'Body Part Data', [
    wbEDID,
    wbMODL,
    wbRStructsSK('Body Parts', 'Body Part', [2], [
      wbLString(BPTN, 'Part Name', 0, cpNormal, True),
      wbString(PNAM, 'Pose Matching', 0, cpNormal, False),
      wbString(BPNN, 'Part Node', 0, cpNormal, True),
      wbString(BPNT, 'VATS Target', 0, cpNormal, True),
      wbString(BPNI, 'IK Data - Start Node', 0, cpNormal, True),
      wbStruct(BPND, '', [
        {00} wbFloat('Damage Mult'),
        {04} wbInteger('Flags', itU8, wbFlags([
          'Severable',
          'IK Data',
          'IK Data - Biped Data',
          'Explodable',
          'IK Data - Is Head',
          'IK Data - Headtracking',
          'To Hit Chance - Absolute'
        ])),
        {05} wbInteger('Part Type', itU8, wbEnum([
               'Torso',
               'Head',
               'Eye',
               'LookAt',
               'Fly Grab',
               'Saddle'
             ])),
        {06} wbInteger('Health Percent', itU8),
        {07} wbInteger('Actor Value', itS8, wbActorValueEnum),
        {08} wbInteger('To Hit Chance', itU8),
        {09} wbInteger('Explodable - Explosion Chance %', itU8),
        {10} wbInteger('Explodable - Debris Count', itU16),
        {12} wbFormIDCk('Explodable - Debris', [DEBR, NULL]),
        {16} wbFormIDCk('Explodable - Explosion', [EXPL, NULL]),
        {20} wbFloat('Tracking Max Angle'),
        {24} wbFloat('Explodable - Debris Scale'),
        {28} wbInteger('Severable - Debris Count', itS32),
        {32} wbFormIDCk('Severable - Debris', [DEBR, NULL]),
        {36} wbFormIDCk('Severable - Explosion', [EXPL, NULL]),
        {40} wbFloat('Severable - Debris Scale'),
        wbStruct('Gore Effects Positioning', [
          wbStruct('Translate', [
            {44} wbFloat('X'),
            {48} wbFloat('Y'),
            {52} wbFloat('Z')
          ]),
          wbStruct('Rotation', [
            {56} wbFloat('X', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize),
            {60} wbFloat('Y', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize),
            {64} wbFloat('Z', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize)
          ])
        ]),
        {68} wbFormIDCk('Severable - Impact DataSet', [IPDS, NULL]),
        {72} wbFormIDCk('Explodable - Impact DataSet', [IPDS, NULL]),
        {28} wbInteger('Severable - Decal Count', itU8),
        {28} wbInteger('Explodable - Decal Count', itU8),
        {76} wbByteArray('Unknown', 2),
        {80} wbFloat('Limb Replacement Scale')
      ], cpNormal, True),
      wbString(NAM1, 'Limb Replacement Model', 0, cpNormal, True),
      wbString(NAM4, 'Gore Effects - Target Bone', 0, cpNormal, True),
      wbByteArray(NAM5, 'Texture Files Hashes', 0, cpNormal)
    ], [], cpNormal, True)
  ]);

  wbRecord(ADDN, 'Addon Node', [
    wbEDID,
    wbOBNDReq,
    wbMODL,
    wbInteger(DATA, 'Node Index', itS32, nil, cpNormal, True),
    wbFormIDCk(SNAM, 'Sound', [SOUN, SNDR, NULL]),
    wbStruct(DNAM, 'Data', [
      wbInteger('Master Particle System Cap', itU16),
      wbInteger('Flags', itU16, wbEnum([], [
        {>>> Value Must be 1 or 3 <<<}
        1, 'Unknown 1',    // {0x0001}'Unknown 0', : The Check-Box is Unchecked in the CK
        3, 'Always Loaded' // {0x0002}'Always Loaded' : The Check-Box is Unchecked in the CK
      ]))
    ], cpNormal, True)
  ]);
end;

procedure DefineTES5h;
begin
  wbRecord(AVIF, 'Actor Value Information', [
    wbEDID,
    wbFULL,
    wbDESCReq,
    wbString(ANAM, 'Abbreviation'),
    wbUnknown(CNAM),
    wbStruct(AVSK, 'Skill', [
      wbFloat('Skill Use Mult'),
      wbFloat('Skill Offset Mult'),
      wbFloat('Skill Improve Mult'),
      wbFloat('Skill Improve Offset')
    ]),
    wbRArray('Perk Tree',
      wbRStruct('Node', [
        wbFormIDCk(PNAM, 'Perk', [PERK, NULL]),
        wbUnknown(FNAM),
        wbInteger(XNAM, 'Perk-Grid X', itU32),
        wbInteger(YNAM, 'Perk-Grid Y', itU32),
        wbFloat(HNAM, 'Horizontal Position'),
        wbFloat(VNAM, 'Vertical Position'),
        wbFormIDCk(SNAM, 'Associated Skill', [AVIF, NULL]),
        wbRArray('Connections', wbInteger(CNAM, 'Line to Index', itU32)),
        wbInteger(INAM, 'Index', itU32)
      ], [])
    )
  ]);

  wbRecord(CAMS, 'Camera Shot', [
    wbEDID,
    wbMODL,
    wbStruct(DATA, 'Data', [
      {00} wbInteger('Action', itU32, wbEnum([
        'Shoot',
        'Fly',
        'Hit',
        'Zoom'
      ])),
      {04} wbInteger('Location', itU32, wbEnum([
        'Attacker',
        'Projectile',
        'Target',
        'Lead Actor'
      ])),
      {08} wbInteger('Target', itU32, wbEnum([
        'Attacker',
        'Projectile',
        'Target',
        'Lead Actor'
      ])),
      {12} wbInteger('Flags', itU32, wbFlags([
        'Position Follows Location',
        'Rotation Follows Target',
        'Don''t Follow Bone',
        'First Person Camera',
        'No Tracer',
        'Start At Time Zero'
      ])),
      wbStruct('Time Multipliers', [
        {16} wbFloat('Player'),
        {20} wbFloat('Target'),
        {24} wbFloat('Global')
      ]),
      {28} wbFloat('Max Time'),
      {32} wbFloat('Min Time'),
      {36} wbFloat('Target % Between Actors'),
      {40} wbFloat('Near Target Distance')
    ], cpNormal, True, nil, 8),
    wbFormIDCk(MNAM, 'Image Space Modifier', [IMAD])
  ]);

  wbRecord(CPTH, 'Camera Path', [
    wbEDID,
    wbCTDAs,
    wbArray(ANAM, 'Related Camera Paths', wbFormIDCk('Related Camera Path', [CPTH, NULL]), ['Parent', 'Previous Sibling'], cpNormal, True),
    wbInteger(DATA, 'Camera Zoom', itU8, wbEnum([], [
      0, 'Default, Must Have Camera Shots',
      1, 'Disable, Must Have Camera Shots',
      2, 'Shot List, Must Have Camera Shots',
      128, 'Default',
      129, 'Disable',
      130, 'Shot List'
    ]), cpNormal, True),
    wbRArray('Camera Shots', wbFormIDCk(SNAM, 'Camera Shot', [CAMS]))
  ]);

  wbRecord(VTYP, 'Voice Type', [
    wbEDID,
    wbInteger(DNAM, 'Flags', itU8, wbFlags([
      'Allow Default Dialog',
      'Female'
    ]), cpNormal, True)
  ]);

  wbRecord(MATT, 'Material Type', [
    wbEDID,
    wbFormIDCk(PNAM, 'Material Parent', [MATT, NULL]),
    wbString(MNAM, 'Material Name'),
    wbStruct(CNAM, 'Havok Display Color', [
      wbFloat('Red', cpNormal, True, 255, 0),
      wbFloat('Green', cpNormal, True, 255, 0),
      wbFloat('Blue', cpNormal, True, 255, 0)
    ]),
    wbFloat(BNAM, 'Buoyancy'),
    wbInteger(FNAM, 'Flags', itU32, wbFlags([
      'Stair Material',
      'Arrows Stick'
    ], False)),
    wbFormIDCk(HNAM, 'Havok Impact Data Set', [IPDS, NULL])
  ]);

  wbRecord(IPCT, 'Impact', [
    wbEDID,
    wbMODL,
    wbStruct(DATA, '', [
      wbFloat('Effect - Duration'),
      wbInteger('Effect - Orientation', itU32, wbEnum([
        'Surface Normal',
        'Projectile Vector',
        'Projectile Reflection'
      ])),
      wbFloat('Angle Threshold'),
      wbFloat('Placement Radius'),
      wbInteger('Sound Level', itU32, wbSoundLevelEnum),
      wbInteger('Flags', itU8, wbFlags([
        {0x01} 'No Decal Data'
      ])),
      wbInteger('Impact Result', itU8, wbEnum([
         {0} 'Default',
         {1} 'Destroy',
         {2} 'Bounce',
         {3} 'Impale',
         {4} 'Stick'
      ])),
      wbByteArray('Unknown', 2)
    ], cpNormal, True, nil, 4),
    wbDODT,
    wbFormIDCk(DNAM, 'Texture Set', [TXST]),
    wbFormIDCk(ENAM, 'Secondary Texture Set', [TXST]),
    wbFormIDCk(SNAM, 'Sound 1', [SNDR, SOUN, NULL]),
    wbFormIDCk(NAM1, 'Sound 2', [SNDR, SOUN, NULL]),
    wbFormIDCk(NAM2, 'Hazard', [HAZD, NULL])
  ]);

  wbRecord(IPDS, 'Impact Data Set', [
    wbEDID,
    wbRArrayS('Data', wbStructSK(PNAM, [0], '', [
      wbFormIDCk('Material', [MATT]),
      wbFormIDCk('Impact', [IPCT])
    ]))
  ]);

  wbRecord(ECZN, 'Encounter Zone', [
    wbEDID,
    wbStruct(DATA, '', [
      wbFormIDCkNoReach('Owner', [NPC_, FACT, NULL]),
      wbFormIDCk('Location', [LCTN, NULL]),
      wbInteger('Rank', itS8),
      wbInteger('Min Level', itS8),
      wbInteger('Flags', itU8, wbFlags([
        'Never Resets',
        'Match PC Below Minimum Level',
        'Disable Combat Boundary'
      ])),
      wbInteger('Max Level', itS8)
    ], cpNormal, True, nil, 2)
  ]);

  wbRecord(LCTN, 'Location', [
    wbEDID,

    wbArray(ACPR, 'Actor Cell Persistent Reference', wbStruct('', [
      wbFormIDCk('Actor', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      wbFormIDCk('Location', [WRLD, CELL]),
      wbInteger('Grid Y', itS16),
      wbInteger('Grid X', itS16)
    ])),
    wbArray(LCPR, 'Location Cell Persistent Reference', wbStruct('', [
      wbFormIDCk('Actor', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      wbFormIDCk('Location', [WRLD, CELL]),
      wbInteger('Grid Y', itS16),
      wbInteger('Grid X', itS16)
    ])),
    {>>> From Danwguard.esm, Does not follow similar previous patterns <<<}
    wbArray(RCPR, 'Reference Cell Persistent Reference', wbFormIDCk('Ref', [ACHR, REFR])),

    wbArray(ACUN, 'Actor Cell Unique', wbStruct('', [
      wbFormIDCk('Actor', [NPC_]),
      wbFormIDCk('Ref', [ACHR]),
      wbFormIDCk('Location', [LCTN, NULL])
    ])),
    wbArray(LCUN, 'Location Cell Unique', wbStruct('', [
      wbFormIDCk('Actor', [NPC_]),
      wbFormIDCk('Ref', [ACHR]),
      wbFormIDCk('Location', [LCTN, NULL])
    ])),
    {>>> in Unofficial Skyrim patch <<<}
    wbArray(RCUN, 'Reference Cell Unique', wbFormIDCk('Actor', [NPC_])),

    wbArray(ACSR, 'Actor Cell Static Reference', wbStruct('', [
      wbFormIDCk('Loc Ref Type', [LCRT]),
      wbFormIDCk('Marker', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      wbFormIDCk('Location', [WRLD, CELL]),
      wbInteger('Grid Y', itS16),
      wbInteger('Grid X', itS16)
    ])),
    wbArray(LCSR, 'Location Cell Static Reference', wbStruct('', [
      wbFormIDCk('Loc Ref Type', [LCRT]),
      wbFormIDCk('Marker', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      wbFormIDCk('Location', [WRLD, CELL]),
      wbInteger('Grid Y', itS16),
      wbInteger('Grid X', itS16)
    ])),
    {>>> Seen in Open Cities <<<}
    wbArray(RCSR, 'Reference Cell Static Reference', wbFormIDCk('Ref', [ACHR, REFR])),

    wbRArray('Actor Cell Encounter Cell',
      wbStruct(ACEC, 'Unknown', [
        wbFormIDCk('Location', [WRLD, CELL]),
        wbArray('Coordinates', wbStruct('', [
          wbInteger('Grid Y', itS16),
          wbInteger('Grid X', itS16)
        ]))
      ])
    ),
    wbRArray('Location Cell Encounter Cell',
      wbStruct(LCEC, 'Unknown', [
        wbFormIDCk('Location', [WRLD, CELL]),
        wbArray('Coordinates', wbStruct('', [
          wbInteger('Grid Y', itS16),
          wbInteger('Grid X', itS16)
        ]))
      ])
    ),
    {>>> Seen in Open Cities <<<}
    wbRArray('Reference Cell Encounter Cell',
      wbStruct(RCEC, 'Unknown', [
        wbFormIDCk('Location', [WRLD, CELL]),
        wbArray('Coordinates', wbStruct('', [
          wbInteger('Grid Y', itS16),
          wbInteger('Grid X', itS16)
        ]))
      ])
    ),

    wbArray(ACID, 'Actor Cell Marker Reference', wbFormIDCk('Ref', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA])),
    wbArray(LCID, 'Location Cell Marker Reference', wbFormIDCk('Ref', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA])),

    wbArray(ACEP, 'Actor Cell Enable Point', wbStruct('', [
      wbFormIDCk('Actor', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      wbFormIDCk('Ref', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      wbInteger('Grid Y', itS16),
      wbInteger('Grid X', itS16)
    ])),
    wbArray(LCEP, 'Location Cell Enable Point', wbStruct('', [
      wbFormIDCk('Actor', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      wbFormIDCk('Ref', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      wbInteger('Grid Y', itS16),
      wbInteger('Grid X', itS16)
    ])),

    wbFULL,
    wbKSIZ,
    wbKWDAs,
    wbFormIDCk(PNAM, 'Parent Location', [LCTN, NULL]),
    wbFormIDCk(NAM1, 'Music', [MUSC, NULL]),
    wbFormIDCk(FNAM, 'Unreported Crime Faction', [FACT]),
    wbFormIDCk(MNAM, 'World Location Marker Ref', [REFR, ACHR]),
    wbFloat(RNAM, 'World Location Radius'),
    wbFormIDCk(NAM0, 'Horse Marker Ref', [REFR]),
    wbCNAM
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

end;

{this is required to prevent XE6 compiler error}
type
  TVarRecs = array of TVarRec;

function CombineVarRecs(const a, b : array of const)
                                   : TVarRecs;
begin
  SetLength(Result, Length(a) + Length(b));
  if Length(a) > 0 then
    Move(a[0], Result[0], SizeOf(TVarRec) * Length(a));
  if Length(b) > 0 then
    Move(b[0], Result[Length(a)], SizeOf(TVarRec) * Length(b));
end;

function MakeVarRecs(const a : array of const)
                             : TVarRecs;
begin
  SetLength(Result, Length(a));
  if Length(a) > 0 then
    Move(a[0], Result[0], SizeOf(TVarRec) * Length(a));
end;


procedure DefineTES5i;
var
  a, b, c : TVarRecs;
begin
  wbRecord(MESG, 'Message', [
    wbEDID,
    wbDESCReq,
    wbFULL,
    wbFormIDCk(INAM, 'Icon (unused)', [NULL], False, cpIgnore, True), // leftover
    wbFormIDCk(QNAM, 'Owner Quest', [QUST]),
    wbInteger(DNAM, 'Flags', itU32, wbFlags([
      'Message Box',
      'Auto Display'
    ]), cpNormal, True, False, nil, wbMESGDNAMAfterSet),
    wbInteger(TNAM, 'Display Time', itU32, nil, cpNormal, False, False, wbMESGTNAMDontShow),
    wbRStructs('Menu Buttons', 'Menu Button', [
      wbLString(ITXT, 'Button Text'),
      wbCTDAs
    ], [])
  ], False, nil, cpNormal, False, wbMESGAfterLoad);

  a := MakeVarRecs([
                        0, 'None',
          Sig2Int('RADA'), 'RADA (Unused)',
          Sig2Int('MORP'), 'MORP (Unused)',
          Sig2Int('PPAR'), 'PPAR (Unused)',
          Sig2Int('MYSN'), 'MYSN (Unused)',
          Sig2Int('MYSF'), 'MYSF (Unused)',
          Sig2Int('WWSP'), 'Werewolf Spell',
          Sig2Int('SALT'), 'Sitting Angle Limit',
          Sig2Int('APSH'), 'Allow Player Shout',
          Sig2Int('GOLD'), 'Gold',
          Sig2Int('LKPK'), 'Lockpick',
          Sig2Int('SKLK'), 'SkeletonKey',
          Sig2Int('PFAC'), 'Player Faction',
          Sig2Int('GFAC'), 'Guard Faction',
          Sig2Int('DFMS'), 'Default Music',
          Sig2Int('BTMS'), 'Battle Music',
          Sig2Int('DTMS'), 'Death Music',
          Sig2Int('SCMS'), 'Success Music',
          Sig2Int('LUMS'), 'Level Up Music',
          Sig2Int('DCMS'), 'Dungeon Cleared Music',
          Sig2Int('PVMA'), 'Player Voice (Male)',
          Sig2Int('PVMC'), 'Player Voice (Male Child)',
          Sig2Int('PVFA'), 'Player Voice (Female)',
          Sig2Int('PVFC'), 'Player Voice (Female Child)',
          Sig2Int('EPDF'), 'Eat Package Default Food',
          Sig2Int('LHEQ'), 'LeftHand Equip',
          Sig2Int('RHEQ'), 'RightHand Equip',
          Sig2Int('EHEQ'), 'EitherHand Equip',
          Sig2Int('VOEQ'), 'Voice Equip',
          Sig2Int('POEQ'), 'Potion Equip',
          Sig2Int('EACA'), 'Every Actor Ability',
          Sig2Int('CACA'), 'Commanded Actor Ability',
          Sig2Int('DEIS'), 'Drug Wears Off Image Space',
          Sig2Int('DFTS'), 'Footstep Set',
          Sig2Int('DLMT'), 'Landscape Material',
          Sig2Int('DLZM'), 'Dragon Land Zone Marker',
          Sig2Int('DCZM'), 'Dragon Crash Zone Marker',
          Sig2Int('CSTY'), 'Combat Style',
          Sig2Int('PLST'), 'Default Pack List',
          Sig2Int('PWFD'), 'Wait-For-Dialogue Package',
          Sig2Int('LRTB'), 'LocRefType Boss',
          Sig2Int('VLOC'), 'Virtual Location',
          Sig2Int('PLOC'), 'PersistAll Location',
          Sig2Int('INVP'), 'Inventory Player',
          Sig2Int('PTNP'), 'Pathing Test NPC',
          Sig2Int('FPCS'), 'Favor Cost Small',
          Sig2Int('FPCM'), 'Favor Cost Medium',
          Sig2Int('FPCL'), 'Favor Cost Large',
          Sig2Int('FGPD'), 'Favor Gifts Per Day',
          Sig2Int('AASW'), 'Action Swim State Change',
          Sig2Int('AALK'), 'Action Look',
          Sig2Int('AALA'), 'Action LeftAttack',
          Sig2Int('AALD'), 'Action LeftReady',
          Sig2Int('AALR'), 'Action LeftRelease',
          Sig2Int('AALI'), 'Action LeftInterrupt',
          Sig2Int('AARA'), 'Action RightAttack',
          Sig2Int('AARD'), 'Action RightReady',
          Sig2Int('AARR'), 'Action RightRelease',
          Sig2Int('AARI'), 'Action RightInterrupt',
          Sig2Int('AADA'), 'Action DualAttack',
          Sig2Int('AADL'), 'Action DualRelease',
          Sig2Int('AAAC'), 'Action Activate',
          Sig2Int('AAJP'), 'Action Jump',
          Sig2Int('AAFA'), 'Action Fall',
          Sig2Int('AALN'), 'Action Land',
          Sig2Int('AASN'), 'Action Sneak',
          Sig2Int('AAVC'), 'Action Voice',
          Sig2Int('AAVD'), 'Action VoiceReady',
          Sig2Int('AAVR'), 'Action VoiceRelease',
          Sig2Int('AAVI'), 'Action VoiceInterrupt',
          Sig2Int('AAID'), 'Action Idle',
          Sig2Int('AAST'), 'Action Sprint Start',
          Sig2Int('AASP'), 'Action Sprint Stop',
          Sig2Int('AADR'), 'Action Draw',
          Sig2Int('AASH'), 'Action Sheath',
          Sig2Int('ALPA'), 'Action Left Power Attack',
          Sig2Int('AAPA'), 'Action Right Power Attack',
          Sig2Int('ADPA'), 'Action Dual Power Attack',
          Sig2Int('AAS1'), 'Action Stagger Start',
          Sig2Int('AABH'), 'Action Block Hit',
          Sig2Int('AABA'), 'Action Block Anticipate',
          Sig2Int('AARC'), 'Action Recoil',
          Sig2Int('AAR2'), 'Action Large Recoil',
          Sig2Int('AAB1'), 'Action Bleedout Start',
          Sig2Int('AAB2'), 'Action Bleedout Stop',
          Sig2Int('AAIS'), 'Action Idle Stop',
          Sig2Int('AAWH'), 'Action Ward Hit',
          Sig2Int('AAFQ'), 'Action Force Equip',
          Sig2Int('AASC'), 'Action Shield Change',
          Sig2Int('AAPS'), 'Action Path Start',
          Sig2Int('AAPE'), 'Action Path End',
          Sig2Int('AALM'), 'Action Large Movement Delta',
          Sig2Int('AAF1'), 'Action Fly Start',
          Sig2Int('AAF2'), 'Action Fly Stop',
          Sig2Int('AAH1'), 'Action Hover Start',
          Sig2Int('AAH2'), 'Action Hover Stop',
          Sig2Int('AABI'), 'Action Bumped Into',
          Sig2Int('AASS'), 'Action Summoned Start',
          Sig2Int('ATKI'), 'Action Talking Idle',
          Sig2Int('ALTI'), 'Action Listen Idle',
          Sig2Int('AADE'), 'Action Death',
          Sig2Int('AADW'), 'Action Death Wait',
          Sig2Int('AIDW'), 'Action Idle Warn',
          Sig2Int('AMST'), 'Action Move Start',
          Sig2Int('AMSP'), 'Action Move Stop',
          Sig2Int('ATRI'), 'Action Turn Right',
          Sig2Int('ATLE'), 'Action Turn Left',
          Sig2Int('ATSP'), 'Action Turn Stop',
          Sig2Int('AMFD'), 'Action Move Forward',
          Sig2Int('AMBK'), 'Action Move Backward',
          Sig2Int('AMLT'), 'Action Move Left',
          Sig2Int('AMRT'), 'Action Move Right',
          Sig2Int('ARAG'), 'Action Reset Animation Graph',
          Sig2Int('AKDN'), 'Action Knockdown',
          Sig2Int('AAGU'), 'Action Get Up',
          Sig2Int('ASID'), 'Action Idle Stop Instant',
          Sig2Int('ARGI'), 'Action Ragdoll Instant',
          Sig2Int('AWWS'), 'Action Waterwalk Start',
          Sig2Int('AREL'), 'Action Reload',
          Sig2Int('PUSG'), 'Pickup Sound Generic',
          Sig2Int('PDSG'), 'Putdown Sound Generic',
          Sig2Int('PUSW'), 'Pickup Sound Weapon',
          Sig2Int('PDSW'), 'Putdown Sound Weapon',
          Sig2Int('PUSA'), 'Pickup Sound Armor',
          Sig2Int('PDSA'), 'Putdown Sound Armor',
          Sig2Int('PUSB'), 'Pickup Sound Book',
          Sig2Int('PDSB'), 'Putdown Sound Book',
          Sig2Int('PUSI'), 'Pickup Sound Ingredient',
          Sig2Int('PDSI'), 'Putdown Sound Ingredient',
          Sig2Int('HVSS'), 'Harvest Sound',
          Sig2Int('HVFS'), 'Harvest Failed Sound',
          Sig2Int('WBSN'), 'Ward Break Sound',
          Sig2Int('WASN'), 'Ward Absorb Sound',
          Sig2Int('WDSN'), 'Ward Deflect Sound',
          Sig2Int('MFSN'), 'Magic Fail Sound',
          Sig2Int('SFSN'), 'Shout Fail Sound',
          Sig2Int('HFSD'), 'Heartbeat Sound Fast',
          Sig2Int('HSSD'), 'Heartbeat Sound Slow',
          Sig2Int('IMLH'), 'Imagespace: Low Health',
          Sig2Int('SCSD'), 'Soul Captured Sound',
          Sig2Int('NASD'), 'No-Activation Sound',
          Sig2Int('MMSD'), 'Map Menu Looping Sound',
          Sig2Int('DDSC'), 'Dialogue Voice Category',
          Sig2Int('NDSC'), 'Non-Dialogue Voice Category',
          Sig2Int('SFDC'), 'SFX To Fade In Dialogue Category',
          Sig2Int('PDMC'), 'Pause During Menu Category (Fade)',
          Sig2Int('PIMC'), 'Pause During Menu Category (Immediate)',
          Sig2Int('PDLC'), 'Pause During Loading Menu Category',
          Sig2Int('MDSC'), 'Music Sound Category',
          Sig2Int('SMSC'), 'Stats Mute Category',
          Sig2Int('SSSC'), 'Stats Music',
          Sig2Int('MTSC'), 'Master Sound Category',
          Sig2Int('TSSC'), 'Time Sensitive Sound Category',
          Sig2Int('DOP2'), 'Dialogue Output Model (3D)',
          Sig2Int('DOP3'), 'Dialogue Output Model (2D)',
          Sig2Int('POPM'), 'Player''s Output Model (1st Person)',
          Sig2Int('P3OM'), 'Player''s Output Model (3rd Person)',
          Sig2Int('IOPM'), 'Interface Output Model',
          Sig2Int('RVBT'), 'Reverb Type',
          Sig2Int('UWLS'), 'Underwater Loop Sound',
          Sig2Int('URVT'), 'Underwater Reverb Type',
          Sig2Int('HRSK'), 'Keyword - Horse',
          Sig2Int('UNDK'), 'Keyword - Undead',
          Sig2Int('NPCK'), 'Keyword - NPC',
          Sig2Int('KWBR'), 'Keyword - BeastRace',
          Sig2Int('KWDM'), 'Keyword - DummyObject',
          Sig2Int('KWGE'), 'Keyword - UseGeometryEmitter',
          Sig2Int('KWMS'), 'Keyword - MustStop',
          Sig2Int('KWUA'), 'Keyword - UpdateDuringArchery',
          Sig2Int('KWOT'), 'Keyword - Skip Outfit Items',
          Sig2Int('FTHD'), 'Male Face Texture Set: Head',
          Sig2Int('FTMO'), 'Male Face Texture Set: Mouth',
          Sig2Int('FTEL'), 'Male Face Texture Set: Eyes',
          Sig2Int('FTHF'), 'Female Face Texture Set: Head',
          Sig2Int('FTMF'), 'Female Face Texture Set: Mouth',
          Sig2Int('FTRF'), 'Female Face Texture Set: Eyes',
          Sig2Int('IMID'), 'ImageSpaceModifier for inventory menu.',
          Sig2Int('PTEM'), 'Package template',
          Sig2Int('MMCL'), 'Main Menu Cell',
          Sig2Int('DMWL'), 'Default MovementType: Walk',
          Sig2Int('DMRN'), 'Default MovementType: Run',
          Sig2Int('DMSW'), 'Default MovementType: Swim',
          Sig2Int('DMFL'), 'Default MovementType: Fly',
          Sig2Int('DMSN'), 'Default MovementType: Sneak',
          Sig2Int('DMSP'), 'Default MovementType: Sprint',
          Sig2Int('SPFK'), 'Keyword - Special Furniture',
          Sig2Int('FFFP'), 'Keyword - Furniture Forces 1st Person',
          Sig2Int('FFTP'), 'Keyword - Furniture Forces 3rd Person',
          Sig2Int('AFNP'), 'Keyword - Activator Furniture No Player',
          Sig2Int('TKGS'), 'Telekinesis Grab Sound',
          Sig2Int('TKTS'), 'Telekinesis Throw Sound',
          Sig2Int('WMWE'), 'World Map Weather',
          Sig2Int('HMPC'), 'Help Manual PC',
          Sig2Int('HMXB'), 'Help Manual XBox',
          Sig2Int('TKAM'), 'Keyword - Type Ammo',
          Sig2Int('TKAR'), 'Keyword - Type Armor',
          Sig2Int('TKBK'), 'Keyword - Type Book',
          Sig2Int('TKIG'), 'Keyword - Type Ingredient',
          Sig2Int('TKKY'), 'Keyword - Type Key',
          Sig2Int('TKMS'), 'Keyword - Type Misc',
          Sig2Int('TKSG'), 'Keyword - Type SoulGem',
          Sig2Int('TKWP'), 'Keyword - Type Weapon',
          Sig2Int('TKPT'), 'Keyword - Type Potion',
          Sig2Int('BENW'), 'Base Weapon Enchantment',
          Sig2Int('BENA'), 'Base Armor Enchantment',
          Sig2Int('BAPO'), 'Base Potion',
          Sig2Int('BAPS'), 'Base Poison',
          Sig2Int('DRAK'), 'Keyword - Dragon',
          Sig2Int('MVBL'), 'Keyword - Movable',
          Sig2Int('ABSE'), 'Art Object - Absorb Effect',
          Sig2Int('WEML'), 'Weapon Material List',
          Sig2Int('ARTL'), 'Armor Material List',
          Sig2Int('DIEN'), 'Keyword - Disallow Enchanting',
          Sig2Int('FTML'), 'Favor travel marker location',
          Sig2Int('LKHO'), 'Keyword - Hold Location',
          Sig2Int('CWOK'), 'Keyword - Civil War Owner',
          Sig2Int('CWNE'), 'Keyword - Civil War Neutral',
          Sig2Int('LRSO'), 'LocRefType - Civil War Soldier',
          Sig2Int('KWDO'), 'Keyword - ClearableLocation',
          Sig2Int('LRRD'), 'LocRefType - Resource Destructible',
          Sig2Int('HCLL'), 'FormList - Hair Color List',
          Sig2Int('CMPX'), 'Complex Scene Object',
          Sig2Int('RUSG'), 'Keyword - Reusable SoulGem',
          Sig2Int('ANML'), 'Keyword - Animal',
          Sig2Int('DAED'), 'Keyword - Daedra'
        ]);

  b := MakeVarRecs([
          Sig2Int('BEEP'), 'Keyword - Robot',
          Sig2Int('NRNT'), 'Keyword - Nirnroot',
          Sig2Int('FTGF'), 'Fighters'' Guild Faction',
          Sig2Int('MGGF'), 'Mages'' Guild Faction',
          Sig2Int('TVGF'), 'Thieves'' Guild Faction',
          Sig2Int('DBHF'), 'Dark Brotherhood Faction',
          Sig2Int('JRLF'), 'Jarl Faction',
          Sig2Int('AWWW'), 'Bunny Faction',
          Sig2Int('PIVV'), 'Player Is Vampire Variable',
          Sig2Int('PIWV'), 'Player Is Werewolf Variable',
          Sig2Int('NMRD'), 'Road Marker',
          Sig2Int('SAT1'), 'Keyword: Scale Actor To 1.0',
          Sig2Int('VAMP'), 'Keyword: Vampire',
          Sig2Int('FORG'), 'Keyword: Forge',
          Sig2Int('COOK'), 'Keyword: Cooking Pot',
          Sig2Int('SMLT'), 'Keyword: Smelter',
          Sig2Int('TANN'), 'Keyword: Tanning Rack',
          Sig2Int('HBLK'), 'Help - Basic Lockpicking (PC)',
          Sig2Int('HBLX'), 'Help - Basic Lockpicking (Console)',
          Sig2Int('HBFG'), 'Help - Basic Forging',
          Sig2Int('HBCO'), 'Help - Basic Cooking',
          Sig2Int('HBML'), 'Help - Basic Smelting',
          Sig2Int('HBTA'), 'Help - Basic Tanning',
          Sig2Int('HBOC'), 'Help - Basic Object Creation',
          Sig2Int('HBEC'), 'Help - Basic Enchanting',
          Sig2Int('HBSM'), 'Help - Basic Smithing Weapon',
          Sig2Int('HBSA'), 'Help - Basic Smithing Armor',
          Sig2Int('HBAL'), 'Help - Basic Alchemy',
          Sig2Int('HBBR'), 'Help - Barter',
          Sig2Int('HBLU'), 'Help - Leveling up',
          Sig2Int('HBSK'), 'Help - Skills Menu',
          Sig2Int('HBMM'), 'Help - Map Menu',
          Sig2Int('HBJL'), 'Help - Journal',
          Sig2Int('HBLH'), 'Help - Low Health',
          Sig2Int('HBLM'), 'Help - Low Magicka',
          Sig2Int('HBLS'), 'Help - Low Stamina',
          Sig2Int('HBHJ'), 'Help - Jail',
          Sig2Int('HBFT'), 'Help - Teamate Favor',
          Sig2Int('HBWC'), 'Help - Weapon Charge',
          Sig2Int('HBFS'), 'Help - Favorites',
          Sig2Int('KHFL'), 'Kinect Help FormList',
          Sig2Int('HBFM'), 'Help - Flying Mount',
          Sig2Int('HBTL'), 'Help - Target Lock',
          Sig2Int('HBAT'), 'Help - Attack Target',
          Sig2Int('LSIS'), 'Imagespace: Load screen',
          Sig2Int('WMDA'), 'Keyword - Weapon Material Daedric',
          Sig2Int('WMDR'), 'Keyword - Weapon Material Draugr',
          Sig2Int('WMDH'), 'Keyword - Weapon Material DraugrHoned',
          Sig2Int('WMDW'), 'Keyword - Weapon Material Dwarven',
          Sig2Int('WMEB'), 'Keyword - Weapon Material Ebony',
          Sig2Int('WMEL'), 'Keyword - Weapon Material Elven',
          Sig2Int('WMFA'), 'Keyword - Weapon Material Falmer',
          Sig2Int('WMFH'), 'Keyword - Weapon Material FalmerHoned',
          Sig2Int('WMGL'), 'Keyword - Weapon Material Glass',
          Sig2Int('WMIM'), 'Keyword - Weapon Material Imperial',
          Sig2Int('WMIR'), 'Keyword - Weapon Material Iron',
          Sig2Int('WMOR'), 'Keyword - Weapon Material Orcish',
          Sig2Int('WMST'), 'Keyword - Weapon Material Steel',
          Sig2Int('WMWO'), 'Keyword - Weapon Material Wood',
          Sig2Int('WTBA'), 'Keyword - WeaponTypeBoundArrow',
          Sig2Int('AODA'), 'Keyword - Armor Material Daedric',
          Sig2Int('AODP'), 'Keyword - Armor Material Dragonplate',
          Sig2Int('AODS'), 'Keyword - Armor Material Dragonscale',
          Sig2Int('AODB'), 'Keyword - Armor Material Dragonbone',
          Sig2Int('AODW'), 'Keyword - Armor Material Dwarven',
          Sig2Int('AOEB'), 'Keyword - Armor Material Ebony',
          Sig2Int('AOEL'), 'Keyword - Armor Material Elven',
          Sig2Int('AOES'), 'Keyword - Armor Material ElvenSplinted',
          Sig2Int('AOFL'), 'Keyword - Armor Material FullLeather',
          Sig2Int('AOGL'), 'Keyword - Armor Material Glass',
          Sig2Int('AOHI'), 'Keyword - Armor Material Hide',
          Sig2Int('AOIM'), 'Keyword - Armor Material Imperial',
          Sig2Int('AOIH'), 'Keyword - Armor Material ImperialHeavy',
          Sig2Int('AOIR'), 'Keyword - Armor Material ImperialReinforced',
          Sig2Int('AOFE'), 'Keyword - Armor Material Iron',
          Sig2Int('AOIB'), 'Keyword - Armor Material IronBanded',
          Sig2Int('AOOR'), 'Keyword - Armor Material Orcish',
          Sig2Int('AOSC'), 'Keyword - Armor Material Scaled',
          Sig2Int('AOST'), 'Keyword - Armor Material Steel',
          Sig2Int('AOSP'), 'Keyword - Armor Material SteelPlate',
          Sig2Int('AOSK'), 'Keyword - Armor Material Stormcloak',
          Sig2Int('AOSD'), 'Keyword - Armor Material Studded',
          Sig2Int('GCK1'), 'Keyword - Generic Craftable Keyword 01',
          Sig2Int('GCK2'), 'Keyword - Generic Craftable Keyword 02',
          Sig2Int('GCK3'), 'Keyword - Generic Craftable Keyword 03',
          Sig2Int('GCK4'), 'Keyword - Generic Craftable Keyword 04',
          Sig2Int('GCK5'), 'Keyword - Generic Craftable Keyword 05',
          Sig2Int('GCK6'), 'Keyword - Generic Craftable Keyword 06',
          Sig2Int('GCK7'), 'Keyword - Generic Craftable Keyword 07',
          Sig2Int('GCK8'), 'Keyword - Generic Craftable Keyword 08',
          Sig2Int('GCK9'), 'Keyword - Generic Craftable Keyword 09',
          Sig2Int('GCKX'), 'Keyword - Generic Craftable Keyword 10',
          Sig2Int('JWLR'), 'Keyword - Jewelry',
          Sig2Int('KWCU'), 'Keyword - Cuirass',
          Sig2Int('MNTK'), 'Keyword - Mount',
          Sig2Int('LMHP'), 'Local Map Hide Plane',
          Sig2Int('SLDM'), 'Snow LOD Material',
          Sig2Int('SLHD'), 'Snow LOD Material (HD)',
          Sig2Int('ALDM'), 'Ash LOD Material',
          Sig2Int('ALHD'), 'Ash LOD Material (HD)',
          Sig2Int('DGFL'), 'DialogueFollower Quest',
          Sig2Int('PTFR'), 'PotentialFollower Faction',
          Sig2Int('AVWP'), 'Werewolf Available Perks',
          Sig2Int('AVVP'), 'Vampire Available Perks',
          Sig2Int('RIWR'), 'Werewolf Race',
          Sig2Int('RIVR'), 'Vampire Race',
          Sig2Int('RIVS'), 'Vampire Spells',
          Sig2Int('DMXL'), 'Dragon Mount No Land List',
          Sig2Int('PCMD'), 'Player Can Mount Dragon Here List',
          Sig2Int('FMYS'), 'Flying Mount - Allowed Spells',
          Sig2Int('FMNS'), 'Flying Mount - Disallowed Spells',
          Sig2Int('MNT2'), 'Keyword - Mount',
          Sig2Int('AIVC'), 'Verlet Cape',
          Sig2Int('FTNP'), 'Furniture Test NPC',
          Sig2Int('COEX'), 'Keyword - Conditional Explosion',
          Sig2Int('VFNC'), 'Vampire Feed No Crime Faction',
          Sig2Int('KWSP'), 'Skyrim - Worldspace',
          Sig2Int('ALBM'), 'Keyword - Armor Material Light Bonemold',
          Sig2Int('ALCH'), 'Keyword - Armor Material Light Chitin',
          Sig2Int('ALNC'), 'Keyword - Armor Material Light Nordic',
          Sig2Int('ALSM'), 'Keyword - Armor Material Light Stalhrim',
          Sig2Int('FMFF'), 'Flying Mount - Fly Fast Worldspaces',
          Sig2Int('AHBM'), 'Keyword - Armor Material Heavy Bonemold',
          Sig2Int('AHCH'), 'Keyword - Armor Material Heavy Chitin',
          Sig2Int('AHNC'), 'Keyword - Armor Material Heavy Nordic',
          Sig2Int('AHSM'), 'Keyword - Armor Material Heavy Stalhrim',
          Sig2Int('WPNC'), 'Keyword - Weapon Material Nordic',
          Sig2Int('WPSM'), 'Keyword - Weapon Material Stalhrim'
        ]);

  c := CombineVarRecs(a, b);

  wbRecord(DOBJ, 'Default Object Manager', [
    wbArray(DNAM, 'Objects',
      wbStruct('Object', [
        //wbString('Use', 4),
        wbInteger('Use', itU32, wbEnum([], c)),
        wbFormID('Object ID')
      ]), 0, nil, nil, cpNormal, True
    )
  ]);

  wbRecord(LGTM, 'Lighting Template', [
    wbEDID,
    wbStruct(DATA, 'Lighting', [
      wbStruct('Ambient Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Directional Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Fog Color Near', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbFloat('Fog Near'),
      wbFloat('Fog Far'),
      wbInteger('Directional Rotation XY', itS32),
      wbInteger('Directional Rotation Z', itS32),
      wbFloat('Directional Fade'),
      wbFloat('Fog Clip Dist'),
      wbFloat('Fog Power'),
      wbByteArray('Unknown', 32),		// WindhelmLightingTemplate [LGTM:0007BA87] only find 24 !
      wbStruct('Fog Color Far', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbFloat('Fog Max'),
      wbStruct('Light Fade Distances', [
        wbFloat('Start'),
        wbFloat('End')
      ]),
      wbByteArray('Unknown', 4)
    ], cpNormal, True, nil, 11),
    wbStruct(DALC, 'Directional Ambient Lighting Colors', [wbAmbientColors], cpNormal, True)
  ]);

  wbRecord(MUSC, 'Music Type', [
    wbEDID,
    wbInteger(FNAM, 'Flags', itU32, wbFlags([
      {0x01} 'Plays One Selection',
      {0x02} 'Abrupt Transition',
      {0x04} 'Cycle Tracks',
      {0x08} 'Maintain Track Order',
      {0x10} 'Unknown 5',
      {0x20} 'Ducks Current Track'
    ]), cpNormal, True),
    wbStruct(PNAM, 'Data', [
      wbInteger('Priority', itU16),
      wbInteger('Ducking (dB)', itU16, wbDiv(100))
    ]),
    wbFloat(WNAM, 'Fade Duration'),
    wbArray(TNAM, 'Music Tracks', wbFormIDCk('Track', [MUST, NULL]))
  ]);

  wbRecord(FSTP, 'Footstep', [
    wbEDID,
    wbFormIDCk(DATA, 'Impact Data Set', [IPDS, NULL], False, cpNormal, True),
    wbString(ANAM, 'Tag', 0, cpNormal, True)
  ]);

  wbRecord(FSTS, 'Footstep Set', [
    wbEDID,
    wbStruct(XCNT, 'Count', [
      wbInteger('Walk Forward Sets', itU32),
      wbInteger('Run Forward Sets', itU32),
      wbInteger('Walk Forward Alternate Sets', itU32),
      wbInteger('Run Forward Alternate Sets', itU32),
      wbInteger('Walk Forward Alternate 2 Sets', itU32)
    ], cpNormal, True),
    wbArray(DATA, 'Footstep Sets', wbFormIDCk('Footstep', [FSTP]), 0, nil, nil, cpNormal, True)
  ]);

  wbSMNodeFlags := wbFlags([
    'Random',
    'Warn if no child quest started'
  ]);

  wbRecord(SMBN, 'Story Manager Branch Node', [
    wbEDID,
    wbFormIDCk(PNAM, 'Parent ', [SMQN, SMBN, SMEN, NULL]),
    wbFormIDCk(SNAM, 'Child ', [SMQN, SMBN, SMEN, NULL]),
    wbCITC,
    wbCTDAsCount,
    wbInteger(DNAM, 'Flags', itU32, wbSMNodeFlags),
    wbUnknown(XNAM)
  ], False, nil, cpNormal, False, nil, wbConditionsAfterSet);

  wbRecord(SMQN, 'Story Manager Quest Node', [
    wbEDID,
    wbFormIDCk(PNAM, 'Parent ', [SMQN, SMBN, SMEN, NULL]),
    wbFormIDCk(SNAM, 'Child ', [SMQN, SMBN, SMEN, NULL]),
    wbCITC,
    wbCTDAsCount,
    wbStruct(DNAM, 'Flags', [
      wbInteger('Node Flags', itU16, wbSMNodeFlags),
      wbInteger('Quest Flags', itU16, wbFlags([
        'Do all before repeating',
        'Shares event',
        'Num quests to run'
      ]))
    ]),
    wbInteger(XNAM, 'Max concurrent quests', itU32),
    wbInteger(MNAM, 'Num quests to run', itU32),
    wbInteger(QNAM, 'Quest Count', itU32, nil, cpBenign),
    wbRArray('Quests', wbRStructSK([0], 'Quest', [
      wbFormIDCk(NNAM, 'Quest', [QUST]),
      wbUnknown(FNAM),
      wbFloat(RNAM, 'Hours until reset', cpNormal, False, 1/24)
    ], []), cpNormal, False, nil, wbSMQNQuestsAfterSet)
  ], False, nil, cpNormal, False, nil, wbConditionsAfterSet);

  wbRecord(SMEN, 'Story Manager Event Node', [
    wbEDID,
    wbFormIDCk(PNAM, 'Parent ', [SMQN, SMBN, SMEN, NULL]),
    wbFormIDCk(SNAM, 'Child ', [SMQN, SMBN, SMEN, NULL]),
    wbCITC,
    wbCTDAsCount,
    wbInteger(DNAM, 'Flags', itU32, wbSMNodeFlags),
    wbUnknown(XNAM),
    wbString(ENAM, 'Type', 4)
  ], False, nil, cpNormal, False, nil, wbConditionsAfterSet);
end;

procedure DefineTES5j;
begin
  wbRecord(DLBR, 'Dialog Branch', [
    wbEDID,
    wbFormIDCk(QNAM, 'Quest', [QUST], False, cpNormal, True),
    wbInteger(TNAM, 'Unknown', itU32),
    wbInteger(DNAM, 'Flags', itU32, wbFlags([
      {0x01} 'Top-Level',
      {0x02} 'Blocking',
      {0x04} 'Exclusive'
    ])),
    wbFormIDCk(SNAM, 'Starting Topic', [DIAL], False, cpNormal, True)
  ]);

  wbRecord(MUST, 'Music Track', [
    wbEDID,
    wbInteger(CNAM, 'Track Type', itU32, wbEnum([], [
      Int64($23F678C3), 'Palette',
      Int64($6ED7E048), 'Single Track',
      Int64($A1A9C4D5), 'Silent Track'
    ]), cpNormal, True),
    wbFloat(FLTV, 'Duration'),
    wbFloat(DNAM, 'Fade-Out'),
    wbString(ANAM, 'Track Filename'),
    wbString(BNAM, 'Finale Filename'),
    wbArray(FNAM, 'Cue Points', wbFloat('Point')),
    wbStruct(LNAM, 'Loop Data', [
      wbFloat('Loop Begins'),
      wbFloat('Loop Ends'),
      wbInteger('Loop Count', itU32)
    ]),
    wbCITC,
    wbCTDAsCount,
    wbArray(SNAM, 'Tracks', wbFormIDCk('Track', [MUST, NULL]))
  ], False, nil, cpNormal, False, nil, wbConditionsAfterSet);

  wbRecord(DLVW, 'Dialog View', [
    wbEDID,
    wbFormIDCk(QNAM, 'Quest', [QUST], False, cpNormal, True),
    wbRArray('Branches', wbFormIDCk(BNAM, 'Branch', [DLBR])),
    wbRArray('Unknown TNAM', wbRStruct('Unknown', [
      wbUnknown(TNAM)
    ], [])),
    wbUnknown(ENAM),
    wbUnknown(DNAM)
  ]);

  wbRecord(WOOP, 'Word of Power', [
    wbEDID,
    wbFULL,
    wbLString(TNAM, 'Translation', 0, cpNormal, True)
  ]);

  wbRecord(SHOU, 'Shout', [
    wbEDID,
    wbFULL,
    wbMDOB,
    wbDESC,
    {>>> Don't sort <<<}
    wbRArray('Words of Power',
      wbStruct(SNAM, '', [
        wbFormIDCk('Word', [WOOP, NULL]),
        wbFormIDCk('Spell', [SPEL, NULL]),
        wbFloat('Recovery Time')
      ])
    )
  ]);

  wbRecord(EQUP, 'Equip Type', [
    wbEDID,
    wbArray(PNAM, 'Slot Parents', wbFormID('Can Be Equipped'), 0, nil, nil, cpNormal, False),
    wbInteger(DATA, 'Use All Parents', itU32, wbEnum(['False', 'True']))
  ]);

  wbRecord(RELA, 'Relationship', [
    wbEDID,
    wbStruct(DATA, 'Data', [
      wbFormIDCk('Parent', [NPC_, NULL]),
      wbFormIDCk('Child', [NPC_, NULL]),
      wbInteger('Rank', itU16, wbEnum([
        'Lover',
        'Ally',
        'Confidant',
        'Friend',
        'Acquaitance',
        'Rival',
        'Foe',
        'Enemy',
        'Archnemesis'
      ])),
      wbByteArray('Unknown', 1),
      wbInteger('Flags', itU8, wbFlags([
        {0x01} 'Unknown 1',
        {0x02} 'Unknown 2',
        {0x04} 'Unknown 3',
        {0x08} 'Unknown 4',
        {0x10} 'Unknown 5',
        {0x20} 'Unknown 6',
        {0x40} 'Unknown 7',
        {0x80} 'Secret'
      ])),
      wbFormIDCk('Association Type', [ASTP, NULL])
    ])
  ]);

  wbRecord(SCEN, 'Scene', [
    wbEDID,
    wbVMAD,
    wbInteger(FNAM, 'Flags', itU32, wbFlags([
      'Begin on Quest Start',
      'Stop on Quest End',
      'Unknown 3',
      'Repeat Conditions While True',
      'Interruptible'
    ])),
    wbRArray('Phases',
      wbRStruct('Phase', [
        wbEmpty(HNAM, 'Marker Phase Start'),
        wbString(NAM0, 'Name'),
        // CTDA before or after next
        //wbEmpty(NEXT, 'Marker'),
        wbRStruct('Start Conditions', [wbCTDAs], []),
        wbEmpty(NEXT, 'Marker'),
        wbRStruct('Completion Conditions', [wbCTDAs], []),
        {>>> BEGIN leftover from earlier CK versions <<<}
        wbRStruct('Unused', [
          wbUnknown(SCHR),
          wbUnknown(SCDA),
          wbUnknown(SCTX),
          wbUnknown(QNAM),
          wbUnknown(SCRO)
        ], [], cpIgnore, false, wbNeverShow),
        wbEmpty(NEXT, 'Marker'),
        wbRStruct('Unused', [
          wbUnknown(SCHR),
          wbUnknown(SCDA),
          wbUnknown(SCTX),
          wbUnknown(QNAM),
          wbUnknown(SCRO)
        ], [], cpIgnore, false, wbNeverShow),
        {>>> END leftover from earlier CK versions begin <<<}
        wbInteger(WNAM, 'Editor Width', itU32),
        wbEmpty(HNAM, 'Marker Phase End')
      ], [])
    ),
    wbRArray('Actors', wbRStruct('Actor', [
      wbInteger(ALID, 'Actor ID', itU32),
      wbInteger(LNAM, 'Flags', itU32, wbFlags([
        'No Player Activation',
        'Optional'
      ])),
      wbInteger(DNAM, 'Behaviour Flags', itU32, wbFlags([
        'Death Pause (unsused)',
        'Death End',
        'Combat Pause',
        'Combat End',
        'Dialogue Pause',
        'Dialogue End',
        'OBS_COM Pause',
        'OBS_COM End'
      ]))
    ], [])),
    wbRArray('Actions', wbRStruct('Action', [
      wbInteger(ANAM, 'Type', itU16, wbEnum([
        'Dialogue',
        'Package',
        'Timer'
      ])),
      wbString(NAM0, 'Name'),
      wbInteger(ALID, 'Actor ID', itS32),
      wbUnknown(LNAM),
      wbInteger(INAM, 'Index', itU32),
      wbInteger(FNAM, 'Flags', itU32, wbFlags([
        {0x00000001} 'Unknown 1',
        {0x00000002} 'Unknown 2',
        {0x00000004} 'Unknown 3',
        {0x00000008} 'Unknown 4',
        {0x00000010} 'Unknown 5',
        {0x00000020} 'Unknown 6',
        {0x00000040} 'Unknown 7',
        {0x00000080} 'Unknown 8',
        {0x00000100} 'Unknown 9',
        {0x00000200} 'Unknown 10',
        {0x00000400} 'Unknown 11',
        {0x00000800} 'Unknown 12',
        {0x00001000} 'Unknown 13',
        {0x00002000} 'Unknown 14',
        {0x00003000} 'Unknown 15',
        {0x00004000} 'Face Target',
        {0x00010000} 'Looping',
        {0x00020000} 'Headtrack Player'
      ])),
      wbInteger(SNAM, 'Start Phase', itU32),
      wbInteger(ENAM, 'End Phase', itU32),
      wbFloat(SNAM, 'Timer Seconds'),
      wbRArray('Packages', wbFormIDCk(PNAM, 'Package', [PACK])),
      wbFormIDCk(DATA, 'Topic', [DIAL, NULL]),
      wbInteger(HTID, 'Headtrack Actor ID', itS32),
      wbFloat(DMAX, 'Looping - Max'),
      wbFloat(DMIN, 'Looping - Min'),
      wbInteger(DEMO, 'Emotion Type', itU32, wbEmotionTypeEnum),
      wbInteger(DEVA, 'Emotion Value', itU32),
      {>>> BEGIN leftover from earlier CK versions <<<}
      wbRStruct('Unused', [
        wbUnknown(SCHR),
        wbUnknown(SCDA),
        wbUnknown(SCTX),
        wbUnknown(QNAM),
        wbUnknown(SCRO)
      ], [], cpIgnore, false, wbNeverShow),
      {>>> END leftover from earlier CK versions <<<}
      wbEmpty(ANAM, 'End Marker')
    ], [])),
    {>>> BEGIN leftover from earlier CK versions <<<}
    wbRStruct('Unused', [
      wbUnknown(SCHR),
      wbUnknown(SCDA),
      wbUnknown(SCTX),
      wbUnknown(QNAM),
      wbUnknown(SCRO)
    ], [], cpIgnore, false, wbNeverShow),
    wbEmpty(NEXT, 'Marker'),
    wbRStruct('Unused', [
      wbUnknown(SCHR),
      wbUnknown(SCDA),
      wbUnknown(SCTX),
      wbUnknown(QNAM),
      wbUnknown(SCRO)
    ], [], cpIgnore, false, wbNeverShow),
    {>>> END leftover from earlier CK versions <<<}
    wbFormIDCk(PNAM, 'Quest', [QUST]),
    wbInteger(INAM, 'Last Action Index', itU32),
    wbUnknown(VNAM),
    wbCTDAs
  ]);

  wbRecord(ASTP, 'Association Type', [
    wbEDID,
    wbString(MPRT, 'Male Parent Title'),
    wbString(FPRT, 'Female Parent Title'),
    wbString(MCHT, 'Male Child Title'),
    wbString(FCHT, 'Female Child Title'),
    wbInteger(DATA, 'Flags', itU32, wbFlags([
      'Related'
    ]))
  ]);
end;

procedure DefineTES5k;
begin

  wbRecord(OTFT, 'Outfit', [
    wbEDID,
    wbArrayS(INAM, 'Items', wbFormIDCk('Item', [ARMO, LVLI]))
  ]);

  wbRecord(ARTO, 'Art Object', [
    wbEDID,
    wbOBNDReq,
    wbMODL,
    wbInteger(DNAM, 'Art Type', itU32, wbEnum([
      'Magic Casting',
      'Magic Hit Effect',
      'Enchantment Effect'
    ]))
  ]);

  wbRecord(MATO, 'Material Object', [
    wbEDID,
    wbMODL,
    wbRArray('Property Data',
      wbByteArray(DNAM, 'Data', 0, cpIgnore, False, False, wbNeverShow)
    ),
    wbStruct(DATA, 'Directional Material Data', [
      wbFloat('Falloff Scale'),
      wbFloat('Falloff Bias'),
      wbFloat('Noise UV Scale'),
      wbFloat('Material UV Scale'),
      wbStruct('Projection Vector', [
        wbFloat('X'),
        wbFloat('Y'),
        wbFloat('Z')
      ]),
      wbFloat('Normal Dampener'),
      wbStruct('Single Pass Color', [
        wbFloat('Red', cpNormal, True, 255, 0),
        wbFloat('Green', cpNormal, True, 255, 0),
        wbFloat('Blue', cpNormal, True, 255, 0)
      ]),
      wbInteger('Flags', itU32, wbFlags(['Single Pass']))
    ], cpNormal, True, nil, 5)
  ]);

  wbRecord(MOVT, 'Movement Type', [
    wbEDID,
    wbString(MNAM, 'Name'),
    wbStruct(SPED, 'Default Data', [
      wbFloat('Left Walk'),
      wbFloat('Left Run'),
      wbFloat('Right Walk'),
      wbFloat('Right Run'),
      wbFloat('Forward Walk'),
      wbFloat('Forward Run'),
      wbFloat('Back Walk'),
      wbFloat('Back Run'),
      wbFloat('Rotate in Place Walk', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize),
      wbFloat('Rotate in Place Run', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize),
      wbFloat('Rotate while Moving Run', cpNormal, True, wbRotationFactor, wbRotationScale, nil, RadiansNormalize)
    ], cpNormal, True, nil, 10),
    wbStruct(INAM, 'Anim Change Thresholds', [
      wbFloat('Directional', cpNormal, True, 180/Pi),
      wbFloat('Movement Speed'),
      wbFloat('Rotation Speed', cpNormal, True, 180/Pi)
    ])
  ]);

  wbRecord(SNDR, 'Sound Descriptor', [
    wbEDID,
    wbUnknown(CNAM),
    wbFormID(GNAM, 'Category'),
    wbFormIDCk(SNAM, 'Alternate Sound For', [SNDR, NULL]),
    wbRArray('Sounds',
      wbRStruct('Sound Files', [
        wbString(ANAM, 'File Name')
      ],[])
    ),
    wbFormIDCk(ONAM, 'Output Model', [SOPM, NULL]),
    wbLString(FNAM, 'String', 0, cpIgnore),
    wbCTDAs,
    wbStruct(LNAM, 'Values', [
      wbByteArray('Unknown', 1),
      wbInteger('Looping', itU8, wbEnum([], [
        $00 , 'None',
        $08 , 'Loop',
        $10 , 'Envelope Fast',
        $20 , 'Envelope Slow'
      ])),
      wbByteArray('Unknown', 1),
      wbInteger('Rumble Send Value = (Small / 7) + ((Big / 7) * 16)', itU8)
    ]),
    wbStruct(BNAM, 'Values', [
      wbInteger('% Frequency Shift', itS8),
      wbInteger('% Frequency Variance', itS8),
      wbInteger('Priority', itU8),
      wbInteger('db Variance', itU8),
      wbInteger('Static Attenuation (db)', itU16, wbDiv(100))
    ])
  ]);

  wbRecord(DUAL, 'Dual Cast Data', [
    wbEDID,
    wbOBNDReq,
    wbStruct(DATA, 'Data', [
      wbFormIDCk('Projectile', [PROJ, NULL]),
      wbFormIDCk('Explosion', [EXPL, NULL]),
      wbFormIDCk('Effect Shader', [EFSH, NULL]),
      wbFormIDCk('Hit Effect Art', [ARTO, NULL]),
      wbFormIDCk('Impact Data Set', [IPDS, NULL]),
      wbInteger('Inherit Scale', itU32, wbFlags([
        'Hit Effect Art',
        'Projectile',
        'Explosion'
      ]))
    ], cpNormal, True)
  ]);

  wbRecord(SNCT, 'Sound Category', [
    wbEDID,
    wbFULL,
    wbInteger(FNAM, 'Flags', itU32, wbFlags([
      'Mute When Submerged',
      'Should Appear on Menu'
    ]), cpNormal, True),
    wbFormIDCk(PNAM, 'Parent', [SNCT]),
    wbInteger(VNAM, 'Static Volume Multiplier', itU16, wbDiv(65535)),
    wbInteger(UNAM, 'Default Menu Value', itU16, wbDiv(65535))
  ]);

  wbRecord(SOPM, 'Sound Output Model', [
    wbEDID,
    wbStruct(NAM1, 'Data', [
      wbInteger('Flags', itU8, wbFlags([
        'Attenuates With Distance',
        'Allows Rumble'
      ])),
      wbByteArray('Unknown', 2),
      wbInteger('Reverb Send %', itU8)
    ]),
    wbUnknown(FNAM), // leftover, unused
    wbInteger(MNAM, 'Type', itU32, wbEnum([
      'Uses HRTF',
      'Defined Speaker Output'
    ])),
    wbUnknown(CNAM), // leftover, unused
    wbUnknown(SNAM), // leftover, unused
    wbStruct(ONAM, 'Output Values', [
      wbArray('Channels', wbStruct('', [
        wbInteger('L', itU8),
        wbInteger('R', itU8),
        wbInteger('C', itU8),
        wbInteger('LFE', itU8),
        wbInteger('RL', itU8),
        wbInteger('RR', itU8),
        wbInteger('BL', itU8),
        wbInteger('BR', itU8)
      ]), [
        'Channel 0',
        'Channel 1',
        'Channel 2? (unused)'
      ])
    ]),
    wbStruct(ANAM, 'Attenuation Values', [
      wbByteArray('Unknown', 4),
      wbFloat('Min Distance'),
      wbFloat('Max Distance'),
      wbArray('Curve', wbInteger('Value', itU8), 5),
      wbByteArray('Unknown')
    ])
  ]);

  wbRecord(COLL, 'Collision Layer', [
    wbEDID,
    wbDESCReq,
    wbInteger(BNAM, 'ID?', itU32, nil, cpNormal, True),
    wbStruct(FNAM, 'Debug Color', [
      wbInteger('Red', itU8),
      wbInteger('Green', itU8),
      wbInteger('Blue', itU8),
      wbInteger('Unused', itU8)
    ], cpNormal, True),
    wbInteger(GNAM, 'Flags', itU32, wbFlags([
      {0x00000001} 'Trigger Volume',
      {0x00000002} 'Sensor',
      {0x00000004} 'Navmesh Obstacle'
    ]), cpNormal, True),
    wbString(MNAM, 'Name', 0, cpNormal, True),
    wbInteger(INTV, 'Interactables Count', itU32, nil, cpNormal, True),
    wbArrayS(CNAM, 'Collides With', wbFormIDCk('Forms', [COLL]), 0, cpNormal, False)
  ]);

  wbRecord(CLFM, 'Color', [
    wbEDID,
    wbFULL,
    wbCNAMReq,
    wbInteger(FNAM, 'Playable', itU32, wbEnum(['False', 'True']), cpNormal, True)
  ]);
end;

procedure DefineTES5l;
begin
  wbRecord(REVB, 'Reverb Parameters', [
    wbEDID,
    wbStruct(DATA, 'Data', [
      wbInteger('Decay Time (ms)', itU16),
      wbInteger('HF Reference (Hz)', itU16),
      wbInteger('Room Filter', itS8),
      wbInteger('Room HF Filter', itS8),
      wbInteger('Reflections', itS8),
      wbInteger('Reverb Amp', itS8),
      wbInteger('Decay HF Ratio', itU8, wbDiv(100)),
      wbInteger('Reflect Delay (ms), scaled', itU8),
      wbInteger('Reverb Delay (ms)', itU8),
      wbInteger('Diffusion %', itU8),
      wbInteger('Density %', itU8),
      wbInteger('Unknown', itU8)
    ], cpNormal, True)
  ]);

  wbRecord(GRAS, 'Grass', [
    wbEDID,
    wbOBNDReq,
    wbMODL,
    wbStruct(DATA, '', [
      wbInteger('Density', itU8),
      wbInteger('Min Slope', itU8),
      wbInteger('Max Slope', itU8),
      wbByteArray('Unknown', 1),
      wbInteger('Units From Water', itU16),
      wbByteArray('Unknown', 2),
      wbInteger('Units From Water Type', itU32, wbEnum([
        'Above - At Least',
        'Above - At Most',
        'Below - At Least',
        'Below - At Most',
        'Either - At Least',
        'Either - At Most',
        'Either - At Most Above',
        'Either - At Most Below'
      ])),
      wbFloat('Position Range'),
      wbFloat('Height Range'),
      wbFloat('Color Range'),
      wbFloat('Wave Period'),
      wbInteger('Flags', itU8, wbFlags([
        'Vertex Lighting',
        'Uniform Scaling',
        'Fit to Slope'
      ])),
      wbByteArray('Unknown', 3)
    ], cpNormal, True)
  ]);

  wbRecord(IDLE, 'Idle Animation', [
    wbEDID,
    wbCTDAs,
    wbString(DNAM, 'Filename'),
    wbString(ENAM, 'Animation Event'),
    wbArray(ANAM, 'Related Idle Animations', wbFormIDCk('Related Idle Animation', [AACT, IDLE, NULL]), ['Parent', 'Previous Sibling'], cpNormal, True),
    wbStruct(DATA, 'Data (unused)', [
      wbStruct('Looping seconds (both 255 forever)', [
        wbInteger('Min', itU8),
        wbInteger('Max', itU8)
      ]),
      wbInteger('Flags', itU8, wbFlags([
        {0x01} 'Parent',
        {0x02} 'Sequence',
        {0x04} 'No Attacking',
        {0x04} 'Blocking'
      ], True)),
      wbInteger('Animation Group Section', itU8{, wbIdleAnam}),
      wbInteger('Replay Delay', itU16)
    ], cpIgnore, True)
  ]);

  wbRecord(INFO, 'Dialog response', [
    wbEDID,
    wbVMAD,
    wbUnknown(DATA),
    wbStruct(ENAM, 'Response flags', [
      wbInteger('Flags', itU16, wbFlags([
        {0x0001} 'Goodbye',
        {0x0002} 'Random',
        {0x0004} 'Say once',
        {0x0008} 'Unknown 4',
        {0x0010} 'Unknown 5',
        {0x0020} 'Random end',
        {0x0040} 'Invisible continue',
        {0x0080} 'Walk Away',
        {0x0100} 'Walk Away Invisible in Menu',
        {0x0200} 'Force subtitle',
        {0x0400} 'Can move while greeting',
        {0x0800} 'No LIP File',
        {0x1000} 'Requires post-processing',
        {0x2000} 'Audio Output Override',
        {0x4000} 'Spends favor points',
        {0x8000} 'Unknown 16'
      ])),
      wbInteger('Reset Hours', itU16, wbDiv(2730))
    ]),
    wbFormIDCk(TPIC, 'Topic', [DIAL]),
    wbFormIDCkNoReach(PNAM, 'Previous INFO', [INFO, NULL]),
    wbInteger(CNAM, 'Favor Level', itU8, wbEnum([
      'None',
      'Small',
      'Medium',
      'Large'
    ])),

    wbRArray('Link To', wbFormIDCk(TCLT, 'Response', [DIAL, INFO, NULL])),
    wbFormID(DNAM, 'Response Data'),

    {>>> Unordered, CTDA can appear before or after LNAM <- REQUIRES CONFIRMATION <<<}
    wbRArray('Responses', wbRStruct('Response', [
      wbStruct(TRDT, 'Response Data', [
        wbInteger('Emotion Type', itU32, wbEmotionTypeEnum),
        wbInteger('Emotion Value', itU32),
        wbByteArray('Unused', 4),
        wbInteger('Response number', itU8),
        wbByteArray('Unused', 3),
        wbFormIDCk('Sound', [SNDR, NULL]),
        wbInteger('Flags', itU8, wbFlags([
          'Use Emotion Animation'
        ])),
        wbByteArray('Unused', 3)
      ]),
      wbLStringKC(NAM1, 'Response Text', 0),
      wbString(NAM2, 'Script Notes', 0),
      wbString(NAM3, 'Edits', 0),
      wbFormIDCk(SNAM, 'Idle Animations: Speaker', [IDLE]),
      wbFormIDCk(LNAM, 'Idle Animations: Listener', [IDLE])
    ], [])),

    wbCTDAs,

    {>>> BEGIN leftover from earlier CK versions <<<}
    wbRArray('Unknown',
      wbRStruct('Unknown', [
        wbUnknown(SCHR),
        wbFormID(QNAM, 'Unknown'),
        wbEmpty(NEXT, 'Marker')
      ], []), cpIgnore, false, nil, nil, wbNeverShow
    ),
    {>>> END leftover from earlier CK versions <<<}

    wbLString(RNAM, 'Prompt'),
    wbFormIDCk(ANAM, 'Speaker', [NPC_]),
    wbFormIDCk(TWAT, 'Walk Away Topic', [DIAL]),
    wbFormIDCk(ONAM, 'Audio Output Override', [SOPM])
  ], False, wbINFOAddInfo, cpNormal, False, nil{wbINFOAfterLoad});

  wbRecord(INGR, 'Ingredient', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbKSIZ,
    wbKWDAs,
    wbMODL,
    wbICON,
    wbDEST,
    wbETYP,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbStruct(DATA, '', [
      wbInteger('Value', itS32),
      wbFloat('Weight')
    ], cpNormal, True),
    wbStruct(ENIT, 'Effect Data', [
      wbInteger('Ingredient Value', itS32),
      wbInteger('Flags', itU32, wbFlags([
        {0x00000001} 'No auto-calculation',
        {0x00000002} 'Food item',
        {0x00000004} 'Unknown 3',
        {0x00000008} 'Unknown 4',
        {0x00000010} 'Unknown 5',
        {0x00000020} 'Unknown 6',
        {0x00000040} 'Unknown 7',
        {0x00000080} 'Unknown 8',
        {0x00000100} 'References Persist'
      ]))
    ], cpNormal, True),
    wbEffectsReq
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

  wbRecord(KEYM, 'Key', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULLReq,
    wbMODL,
    wbICON,
    wbDEST,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbKSIZ,
    wbKWDAs,
    wbStruct(DATA, '', [
      wbInteger('Value', itS32),
      wbFloat('Weight')
    ], cpNormal, True)
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

  wbQuadrantEnum := wbEnum([
    {0} 'Bottom Left',
    {1} 'Bottom Right',
    {2} 'Top Left',
    {3} 'Top Right'
  ]);

  if wbSimpleRecords then begin

    wbRecord(LAND, 'Landscape', [
      wbByteArray(DATA, 'Unknown'),
      wbByteArray(VNML, 'Vertex Normals'),
      wbByteArray(VHGT, 'Vertext Height Map'),
      wbByteArray(VCLR, 'Vertex Colours'),

      wbRArrayS('Layers', wbRUnion('Layer', [
        wbRStructSK([0],'Base Layer', [
          wbStructSK(BTXT, [1, 3], 'Base Layer Header', [
            wbFormIDCk('Texture', [LTEX, NULL]),
            wbInteger('Quadrant', itU8, wbQuadrantEnum),
            wbByteArray('Unknown', 1),
            wbInteger('Layer', itS16)
          ])
        ], []),
        wbRStructSK([0],'Alpha Layer', [
          wbStructSK(ATXT, [1, 3], 'Alpha Layer Header', [
            wbFormIDCk('Texture', [LTEX, NULL]),
            wbInteger('Quadrant', itU8, wbQuadrantEnum),
            wbByteArray('Unknown', 1),
            wbInteger('Layer', itS16)
          ]),
          wbByteArray(VTXT, 'Alpha Layer Data')
        ], [])
      ], [])),

      wbArray(VTEX, 'Textures', wbFormIDCk('Texture', [LTEX, NULL]))
    ]);

  end else begin

    wbRecord(LAND, 'Landscape', [
      wbByteArray(DATA, 'Unknown'),
      wbArray(VNML, 'Vertex Normals', wbStruct('Row', [
        wbArray('Columns', wbStruct('Column', [
          wbInteger('X', itU8),
          wbInteger('Y', itU8),
          wbInteger('Z', itU8)
        ]), 33)
      ]), 33),
      wbStruct(VHGT, 'Vertext Height Map', [
        wbFloat('Offset'),
        wbArray('Rows', wbStruct('Row', [
          wbArray('Columns', wbInteger('Column', itU8), 33)
        ]), 33),
        wbByteArray('Unknown', 3)
      ]),
      wbArray(VCLR, 'Vertex Colours', wbStruct('Row', [
        wbArray('Columns', wbStruct('Column', [
          wbInteger('X', itU8),
          wbInteger('Y', itU8),
          wbInteger('Z', itU8)
        ]), 33)
      ]), 33),

      wbRArrayS('Layers', wbRUnion('Layer', [
        wbRStructSK([0],'Base Layer', [
          wbStructSK(BTXT, [1, 3], 'Base Layer Header', [
            wbFormIDCk('Texture', [LTEX, NULL]),
            wbInteger('Quadrant', itU8, wbQuadrantEnum),
            wbByteArray('Unknown', 1),
            wbInteger('Layer', itS16)
          ])
        ], []),
        wbRStructSK([0],'Alpha Layer', [
          wbStructSK(ATXT, [1, 3], 'Alpha Layer Header', [
            wbFormIDCk('Texture', [LTEX, NULL]),
            wbInteger('Quadrant', itU8, wbQuadrantEnum),
            wbByteArray('Unknown', 1),
            wbInteger('Layer', itS16)
          ]),
          wbArrayS(VTXT, 'Alpha Layer Data', wbStructSK([0], 'Cell', [
            wbInteger('Position', itU16, wbAtxtPosition),
            wbByteArray('Unknown', 2),
            wbFloat('Opacity')
          ]))
        ], [])
      ], [])),

      wbArray(VTEX, 'Textures', wbFormIDCk('Texture', [LTEX, NULL]))
    ]);

  end;

  wbRecord(LIGH, 'Light', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbMODL,
    wbDEST,
    wbFULL,
    wbICON,
    wbStruct(DATA, '', [
      wbInteger('Time', itS32),
      wbInteger('Radius', itU32),
      wbStruct('Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbInteger('Unknown', itU8)
      ]),
      wbInteger('Flags', itU32, wbFlags([
        {0x00000001} 'Dynamic',
        {0x00000002} 'Can be Carried',
        {0x00000004} 'Negative',
        {0x00000008} 'Flicker',
        {0x00000010} 'Unknown',
        {0x00000020} 'Off By Default',
        {0x00000040} 'Flicker Slow',
        {0x00000080} 'Pulse',
        {0x00000100} 'Pulse Slow',
        {0x00000200} 'Spot Light',
        {0x00000400} 'Shadow Spotlight',
        {0x00000800} 'Shadow Hemisphere',
        {0x00001000} 'Shadow Omnidirectional',
        {0x00002000} 'Portal-strict'
      ])),
      wbFloat('Falloff Exponent'),
      wbFloat('FOV'),
      wbFloat('Near Clip'),
      wbStruct('Flicker Effect', [
        wbFloat('Period', cpNormal, False, 0.01),
        wbFloat('Intensity Amplitude'),
        wbFloat('Movement Amplitude')
      ]),
      wbInteger('Value', itU32),
      wbFloat('Weight')
    ], cpNormal, True),
    wbFloat(FNAM, 'Fade value', cpNormal, True),
    wbFormIDCk(SNAM, 'Sound', [SNDR])
  ], False, nil, cpNormal, False, wbLIGHAfterLoad);
end;

procedure DefineTES5m;
begin

  wbRecord(LSCR, 'Load Screen', [
    wbEDID,
    wbICON,
    wbDESCReq,
    wbCTDAs,
    wbFormIDCk(NNAM, 'Loading Screen NIF', [STAT, NULL], False, cpNormal, True),
    wbFloat(SNAM, 'Initial Scale'),
    wbStruct(RNAM, 'Initial Rotation', [
      wbInteger('X', itS16),
      wbInteger('Y', itS16),
      wbInteger('Z', itS16)
    ]),
    wbStruct(ONAM, 'Rotation Offset Constraints', [
      wbInteger('Min', itS16),
      wbInteger('Max', itS16)
    ]),
    wbStruct(XNAM, 'Initial Translation Offset', [
      wbFloat('X'),
      wbFloat('Y'),
      wbFloat('Z')
    ]),
    wbString(MOD2, 'Camera Path', 0, cpNormal, False)
  ]);

  wbRecord(LTEX, 'Landscape Texture', [
    wbEDID,
    wbFormIDCk(TNAM, 'Texture Set', [TXST], False, cpNormal, False),
    wbFormIDCk(MNAM, 'Material Type', [MATT, NULL], False, cpNormal, True),
    wbStruct(HNAM, 'Havok Data', [
      wbInteger('Friction', itU8),
      wbInteger('Restitution', itU8)
    ], cpNormal, True),
    wbInteger(SNAM, 'Texture Specular Exponent', itU8, nil, cpNormal, True),
    wbRArrayS('Grasses', wbFormIDCk(GNAM, 'Grass', [GRAS]))
  ]);

  wbRecord(LVLN, 'Leveled NPC', [
    wbEDID,
    wbOBNDReq,
    wbLVLD,
    wbInteger(LVLF, 'Flags', itU8, wbFlags([
      {0x01} 'Calculate from all levels <= player''s level',
      {0x02} 'Calculate for each item in count'
    ]), cpNormal, True),
    wbFormIDCk(LVLG, 'Global', [GLOB]),
    wbLLCT,
    wbRArrayS('Leveled List Entries',
      wbRStructExSK([0], [1], 'Leveled List Entry', [
        wbStructExSK(LVLO , [0, 2], [3], 'Base Data', [
          wbInteger('Level', itS16),
          wbByteArray('Unknown', 2, cpIgnore, false, wbNeverShow),
          wbFormIDCk('Reference', [NPC_, LVLN]),
          wbInteger('Count', itS16),
          wbByteArray('Unknown', 2, cpIgnore, false, wbNeverShow)
        ]),
				wbCOED
      ], []),
    cpNormal, True, nil, wbLVLOsAfterSet),
    wbMODL
  ], False, nil, cpNormal, False, nil, wbLLEAfterSet);

  wbRecord(LVLI, 'Leveled Item', [
    wbEDID,
    wbOBNDReq,
    wbLVLD,
    wbInteger(LVLF, 'Flags', itU8, wbFlags([
      {0x01} 'Calculate from all levels <= player''s level',
      {0x02} 'Calculate for each item in count',
      {0x04} 'Use All',
      {0x08} 'Special Loot'
    ]), cpNormal, True),
    wbFormIDCk(LVLG, 'Global', [GLOB]),
    wbLLCT,
    wbRArrayS('Leveled List Entries',
      wbRStructExSK([0], [1], 'Leveled List Entry', [
        wbStructExSK(LVLO , [0, 2], [3], 'Base Data', [
          wbInteger('Level', itU16),
          wbByteArray('Unknown', 2, cpIgnore, false, wbNeverShow),
          wbFormIDCk('Reference', [ARMO, AMMO, APPA, MISC, WEAP, BOOK, LVLI, KEYM, ALCH, LIGH, INGR, SLGM, SCRL]),
          wbInteger('Count', itU16),
          wbByteArray('Unknown', 2, cpIgnore, false, wbNeverShow)
        ]),
        wbCOED
      ], []), cpNormal, False, nil, wbLVLOsAfterSet
    )
  ], False, nil, cpNormal, False, nil, wbLLEAfterSet);

   wbRecord(LVSP, 'Leveled Spell', [
    wbEDID,
    wbOBNDReq,
    wbLVLD,
    wbInteger(LVLF, 'Flags', itU8, wbFlags([
      {0x01} 'Calculate from all levels <= player''s level',
      {0x02} 'Calculate for each item in count',
      {0x04} 'Use All Spells'
    ]), cpNormal, True),
    wbLLCT,
    wbRArrayS('Leveled List Entries',
      wbRStructSK([0], 'Leveled List Entry', [
        wbStructExSK(LVLO , [0, 2], [3], 'Base Data', [
        wbInteger('Level', itU16),
        wbByteArray('Unknown', 2, cpIgnore, false, wbNeverShow),
        wbFormIDCk('Reference', [SPEL, LVSP]),
        wbInteger('Count', itU16),
        wbByteArray('Unknown', 2, cpIgnore, false, wbNeverShow)
      ])
      ], []), cpNormal, False, nil, wbLVLOsAfterSet
    )
  ], False, nil, cpNormal, False, nil, wbLLEAfterSet);

  wbMGEFType := wbInteger('Archtype', itU32, wbEnum([
    {00} 'Value Modifier',
    {01} 'Script',
    {02} 'Dispel',
    {03} 'Cure Disease',
    {04} 'Absorb',
    {05} 'Dual Value Modifier',
    {06} 'Calm',
    {07} 'Demoralize',
    {08} 'Frenzy',
    {09} 'Disarm',
    {10} 'Command Summoned',
    {11} 'Invisibility',
    {12} 'Light',
    {13} 'Unknown 13',
    {14} 'Unknown 14',
    {15} 'Lock',
    {16} 'Open',
    {17} 'Bound Weapon',
    {18} 'Summon Creature',
    {19} 'Detect Life',
    {20} 'Telekinesis',
    {21} 'Paralysis',
    {22} 'Reanimate',
    {23} 'Soul Trap',
    {24} 'Turn Undead',
    {25} 'Guide',
    {26} 'Werewolf Feed',
    {27} 'Cure Paralysis',
    {28} 'Cure Addiction',
    {29} 'Cure Poison',
    {30} 'Concussion',
    {31} 'Value and Parts',
    {32} 'Accumulate Magnitude',
    {33} 'Stagger',
    {34} 'Peak Value Modifier',
    {35} 'Cloak',
    {36} 'Werewolf',
    {37} 'Slow Time',
    {38} 'Rally',
    {39} 'Enhance Weapon',
    {40} 'Spawn Hazard',
    {41} 'Etherealize',
    {42} 'Banish',
    {43} 'Spawn Scripted Ref',
    {44} 'Disguise',
    {45} 'Grab Actor',
    {46} 'Vampire Lord'
  ]), cpNormal, False, nil, wbMGEFArchtypeAfterSet);

  wbMGEFData := wbRStruct('Magic Effect Data', [
    wbStruct(DATA, 'Data', [
      wbInteger('Flags', itU32, wbFlags([
        {0x00000001}  'Hostile',
        {0x00000002}  'Recover',
        {0x00000004}  'Detrimental',
        {0x00000008}  'Snap to Navmesh',
        {0x00000010}  'No Hit Event',
				{0x00000020}  'Unknown 6',
				{0x00000040}  'Unknown 7',
				{0x00000080}  'Unknown 8',
				{0x00000100}  'Dispell with Keywords',
				{0x00000200}  'No Duration',
				{0x00000400}  'No Magnitude',
				{0x00000800}  'No Area',
				{0x00001000}  'FX Persist',
				{0x00002000}  'Unknown 14',
				{0x00004000}  'Gory Visuals',
				{0x00008000}  'Hide in UI',
				{0x00010000}  'Unknown 17',
				{0x00020000}  'No Recast',
				{0x00040000}  'Unknown 19',
				{0x00080000}  'Unknown 20',
				{0x00100000}  'Unknown 21',
				{0x00200000}  'Power Affects Magnitude',
				{0x00400000}  'Power Affects Duration',
				{0x00800000}  'Unknown 24',
				{0x01000000}  'Unknown 25',
				{0x02000000}  'Unknown 26',
				{0x04000000}  'Painless',
				{0x08000000}  'No Hit Effect',
				{0x10000000}  'No Death Dispel',
				{0x20000000}  'Unknown 30',
				{0x40000000}  'Unknown 31',
				{0x80000000}  'Unknown 32'
			])),
      wbFloat('Base Cost'),
      wbUnion('Assoc. Item', wbMGEFAssocItemDecider, [
        wbFormID('Unused', cpIgnore),
        wbFormIDCk('Assoc. Item', [LIGH, NULL]),
        wbFormIDCk('Assoc. Item', [WEAP, ARMO, NULL]),
        wbFormIDCk('Assoc. Item', [NPC_, NULL]),
        wbFormIDCk('Assoc. Item', [HAZD, NULL]),
        wbFormIDCk('Assoc. Item', [SPEL, NULL]),
        wbFormIDCk('Assoc. Item', [RACE, NULL]),
        wbFormIDCk('Assoc. Item', [ENCH, NULL]),
        wbFormIDCk('Assoc. Item', [KYWD, NULL])
      ], cpNormal, False, nil, wbMGEFAssocItemAfterSet),
      wbInteger('Magic Skill', itS32, wbActorValueEnum),
      wbInteger('Resist Value', itS32, wbActorValueEnum),
      wbByteArray('Unknown', 4),
      wbFormIDCk('Casting Light', [LIGH, NULL]),
      wbFloat('Taper Weight'),
      wbFormIDCk('Hit Shader', [EFSH, NULL]),
      wbFormIDCk('Enchant Shader', [EFSH, NULL]),
      wbInteger('Minimum Skill Level', itU32),
      wbStruct('Spellmaking', [
        wbInteger('Area', itU32),
        wbFloat('Casting Time')
      ]),
      wbFloat('Taper Curve'),
      wbFloat('Taper Duration'),
      wbFloat('Second AV Weight', cpNormal, False, nil, wbMGEFAV2WeightAfterSet),
      wbMGEFType,
      wbActorValue,
      wbFormIDCk('Projectile', [PROJ, NULL]),
      wbFormIDCk('Explosion', [EXPL, NULL]),
      wbInteger('Casting Type', itU32, wbCastEnum),
      wbInteger('Delivery', itU32, wbTargetEnum),
      wbInteger('Second Actor Value', itS32, wbActorValueEnum),
      wbFormIDCk('Casting Art', [ARTO, NULL]),
      wbFormIDCk('Hit Effect Art', [ARTO, NULL]),
      wbFormIDCk('Impact Data', [IPDS, NULL]),
      wbFloat('Skill Usage Multiplier'),
      wbStruct('Dual Casting', [
        wbFormIDCk('Art', [DUAL, NULL]),
        wbFloat('Scale')
      ]),
      wbFormIDCk('Enchant Art', [ARTO, NULL]),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbFormIDCk('Equip Ability', [SPEL, NULL]),
      wbFormIDCk('Image Space Modifier', [IMAD, NULL]),
      wbFormIDCk('Perk to Apply', [PERK, NULL]),
      wbInteger('Casting Sound Level', itU32, wbSoundLevelEnum),
      wbStruct('Script Effect AI', [
        wbFloat('Score'),
        wbFloat('Delay Time')
      ])
    ], cpNormal, True)
  ], []);

  wbRecord(MGEF, 'Magic Effect', [
    wbEDID,
    wbVMAD,
    wbFULL,
    wbMDOB,
    wbKSIZ,
    wbKWDAs,
    wbMGEFData,
    wbRArrayS('Counter Effects', wbFormIDCk(ESCE, 'Effect', [MGEF])),
    wbArray(SNDD, 'Sounds', wbStruct('', [
      wbInteger('Type', itU32, wbEnum([
        'Sheathe/Draw',
        'Charge',
        'Ready',
        'Release',
        'Concentration Cast Loop',
        'On Hit'
      ])),
      wbFormIDCk('Sound', [SNDR])
    ])),
    wbLStringKC(DNAM, 'Magic Item Description'),
    wbCTDAs
  ], False, nil, cpNormal, False, nil {wbMGEFAfterLoad}, wbKeywordsAfterSet);

  wbRecord(MISC, 'Misc. Item', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbICON,
    wbDEST,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbKSIZ,
    wbKWDAs,
    wbStruct(DATA, 'Data', [
      wbInteger('Value', itS32),
      wbFloat('Weight')
    ], cpNormal, True)
  ], False, nil, cpNormal, False, wbRemoveEmptyKWDA, wbKeywordsAfterSet);

  wbRecord(APPA, 'Alchemical Apparatus', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbICON,
    wbDEST,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbInteger(QUAL, 'Quality', itS32, wbEnum([], [
      0, 'Novice',
      1, 'Apprentice',
      2, 'Journeyman',
      3, 'Expert',
      4, 'Master'
    ])),
    wbDESC,
    wbStruct(DATA, 'Data', [
      wbInteger('Value', itU32),
      wbFloat('Weight')
    ])
  ]);

  wbRecord(COBJ, 'Constructible Object', [
    wbEDID,
    wbCOCT,
    wbCNTOs,
    wbCTDAs,
    wbFormID(CNAM, 'Created Object'),
    wbFormIDCk(BNAM, 'Workbench Keyword', [KYWD]),
    wbInteger(NAM1, 'Created Object Count', itU16)
  ], False, nil, cpNormal, False, nil, wbContainerAfterSet);

  wbRecord(NPC_, 'Non-Player Character (Actor)', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbStruct(ACBS, 'Configuration', [
      wbInteger('Flags', itU32, wbFlags([
        {0x00000001} 'Female',
        {0x00000002} 'Essential',
        {0x00000004} 'Is CharGen Face Preset',
        {0x00000008} 'Respawn',
        {0x00000010} 'Auto-calc stats',
        {0x00000020} 'Unique',
        {0x00000040} 'Doesn''t affect stealth meter',
        {0x00000080} 'PC Level Mult',
        {0x00000100} 'Use Template?',
        {0x00000200} 'Unknown 9',
        {0x00000400} 'Unknown 10',
        {0x00000800} 'Protected',
        {0x00001000} 'Unknown 12',
        {0x00002000} 'Unknown 13',
        {0x00004000} 'Summonable',
        {0x00008000} 'Unknown 15',
        {0x00010000} 'Doesn''t bleed',
        {0x00020000} 'Unknown 17',
        {0x00040000} 'Bleedout Override',
        {0x00080000} 'Opposite Gender Anims',
        {0x00100000} 'Simple Actor',
        {0x00200000} 'looped script?',
        {0x00400000} 'Unknown 22',
        {0x00800000} 'Unknown 23',
        {0x01000000} 'Unknown 24',
        {0x02000000} 'Unknown 25',
        {0x04000000} 'Unknown 26',
        {0x08000000} 'Unknown 27',
        {0x10000000} 'looped audio?',
        {0x20000000} 'Is Ghost',
        {0x40000000} 'Unknown 30',
        {0x80000000} 'Invulnerable'
      ])),
      wbInteger('Magicka Offset', itU16, nil, cpNormal, True, nil{wbActorTemplateUseStats}),
      wbInteger('Stamina Offset', itU16, nil, cpNormal, False, nil{wbActorTemplateUseAIData}),
      wbUnion('Level', wbNPCLevelDecider, [
        wbInteger('Level', itS16, nil, cpNormal, True, nil{wbActorTemplateUseStats}),
        wbInteger('Level Mult', itS16, wbDiv(1000), cpNormal, True, nil{wbActorTemplateUseStats})
      ], cpNormal, True, nil{wbActorTemplateUseStats}),
      wbInteger('Calc min level', itU16, nil, cpNormal, True, nil{wbActorTemplateUseStats}),
      wbInteger('Calc max level', itU16, nil, cpNormal, True, nil{wbActorTemplateUseStats}),
      wbInteger('Speed Multiplier', itU16, nil, cpNormal, True, nil{wbActorTemplateUseStats}),
      wbInteger('Disposition Base (unused)', itS16, nil, cpIgnore, True, nil{wbActorTemplateUseTraits}),
      wbInteger('Template Flags', itU16, wbFlags([
        {0x0001} 'Use Traits',
        {0x0002} 'Use Stats',
        {0x0004} 'Use Factions',
        {0x0008} 'Use Spell List',
        {0x0010} 'Use AI Data',
        {0x0020} 'Use AI Packages',
        {0x0040} 'Use Model/Animation?',
        {0x0080} 'Use Base Data',
        {0x0100} 'Use Inventory',
        {0x0200} 'Use Script',
        {0x0400} 'Use Def Pack List',
        {0x0800} 'Use Attack Data',
        {0x1000} 'Use Keywords'
      ])),
      wbInteger('Health Offset', itU16, nil, cpNormal, True, nil{wbActorTemplateUseStats}),
      wbInteger('Bleedout Override', itU16, nil, cpNormal, True, nil{wbActorTemplateUseStats})
    ], cpNormal, True),
    wbRArrayS('Factions',
      wbStructSK(SNAM, [0], 'Faction', [
        wbFormIDCk('Faction', [FACT]),
        wbInteger('Rank', itU8),
        wbByteArray('Unused', 3, cpIgnore)
      ]), cpNormal, False, nil, nil, nil{wbActorTemplateUseFactions}
    ),
    wbFormIDCk(INAM, 'Death item', [LVLI], False, cpNormal, False, nil{wbActorTemplateUseTraits}),
    wbFormIDCk(VTCK, 'Voice', [VTYP], False, cpNormal, False, nil{wbActorTemplateUseTraits}),
    wbFormIDCk(TPLT, 'Template', [LVLN, NPC_]),
    wbFormIDCk(RNAM, 'Race', [RACE], False, cpNormal, True, nil{wbActorTemplateUseTraits}),
    wbSPCT,
    wbSPLOs,
    wbDEST,
    wbFormIDCk(WNAM, 'Worn Armor', [ARMO], False, cpNormal, False),
    wbFormIDCk(ANAM, 'Far away model', [ARMO], False, cpNormal, False, nil{wbActorTemplateUseTraits}),
    wbFormIDCk(ATKR, 'Attack Race', [RACE], False, cpNormal, False),
    wbRArrayS('Attacks', wbAttackData),
    wbFormIDCk(SPOR, 'Spectator override package list', [FLST], False, cpNormal, False),
    wbFormIDCk(OCOR, 'Observe dead body override package list', [FLST], False, cpNormal, False),
    wbFormIDCk(GWOR, 'Guard warn override package list', [FLST], False, cpNormal, False),
    wbFormIDCk(ECOR, 'Combat override package list', [FLST], False, cpNormal, False),
    wbInteger(PRKZ, 'Perk Count', itU32, nil, cpBenign),
    wbRArrayS('Perks',
      wbStructSK(PRKR, [0], 'Perk', [
        wbFormIDCk('Perk', [PERK]),
        wbInteger('Rank', itU8),
        wbByteArray('Unused', 3, cpIgnore)
      ]), cpNormal, False, nil, wbPRKRsAfterSet
    ),
    wbCOCT,
    wbCNTOs,
    wbAIDT,
    wbRArray('Packages', wbFormIDCk(PKID, 'Package', [PACK]), cpNormal, False, nil{wbActorTemplateUseAIPackages}),
    wbKSIZ,
    wbKWDAs,
    wbFormIDCk(CNAM, 'Class', [CLAS], False, cpNormal, True),
    wbFULL,
    wbLString(SHRT, 'Short Name'),
    wbByteArray(DATA, 'Marker'),
    wbStruct(DNAM, 'Player Skills', [
      wbArray('Skill Values', wbInteger('Skill', itU8), [
        'OneHanded',
        'TwoHanded',
        'Marksman',
        'Block',
        'Smithing',
        'HeavyArmor',
        'LightArmor',
        'Pickpocket',
        'Lockpicking',
        'Sneak',
        'Alchemy',
        'Speechcraft',
        'Alteration',
        'Conjuration',
        'Destruction',
        'Illusion',
        'Restoration',
        'Enchanting'
      ]),
      wbArray('Skill Offsets', wbInteger('Skill', itU8), [
        'OneHanded',
        'TwoHanded',
        'Marksman',
        'Block',
        'Smithing',
        'HeavyArmor',
        'LightArmor',
        'Pickpocket',
        'Lockpicking',
        'Sneak',
        'Alchemy',
        'Speechcraft',
        'Alteration',
        'Conjuration',
        'Destruction',
        'Illusion',
        'Restoration',
        'Enchanting'
      ]),
      //wbByteArray('Unknown', 4),
      wbInteger('Health', itU16),
      wbInteger('Magicka', itU16),
      wbInteger('Stamina', itU16),
      wbByteArray('Unused', 2, cpIgnore),
      wbFloat('Far away model distance'),
      wbInteger('Geared up weapons', itU8),
      wbByteArray('Unused', 3, cpIgnore)
    ], cpNormal, False, nil{wbActorTemplateUseStatsAutoCalc}),
    wbRArrayS('Head Parts', wbFormIDCk(PNAM, 'Head Part', [HDPT]), cpNormal, False, nil, nil, nil{wbActorTemplateUseModelAnimation}),
    wbFormIDCk(HCLF, 'Hair Color', [CLFM], False, cpNormal, False),
    wbFormIDCk(ZNAM, 'Combat Style', [CSTY], False, cpNormal, False),
    wbFormIDCk(GNAM, 'Gift Filter', [FLST], False, cpNormal, False),
    wbUnknown(NAM5, cpNormal, True),
    wbFloat(NAM6, 'Height', cpNormal, True),
    wbFloat(NAM7, 'Weight', cpNormal, True),
    wbInteger(NAM8, 'Sound Level', itU32, wbSoundLevelEnum, cpNormal, True),
    wbCSDTs,
    // When CSCR exists CSDT, CSDI, CSDC are not present
    wbFormIDCk(CSCR, 'Inherits Sounds From', [NPC_], False, cpNormal, False),
    wbFormIDCk(DOFT, 'Default outfit', [OTFT], False, cpNormal, False),
    wbFormIDCk(SOFT, 'Sleeping outfit', [OTFT], False, cpNormal, False),
    wbFormIDCk(DPLT, 'Default Package List', [FLST], False, cpNormal, False),
    wbFormIDCk(CRIF, 'Crime faction', [FACT], False, cpNormal, False),
    wbFormIDCk(FTST, 'Head texture', [TXST], False, cpNormal, False),
    wbStruct(QNAM, 'Texture lighting', [
      wbFloat('Red'),
      wbFloat('Green'),
      wbFloat('Blue')
    ]),
    wbStruct(NAM9, 'Face morph', [
      wbFloat('Nose Long/Short'),
      wbFloat('Nose Up/Down'),
      wbFloat('Jaw Up/Down'),
      wbFloat('Jaw Narrow/Wide'),
      wbFloat('Jaw Farward/Back'),
      wbFloat('Cheeks Up/Down'),
      wbFloat('Cheeks Farward/Back'),
      wbFloat('Eyes Up/Down'),
      wbFloat('Eyes In/Out'),
      wbFloat('Brows Up/Down'),
      wbFloat('Brows In/Out'),
      wbFloat('Brows Farward/Back'),
      wbFloat('Lips Up/Down'),
      wbFloat('Lips In/Out'),
      wbFloat('Chin Narrow/Wide'),
      wbFloat('Chin Up/Down'),
      wbFloat('Chin Underbite/Overbite'),
      wbFloat('Eyes Farward/Back'),
      wbFloat('Unknown')
    ], cpNormal, False),
    wbStruct(NAMA, 'Face parts', [
      wbInteger('Nose', itU32),
      wbInteger('Unknown', itS32),
      wbInteger('Eyes', itU32),
      wbInteger('Mouth', itU32)
    ]),
    wbRArrayS('Tint Layers',
      wbRStructSK([0], 'Layer', [
        wbInteger(TINI, 'Tint Index', itU16),
        wbStruct(TINC, 'Tint Color', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbInteger('Alpha', itU8)
        ]),
        wbInteger(TINV, 'Interpolation Value', itU32, wbDiv(100)),
        wbInteger(TIAS, 'Preset', itS16)
      ], []))
  ], False, nil, cpNormal, False, wbNPCAfterLoad, wbNPCAfterSet);

  wbObjectTypeEnum := wbEnum([
    ' NONE',
    'Activators',
    'Armor',
    'Books',
    'Clothing',
    'Containers',
    'Doors',
    'Ingredients',
    'Lights',
    'Misc',
    'Flora',
    'Furniture',
    'Weapons: Any',
    'Ammo',
    'NPCs',
    'Creatures',
    'Keys',
    'Alchemy',
    'Food',
    ' All: Combat Wearable',
    ' All: Wearable',
    'Weapons: Ranged',
    'Weapons: Melee',
    'Weapons: NONE',
    'Actor Effects: Any',
    'Actor Effects: Range Target',
    'Actor Effects: Range Touch',
    'Actor Effects: Range Self',
    'Actors: Any'
  ]);

  wbPKDTSpecificFlagsUnused := False;

  wbPKDTFlags := wbFlags([
    {0x00000001} 'Offers Services',
    {0x00000002} 'Unknown 2',
    {0x00000004} 'Must complete',
    {0x00000008} 'Maintain Speed at Goal',
    {0x00000010} 'Unknown 5',
    {0x00000020} 'Unknown 6',
    {0x00000040} 'Unlock doors at package start',
    {0x00000080} 'Unlock doors at package end',
    {0x00000100} 'Unknown 9',
    {0x00000200} 'Continue if PC Near',
    {0x00000400} 'Once per day',
    {0x00000800} 'Unknown 12',
    {0x00001000} 'Unknown 13',
    {0x00002000} 'Preferred Speed',
    {0x00004000} 'Unknown 15',
    {0x00008000} 'Unknown 16',
    {0x00010000} 'Unknown 17',
    {0x00020000} 'Always Sneak',
    {0x00040000} 'Allow Swimming',
    {0x00080000} 'Unknown 20',
    {0x00100000} 'Ignore Combat',
    {0x00200000} 'Weapons Unequipped',
    {0x00400000} 'Unknown 23',
    {0x00800000} 'Weapon Drawn',
    {0x01000000} 'Unknown 25',
    {0x02000000} 'Unknown 26',
    {0x04000000} 'Unknown 27',
    {0x08000000} 'No Combat Alert',
    {0x10000000} 'Unknown 29',
    {0x20000000} 'Wear Sleep Outfit (unused)',
    {0x40000000} 'Unknown 31',
    {0x80000000} 'Unknown 32'
  ]);

  wbPKDTInterruptFlags := wbFlags([
    {0x0001}'Hellos to player',
    {0x0002}'Random conversations',
    {0x0004}'Observe combat behavior',
    {0x0008}'Greet corpse behavior',
    {0x0010}'Reaction to player actions',
    {0x0020}'Friendly fire comments',
    {0x0040}'Aggro Radius Behavior',
    {0x0080}'Allow Idle Chatter',
    {0x0100}'Unknown 9',
    {0x0200}'World Interactions',
    {0x0400}'Unknown 11',
    {0x0800}'Unknown 12',
    {0x1000}'Unknown 13',
    {0x2000}'Unknown 14',
    {0x4000}'Unknown 15',
    {0x8000}'Unknown 16'
  ]);
end;

procedure DefineTES5n;
begin

  wbUNAMs:= wbRArray('Data Inputs', wbRStruct('Data Input', [
    wbInteger(UNAM, 'Index', itS8),
    wbString(BNAM, 'Name'),
    wbInteger(PNAM, 'Flags', itU32, wbFlags([
      'Public'
    ]))
  ], []));

  wbRecord(PACK, 'Package', [
    wbEDID,
    wbVMAD,

    wbStruct(PKDT, 'Pack Data', [
      wbInteger('General Flags', itU32, wbPKDTFlags),
      wbInteger('Type', itU8, wbEnum ([], [
        18, 'Package',
        19, 'Package Template'
      ])),
      wbInteger('Interrupt Override', itU8, wbEnum([
        'None',
        'Spectator',
        'ObserveDead',
        'GuardWarn',
        'Combat'
      ])),
      wbInteger('Preferred Speed', itU8, wbEnum([
        'Walk',
        'Jog',
        'Run',
        'Fast Walk'
      ])),
      wbByteArray('Unknown', 1),
      wbInteger('Interrupt Flags', itU16, wbPKDTInterruptFlags),
      wbByteArray('Unknown', 2)
    ], cpNormal, True),

    wbStruct(PSDT, 'Schedule', [
      wbInteger('Month', itS8),
      wbInteger('Day of week', itS8, wbEnum([
        'Sunday',
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Weekdays',
        'Weekends',
        'Monday, Wednesday, Friday',
        'Tuesday, Thursday'
      ], [
        -1, 'Any'
      ])),
      wbInteger('Date', itU8),
      wbInteger('Hour', itS8),
      wbInteger('Minute', itS8),
      wbByteArray('Unused', 3, cpIgnore),
      wbInteger('Duration (minutes)', itS32)
    ], cpNormal, True),
    wbCTDAs,

    wbRStruct('Idle Animations', [
      wbInteger(IDLF, 'Flags', itU8, wbEnum([], [
         0, 'Unknown',
         8, 'Random',
         9, 'Run in Sequence',
        12, 'Random, Do Once',
        13, 'Run in Sequence, Do Once'
      ]), cpNormal, True),
      wbStruct(IDLC, '', [
        wbInteger('Animation Count', itU8, nil, cpBenign),
        wbByteArray('Unknown', 3)
      ], cpNormal, True, nil, 1),
      wbFloat(IDLT, 'Idle Timer Setting', cpNormal, True),
      wbArray(IDLA, 'Animations', wbFormIDCk('Animation', [IDLE]), 0, nil, wbIDLAsAfterSet, cpNormal, True),
      wbByteArray(IDLB, 'Unknown', 4, cpIgnore)
    ], [], cpNormal, False, nil, False, nil {cannot be totally removed , wbAnimationsAfterSet}),

    wbFormIDCk(CNAM, 'Combat Style', [CSTY]),
    wbFormIDCk(QNAM, 'Owner Quest', [QUST]),
    wbStruct(PKCU, 'Counter', [
      wbInteger('Data Input Count', itU32),
      wbFormIDCk('Package Template', [PACK, NULL]),
      wbInteger('Version Counter (autoincremented)', itU32)
    ], cpNormal, True),

    wbRStruct('Package Data', [
      wbRArray('Data Input Values', wbRStruct('Value', [
        wbString(ANAM, 'Type'),
        wbUnion(CNAM, 'Value', wbPubPackCNAMDecider, [
          {0} wbByteArray('Unknown'),
          {1} wbInteger('Bool', itU8, wbEnum(['False', 'True'])),
          {2} wbInteger('Integer', itU32),
          {3} wbFloat('Float')
        ]),
        wbUnknown(BNAM),
        wbPDTOs,
        wbPLDT,
        wbStruct(PTDA, 'Target', [wbTargetData]),
        wbUnknown(TPIC)
      ], [], cpNormal, False)),
      wbUNAMs
    ], []),
    wbByteArray(XNAM, 'Marker'),

    wbRStruct('Procedure Tree', [
      wbRArray('Branches', wbRStruct('Branch', [
        wbString(ANAM, 'Branch Type'),
        wbCITC,
        wbCTDAsCount,
        wbStruct(PRCB, 'Root', [
          wbInteger('Branch Count', itU32),
          wbInteger('Flags', itU32, wbFlags([
            'Repeat when Complete',
            'Unknown 1'
          ]))
        ]),
        wbString(PNAM, 'Procedure Type'),
        wbInteger(FNAM, 'Flags', itU32, wbFlags(['Success Completes Package'])),
        wbRArray('Data Input Indexes', wbInteger(PKC2, 'Index', itU8)),
        {>>> PFO2 should be single, there is only 1 PACK [00095F46] <PatrolAndHunt> in Skyrim.esm with 2xPFO2 <<<}
        wbRArray('Flags Override',
          wbStruct(PFO2, 'Data', [
            wbInteger('Set General Flags', itU32, wbPKDTFlags),
            wbInteger('Clear General Flags', itU32, wbPKDTFlags),
            wbInteger('Set Interrupt Flags', itU16, wbPKDTInterruptFlags),
            wbInteger('Clear Interrupt Flags', itU16, wbPKDTInterruptFlags),
            wbInteger('Preferred Speed Override', itU8, wbEnum([
              'Walk',
              'Jog',
              'Run',
              'Fast Walk'
            ])),
            wbByteArray('Unknown', 3)
          ])
        ),
        wbRArray('Unknown', wbUnknown(PFOR), cpIgnore)
      ], [], cpNormal, False, nil, False, nil, wbConditionsAfterSet))
    ], []),
    wbUNAMs,
    wbRStruct('OnBegin', [
      wbEmpty(POBA, 'OnBegin Marker', cpNormal, True),
      wbFormIDCk(INAM, 'Idle', [IDLE, NULL], False, cpNormal, True),
      {>>> BEGIN leftover from earlier CK versions <<<}
      wbByteArray(SCHR, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(SCTX, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(QNAM, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(TNAM, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      {>>> END leftover from earlier CK versions <<<}
      wbPDTOs
    ], []),
    wbRStruct('OnEnd', [
      wbEmpty(POEA, 'OnEnd Marker', cpNormal, True),
      wbFormIDCk(INAM, 'Idle', [IDLE, NULL], False, cpNormal, True),
      {>>> BEGIN leftover from earlier CK versions <<<}
      wbByteArray(SCHR, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(SCTX, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(QNAM, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(TNAM, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      {>>> END leftover from earlier CK versions <<<}
      wbPDTOs
    ], []),
    wbRStruct('OnChange', [
      wbEmpty(POCA, 'OnChange Marker', cpNormal, True),
      wbFormIDCk(INAM, 'Idle', [IDLE, NULL], False, cpNormal, True),
      {>>> BEGIN leftover from earlier CK versions <<<}
      wbByteArray(SCHR, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(SCDA, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(SCTX, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(QNAM, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(TNAM, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      {>>> END leftover from earlier CK versions <<<}
      wbPDTOs
    ], [])
  ], False, nil, cpNormal, False, nil {wbPACKAfterLoad});

  wbQUSTAliasFlags :=
    wbStruct(FNAM, 'Alias Flags', [
      wbInteger('Flags', itU16, wbFlags([
        {0x0001}'Reserves Location/Reference',
        {0x0002}'Optional',
        {0x0004}'Quest Object',
        {0x0008}'Allow Reuse in Quest',
        {0x0010}'Allow Dead',
        {0x0020}'Matching Ref - In Loaded Area',
        {0x0040}'Essential',
        {0x0080}'Allow Disabled',
        {0x0100}'Stores Text',
        {0x0200}'Allow Reserved',
        {0x0400}'Protected',
        {0x0800}'Forced by Aliases?',
        {0x1000}'Allow Destroyed',
        {0x2000}'Matching Ref - Closest',
        {0x4000}'Uses Stored Text',
        {0x8000}'Initially Disabled'
      ])),
      wbInteger('Additional Flags', itU16, wbFlags([
        {0x0001}'Allow Cleared',
        {0x0002}'Clear Names When Removed'
      ]))
    ], cpNormal, False, nil, 1);

  wbRecord(QUST, 'Quest', [
    wbEDID,
    wbVMAD,
    wbFULL,
    wbStruct(DNAM, 'General', [
      wbInteger('Flags', itU16, wbFlags([
        {0x0001} 'Start Game Enabled',
        {0x0002} 'Unknown 2',
        {0x0004} 'Unknown 3',
        {0x0008} 'Allow repeated stages',
        {0x0010} 'Unknown 5',
        {0x0020} 'Unknown 6',
        {0x0040} 'Unknown 7',
        {0x0080} 'Unknown 8',
        {0x0100} 'Run Once',
        {0x0200} 'Exclude from dialogue export',
        {0x0400} 'Warn on alias fill failure',
        {0x0800} 'Unknown 12',
        {0x1000} 'Unknown 13'
      ])),
      wbInteger('Priority', itU8),
      wbInteger('Form Version', itU8, nil, cpIgnore),
      wbByteArray('Unknown', 4),
      wbInteger('Type', itU32, wbEnum([
        {0} 'None',
        {1} 'Main Quest',
        {2} 'Mages'' Guild',
        {3} 'Thieves'' Guild',
        {4} 'Dark Brotherhood',
        {5} 'Companion Quests',
        {6} 'Miscellaneous',
        {7} 'Daedric',
        {8} 'Side Quest',
        {9} 'Civil War',
       {10} 'DLC01 - Vampire',
       {11} 'DLC02 - Dragonborn'
      ]))
    ]),
    wbString(ENAM, 'Event', 4),
    wbRArray('Text Display Globals', wbFormIDCk(QTGL, 'Global', [GLOB])),
    wbString(FLTR, 'Object Window Filter', 0, cpTranslate),
    wbRStruct('Quest Dialogue Conditions', [wbCTDAs], [], cpNormal, False),
    wbEmpty(NEXT, 'Marker'),
    wbCTDAs, {>>> Unknown, doesn't show up in CK <<<}
    wbRArrayS('Stages', wbRStructSK([0], 'Stage', [
      wbStructSK(INDX, [0], 'Stage Index', [
        wbInteger('Stage Index', itU16),
        wbInteger('Flags', itU8, wbFlags([
          {0x01} 'Unknown 1',
          {0x02} 'Start Up Stage',
          {0x04} 'Shut Down Stage',
          {0x08} 'Keep Instance Data From Here On'
        ])),
        wbInteger('Unknown', itU8)
      ]),
      wbRArray('Log Entries', wbRStruct('Log Entry', [
        wbInteger(QSDT, 'Stage Flags', itU8, wbFlags([
          {0x01} 'Complete Quest',
          {0x02} 'Fail Quest'
        ])),
        wbCTDAs,
        wbLString(CNAM, 'Log Entry', 0, cpTranslate),
        wbFormIDCk(NAM0, 'Next Quest', [QUST]),
        {>>> BEGIN leftover from earlier CK versions <<<}
        wbByteArray(SCHR, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
        wbByteArray(SCTX, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
        wbByteArray(QNAM, 'Unused', 0, cpIgnore, false, false, wbNeverShow)
        {>>> END leftover from earlier CK versions <<<}
      ], []))
    ], [])),
    wbRArray('Objectives', wbRStruct('Objective', [
      wbInteger(QOBJ, 'Objective Index', itU16),
      wbInteger(FNAM, 'Flags', itU32, wbFlags(['ORed With Previous'])),
      wbLString(NNAM, 'Display Text', 0, cpNormal, True),
      wbRArray('Targets', wbRStruct('Target', [
        wbStruct(QSTA, 'Target', [
          wbInteger('Alias', itS32, wbQuestAliasToStr, wbStrToAlias),
          wbInteger('Flags', itU8, wbFlags([
            {0x01} 'Compass Marker Ignores Locks'
          ])),
          wbByteArray('Unused', 3)
        ]),
        wbCTDAs
      ], []))
    ], [])),
    wbByteArray(ANAM, 'Aliases Marker', 4),
    wbRArray('Aliases',
      wbRUnion('Alias', [

        // Reference Alias
        wbRStruct('Alias', [
          wbInteger(ALST, 'Reference Alias ID', itU32),
          wbString(ALID, 'Alias Name'),
          wbQUSTAliasFlags,
          wbInteger(ALFI, 'Force Into Alias When Filled', itS32, wbQuestAliasToStr, wbStrToAlias),
          wbFormIDCk(ALFL, 'Specific Location', [LCTN]),
          wbFormID(ALFR, 'Forced Reference'),
          wbFormIDCk(ALUA, 'Unique Actor', [NPC_]),
          wbRStruct('Location Alias Reference', [
            wbInteger(ALFA, 'Alias', itS32, wbQuestAliasToStr, wbStrToAlias),
            wbFormIDCk(KNAM, 'Keyword', [KYWD]),
            wbFormIDCk(ALRT, 'Ref Type', [LCRT])
          ], []),
          wbRStruct('External Alias Reference', [
            wbFormIDCk(ALEQ, 'Quest', [QUST]),
            wbInteger(ALEA, 'Alias', itS32, wbQuestExternalAliasToStr, wbStrToAlias)
          ], []),
          wbRStruct('Create Reference to Object', [
            wbFormID(ALCO, 'Object'),
            wbStruct(ALCA, 'Alias', [
              wbInteger('Alias', itS16, wbQuestAliasToStr, wbStrToAlias),
              wbInteger('Create', itU16, wbEnum([] ,[
                $0000, 'At',
                $8000, 'In'
              ]))
            ]),
            wbInteger(ALCL, 'Level', itU32, wbEnum([
              'Easy',
              'Medium',
              'Hard',
              'Very Hard',
              'None'
            ]))
          ], []),
          wbRStruct('Find Matching Reference Near Alias', [
            wbInteger(ALNA, 'Alias', itS32, wbQuestAliasToStr, wbStrToAlias),
            wbInteger(ALNT, 'Type', itU32, wbEnum([
              'Linked Ref Child'
            ]))
          ], []),
          wbRStruct('Find Matching Reference From Event', [
            wbString(ALFE, 'From Event', 4),
            wbByteArray(ALFD, 'Event Data')
          ], []),
          wbCTDAs,
          wbKSIZ,
          wbKWDAs,
          wbCOCT,
          wbCNTOs,
          wbFormIDCk(SPOR, 'Spectator override package list', [FLST], False, cpNormal, False),
          wbFormIDCk(OCOR, 'Observe dead body override package list', [FLST], False, cpNormal, False),
          wbFormIDCk(GWOR, 'Guard warn override package list', [FLST], False, cpNormal, False),
          wbFormIDCk(ECOR, 'Combat override package list', [FLST], False, cpNormal, False),
          wbFormIDCk(ALDN, 'Display Name', [MESG]),
          wbRArray('Alias Spells', wbFormIDCk(ALSP, 'Spell', [SPEL])),
          wbRArray('Alias Factions', wbFormIDCk(ALFC, 'Faction', [FACT])),
          wbRArray('Alias Package Data', wbFormIDCk(ALPC, 'Package', [PACK])),
          wbFormIDCk(VTCK, 'Voice Types', [NPC_, FLST, NULL]),
          wbEmpty(ALED, 'Alias End', cpNormal, True)
        ], [], cpNormal, False, nil, False, nil, wbContainerAfterSet),

        // Location Alias
        wbRStruct('Alias', [
          wbInteger(ALLS, 'Location Alias ID', itU32),
          wbString(ALID, 'Alias Name'),
          wbQUSTAliasFlags,
          wbInteger(ALFI, 'Force Into Alias When Filled', itS32, wbQuestAliasToStr, wbStrToAlias),
          wbFormIDCk(ALFL, 'Specific Location', [LCTN]),
          wbFormID(ALFR, 'Forced Reference'),
          wbFormIDCk(ALUA, 'Unique Actor', [NPC_]),
          wbRStruct('Location Alias Reference', [
            wbInteger(ALFA, 'Alias', itS32, wbQuestAliasToStr, wbStrToAlias),
            wbFormIDCk(KNAM, 'Keyword', [KYWD]),
            wbFormIDCk(ALRT, 'Ref Type', [LCRT])
          ], []),
          wbRStruct('External Alias Reference', [
            wbFormIDCk(ALEQ, 'Quest', [QUST]),
            wbInteger(ALEA, 'Alias', itS32, wbQuestExternalAliasToStr, wbStrToAlias)
          ], []),
          wbRStruct('Create Reference to Object', [
            wbFormID(ALCO, 'Object'),
            wbStruct(ALCA, 'Alias', [
              wbInteger('Alias', itS16, wbQuestAliasToStr, wbStrToAlias),
              wbInteger('Create', itU16, wbEnum([] ,[
                $0000, 'At',
                $8000, 'In'
              ]))
            ]),
            wbInteger(ALCL, 'Level', itU32, wbEnum([
              'Easy',
              'Medium',
              'Hard',
              'Very Hard',
              'None'
            ]))
          ], []),
          wbRStruct('Find Matching Reference Near Alias', [
            wbInteger(ALNA, 'Alias', itS32, wbQuestAliasToStr, wbStrToAlias),
            wbInteger(ALNT, 'Type', itU32, wbEnum([
              'Linked Ref Child'
            ]))
          ], []),
          wbRStruct('Find Matching Reference From Event', [
            wbString(ALFE, 'From Event', 4),
            wbByteArray(ALFD, 'Event Data')
          ], []),
          wbCTDAs,
          wbKSIZ,
          wbKWDAs,
          wbCOCT,
          wbCNTOs,
          wbFormIDCk(SPOR, 'Spectator override package list', [FLST], False, cpNormal, False),
          wbFormIDCk(OCOR, 'Observe dead body override package list', [FLST], False, cpNormal, False),
          wbFormIDCk(GWOR, 'Guard warn override package list', [FLST], False, cpNormal, False),
          wbFormIDCk(ECOR, 'Combat override package list', [FLST], False, cpNormal, False),
          wbFormIDCk(ALDN, 'Display Name', [MESG]),
          wbRArray('Alias Spells', wbFormIDCk(ALSP, 'Spell', [SPEL])),
          wbRArray('Alias Factions', wbFormIDCk(ALFC, 'Faction', [FACT])),
          wbRArray('Alias Package Data', wbFormIDCk(ALPC, 'Package', [PACK])),
          wbFormIDCk(VTCK, 'Voice Types', [NPC_, FLST, NULL]),
          wbEmpty(ALED, 'Alias End', cpNormal, True)
        ], [], cpNormal, False, nil, False, nil, wbContainerAfterSet)
      ], [])
    ),
    wbString(NNAM, 'Description', 0, cpNormal, False),
    wbRArray('Targets', wbRStruct('Target', [
      wbStruct(QSTA, 'Target', [
        wbFormIDCkNoReach('Target', [ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA], True),
        wbInteger('Flags', itU8, wbFlags([
          {0x01} 'Compass Marker Ignores Locks'
        ])),
        wbByteArray('Unknown', 3)
      ]),
      wbCTDAs
    ], []))
  ]);

  wbBodyPartIndexEnum := wbEnum([
    'Body Texture'
  ]);

  wbNoseMorphFlags := wbInteger('Nose Morph Flags', itU32, wbFlags([
    {0x00000001}'NoseType0',
    {0x00000002}'NoseType1',
    {0x00000004}'NoseType2',
    {0x00000008}'NoseType3',
    {0x00000010}'NoseType4',
    {0x00000020}'NoseType5',
    {0x00000040}'NoseType6',
    {0x00000080}'NoseType7',
    {0x00000100}'NoseType8',
    {0x00000200}'NoseType9',
    {0x00000400}'NoseType10',
    {0x00000800}'NoseType11',
    {0x00001000}'NoseType12',
    {0x00002000}'NoseType13',
    {0x00004000}'NoseType14',
    {0x00008000}'NoseType15',
    {0x00010000}'NoseType16',
    {0x00020000}'NoseType17',
    {0x00040000}'NoseType18',
    {0x00080000}'NoseType19',
    {0x00100000}'NoseType20',
    {0x00200000}'NoseType21',
    {0x00400000}'NoseType22',
    {0x00800000}'NoseType23',
    {0x01000000}'NoseType24',
    {0x02000000}'NoseType25',
    {0x04000000}'NoseType26',
    {0x08000000}'NoseType27',
    {0x10000000}'NoseType28',
    {0x20000000}'NoseType29',
    {0x40000000}'NoseType30',
    {0x80000000}'NoseType31'
  ]));

  wbBrowMorphFlags := wbInteger('Brow Morph Flags', itU32, wbFlags([
    {0x00000001}'BrowType0',
    {0x00000002}'BrowType1',
    {0x00000004}'BrowType2',
    {0x00000008}'BrowType3',
    {0x00000010}'BrowType4',
    {0x00000020}'BrowType5',
    {0x00000040}'BrowType6',
    {0x00000080}'BrowType7',
    {0x00000100}'BrowType8',
    {0x00000200}'BrowType9',
    {0x00000400}'BrowType10',
    {0x00000800}'BrowType11',
    {0x00001000}'BrowType12',
    {0x00002000}'BrowType13',
    {0x00004000}'BrowType14',
    {0x00008000}'BrowType15',
    {0x00010000}'BrowType16',
    {0x00020000}'BrowType17',
    {0x00040000}'BrowType18',
    {0x00080000}'BrowType19',
    {0x00100000}'BrowType20'
  ], True));

  wbEyesMorphFlags01 := wbInteger('Eye Morph Flags 1', itU32, wbFlags([
    {0x00000001}'EyesType0',
    {0x00000002}'EyesType1',
    {0x00000004}'EyesType2',
    {0x00000008}'EyesType3',
    {0x00000010}'EyesType4',
    {0x00000020}'EyesType5',
    {0x00000040}'EyesType6',
    {0x00000080}'EyesType7',
    {0x00000100}'EyesType8',
    {0x00000200}'EyesType9',
    {0x00000400}'EyesType10',
    {0x00000800}'EyesType11',
    {0x00001000}'EyesType12',
    {0x00002000}'EyesType13',
    {0x00004000}'EyesType14',
    {0x00008000}'EyesType15',
    {0x00010000}'EyesType16',
    {0x00020000}'EyesType17',
    {0x00040000}'EyesType18',
    {0x00080000}'EyesType19',
    {0x00100000}'EyesType20',
    {0x00200000}'EyesType21',
    {0x00400000}'EyesType22',
    {0x00800000}'EyesType23',
    {0x01000000}'EyesType24',
    {0x02000000}'EyesType25',
    {0x04000000}'EyesType26',
    {0x08000000}'EyesType27',
    {0x10000000}'EyesType28',
    {0x20000000}'EyesType29',
    {0x40000000}'EyesType30',
    {0x80000000}'EyesType31'
  ]));

  wbEyesMorphFlags02 := wbInteger('Eye Morph Flags 2', itU8, wbFlags([
    {0x00000001}'EyesType32',
    {0x00000002}'EyesType33',
    {0x00000004}'EyesType34',
    {0x00000008}'EyesType35',
    {0x00000010}'EyesType36',
    {0x00000020}'EyesType37',
    {0x00000040}'EyesType38'
  ], True));

  wbLipMorphFlags := wbInteger('Lip Morph Flags', itU32, wbFlags([
    {0x00000001}'LipType0',
    {0x00000002}'LipType1',
    {0x00000004}'LipType2',
    {0x00000008}'LipType3',
    {0x00000010}'LipType4',
    {0x00000020}'LipType5',
    {0x00000040}'LipType6',
    {0x00000080}'LipType7',
    {0x00000100}'LipType8',
    {0x00000200}'LipType9',
    {0x00000400}'LipType10',
    {0x00000800}'LipType11',
    {0x00001000}'LipType12',
    {0x00002000}'LipType13',
    {0x00004000}'LipType14',
    {0x00008000}'LipType15',
    {0x00010000}'LipType16',
    {0x00020000}'LipType17',
    {0x00040000}'LipType18',
    {0x00080000}'LipType19',
    {0x00100000}'LipType20',
    {0x00200000}'LipType21',
    {0x00400000}'LipType22',
    {0x00800000}'LipType23',
    {0x01000000}'LipType24',
    {0x02000000}'LipType25',
    {0x04000000}'LipType26',
    {0x08000000}'LipType27',
    {0x10000000}'LipType28',
    {0x20000000}'LipType29',
    {0x40000000}'LipType30',
    {0x80000000}'LipType31'
  ]));

  wbTintMaskTypeEnum := wbEnum([
    'None',
    'Lip Color',
    'Cheek Color',
    'Eyeliner',
    'EyeSocket Upper',
    'EyeSocket Lower',
    'Skin Tone',
    'Paint',
    'Laugh Lines',
    'Cheek Color Lower',
    'Nose',
    'Chin',
    'Neck',
    'Forehead',
    'Dirt',
    'Unknown 16'
  ]);

  wbTints := wbRArray('Tint Masks', wbRStruct('Tint Assets', [
    wbRArray('Tint Layer', wbRStruct('Texture', [
      wbInteger(TINI, 'Unknown', itU16),
      wbString(TINT, 'File Name'),
      {>>> When set to None TINP does not exist Needs routine to add when
      changing the Mask Type <<<}
      wbInteger(TINP, 'Mask Type', itU16, wbTintMaskTypeEnum),
      wbFormIDCk(TIND, 'Preset Default', [CLFM, NULL])
    ], [])),
    wbRArray('Presets', wbRStruct('Preset', [
      wbFormIDCk(TINC, 'Color', [CLFM, NULL]),
			wbFloat(TINV, 'Default Value'),
      wbInteger(TIRS, 'Unknown', itU16)
    ], []))
  ], []));

  wbRACE_DATAFlags01 := wbInteger('Flags', itU32, wbFlags([
    {0x00000001}'Playable',
    {0x00000002}'FaceGen Head',
    {0x00000004}'Child',
    {0x00000008}'Tilt Front/Back',
    {0x00000010}'Tilt Left/Right',
    {0x00000020}'No Shadow',
    {0x00000040}'Swims',
    {0x00000080}'Flies',
    {0x00000100}'Walks',
    {0x00000200}'Immobile',
    {0x00000400}'Not Pushable',
    {0x00000800}'No Combat In Water',
    {0x00001000}'No Rotating to Head-Track',
    {0x00002000}'Don''t Show Blood Spray',
    {0x00004000}'Don''t Show Blood Decal',
    {0x00008000}'Uses Head Track Anims',
    {0x00010000}'Spells Align w/Magic Node',
    {0x00020000}'Use World Raycasts For FootIK',
    {0x00040000}'Allow Ragdoll Collision',
    {0x00080000}'Regen HP In Combat',
    {0x00100000}'Can''t Open Doors',
    {0x00200000}'Allow PC Dialogue',
    {0x00400000}'No Knockdowns',
    {0x00800000}'Allow Pickpocket',
    {0x01000000}'Always Use Proxy Controller',
    {0x02000000}'Don''t Show Weapon Blood',
    {0x04000000}'Overlay Head Part List', {>>>Only one can be active<<<}
    {0x08000000}'Override Head Part List', {>>>Only one can be active<<<}
    {0x10000000}'Can Pickup Items',
    {0x20000000}'Allow Multiple Membrane Shaders',
    {0x40000000}'Can Dual Wield',
    {0x80000000}'Avoids Roads'
  ]));

  wbPhonemeTargets := wbStruct(PHWT, 'Phoneme Target Weight', [
    wbFloat('Aah / LipBigAah'),
    wbFloat('BigAah / LipDST'),
    wbFloat('BMP / LipEee'),
    wbFloat('ChJsh / LipFV'),
    wbFloat('DST / LipK'),
    wbFloat('Eee / LipL'),
    wbFloat('Eh / LipR'),
    wbFloat('FV / LipTh'),
    wbFloat('I'),
    wbFloat('K'),
    wbFloat('N'),
    wbFloat('Oh'),
    wbFloat('OohQ'),
    wbFloat('R'),
    wbFloat('TH'),
    wbFloat('W')
  ], cpNormal, False, nil, 8);

  wbPHWT := wbRStruct('FaceFX Phonemes', [
    wbRStruct('IY', [wbPhonemeTargets], []),
    wbRStruct('IH', [wbPhonemeTargets], []),
    wbRStruct('EH', [wbPhonemeTargets], []),
    wbRStruct('EY', [wbPhonemeTargets], []),
    wbRStruct('AE', [wbPhonemeTargets], []),
    wbRStruct('AA', [wbPhonemeTargets], []),
    wbRStruct('AW', [wbPhonemeTargets], []),
    wbRStruct('AY', [wbPhonemeTargets], []),
    wbRStruct('AH', [wbPhonemeTargets], []),
    wbRStruct('AO', [wbPhonemeTargets], []),
    wbRStruct('OY', [wbPhonemeTargets], []),
    wbRStruct('OW', [wbPhonemeTargets], []),
    wbRStruct('UH', [wbPhonemeTargets], []),
    wbRStruct('UW', [wbPhonemeTargets], []),
    wbRStruct('ER', [wbPhonemeTargets], []),
    wbRStruct('AX', [wbPhonemeTargets], []),
    wbRStruct('S',  [wbPhonemeTargets], []),
    wbRStruct('SH', [wbPhonemeTargets], []),
    wbRStruct('Z',  [wbPhonemeTargets], []),
    wbRStruct('ZH', [wbPhonemeTargets], []),
    wbRStruct('F',  [wbPhonemeTargets], []),
    wbRStruct('TH', [wbPhonemeTargets], []),
    wbRStruct('V',  [wbPhonemeTargets], []),
    wbRStruct('DH', [wbPhonemeTargets], []),
    wbRStruct('M',  [wbPhonemeTargets], []),
    wbRStruct('N',  [wbPhonemeTargets], []),
    wbRStruct('NG', [wbPhonemeTargets], []),
    wbRStruct('L',  [wbPhonemeTargets], []),
    wbRStruct('R',  [wbPhonemeTargets], []),
    wbRStruct('W',  [wbPhonemeTargets], []),
    wbRStruct('Y',  [wbPhonemeTargets], []),
    wbRStruct('HH', [wbPhonemeTargets], []),
    wbRStruct('B',  [wbPhonemeTargets], []),
    wbRStruct('D',  [wbPhonemeTargets], []),
    wbRStruct('JH', [wbPhonemeTargets], []),
    wbRStruct('G',  [wbPhonemeTargets], []),
    wbRStruct('P',  [wbPhonemeTargets], []),
    wbRStruct('T',  [wbPhonemeTargets], []),
    wbRStruct('K',  [wbPhonemeTargets], []),
    wbRStruct('CH', [wbPhonemeTargets], []),
    wbRStruct('SIL', [wbPhonemeTargets], []),
    wbRStruct('SHOTSIL', [wbPhonemeTargets], []),
    wbRStruct('FLAP', [wbPhonemeTargets], [])
  ], []);

  wbMorphs := wbRStruct('Available Morphs', [
    wbByteArray(MPAI, 'Unknown', 0),
    wbStruct(MPAV, 'Nose Variants', [
      wbNoseMorphFlags,
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4)
    ]),
    wbByteArray(MPAI, 'Unknown', 0),
    wbStruct(MPAV, 'Brow Variants', [
      wbBrowMorphFlags,
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4)
    ]),
    wbByteArray(MPAI, 'Unknown', 0),
    wbStruct(MPAV, 'Eye Variants', [
      wbEyesMorphFlags01,
      wbEyesMorphFlags02,
      wbByteArray('Unknown', 3),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4)
    ]),
    wbByteArray(MPAI, 'Unknown', 0),
    wbStruct(MPAV, 'Lip Variants', [
      wbLipMorphFlags,
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4),
      wbByteArray('Unknown', 4)
    ])
  ], []);

  wbHeadPart := wbRStructSK([0],'Head Part', [
    wbInteger(INDX, 'Head Part Number', itU32),
    wbFormIDCk(HEAD, 'Head', [HDPT, NULL])
  ], []);

  wbRecord(RACE, 'Race', [
    wbEDID,
    wbFULL,
    wbDESCReq,
    wbSPCT,
    wbSPLOs,
    wbFormIDCk(WNAM, 'Skin', [ARMO, NULL]),
//    wbBODT,
//    wbBOD2,
    wbBODTBOD2,
    wbKSIZ,
    wbKWDAs,
    wbStruct(DATA, '', [
      wbArrayS('Skill Boosts', wbStructSK([0], 'Skill Boost', [
        wbInteger('Skill', itS8, wbActorValueEnum),
        wbInteger('Boost', itS8)
      ]), 7),
      wbByteArray('Unknown', 2),
      wbFloat('Male Height'),
      wbFloat('Female Height'),
      wbFloat('Male Weight'),
      wbFloat('Female Weight'),
      wbRACE_DATAFlags01,
      wbFloat('Starting Health'),
      wbFloat('Starting Magicka'),
      wbFloat('Starting Stamina'),
      wbFloat('Base Carry Weight'),
      wbFloat('Base Mass'),
      wbFloat('Acceleration rate'),
      wbFloat('Deceleration rate'),
      wbInteger('Size', itU32, wbEnum([
        'Small',
        'Medium',
        'Large',
        'Extra Large'
      ])),
      wbInteger('Head Biped Object', itS32, wbBipedObjectEnum),
      wbInteger('Hair Biped Object', itS32, wbBipedObjectEnum),
      wbFloat('Injured Health Pct'),
      wbInteger('Shield Biped Object', itS32, wbBipedObjectEnum),
      wbFloat('Health Regen'),
      wbFloat('Magicka Regen'),
      wbFloat('Stamina Regen'),
      wbFloat('Unarmed Damage'),
      wbFloat('Unarmed Reach'),
      wbInteger('Body Biped Object', itS32, wbBipedObjectEnum),
      wbFloat('Aim Angle Tolerance'),
      wbFloat('Flight Radius'),
      wbFloat('Angular Acceleration Rate'),
      wbFloat('Angular Tolerance'),
      wbInteger('Flags 2', itU32, wbFlags([
        {0x00000001} 'Use Advanced Avoidance',
        {0x00000002} 'Non-Hostile',
        {0x00000004} 'Unknown 2',
        {0x00000008} 'Unknown 3',
        {0x00000010} 'Allow Mounted Combat'
      ])),
      wbStruct('Mount Data', [
        wbFloat('Offset X', cpNormal, False, 1, -1, nil, nil, -63.479000),
        wbFloat('Offset Y'),
        wbFloat('Unknown'),
        wbFloat('Unknown', cpNormal, False, 1, -1, nil, nil, -50.0),
        wbFloat('Unknown'),
        wbFloat('Unknown', cpNormal, False, 1, -1, nil, nil, 65.0),
        wbFloat('Unknown'),
        wbFloat('Unknown', cpNormal, False, 1, -1, nil, nil, -300.0),
        wbFloat('Unknown')
      ])
      //wbByteArray('Unknown', 4*7)
    ], cpNormal, True, nil, 29),
    wbEmpty(MNAM, 'Male Marker'),
    wbString(ANAM, 'Male Skeletal Model'),
    wbMODT,
    wbEmpty(FNAM, 'Female Marker'),
    wbString(ANAM, 'Female Skeletal Model'),
    wbMODT,
    wbEmpty(NAM2, 'Marker NAM2 #1'),
    wbRArrayS('Movement Type Names', wbString(MTNM, 'Name')),
    wbArray(VTCK, 'Voices', wbFormIDCk('Voice', [VTYP]), ['Male', 'Female'], cpNormal, True),
    wbArray(DNAM, 'Decapitate Armors', wbFormIDCk('Decapitate Armor', [NULL, ARMO]), ['Male', 'Female'], cpNormal, False),
    wbArray(HCLF, 'Default Hair Colors', wbFormIDCk('Default Hair Color', [NULL, CLFM]), ['Male', 'Female'], cpNormal, False),
    wbInteger(TINL, 'Total Number of Tints in List', itU16, nil, nil, cpNormal, False), {>>> Needs Count Updated <<<}
    wbFloat(PNAM, 'FaceGen - Main clamp', cpNormal, True),
    wbFloat(UNAM, 'FaceGen - Face clamp', cpNormal, True),
    wbFormIDCk(ATKR, 'Attack Race', [RACE], False, cpNormal, False),
    wbRArrayS('Attacks', wbAttackData),
    wbRStruct('Body Data', [
      wbEmpty(NAM1, 'Body Data Marker', cpNormal, True),
      wbRStruct('Male Body Data', [
        wbEmpty(MNAM, 'Male Data Marker'),
        wbRArrayS('Parts', wbRStructSK([0], 'Part', [
          wbInteger(INDX, 'Index', itU32, wbBodyPartIndexEnum),
          wbMODL
        ], []), cpNormal, True)
      ], [], cpNormal, True),
      wbRStruct('Female Body Data', [
        wbEmpty(FNAM, 'Female Data Marker', cpNormal, True),
        wbRArrayS('Parts', wbRStructSK([0], 'Part', [
          wbInteger(INDX, 'Index', itU32, wbBodyPartIndexEnum),
          wbMODL
        ], []), cpNormal, True)
      ], [], cpNormal, True)
    ], [], cpNormal, True),
    wbArrayS(HNAM, 'Hairs', wbFormIDCk('Hair', [HDPT, NULL]), 0, cpNormal),
    wbArrayS(ENAM, 'Eyes', wbFormIDCk('Eye', [EYES, NULL]),  0,  cpNormal),
    wbFormIDCk(GNAM, 'Body Part Data', [BPTD, NULL]),
	  wbEmpty(NAM2, 'Marker NAM2 #2', cpNormal),
	  wbEmpty(NAM3, 'Marker NAM3 #3', cpNormal, True),
    wbRStruct('Male Behavior Graph', [
      wbEmpty(MNAM, 'Male Data Marker'),
      wbMODL
    ], [], cpNormal, True),
    wbRStruct('Female Behavior Graph', [
      wbEmpty(FNAM, 'Female Data Marker', cpNormal, True),
      wbMODL
    ], [], cpNormal, True),
    wbFormIDCk(NAM4, 'Material Type', [MATT, NULL]),
    wbFormIDCk(NAM5, 'Impact Data Set', [IPDS, NULL]),
		wbFormIDCk(NAM7, 'Decapitation FX', [ARTO, NULL]),
    wbFormIDCk(ONAM, 'Open Loot Sound', [SNDR, NULL]),
    wbFormIDCk(LNAM, 'Close Loot Sound', [SNDR, NULL]),
    {>>> When NAME is user defined wbBipedObjectEnum will be incorrect <<<}
    wbRArray('Biped Object Names', wbString(NAME, 'Name')),
    wbRArrayS('Movement Types', wbRStructSK([0], 'Movement Types', [
      wbFormIDCk(MTYP, 'Movement Type', [MOVT, NULL]),
      wbStruct(SPED, 'Override Values', [
        wbFloat('Left - Walk'),
        wbFloat('Left - Run'),
        wbFloat('Right - Walk'),
        wbFloat('Right - Run'),
        wbFloat('Forward - Walk'),
        wbFloat('Forward - Run'),
        wbFloat('Back - Walk'),
        wbFloat('Back - Run'),
        wbFloat('Rotate - Walk'),
        wbFloat('Rotate - Walk'),
        wbFloat('Unknown')
      ])
    ], [])),
    wbInteger(VNAM, 'Equipment Flags', itU32, wbEquipType),
    wbRArrayS('Equip Slots', wbFormIDCk(QNAM, 'Equip Slot', [EQUP, NULL])),
    wbFormIDCk(UNES, 'Unarmed Equip Slot', [EQUP, NULL]),
    wbRArray('Phoneme Target Names', wbString(PHTN, 'Name')),
    wbPHWT,
    wbFormIDCk(WKMV, 'Base Movement Default - Walk', [MOVT, NULL]),
    wbFormIDCk(RNMV, 'Base Movement Default - Run', [MOVT, NULL]),
    wbFormIDCk(SWMV, 'Base Movement Default - Swim', [MOVT, NULL]),
    wbFormIDCk(FLMV, 'Base Movement Default - Fly', [MOVT, NULL]),
    wbFormIDCk(SNMV, 'Base Movement Default - Sneak', [MOVT, NULL]),
    wbFormIDCk(SPMV, 'Base Movement Default - Sprint', [MOVT, NULL]),
    // Start Head Data
    wbRStruct('Head Data', [
      wbEmpty(NAM0, 'Head Data Marker', cpNormal, True),
      wbRStruct('Male Head Data', [
        wbEmpty(MNAM, 'Male Data Marker', cpNormal, True),
          wbRArrayS('Head Parts', wbHeadPart),
          wbMorphs,
          wbRArrayS('Race Presets Male', wbFormIDCk(RPRM, 'Preset NPC', [NPC_, NULL])),
          wbRArrayS('Available Hair Colors Male', wbFormIDCk(AHCM, 'Hair Color', [CLFM, NULL])),
          wbRArrayS('Face Details Texture Set List Male', wbFormIDCk(FTSM, 'Texture Set', [TXST, NULL])),
          wbFormIDCk(DFTM, 'Default Face Texture Male', [TXST, NULL]),
          wbTints,
          wbMODL
      ], [], cpNormal, True),
      wbRStruct('Female Head Data', [
        wbEmpty(NAM0, 'Head Data Marker', cpNormal, True),
        wbEmpty(FNAM, 'Female Data Marker', cpNormal, True),
          wbRArrayS('Head Parts', wbHeadPart),
          wbMorphs,
          wbRArrayS('Race Presets Female', wbFormIDCk(RPRF, 'Preset NPC', [NPC_, NULL])),
          wbRArrayS('Available Hair Colors Female', wbFormIDCk(AHCF, 'Hair Color', [CLFM, NULL])),
          wbRArrayS('Face Details Texture Set List Female', wbFormIDCk(FTSF, 'Texture Set', [TXST, NULL])),
          wbFormIDCk(DFTF, 'Default Face Texture Female', [TXST, NULL]),
          wbTints,
          wbMODL
      ], [], cpNormal, True)
    ], [], cpNormal, False),
    // End Head Data
    wbFormIDCk(NAM8, 'Morph race', [RACE, NULL]),
    wbFormIDCk(RNAM, 'Armor race', [RACE, NULL])
  ], False, nil, cpNormal, False, wbRACEAfterLoad, wbRACEAfterSet);


  wbRecord(REFR, 'Placed Object', [
    wbEDID,
    wbVMAD,
    wbFormIDCk(NAME, 'Base', [TREE, SNDR, ACTI, DOOR, STAT, FURN, CONT, ARMO, AMMO, LVLN, LVLC,
                              MISC, WEAP, BOOK, KEYM, ALCH, LIGH, GRAS, ASPC, IDLM, ARMA, INGR,
                              MSTT, TACT, TXST, FLOR, SLGM, SCRL, SOUN, APPA, SPEL], False, cpNormal, True),

    {--- Bound Contents ---}
    {--- Bound Data ---}
    wbStruct(XMBO, 'Bound Half Extents', [
      wbFloat('X'),
      wbFloat('Y'),
      wbFloat('Z')
    ]),

    {--- Primitive ---}
    wbStruct(XPRM, 'Primitive', [
      wbStruct('Bounds', [
        wbFloat('X', cpNormal, True, 2, 4),
        wbFloat('Y', cpNormal, True, 2, 4),
        wbFloat('Z', cpNormal, True, 2, 4)
      ]),
      wbStruct('Color', [
        {84} wbFloat('Red', cpNormal, False, 255, 0),
        {88} wbFloat('Green', cpNormal, False, 255, 0),
        {92} wbFloat('Blue', cpNormal, False, 255, 0)
      ]),
      wbFloat('Unknown'),
      wbInteger('Type', itU32, wbEnum([
        'None',
        'Box',
        'Sphere',
        'Portal Box',
        'Unknown 4'
      ]))
    ]),
    wbUnknown(XORD),
    wbStruct(XOCP, 'Occlusion Plane Data', [
      wbStruct('Size', [
        wbFloat('Width', cpNormal, False, 2),
        wbFloat('Height', cpNormal, False, 2)
      ]),
      wbStruct('Position', [
        wbFloat('X'),
        wbFloat('Y'),
        wbFloat('Z')
      ]),
      wbStruct('Rotation (Quaternion?)', [
        wbFloat('q1'),
        wbFloat('q2'),
        wbFloat('q3'),
        wbFloat('q4')
      ])
    ]),

    wbArray(XPOD, 'Portal Data', wbStruct('References', [
      wbFormIDCk('Origin', [REFR, NULL]),
      wbFormIDCk('Destination', [REFR, NULL])
    ])),
    wbStruct(XPTL, 'Room Portal (unused)', [
      wbStruct('Size', [
        wbFloat('Width', cpNormal, False, 2),
        wbFloat('Height', cpNormal, False, 2)
      ]),
      wbStruct('Position', [
        wbFloat('X'),
        wbFloat('Y'),
        wbFloat('Z')
      ]),
      wbStruct('Rotation (Quaternion?)', [
        wbFloat('q1'),
        wbFloat('q2'),
        wbFloat('q3'),
        wbFloat('q4')
      ])
    ], cpIgnore), // removed by CK

    wbRStruct('Bound Data', [
      wbStruct(XRMR, 'Header', [
        wbInteger('Linked Rooms Count', itU8),
        wbInteger('Flags', itU8, wbFlags([
          'Unknown 1',
          'Unknown 2',
          'Unknown 3',
          'Unknown 4',
          'Unknown 5',
          'Unknown 6',
          'Has Image Space',
          'Has Lighting Template'
        ])),
        wbByteArray('Unknown', 2)
      ]),
      wbFormIDCk(LNAM, 'Lighting Template', [LGTM]),
      wbFormIDCk(INAM, 'Image Space', [IMGS]),
      wbRArrayS('Linked Rooms',
        wbFormIDCk(XLRM, 'Linked Room', [REFR])
      )
    ], []),
    wbEmpty(XMBP, 'MultiBound Primitive Marker', cpIgnore),

    wbXRGD,
    wbXRGB,
    wbFloat(XRDS, 'Radius'),

    {--- Reflected By / Refracted By ---}
    wbRArrayS('Reflected/Refracted By',
      wbStructSK(XPWR, [0], 'Water', [
        wbFormIDCk('Reference', [REFR]),
        wbInteger('Type', itU32, wbFlags([
          'Reflection',
          'Refraction'
        ]))
      ], cpNormal, False, nil, 1)
    ),

    {--- Lit Water ---}
    wbRArrayS('Lit Water',
      wbFormIDCk(XLTW, 'Water', [REFR])
    ),

    {--- Emittance ---}
    wbFormIDCk(XEMI, 'Emittance', [LIGH, REGN]),
		wbStruct(XLIG, 'Light Data', [
      wbFloat('FOV 90+/-'),
      wbFloat('Fade 1.35+/-'),
      wbByteArray('Unknown', 4),
      wbFloat('Shadow Depth Bias'),
      wbByteArray('Unknown', 4) // optional
    ], cpNormal, False, nil, 4),
		wbStruct(XALP, 'Alpha', [
      wbInteger('Cutoff', itU8),
      wbInteger('Base', itU8)
    ]),

    {--- Teleport ---}
    wbStruct(XTEL, 'Teleport Destination', [
      wbFormIDCk('Door', [REFR], True),
      wbPosRot,
      wbInteger('Flags', itU32, wbFlags([
        'No Alarm'
      ]))
    ]),
    wbFormIDCk(XTNM, 'Teleport Message Box', [MESG]),

    {--- MultiBound ---}
    wbFormIDCk(XMBR, 'MultiBound Reference', [REFR]),

    wbByteArray(XWCN, 'Unknown', 0, cpIgnore), // leftover
    wbByteArray(XWCS, 'Unknown', 0, cpIgnore), // leftover
    wbStruct(XWCU, 'Water Velocity', [
      wbFloat('X Offset'),
      wbFloat('Y Offset'),
      wbFloat('Z Offset'),
      wbByteArray('Unknown', 4),
      wbFloat('X Angle'),
      wbFloat('Y Angle'),
      wbFloat('Z Angle'),
      wbByteArray('Unknown', 0)
    ]),

    wbStruct(XCVL, 'Unknown', [
			wbByteArray('Unknown', 4),
			wbFloat('X Angle'),
			wbByteArray('Unknown', 4)
    ]),
    wbFormIDCk(XCZR, 'Unknown', [PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA, NULL]),
    wbUnknown(XCZA),
    wbFormIDCk(XCZC, 'Unknown', [CELL, NULL]),
    wbXSCL,
    wbFormIDCk(XSPC, 'Spawn Container', [REFR]),

    {--- Activate Parents ---}
    wbRStruct('Activate Parents', [
      wbInteger(XAPD, 'Flags', itU8, wbFlags([
        'Parent Activate Only'
      ], True)),
      wbRArrayS('Activate Parent Refs',
        wbStructSK(XAPR, [0], 'Activate Parent Ref', [
          wbFormIDCk('Reference', [PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
          wbFloat('Delay')
        ])
      )
    ], []),

    wbFormIDCk(XLIB, 'Leveled Item Base Object', [LVLI]),
    wbXLCM,
    wbFormIDCk(XLCN, 'Persistent Location', [LCTN]),

    {>>> Has some int values, but in CK it is assigned a COLL formid <<<}
    wbInteger(XTRI, 'Collision Layer', itU32),
//    wbInteger(XTRI, 'Collision Layer', itU32, wbEnum([], [
//      12, 'L_TRIGGER',
//      22, 'L_ACTORZONE',
//      23, 'L_PROJECTILEZONE',
//      24, 'L_GASTRAP',
//      47, 'L_DEADACTORZONE',
//      48, 'L_TRIGGER_FALLINGTRAP',
//      51, 'L_SPELLTRIGGER',
//      54, 'L_TRAPTRIGGER',
//      52, 'L_LIVING_AND_DEAD_ACTORS'
//    ])),

    {--- Lock ---}
    {>>Lock Tab for REFR when 'Locked' is Unchecked this record is not present <<<}
    wbStruct(XLOC, 'Lock Data', [
      wbInteger('Level', itU8, wbEnum([], [
         1, 'Novice',
        25, 'Apprentice',
        50, 'Adept',
        75, 'Expert',
       100, 'Master',
       255, 'Requires Key'
      ])),
      wbByteArray('Unused', 3, cpIgnore),
      wbFormIDCkNoReach('Key', [KEYM, NULL]),
      wbInteger('Flags', itU8, wbFlags(['', '', 'Leveled Lock'])),
      wbByteArray('Unused', 3, cpIgnore),
      wbByteArray('Unused', 8, cpIgnore)
    ], cpNormal, False, nil, 4),

    wbFormIDCk(XEZN, 'Encounter Zone', [ECZN]),

    {--- Generated Data ---}
    wbStruct(XNDP, 'Navigation Door Link', [
      wbFormIDCk('Navigation Mesh', [NAVM]),
      wbInteger('Teleport Marker Triangle', itS16),
      wbByteArray('Unused', 2, cpIgnore)
    ]),

    wbArray(XLRT, 'Location Ref Type', wbFormIDCk('Ref', [LCRT, NULL])),
    wbEmpty(XIS2, 'Ignored by Sandbox'),

    {--- Ownership ---}
    wbOwnership,

    wbInteger(XCNT, 'Item Count', itS32),
    wbFloat(XCHG, 'Charge'),
    wbFormIDCk(XLRL, 'Location Reference', [LCRT, LCTN, NULL], False, cpBenignIfAdded),

    wbXESP,
    wbRArray('Linked References', wbStruct(XLKR, 'Linked Reference', [
      wbFormIDCk('Keyword/Ref', [KYWD, PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA, NULL]),
      wbFormIDCk('Ref', [PLYR, ACHR, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA])
    ], cpNormal, False, nil, 1)),

    wbRArray('Patrol', wbRStruct('Data', [
      wbFloat(XPRD, 'Idle Time', cpNormal, True),
      wbEmpty(XPPA, 'Patrol Script Marker', cpNormal, True),
      wbFormIDCk(INAM, 'Idle', [IDLE, NULL], False, cpNormal, True),
      wbByteArray(SCHR, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbByteArray(SCTX, 'Unused', 0, cpIgnore, false, false, wbNeverShow),
      wbPDTOs
    ], [])),

    {--- Flags ---}
    wbInteger(XACT, 'Action Flag', itU32, wbFlags([
      'Use Default',
      'Activate',
      'Open',
      'Open by Default'
    ])),

    wbFloat(XHTW, 'Head-Tracking Weight'),
    wbFloat(XFVC, 'Favor Cost'),

    wbEmpty(ONAM, 'Open by Default'),

    {--- Map Data ---}
    wbRStruct('Map Marker', [
      wbEmpty(XMRK, 'Map Marker Data'),
      wbInteger(FNAM, 'Map Flags', itU8, wbFlags([
        {0x01} 'Visible',
        {0x02} 'Can Travel To',
        {0x04} '"Show All" Hidden'
      ]), cpNormal, True),
      wbFULLReq,
      wbStruct(TNAM, '', [
        wbInteger('Type', itU8, wbEnum([], [
          0, 'None',
          1, 'City',
          2, 'Town',
          3, 'Settlement',
          4, 'Cave',
          5, 'Camp',
          6, 'Fort',
          7, 'Nordic Ruins',
          8, 'Dwemer Ruin',
          9, 'Shipwreck',
          10, 'Grove',
          11, 'Landmark',
          12, 'Dragon Lair',
          13, 'Farm',
          14, 'Wood Mill',
          15, 'Mine',
          16, 'Imperial Camp',
          17, 'Stormcloak Camp',
          18, 'Doomstone',
          19, 'Wheat Mill',
          20, 'Smelter',
          21, 'Stable',
          22, 'Imperial Tower',
          23, 'Clearing',
          24, 'Pass',
          25, 'Altar',
          26, 'Rock',
          27, 'Lighthouse',
          28, 'Orc Stronghold',
          29, 'Giant Camp',
          30, 'Shack',
          31, 'Nordic Tower',
          32, 'Nordic Dwelling',
          33, 'Docks',
          34, 'Shrine',
          35, 'Riften Castle',
          36, 'Riften Capitol',
          37, 'Windhelm Castle',
          38, 'Windhelm Capitol',
          39, 'Whiterun Castle',
          40, 'Whiterun Capitol',
          41, 'Solitude Castle',
          42, 'Solitude Capitol',
          43, 'Markarth Castle',
          44, 'Markarth Capitol',
          45, 'Winterhold Castle',
          46, 'Winterhold Capitol',
          47, 'Morthal Castle',
          48, 'Morthal Capitol',
          49, 'Falkreath Castle',
          50, 'Falkreath Capitol',
          51, 'Dawnstar Castle',
          52, 'Dawnstar Capitol',
          53, 'DLC02 - Temple of Miraak',
          54, 'DLC02 - Raven Rock',
          55, 'DLC02 - Beast Stone',
          56, 'DLC02 - Tel Mithryn',
          57, 'DLC02 - To Skyrim',
          58, 'DLC02 - To Solstheim'
        ])),
        wbByteArray('Unused', 1)
      ], cpNormal, True)
    ], []),
    {--- Attach reference ---}
    wbFormIDCk(XATR, 'Attach Ref', [REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
    wbXLOD,
    wbDataPosRot
  ], True, wbPlacedAddInfo, cpNormal, False, wbREFRAfterLoad);


  {>>> Almost no changes here, seems to be working as is <<<}
  wbRecord(REGN, 'Region', [
    wbEDID,
    wbStruct(RCLR, 'Map Color', [
      wbInteger('Red', itU8),
      wbInteger('Green', itU8),
      wbInteger('Blue', itU8),
      wbByteArray('Unknown', 1)
    ], cpNormal, True),
    {>>> Skyrim.esm has some incorrect FormIDs here, probably leftover <<<}
    wbFormIDCkNoReach(WNAM, 'Worldspace', [WRLD]),
    wbRArray('Region Areas', wbRStruct('Region Area', [
      wbInteger(RPLI, 'Edge Fall-off', itU32),
      wbArray(RPLD, 'Region Point List Data', wbStruct('Point', [
        wbFloat('X'),
        wbFloat('Y')
      ]), 0, wbRPLDAfterLoad)
    ], [])),
    wbRArrayS('Region Data Entries', wbRStructSK([0], 'Region Data Entry', [
      {always starts with an RDAT}
      wbStructSK(RDAT, [0], 'Data Header', [
        wbInteger('Type', itU32, wbEnum([
          {0} 'Unknown 0',
          {1} 'Unknown 1',
          {2} 'Objects',
          {3} 'Weather',
          {4} 'Map',
          {5} 'Land',
          {6} 'Grass',
          {7} 'Sound',
          {8} 'Imposter',
          {9} 'Unknown 10',
          {10}'Unknown 11',
          {11}'Unknown 12',
          {12}'Unknown 13',
          {13}'Unknown 14',
          {14}'Unknown 15',
          {15}'Unknown 16'
        ])),
        wbInteger('Flags', itU8, wbFlags([
          'Override'
        ])),
        wbInteger('Priority', itU8),
        wbByteArray('Unknown')
      ], cpNormal, True),

      {--- Icon ---}
      wbICON,

      {--- Sound ---}
      wbFormIDCk(RDMO, 'Music', [MUSC], False, cpNormal, False, wbREGNSoundDontShow),
      wbArrayS(RDSA, 'Sounds', wbStructSK([0], 'Sound', [
        wbFormIDCk('Sound', [SOUN, SNDR, NULL]),
        wbInteger('Flags', itU32, wbFlags([
          {0x00000001}'Pleasant',
          {0x00000002}'Cloudy',
          {0x00000004}'Rainy',
          {0x00000008}'Snowy'
        ])),
        wbFloat('Chance')
      ]), 0, cpNormal, False, nil, nil, wbREGNSoundDontShow),

			{--- Map ---}
      wbLString(RDMP, 'Map Name', 0, cpTranslate, False, wbREGNMapDontShow),

      {followed by one of these: }

      {--- Objects ---}
      wbArray(RDOT, 'Objects', wbStruct('Object', [
        wbFormIDCk('Object', [TREE, FLOR, STAT, LTEX, MSTT]),
        wbInteger('Parent Index', itU16, wbHideFFFF),
        wbByteArray('Unknown', 2),
        wbFloat('Density'),
        wbInteger('Clustering', itU8),
        wbInteger('Min Slope', itU8),
        wbInteger('Max Slope', itU8),
        wbInteger('Flags', itU8, wbFlags([
          {0}'Conform to slope',
          {1}'Paint Vertices',
          {2}'Size Variance +/-',
          {3}'X +/-',
          {4}'Y +/-',
          {5}'Z +/-',
          {6}'Tree',
          {7}'Huge Rock'
        ])),
        wbInteger('Radius wrt Parent', itU16),
        wbInteger('Radius', itU16),
        wbByteArray('Unknown', 4),
        wbFloat('Max Height'),
        wbFloat('Sink'),
        wbFloat('Sink Variance'),
        wbFloat('Size Variance'),
        wbStruct('Angle Variance', [
          wbInteger('X', itU16),
          wbInteger('Y', itU16),
          wbInteger('Z', itU16)
        ]),
        wbByteArray('Unknown', 2),
        wbByteArray('Unknown', 4)
      ]), 0, nil, nil, cpNormal, False, wbREGNObjectsDontShow),

      {--- Grass ---}
      wbArrayS(RDGS, 'Grasses', wbStructSK([0], 'Grass', [
        wbFormIDCk('Grass', [GRAS]),
        wbByteArray('Unknown',4)
      ]), 0, cpNormal, False, nil, nil, wbREGNGrassDontShow),

      {--- Weather ---}
      wbArrayS(RDWT, 'Weather Types', wbStructSK([0], 'Weather Type', [
        wbFormIDCk('Weather', [WTHR]),
        wbInteger('Chance', itU32),
        wbFormIDCk('Global', [GLOB, NULL])
      ]), 0, cpNormal, False, nil, nil, wbREGNWeatherDontShow)

    ], []))
  ], True);

  wbRecord(SOUN, 'Sound Marker', [
    wbEDID,
    wbOBNDReq,
    wbUnknown(FNAM, cpIgnore), // leftover, unused
    wbUnknown(SNDD, cpIgnore), // leftover, unused
    wbFormIDCk(SDSC, 'Sound Descriptor', [SNDR, NULL])
  ]);

  wbSPIT := wbStruct(SPIT, 'Data', [
    wbInteger('Base Cost', itU32),
    wbInteger('Flags', itU32, wbFlags([
      {0x00000001} 'Manual Cost Calc',
      {0x00000002} 'Unknown 2',
      {0x00000004} 'Unknown 3',
      {0x00000008} 'Unknown 4',
      {0x00000010} 'Unknown 5',
      {0x00000020} 'Unknown 6',
      {0x00000040} 'Unknown 7',
      {0x00000080} 'Unknown 8',
      {0x00000100} 'Unknown 9',
      {0x00000200} 'Unknown 10',
      {0x00000400} 'Unknown 11',
      {0x00000800} 'Unknown 12',
      {0x00001000} 'Unknown 13',
      {0x00002000} 'Unknown 14',
      {0x00004000} 'Unknown 15',
      {0x00008000} 'Unknown 16',
      {0x00010000} 'Unknown 17',
      {0x00020000} 'PC Start Spell',
      {0x00040000} 'Unknown 19',
      {0x00080000} 'Area Effect Ignores LOS',
      {0x00100000} 'Ignore Resistance',
      {0x00200000} 'No Absorb/Reflect',
      {0x00400000} 'Unknown 23',
      {0x00800000} 'No Dual Cast Modification',
      {0x01000000} 'Unknown 25',
      {0x02000000} 'Unknown 26',
      {0x04000000} 'Unknown 27',
      {0x08000000} 'Unknown 28',
      {0x10000000} 'Unknown 29',
      {0x20000000} 'Unknown 30',
      {0x40000000} 'Unknown 31',
      {0x80000000} 'Unknown 32'
    ])),
    wbInteger('Type', itU32, wbEnum([
      {0} 'Spell',
      {1} 'Disease',
      {2} 'Power',
      {3} 'Lesser Power',
      {4} 'Ability',
      {5} 'Poison',
      {6} 'Unknown 6',
      {7} 'Unknown 7',
      {8} 'Unknown 8',
      {9} 'Unknown 9',
     {10} 'Addiction',
     {11} 'Voice'
    ])),
    wbFloat('Charge Time'),
    wbInteger('Cast Type', itU32, wbCastEnum),
    wbInteger('Target Type', itU32, wbTargetEnum),
    wbFloat('Cast Duration'),
    wbFloat('Range'),
    wbFormIDCk('Half-cost Perk', [NULL, PERK])
  ], cpNormal, True);

  wbRecord(SPEL, 'Spell', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbKSIZ,
    wbKWDAs,
    wbMDOB,
    wbETYP,
    wbDESCReq,
    wbSPIT,
    wbEffectsReq
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

  wbRecord(SCRL, 'Scroll', [
    wbEDID,
    wbOBNDReq,
    wbFULL,
    wbKSIZ,
    wbKWDAs,
    wbMDOB,
    wbETYP,
    wbDESC,
    wbMODL,
    wbDEST,
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbStruct(DATA, 'Item', [
      wbInteger('Value', itU32),
      wbFloat('Weight')
    ], cpNormal, True),
    wbSPIT,
    wbEffectsReq
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

  wbRecord(STAT, 'Static', [
    wbEDID,
    wbOBNDReq,
    wbMODL,
    wbStruct(DNAM, 'Direction Material', [
      wbFloat('Max Angle (30-120)'),
      wbFormIDCk('Material', [MATO, NULL])
    ], cpNormal, True),
    wbArray(MNAM, 'Distant LOD',
      wbStruct('LOD', [
        {>>> Contains null-terminated mesh filename followed by random data up to 260 bytes <<<}
        wbByteArray('Mesh', 260, cpIgnore)
      ]), [
        'Level 0',
        'Level 1',
        'Level 2',
        'Level 3'
      ],
      cpNormal, False
    )
  ]);

  wbRecord(TES4, 'Main File Header', [
    wbStruct(HEDR, 'Header', [
      wbFloat('Version'),
      wbInteger('Number of Records', itU32),
      wbInteger('Next Object ID', itU32)
    ], cpNormal, True),
    wbByteArray(OFST, 'Unknown', 0, cpIgnore),
    wbByteArray(DELE, 'Unknown', 0, cpIgnore),
    wbString(CNAM, 'Author', 0, cpTranslate, True),
    wbString(SNAM, 'Description', 0, cpTranslate),
    wbRArray('Master Files', wbRStruct('Master File', [
      wbString(MAST, 'Filename', 0, cpNormal, True),
      wbByteArray(DATA, 'Unknown', 8, cpIgnore, True)
    ], [ONAM])),
    wbArray(ONAM, 'Overridden Forms',
      wbFormIDCk('Form', [ACHR, LAND, NAVM, REFR, PGRE, PHZD, PMIS, PARW, PBAR, PBEA, PCON, PFLA]),
      0, nil, nil, cpNormal, False, wbTES4ONAMDontShow),
    wbByteArray(SCRN, 'Screenshot'),
    wbUnknown(INTV),
    wbUnknown(INCC)
  ], True, nil, cpNormal, True, wbRemoveOFST);
end;

procedure DefineTES5o;
begin

  wbRecord(TREE, 'Tree', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbMODL,
    wbFormIDCK(PFIG, 'Ingredient', [INGR, ALCH, MISC, LVLI, NULL]),
    wbFormIDCK(SNAM, 'Harvest Sound', [SNDR, NULL]),
    wbStruct(PFPC, 'Ingredient Production', [
      wbInteger('Spring', itU8),
      wbInteger('Summer', itU8),
      wbInteger('Fall', itU8),
      wbInteger('Winter', itU8)
    ]),
    wbFULL,
    wbStruct(CNAM, 'Tree Data', [
      wbFloat('Trunk Flexibility'),
      wbFloat('Branch Flexibility'),
      wbByteArray('Unknown', 32),
      wbFloat('Leaf Amplitude'),
      wbFloat('Leaf Frequency')
    ], cpNormal, True)
  ]);

  wbRecord(FLOR, 'Flora', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULLReq,
    wbMODL,
    wbDEST,
    wbKSIZ,
    wbKWDAs,
    wbUnknown(PNAM),
    wbLString(RNAM, 'Activate Text Override'),
    wbUnknown(FNAM),
    wbFormIDCk(PFIG, 'Ingredient', [INGR, ALCH, LVLI, MISC, NULL]),
    wbFormIDCK(SNAM, 'Sound', [SNDR, SOUN, NULL]),
    wbStruct(PFPC, 'Seasonal ingredient production', [
      wbInteger('Spring', itU8),
      wbInteger('Summer ', itU8),
      wbInteger('Fall', itU8),
      wbInteger('Winter', itU8)
    ], cpNormal, True)
  ], False, nil, cpNormal, False, nil, wbKeywordsAfterSet);

  wbRecord(WATR, 'Water', [
    wbEDID,
    wbFULL,
    wbRArray('Unused', wbString(NNAM, 'Noise Map', 0, cpIgnore, False)), // leftover
    wbInteger(ANAM, 'Opacity', itU8, nil, cpNormal, True),
    wbInteger(FNAM, 'Flags', itU8, wbFlags(['Causes Damage']), cpNormal, True),
    wbByteArray(MNAM, 'Unused', 0, cpIgnore, False),  // leftover
    wbFormIDCk(TNAM, 'Material', [MATT]),
    wbFormIDCk(SNAM, 'Open Sound', [SNDR, NULL]),
    wbFormIDCk(XNAM, 'Spell', [SPEL]),
    wbFormIDCk(INAM, 'Image Space', [IMGS]),
    wbInteger(DATA, 'Damage Per Second', itU16, nil, cpNormal, True, True),
    wbStruct(DNAM, 'Visual Data', [
      wbFloat('Unknown'),
      wbFloat('Unknown'),
      wbFloat('Unknown'),
      wbFloat('Unknown'),
      wbFloat('Specular Properties - Sun Specular Power'),
      wbFloat('Water Properties - Reflectivity Amount'),
      wbFloat('Water Properties - Fresnel Amount'),
      wbByteArray('Unknown', 4),
      wbFloat('Fog Properties - Above Water - Fog Distance - Near Plane'),
      wbFloat('Fog Properties - Above Water - Fog Distance - Far Plane'),
      wbStruct('Shallow Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Deep Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbStruct('Reflection Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8),
        wbByteArray('Unknown', 1)
      ]),
      wbByteArray('Unknown', 4),
      wbFloat('Unknown'),
      wbFloat('Unknown'),
      wbFloat('Unknown'),
      wbFloat('Unknown'),
      wbFloat('Displacement Simulator - Starting Size'),
      wbFloat('Displacement Simulator - Force'),
      wbFloat('Displacement Simulator - Velocity'),
      wbFloat('Displacement Simulator - Falloff'),
      wbFloat('Displacement Simulator - Dampner'),
      wbFloat('Unknown'),
      wbFloat('Noise Properties - Noise Falloff'),
      wbFloat('Noise Properties - Layer One - Wind Direction'),
      wbFloat('Noise Properties - Layer Two - Wind Direction'),
      wbFloat('Noise Properties - Layer Three - Wind Direction'),
      wbFloat('Noise Properties - Layer One - Wind Speed'),
      wbFloat('Noise Properties - Layer Two - Wind Speed'),
      wbFloat('Noise Properties - Layer Three - Wind Speed'),
      wbFloat('Unknown'),
      wbFloat('Unknown'),
      wbFloat('Fog Properties - Above Water - Fog Amount'),
      wbFloat('Unknown'),
      wbFloat('Fog Properties - Under Water - Fog Amount'),
      wbFloat('Fog Properties - Under Water - Fog Distance - Near Plane'),
      wbFloat('Fog Properties - Under Water - Fog Distance - Far Plane'),
      wbFloat('Water Properties - Refraction Magnitude'),
      wbFloat('Specular Properties - Specular Power'),
      wbFloat('Unknown'),
      wbFloat('Specular Properties - Specular Radius'),
      wbFloat('Specular Properties - Specular Brightness'),
      wbFloat('Noise Properties - Layer One - UV Scale'),
      wbFloat('Noise Properties - Layer Two - UV Scale'),
      wbFloat('Noise Properties - Layer Three - UV Scale'),
      wbFloat('Noise Properties - Layer One - Amplitude Scale'),
      wbFloat('Noise Properties - Layer Two - Amplitude Scale'),
      wbFloat('Noise Properties - Layer Three - Amplitude Scale'),
      wbFloat('Water Properties - Reflection Magnitude'),
      wbFloat('Specular Properties - Sun Sparkle Magnitude'),
      wbFloat('Specular Properties - Sun Specular Magnitude'),
      wbFloat('Depth Properties - Reflections'),
      wbFloat('Depth Properties - Refraction'),
      wbFloat('Depth Properties - Normals'),
      wbFloat('Depth Properties - Specular Lighting'),
      wbFloat('Specular Properties - Sun Sparkle Power')
    ]),
    wbByteArray(GNAM, 'Unused', 0, cpNormal, True),  // leftover
    wbStruct(NAM0, 'Linear Velocity', [
      wbFloat('X'),
      wbFloat('Y'),
      wbFloat('Z')
    ], cpNormal, False),
    wbStruct(NAM1, 'Angular Velocity', [
      wbFloat('X'),
      wbFloat('Y'),
      wbFloat('Z')
    ], cpNormal, False),
    wbString(NAM2, 'Noise Texture', 0, cpNormal, False),
    wbString(NAM3, 'Unused', 0, cpNormal),  // leftover
    wbString(NAM4, 'Unused', 0, cpNormal)  // leftover
  ], False, nil, cpNormal, False);

  wbRecord(WEAP, 'Weapon', [
    wbEDID,
    wbVMAD,
    wbOBNDReq,
    wbFULL,
    wbMODL,
    wbICON,
    wbEITM,
    wbInteger(EAMT, 'Enchantment Amount', itU16),
    wbDEST,
    wbETYP,
    wbFormIDCk(BIDS, 'Block Bash Impact Data Set', [IPDS, NULL]),
    wbFormIDCk(BAMT, 'Alternate Block Material', [MATT, NULL]),
    wbFormIDCk(YNAM, 'Sound - Pick Up', [SNDR, SOUN]),
    wbFormIDCk(ZNAM, 'Sound - Drop', [SNDR, SOUN]),
    wbKSIZ,
    wbKWDAs,
    wbDESC,
    wbRStruct('Has Scope', [
      wbString(MOD3, 'Model Filename'),
      wbByteArray(MO3T, 'Texture Files Hashes', 0, cpIgnore, false, false, wbNeverShow),
      wbMO3S
    ], []),
    wbByteArray(NNAM, 'Unused', 0, cpIgnore, False), // leftover
    wbFormIDCk(INAM, 'Impact Data Set', [IPDS, NULL]),
    wbFormIDCk(WNAM, '1st Person Model Object', [STAT, NULL]),
    wbFormIDCk(SNAM, 'Attack Sound', [SNDR]),
    wbFormIDCk(XNAM, 'Attack Sound 2D', [SNDR]),
    wbFormIDCk(NAM7, 'Attack Loop Sound', [SNDR]),
    wbFormIDCk(TNAM, 'Attack Fail Sound', [SNDR]),
    wbFormIDCk(UNAM, 'Idle Sound', [SNDR]),
    wbFormIDCk(NAM9, 'Equip Sound', [SNDR]),
    wbFormIDCk(NAM8, 'Unequip Sound', [SNDR]),
    wbStruct(DATA, 'Game Data', [
      wbInteger('Value', itU32),
      wbFloat('Weight'),
      wbInteger('Damage', itU16)
    ]),
    wbStruct(DNAM, 'Data', [
      wbInteger('Animation Type', itU8, wbWeaponAnimTypeEnum),
      wbByteArray('Unused', 3, cpIgnore),
      wbFloat('Speed'),
      wbFloat('Reach'),
      wbInteger('Flags', itU16, wbFlags([
        {0x0001}'Ignores Normal Weapon Resistance',
        {0x0002}'Automatic (unused)',
        {0x0004}'Has Scope (unused)',
        {0x0008}'Can''t Drop',
        {0x0010}'Hide Backpack (unused)',
        {0x0020}'Embedded Weapon (unused)',
        {0x0040}'Don''t Use 1st Person IS Anim (unused)',
        {0x0080}'Non-playable'
      ])),
      wbByteArray('Unused', 2, cpIgnore),
      wbFloat('Sight FOV'),
      wbByteArray('Unknown', 4),
      wbInteger('Base VATS To-Hit Chance', itU8),
      wbInteger('Attack Animation', itU8, wbAttackAnimationEnum),
      wbInteger('# Projectiles', itU8),
      wbInteger('Embedded Weapon AV (unused)', itU8),
      wbFloat('Range Min'),
      wbFloat('Range Max'),
      wbInteger('On Hit', itU32, wbEnum([
        'No formula behaviour',
        'Dismember only',
        'Explode only',
        'No dismember/explode'
      ])),
      wbInteger('Flags2', itU32, wbFlags([
        {0x00000001}'Player Only',
        {0x00000002}'NPCs Use Ammo',
        {0x00000004}'No Jam After Reload (unused)',
        {0x00000008}'Unknown 4',
        {0x00000010}'Minor Crime',
        {0x00000020}'Range Fixed',
        {0x00000040}'Not Used in Normal Combat',
        {0x00000080}'Unknown 8',
        {0x00000100}'Don''t Use 3rd Person IS Anim (unused)',
        {0x00000200}'Unknown 10',
        {0x00000400}'Rumble - Alternate',
        {0x00000800}'Unknown 12',
        {0x00001000}'Non-hostile',
        {0x00002000}'Bound Weapon'
      ])),
      wbFloat('Animation Attack Mult'),
      wbFloat('Unknown'),
      wbFloat('Rumble - Left Motor Strength'),
      wbFloat('Rumble - Right Motor Strength'),
      wbFloat('Rumble - Duration'),
      wbByteArray('Unknown', 12),
      wbInteger('Skill', itS32, wbSkillEnum),
      wbByteArray('Unknown', 8),
      wbInteger('Resist', itS32, wbActorValueEnum),
      wbByteArray('Unknown', 4),
      wbFloat('Stagger')
    ]),
    wbStruct(CRDT, 'Critical Data', [
      wbInteger('Damage', itU16),
      wbByteArray('Unused', 2, cpIgnore),
      wbFloat('% Mult'),
      wbInteger('Flags', itU8, wbFlags([
        'On Death'
      ])),
      wbByteArray('Unused', 3, cpIgnore),
      wbFormIDCk('Effect', [SPEL, NULL])
    ]),
    wbInteger(VNAM, 'Detection Sound Level', itU32, wbSoundlevelEnum),
    wbFormIDCk(CNAM, 'Template', [WEAP])
  ], False, nil, cpNormal, False, wbWEAPAfterLoad, wbKeywordsAfterSet);

  if wbSimpleRecords then
    wbRecord(WRLD, 'Worldspace', [
      wbEDID,
      {>>> BEGIN leftover from earlier CK versions <<<}
      wbRArray('Unused RNAM', wbUnknown(RNAM), cpIgnore, False{, wbNeverShow}),
      {>>> END leftover from earlier CK versions <<<}
      wbByteArray(MHDT, 'Max Height Data', 0, cpNormal),
      wbFULL,
      wbStruct(WCTR, 'Fixed Dimensions Center Cell', [
        wbInteger('X', itS16),
        wbInteger('Y', itS16)
      ]),
      wbFormIDCk(LTMP, 'Interior Lighting', [LGTM]),
      wbFormIDCk(XEZN, 'Encounter Zone', [ECZN, NULL]),
      wbFormIDCk(XLCN, 'Location', [LCTN, NULL]),
      wbRStruct('Parent', [
        wbFormIDCk(WNAM, 'Worldspace', [WRLD]),
        wbStruct(PNAM, '', [
          wbInteger('Flags', itU8, wbFlags([
            {0x0001}'Use Land Data',
            {0x0002}'Use LOD Data',
            {0x0004}'Don''t Use Map Data',
            {0x0008}'Use Water Data',
            {0x0010}'Use Climate Data',
            {0x0020}'Use Image Space Data (unused)',
            {0x0040}'Use Sky Cell'
          ], True)),
          wbByteArray('Unknown', 1)
        ], cpNormal, True)
      ], []),
      wbFormIDCk(CNAM, 'Climate', [CLMT]),
      wbFormIDCk(NAM2, 'Water', [WATR]),
      wbFormIDCk(NAM3, 'LOD Water Type', [WATR]),
      wbFloat(NAM4, 'LOD Water Height'),
      wbStruct(DNAM, 'Land Data', [
        wbFloat('Default Land Height'),
        wbFloat('Default Water Height')
      ]),
      wbString(ICON, 'Map Image'),
      wbRStruct('Cloud Model', [wbMODL], []),
      wbStruct(MNAM, 'Map Data', [
        wbStruct('Usable Dimensions', [
          wbInteger('X', itS32),
          wbInteger('Y', itS32)
        ]),
        wbStruct('Cell Coordinates', [
          wbStruct('NW Cell', [
            wbInteger('X', itS16),
            wbInteger('Y', itS16)
          ]),
          wbStruct('SE Cell', [
            wbInteger('X', itS16),
            wbInteger('Y', itS16)
          ])
        ]),
        wbStruct('Camera Data', [
          wbFloat('Min Height'),
          wbFloat('Max Height'),
          wbFloat('Initial Pitch')
        ])
        //wbByteArray('Unknown')
      ], cpNormal, False, nil, 2),
      wbStruct(ONAM, 'World Map Offset Data', [
        wbFloat('World Map Scale'),
        wbFloat('Cell X Offset'),
        wbFloat('Cell Y Offset'),
        wbFloat('Cell Z Offset')
      ], cpNormal, True),
      wbFloat(NAMA, 'Distant LOD Multiplier'),
      wbInteger(DATA, 'Flags', itU8, wbFlags([
        {0x01} 'Small World',
        {0x02} 'Can''t Fast Travel',
        {0x04} 'Unknown 3',
        {0x08} 'No LOD Water',
        {0x10} 'No Landscape',
        {0x20} 'Unknown 6',
        {0x40} 'Fixed Dimensions',
        {0x80} 'No Grass'
      ]), cpNormal, True),
      {>>> Object Bounds doesn't show up in CK <<<}
      wbRStruct('Object Bounds', [
        wbStruct(NAM0, 'Min', [
          wbFloat('X', cpNormal, False, 1/4096),
          wbFloat('Y', cpNormal, False, 1/4096)
        ], cpIgnore, True),
        wbStruct(NAM9, 'Max', [
          wbFloat('X', cpNormal, False, 1/4096),
          wbFloat('Y', cpNormal, False, 1/4096)
        ], cpIgnore, True)
      ], []),
      wbFormIDCk(ZNAM, 'Music', [MUSC]),
      wbString(NNAM, 'Canopy Shadow (unused)', 0, cpIgnore),
      wbString(XNAM, 'Water Noise Texture'),
      wbString(TNAM, 'HD LOD Diffuse Texture'),
      wbString(UNAM, 'HD LOD Normal Texture'),
      wbString(XWEM, 'Water Environment Map (unused)', 0, cpIgnore),
      wbByteArray(OFST, 'Offset Data')
    ], False, nil, cpNormal, False, wbWRLDAfterLoad)
  else
      wbRecord(WRLD, 'Worldspace', [
      wbEDID,
      {>>> BEGIN leftover from earlier CK versions <<<}
      wbRArray('Unused RNAM', wbUnknown(RNAM), cpIgnore, False{, wbNeverShow}),
      {>>> END leftover from earlier CK versions <<<}
      wbByteArray(MHDT, 'Max Height Data', 0, cpNormal),
      wbFULL,
      wbStruct(WCTR, 'Fixed Dimensions Center Cell', [
        wbInteger('X', itS16),
        wbInteger('Y', itS16)
      ]),
      wbFormIDCk(LTMP, 'Interior Lighting', [LGTM]),
      wbFormIDCk(XEZN, 'Encounter Zone', [ECZN, NULL]),
      wbFormIDCk(XLCN, 'Location', [LCTN, NULL]),
      wbRStruct('Parent', [
        wbFormIDCk(WNAM, 'Worldspace', [WRLD]),
        wbStruct(PNAM, '', [
          wbInteger('Flags', itU8, wbFlags([
            {0x0001}'Use Land Data',
            {0x0002}'Use LOD Data',
            {0x0004}'Don''t Use Map Data',
            {0x0008}'Use Water Data',
            {0x0010}'Use Climate Data',
            {0x0020}'Use Image Space Data (unused)',
            {0x0040}'Use Sky Cell'
          ], True)),
          wbByteArray('Unknown', 1)
        ], cpNormal, True)
      ], []),
      wbFormIDCk(CNAM, 'Climate', [CLMT]),
      wbFormIDCk(NAM2, 'Water', [WATR]),
      wbFormIDCk(NAM3, 'LOD Water Type', [WATR]),
      wbFloat(NAM4, 'LOD Water Height'),
      wbStruct(DNAM, 'Land Data', [
        wbFloat('Default Land Height'),
        wbFloat('Default Water Height')
      ]),
      wbString(ICON, 'Map Image'),
      wbRStruct('Cloud Model', [wbMODL], []),
      wbStruct(MNAM, 'Map Data', [
        wbStruct('Usable Dimensions', [
          wbInteger('X', itS32),
          wbInteger('Y', itS32)
        ]),
        wbStruct('Cell Coordinates', [
          wbStruct('NW Cell', [
            wbInteger('X', itS16),
            wbInteger('Y', itS16)
          ]),
          wbStruct('SE Cell', [
            wbInteger('X', itS16),
            wbInteger('Y', itS16)
          ])
        ]),
        wbStruct('Camera Data', [
          wbFloat('Min Height'),
          wbFloat('Max Height'),
          wbFloat('Initial Pitch')
        ])
        //wbByteArray('Unknown')
      ], cpNormal, False, nil, 2),
      wbStruct(ONAM, 'World Map Offset Data', [
        wbFloat('World Map Scale'),
        wbFloat('Cell X Offset'),
        wbFloat('Cell Y Offset'),
        wbFloat('Cell Z Offset')
      ], cpNormal, True),
      wbFloat(NAMA, 'Distant LOD Multiplier'),
      wbInteger(DATA, 'Flags', itU8, wbFlags([
        {0x01} 'Small World',
        {0x02} 'Can''t Fast Travel',
        {0x04} 'Unknown 3',
        {0x08} 'No LOD Water',
        {0x10} 'No Landscape',
        {0x20} 'Unknown 6',
        {0x40} 'Fixed Dimensions',
        {0x80} 'No Grass'
      ]), cpNormal, True),
      {>>> Object Bounds doesn't show up in CK <<<}
      wbRStruct('Object Bounds', [
        wbStruct(NAM0, 'Min', [
          wbFloat('X', cpNormal, False, 1/4096),
          wbFloat('Y', cpNormal, False, 1/4096)
        ], cpIgnore, True),
        wbStruct(NAM9, 'Max', [
          wbFloat('X', cpNormal, False, 1/4096),
          wbFloat('Y', cpNormal, False, 1/4096)
        ], cpIgnore, True)
      ], []),
      wbFormIDCk(ZNAM, 'Music', [MUSC]),
      wbString(NNAM, 'Canopy Shadow (unused)', 0, cpIgnore),
      wbString(XNAM, 'Water Noise Texture'),
      wbString(TNAM, 'HD LOD Diffuse Texture'),
      wbString(UNAM, 'HD LOD Normal Texture'),
      wbString(XWEM, 'Water Environment Map (unused)', 0, cpIgnore),
      wbArray(OFST, 'Offset Data', wbArray('Rows', wbInteger('Offset', itU32), wbOffsetDataColsCounter), 0)
    ], False, nil, cpNormal, False, wbWRLDAfterLoad);

  wbRecord(WTHR, 'Weather', [
    wbEDID,
    wbString(_00_0TX, 'Cloud Texture Layer #0'),
    wbString(_10_0TX, 'Cloud Texture Layer #1'),
    wbString(_20_0TX, 'Cloud Texture Layer #2'),
    wbString(_30_0TX, 'Cloud Texture Layer #3'),
    wbString(_40_0TX, 'Cloud Texture Layer #4'),
    wbString(_50_0TX, 'Cloud Texture Layer #5'),
    wbString(_60_0TX, 'Cloud Texture Layer #6'),
    wbString(_70_0TX, 'Cloud Texture Layer #7'),
    wbString(_80_0TX, 'Cloud Texture Layer #8'),
    wbString(_90_0TX, 'Cloud Texture Layer #9'),
    wbString(_3A_0TX, 'Cloud Texture Layer #10'),
    wbString(_3B_0TX, 'Cloud Texture Layer #11'),
    wbString(_3C_0TX, 'Cloud Texture Layer #12'),
    wbString(_3D_0TX, 'Cloud Texture Layer #13'),
    wbString(_3E_0TX, 'Cloud Texture Layer #14'),
    wbString(_3F_0TX, 'Cloud Texture Layer #15'),
    wbString(_40h_0TX, 'Cloud Texture Layer #16'),
    wbString(A0TX, 'Cloud Texture Layer #17'),
    wbString(B0TX, 'Cloud Texture Layer #18'),
    wbString(C0TX, 'Cloud Texture Layer #19'),
    wbString(D0TX, 'Cloud Texture Layer #20'),
    wbString(E0TX, 'Cloud Texture Layer #21'),
    wbString(F0TX, 'Cloud Texture Layer #22'),
    wbString(G0TX, 'Cloud Texture Layer #23'),
    wbString(H0TX, 'Cloud Texture Layer #24'),
    wbString(I0TX, 'Cloud Texture Layer #25'),
    wbString(J0TX, 'Cloud Texture Layer #26'),
    wbString(K0TX, 'Cloud Texture Layer #27'),
    wbString(L0TX, 'Cloud Texture Layer #28'),
    wbByteArray(DNAM, 'Unused', 0, cpIgnore),
    wbByteArray(CNAM, 'Unused', 0, cpIgnore),
    wbByteArray(ANAM, 'Unused', 0, cpIgnore),
    wbByteArray(BNAM, 'Unused', 0, cpIgnore),
    wbUnknown(LNAM),
    wbFormIDCK(MNAM, 'Precipitation Type', [SPGD, NULL]),
    wbFormIDCK(NNAM, 'Visual Effect', [RFCT, NULL], False, cpNormal, True),
    wbByteArray(ONAM, 'Unused', 0, cpIgnore),
    wbRStruct('Cloud Speed', [
      wbArray(RNAM, 'Y Speed', wbInteger('Layer', itU8, wbCloudSpeedToStr, wbCloudSpeedToInt)),
      wbArray(QNAM, 'X Speed', wbInteger('Layer', itU8, wbCloudSpeedToStr, wbCloudSpeedToInt))
    ], []),
    wbArray(PNAM, 'Cloud Colors', wbStruct('Layer', [
      wbArray('Colors',
        wbStruct('Time', [
          wbInteger('Red', itU8),
          wbInteger('Green', itU8),
          wbInteger('Blue', itU8),
          wbByteArray('Unknown', 1)
        ]),
        ['Sunrise', 'Day', 'Sunset', 'Night']
      )
    ])),
    wbArray(JNAM, 'Cloud Alphas', wbStruct('Layer', [
      wbFloat('Sunrise'),
      wbFloat('Day'),
      wbFloat('Sunset'),
      wbFloat('Night')
    ])),
    {>>> not as an array since last entries are omitted in skyrim.esm <<<}
    wbStruct(NAM0, 'Weather Colors', [
      wbArray('Sky-Upper',         wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Fog Near',          wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Unknown',           wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Ambient',           wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Sunlight',          wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Sun',               wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Stars',             wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Sky-Lower',         wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Horizon',           wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Effect Lighting',   wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Cloud LOD Diffuse', wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Cloud LOD Ambient', wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Fog Far',           wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Sky Statics',       wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Water Multiplier',  wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Sun Glare',         wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night']),
      wbArray('Moon Glare',        wbStruct('Color', [wbInteger('Red', itU8), wbInteger('Green', itU8), wbInteger('Blue', itU8), wbByteArray('Unknown', 1)]), ['Sunrise', 'Day', 'Sunset', 'Night'])
    ], cpNormal, True, nil, 13),
    wbStruct(FNAM, 'Fog Distance', [
      wbFloat('Day - Near'),
      wbFloat('Day - Far'),
      wbFloat('Night - Near'),
      wbFloat('Night - Far'),
      wbFloat('Day - Power'),
      wbFloat('Night - Power'),
      wbFloat('Day - Max'),
      wbFloat('Night - Max')
    ], cpNormal, True),
    wbStruct(DATA, 'Data', [
      wbInteger('Wind Speed', itU8), // scaled 0..1
      wbByteArray('Unknown', 2),
      wbInteger('Trans Delta', itU8), // scaled 0..0,25
      wbInteger('Sun Glare', itU8), // scaled 0..1
      wbInteger('Sun Damage', itU8), // scaled 0..1
      wbInteger('Precipitation - Begin Fade In', itU8), // scaled 0..1
      wbInteger('Precipitation - End Fade Out', itU8), // scaled 0..1
      wbInteger('Thunder/Lightning - Begin Fade In', itU8),
      wbInteger('Thunder/Lightning - End Fade Out', itU8),
      wbInteger('Thunder/Lightning - Frequency', itU8),
      wbInteger('Flags', itU8, wbFlags([
        {0x01} 'Weather - Pleasant',
        {0x02} 'Weather - Cloudy',
        {0x04} 'Weather - Rainy',
        {0x08} 'Weather - Snow',
        {0x10} 'Sky Statics - Always Visible',
        {0x20} 'Sky Statics - Follows Sun Position'
      ])),
      wbStruct('Lightning Color', [
        wbInteger('Red', itU8),
        wbInteger('Green', itU8),
        wbInteger('Blue', itU8)
      ]),
      wbInteger('Visual Effect - Begin', itU8), // scaled 0..1
      wbInteger('Visual Effect - End', itU8), // scaled 0..1
      wbInteger('Wind Direction', itU8), // scaled 0..360
      wbInteger('Wind Direction Range', itU8) // scaled 0..180
    ], cpNormal, True),
    wbInteger(NAM1, 'Disabled Cloud Layers', itU32, wbFlags(['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'])),
    wbRArray('Sounds',
      wbStruct(SNAM, 'Sound', [
        wbFormIDCK('Sound', [SOUN, SNDR, NULL]),
        wbInteger('Type', itU32, wbEnum([
          {0x01} 'Default',
          {0x02} 'Precipitation',
          {0x04} 'Wind',
          {0x08} 'Thunder'
        ]))
      ])
    ),
    wbRArrayS('Sky Statics', wbFormIDCk(TNAM, 'Static', [STAT, NULL])),
    wbStruct(IMSP, 'Image Spaces', [
      wbFormIDCK('Sunrise', [IMGS, NULL]),
      wbFormIDCK('Day', [IMGS, NULL]),
      wbFormIDCK('Sunset', [IMGS, NULL]),
      wbFormIDCK('Night', [IMGS, NULL])
    ]),
    wbRArray('Directional Ambient Lighting Colors',
      wbStruct(DALC, 'Sunrise/Day/Sunset/Night Order', [wbAmbientColors], cpNormal, True)
    ),
    wbByteArray(NAM2, 'Unused', 0, cpIgnore),
    wbByteArray(NAM3, 'Unused', 0, cpIgnore),
    wbRStruct('Aurora', [wbMODL], [])
  ]);
end;

{>>> Unused records, they have empty GRUP in skyrim.esm <<<}
procedure DefineTES5p;
begin
  wbRecord(CLDC, 'CLDC', [
    wbEDID
  ]);
  wbRecord(HAIR, 'HAIR', [
    wbEDID
  ]);
  wbRecord(PWAT, 'PWAT', [
    wbEDID
  ]);
  wbRecord(RGDL, 'RGDL', [
    wbEDID
  ]);
  wbRecord(SCOL, 'SCOL', [
    wbEDID
  ]);
  wbRecord(SCPT, 'SCPT', [
    wbEDID
  ]);
end;

procedure DefineTES5q;
begin
   wbAddGroupOrder(GMST);
   wbAddGroupOrder(KYWD);
   wbAddGroupOrder(LCRT);
   wbAddGroupOrder(AACT);
   wbAddGroupOrder(TXST);
   wbAddGroupOrder(GLOB);
   wbAddGroupOrder(CLAS);
   wbAddGroupOrder(FACT);
   wbAddGroupOrder(HDPT);
   wbAddGroupOrder(HAIR);{>>> Unused in Skyrim, but contained in Skyrim.esm <<<}
   wbAddGroupOrder(EYES);
   wbAddGroupOrder(RACE);
   wbAddGroupOrder(SOUN);
   wbAddGroupOrder(ASPC);
   wbAddGroupOrder(MGEF);
   wbAddGroupOrder(SCPT);{>>> Unused in Skyrim, but contained in Skyrim.esm <<<}
   wbAddGroupOrder(LTEX);
   wbAddGroupOrder(ENCH);
   wbAddGroupOrder(SPEL);
   wbAddGroupOrder(SCRL);
   wbAddGroupOrder(ACTI);
   wbAddGroupOrder(TACT);
   wbAddGroupOrder(ARMO);
   wbAddGroupOrder(BOOK);
   wbAddGroupOrder(CONT);
   wbAddGroupOrder(DOOR);
   wbAddGroupOrder(INGR);
   wbAddGroupOrder(LIGH);
   wbAddGroupOrder(MISC);
   wbAddGroupOrder(APPA);
   wbAddGroupOrder(STAT);
   wbAddGroupOrder(SCOL);{>>> Unused in Skyrim, but contained in Skyrim.esm <<<}
   wbAddGroupOrder(MSTT);
   wbAddGroupOrder(PWAT);{>>> Unused in Skyrim, but contained in Skyrim.esm <<<}
   wbAddGroupOrder(GRAS);
   wbAddGroupOrder(TREE);
   wbAddGroupOrder(CLDC);{>>> Unused in Skyrim, but contained in Skyrim.esm <<<}
   wbAddGroupOrder(FLOR);
   wbAddGroupOrder(FURN);
   wbAddGroupOrder(WEAP);
   wbAddGroupOrder(AMMO);
   wbAddGroupOrder(NPC_);
   wbAddGroupOrder(LVLN);
   wbAddGroupOrder(KEYM);
   wbAddGroupOrder(ALCH);
   wbAddGroupOrder(IDLM);
   wbAddGroupOrder(COBJ);
   wbAddGroupOrder(PROJ);
   wbAddGroupOrder(HAZD);
   wbAddGroupOrder(SLGM);
   wbAddGroupOrder(LVLI);
   wbAddGroupOrder(WTHR);
   wbAddGroupOrder(CLMT);
   wbAddGroupOrder(SPGD);
   wbAddGroupOrder(RFCT);
   wbAddGroupOrder(REGN);
   wbAddGroupOrder(NAVI);
   wbAddGroupOrder(CELL);
   wbAddGroupOrder(WRLD);
   wbAddGroupOrder(DIAL);
   wbAddGroupOrder(QUST);
   wbAddGroupOrder(IDLE);
   wbAddGroupOrder(PACK);
   wbAddGroupOrder(CSTY);
   wbAddGroupOrder(LSCR);
   wbAddGroupOrder(LVSP);
   wbAddGroupOrder(ANIO);
   wbAddGroupOrder(WATR);
   wbAddGroupOrder(EFSH);
   wbAddGroupOrder(EXPL);
   wbAddGroupOrder(DEBR);
   wbAddGroupOrder(IMGS);
   wbAddGroupOrder(IMAD);
   wbAddGroupOrder(FLST);
   wbAddGroupOrder(PERK);
   wbAddGroupOrder(BPTD);
   wbAddGroupOrder(ADDN);
   wbAddGroupOrder(AVIF);
   wbAddGroupOrder(CAMS);
   wbAddGroupOrder(CPTH);
   wbAddGroupOrder(VTYP);
   wbAddGroupOrder(MATT);
   wbAddGroupOrder(IPCT);
   wbAddGroupOrder(IPDS);
   wbAddGroupOrder(ARMA);
   wbAddGroupOrder(ECZN);
   wbAddGroupOrder(LCTN);
   wbAddGroupOrder(MESG);
   wbAddGroupOrder(RGDL);{>>> Unused in Skyrim, but contained in Skyrim.esm <<<}
   wbAddGroupOrder(DOBJ);
   wbAddGroupOrder(LGTM);
   wbAddGroupOrder(MUSC);
   wbAddGroupOrder(FSTP);
   wbAddGroupOrder(FSTS);
   wbAddGroupOrder(SMBN);
   wbAddGroupOrder(SMQN);
   wbAddGroupOrder(SMEN);
   wbAddGroupOrder(DLBR);
   wbAddGroupOrder(MUST);
   wbAddGroupOrder(DLVW);
   wbAddGroupOrder(WOOP);
   wbAddGroupOrder(SHOU);
   wbAddGroupOrder(EQUP);
   wbAddGroupOrder(RELA);
   wbAddGroupOrder(SCEN);
   wbAddGroupOrder(ASTP);
   wbAddGroupOrder(OTFT);
   wbAddGroupOrder(ARTO);
   wbAddGroupOrder(MATO);
   wbAddGroupOrder(MOVT);
   wbAddGroupOrder(SNDR);
   wbAddGroupOrder(DUAL);
   wbAddGroupOrder(SNCT);
   wbAddGroupOrder(SOPM);
   wbAddGroupOrder(COLL);
   wbAddGroupOrder(CLFM);
   wbAddGroupOrder(REVB);
end;

procedure DefineTES5;
begin
  DefineTES5a;
  DefineTES5b;
  DefineTES5c;
  DefineTES5d;
  DefineTES5e;
  DefineTES5f;
  DefineTES5g;
  DefineTES5h;
  DefineTES5i;
  DefineTES5j;
  DefineTES5k;
  DefineTES5l;
  DefineTES5m;
  DefineTES5n;
  DefineTES5o;
  DefineTES5p;
  DefineTES5q;
end;

initialization
end.

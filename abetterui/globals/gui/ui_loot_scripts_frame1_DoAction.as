function HandleKeyEvent(isPressed, keyID)
{
   if(isPressed)
   {
      if(keyID == "IK_Escape")
      {
         Close();
      }
      if(keyID == "IK_LeftMouse")
      {
         if(uiLootTable._visible)
         {
            isMouseDown = true;
         }
      }
   }
   else if(keyID == "IK_LeftMouse")
   {
      isMouseDown = false;
   }
   keyID = "";
}
function OnPadInput(val)
{
   trace(" -> " + val);
   if(val == 143)
   {
      selectedId += 1;
   }
   if(val == 142)
   {
      selectedId -= 1;
   }
   if(val == 136)
   {
      getItem(selectedId);
   }
   if(selectedId < 1)
   {
      selectedId = HowMany;
   }
   if(selectedId > HowMany)
   {
      selectedId = 1;
   }
}
function getItem(item)
{
   isMouseDown = false;
   if(item == 1)
   {
      flash.external.ExternalInterface.call("LootAll");
   }
   if(item == 2)
   {
      flash.external.ExternalInterface.call("LootItem",String(Item2_RName),Number(Item2_Quant));
   }
   if(item == 3)
   {
      flash.external.ExternalInterface.call("LootItem",String(Item3_RName),Number(Item3_Quant));
   }
   if(item == 4)
   {
      flash.external.ExternalInterface.call("LootItem",String(Item4_RName),Number(Item4_Quant));
   }
   if(item == 5)
   {
      flash.external.ExternalInterface.call("LootItem",String(Item5_RName),Number(Item5_Quant));
   }
   if(item == 6)
   {
      flash.external.ExternalInterface.call("LootItem",String(Item6_RName),Number(Item6_Quant));
   }
   if(item == 7)
   {
      flash.external.ExternalInterface.call("LootItem",String(Item7_RName),Number(Item7_Quant));
   }
   if(item == 8)
   {
      flash.external.ExternalInterface.call("LootItem",String(Item8_RName),Number(Item8_Quant));
   }
}
function Close()
{
   uiLootTable._visible = false;
}
function Show()
{
}
function setItems(Weight, maxWeight, allItems, RName2, Name2, Quant2, Id2, ItIcon2, ItWeight2, ItGlow2, RName3, Name3, Quant3, Id3, ItIcon3, ItWeight3, ItGlow3, RName4, Name4, Quant4, Id4, ItIcon4, ItWeight4, ItGlow4, RName5, Name5, Quant5, Id5, ItIcon5, ItWeight5, ItGlow5, RName6, Name6, Quant6, Id6, ItIcon6, ItWeight6, ItGlow6, RName7, Name7, Quant7, Id7, ItIcon7, ItWeight7, ItGlow7, RName8, Name8, Quant8, Id8, ItIcon8, ItWeight8, ItGlow8)
{
   uiLootTable._visible = false;
   uiLootTable.gotoAndStop(1);
   isMouseDown = false;
   HowMany = 1;
   uiLootTable.fxItem02.lbName.text = "";
   uiLootTable.fxItem03.lbName.text = "";
   uiLootTable.fxItem04.lbName.text = "";
   uiLootTable.fxItem05.lbName.text = "";
   uiLootTable.fxItem06.lbName.text = "";
   uiLootTable.fxItem07.lbName.text = "";
   uiLootTable.fxItem08.lbName.text = "";
   Object(this).uiLootTable.fxItem01._visible = false;
   Object(this).uiLootTable.fxItem02._visible = false;
   Object(this).uiLootTable.fxItem03._visible = false;
   Object(this).uiLootTable.fxItem04._visible = false;
   Object(this).uiLootTable.fxItem05._visible = false;
   Object(this).uiLootTable.fxItem06._visible = false;
   Object(this).uiLootTable.fxItem07._visible = false;
   Object(this).uiLootTable.fxItem08._visible = false;
   Object(this).uiLootTable.fxWeight._visible = true;
   Object(this).uiLootTable.lbWeight.text = Weight + "/" + maxWeight;
   Item1_Name = allItems;
   Item2_Name = Name2;
   Item2_RName = RName2;
   if(Name2)
   {
      HowMany += 1;
   }
   Item2_ID = Id2;
   Item2_Glow = ItGlow2;
   Object(this).uiLootTable.fxItem02.lbWeight.text = ItWeight2;
   Item2_Quant = Quant2;
   Item3_Name = Name3;
   Item3_RName = RName3;
   Item3_Glow = ItGlow3;
   if(Name3)
   {
      HowMany += 1;
   }
   Item3_ID = Id3;
   Object(this).uiLootTable.fxItem03.lbWeight.text = ItWeight3;
   Item3_Quant = Quant3;
   Item4_Name = Name4;
   Item4_RName = RName4;
   if(Name4)
   {
      HowMany += 1;
   }
   Item4_ID = Id4;
   Item4_Glow = ItGlow4;
   Object(this).uiLootTable.fxItem04.lbWeight.text = ItWeight4;
   Item4_Quant = Quant4;
   Item5_Name = Name5;
   Item5_RName = RName5;
   if(Name5)
   {
      HowMany += 1;
   }
   Item5_ID = Id5;
   Item5_Glow = ItGlow5;
   Object(this).uiLootTable.fxItem05.lbWeight.text = ItWeight5;
   Item5_Quant = Quant5;
   Item6_Name = Name6;
   Item6_RName = RName6;
   if(Name6)
   {
      HowMany += 1;
   }
   Item6_ID = Id6;
   Object(this).uiLootTable.fxItem06.lbWeight.text = ItWeight6;
   Item6_Glow = ItGlow6;
   Item6_Quant = Quant6;
   Item7_Name = Name7;
   Item7_RName = RName7;
   if(Name7)
   {
      HowMany += 1;
   }
   Item7_ID = Id7;
   Item7_Glow = ItGlow7;
   Object(this).uiLootTable.fxItem07.lbWeight.text = ItWeight7;
   Item7_Quant = Quant7;
   Item8_Name = Name8;
   Item8_RName = RName8;
   if(Name8)
   {
      HowMany += 1;
   }
   Item8_ID = Id8;
   Item8_Quant = Quant8;
   Object(this).uiLootTable.fxItem08.lbWeight.text = ItWeight8;
   uiLootTable.gotoAndStop(HowMany);
   Object(this).uiLootTable.fxItem02.fxIcon._weight = 32;
   Object(this).uiLootTable.fxItem02.fxIcon._height = 32;
   Object(this).uiLootTable.fxItem03.fxIcon._weight = 32;
   Object(this).uiLootTable.fxItem03.fxIcon._height = 32;
   Object(this).uiLootTable.fxItem04.fxIcon._weight = 32;
   Object(this).uiLootTable.fxItem04.fxIcon._height = 32;
   Object(this).uiLootTable.fxItem05.fxIcon._weight = 32;
   Object(this).uiLootTable.fxItem05.fxIcon._height = 32;
   Object(this).uiLootTable.fxItem06.fxIcon._weight = 32;
   Object(this).uiLootTable.fxItem06.fxIcon._height = 32;
   Object(this).uiLootTable.fxItem07.fxIcon._weight = 32;
   Object(this).uiLootTable.fxItem07.fxIcon._height = 32;
   Object(this).uiLootTable.fxItem08.fxIcon._weight = 32;
   Object(this).uiLootTable.fxItem08.fxIcon._height = 32;
   Item2_Icon = ItIcon2;
   Item3_Icon = ItIcon3;
   Item4_Icon = ItIcon4;
   Item5_Icon = ItIcon5;
   Item6_Icon = ItIcon6;
   Item7_Icon = ItIcon7;
   Item8_Icon = ItIcon8;
   Object(this).uiLootTable.fxItem02.lbIcon.htmlText = Item2_Icon;
   Object(this).uiLootTable.fxItem03.lbIcon.htmlText = Item3_Icon;
   Object(this).uiLootTable.fxItem04.lbIcon.htmlText = Item4_Icon;
   Object(this).uiLootTable.fxItem05.lbIcon.htmlText = Item5_Icon;
   Object(this).uiLootTable.fxItem06.lbIcon.htmlText = Item6_Icon;
   Object(this).uiLootTable.fxItem07.lbIcon.htmlText = Item7_Icon;
   Object(this).uiLootTable.fxItem08.lbIcon.htmlText = Item8_Icon;
   if(HowMany == 1)
   {
      uiLootTable._y = 530;
   }
   if(HowMany == 2)
   {
      uiLootTable._y = 500;
   }
   if(HowMany == 3)
   {
      uiLootTable._y = 470;
   }
   if(HowMany == 4)
   {
      uiLootTable._y = 440;
   }
   if(HowMany == 5)
   {
      uiLootTable._y = 410;
   }
   if(HowMany == 6)
   {
      uiLootTable._y = 380;
   }
   if(HowMany == 7)
   {
      uiLootTable._y = 350;
   }
   if(HowMany == 8)
   {
      uiLootTable._y = 320;
   }
   Object(this).uiLootTable.fxItem02.glow._visible = false;
   Object(this).uiLootTable.fxItem03.glow._visible = false;
   Object(this).uiLootTable.fxItem04.glow._visible = false;
   Object(this).uiLootTable.fxItem05.glow._visible = false;
   Object(this).uiLootTable.fxItem06.glow._visible = false;
   Object(this).uiLootTable.fxItem07.glow._visible = false;
   Object(this).uiLootTable.fxItem08.glow._visible = false;
   if(Item2_Glow > 0)
   {
      Object(this).uiLootTable.fxItem02.glow._visible = true;
   }
   if(Item3_Glow > 0)
   {
      Object(this).uiLootTable.fxItem03.glow._visible = true;
   }
   if(Item4_Glow > 0)
   {
      Object(this).uiLootTable.fxItem04.glow._visible = true;
   }
   if(Item5_Glow > 0)
   {
      Object(this).uiLootTable.fxItem05.glow._visible = true;
   }
   if(Item6_Glow > 0)
   {
      Object(this).uiLootTable.fxItem06.glow._visible = true;
   }
   if(Item7_Glow > 0)
   {
      Object(this).uiLootTable.fxItem07.glow._visible = true;
   }
   if(Item8_Glow > 0)
   {
      Object(this).uiLootTable.fxItem08.glow._visible = true;
   }
   uiLootTable._visible = true;
}
Stage.scaleMode = "Scale";
var MX;
var MY;
var lX;
var lY;
var isMouseDown = false;
var wasShoot;
this.onMouseDown = function()
{
   if(uiLootTable._visible)
   {
      isMouseDown = true;
   }
};
this.onMouseUp = function()
{
   isMouseDown = false;
};
var selectedId = 1;
var keyLis = new Object();
keyLis.onKeyDown = function()
{
   if(Key.getCode() == 27)
   {
      if(uiLootTable._visible)
      {
         flash.external.ExternalInterface.call("HideLootWindow");
      }
   }
   if(Key.getCode() == 32)
   {
      if(uiLootTable._visible)
      {
         getItem(iselected);
      }
   }
};
Key.addListener(keyLis);
var Item1_Glow;
var Item2_Glow;
var Item3_Glow;
var Item4_Glow;
var Item5_Glow;
var Item6_Glow;
var Item7_Glow;
var Item8_Glow;
var Item1_RName;
var Item2_RName;
var Item3_RName;
var Item4_RName;
var Item5_RName;
var Item6_RName;
var Item7_RName;
var Item8_RName;
var Item1_Name = "TAKE ALL";
var Item2_Name = "Test Item 2";
var Item2_ID;
var Item2_Quant = 1;
var Item3_Name = "Test Item 3";
var Item3_ID;
var Item3_Quant = 1;
var Item4_Name = "Test Item 4";
var Item4_ID;
var Item4_Quant = 1;
var Item5_Name = "Test Item 5";
var Item5_ID;
var Item5_Quant = 1;
var Item6_Name = "Test Item 6";
var Item6_ID;
var Item6_Quant = 1;
var Item7_Name = "Test Item 7";
var Item7_ID;
var Item7_Quant = 1;
var Item8_Name = "Test Item 8";
var Item8_ID;
var Item8_Quant = 1;
var Item1_Icon;
var Item2_Icon;
var Item3_Icon;
var Item4_Icon;
var Item5_Icon;
var Item6_Icon;
var Item7_Icon;
var Item8_Icon;
var delay = 0;
var Sele;
var HowMany = 8;
uiLootTable.gotoAndStop(HowMany);
Close();
Object(this).uiLootTable.fxWeight._visible = false;
var iselected = 1;
this.onEnterFrame = function()
{
   uiLootTable.fxItem02.lbQuant.text = "";
   uiLootTable.fxItem03.lbQuant.text = "";
   uiLootTable.fxItem04.lbQuant.text = "";
   uiLootTable.fxItem05.lbQuant.text = "";
   uiLootTable.fxItem06.lbQuant.text = "";
   uiLootTable.fxItem07.lbQuant.text = "";
   uiLootTable.fxItem08.lbQuant.text = "";
   uiLootTable.fxItem02.lbName.text = "";
   uiLootTable.fxItem03.lbName.text = "";
   uiLootTable.fxItem04.lbName.text = "";
   uiLootTable.fxItem05.lbName.text = "";
   uiLootTable.fxItem06.lbName.text = "";
   uiLootTable.fxItem07.lbName.text = "";
   uiLootTable.fxItem08.lbName.text = "";
   if(uiLootTable._visible)
   {
      MX = _root._xmouse;
      MY = _root._ymouse;
      uiLootTable.fxItem01.sel._alpha = 0;
      uiLootTable.fxItem02.sel._alpha = 0;
      uiLootTable.fxItem03.sel._alpha = 0;
      uiLootTable.fxItem04.sel._alpha = 0;
      uiLootTable.fxItem05.sel._alpha = 0;
      uiLootTable.fxItem06.sel._alpha = 0;
      uiLootTable.fxItem07.sel._alpha = 0;
      uiLootTable.fxItem08.sel._alpha = 0;
      if(Item2_Name)
      {
         uiLootTable.fxItem02.lbName.text = Item2_Name;
      }
      if(Item3_Name)
      {
         uiLootTable.fxItem03.lbName.text = Item3_Name;
      }
      if(Item4_Name)
      {
         uiLootTable.fxItem04.lbName.text = Item4_Name;
      }
      if(Item5_Name)
      {
         uiLootTable.fxItem05.lbName.text = Item5_Name;
      }
      if(Item6_Name)
      {
         uiLootTable.fxItem06.lbName.text = Item6_Name;
      }
      if(Item7_Name)
      {
         uiLootTable.fxItem07.lbName.text = Item7_Name;
      }
      if(Item8_Name)
      {
         uiLootTable.fxItem08.lbName.text = Item8_Name;
      }
      uiLootTable.fxItem01.lbName.text = Item1_Name;
      uiLootTable.fxExit._alpha = 80;
      if(uiLootTable.fxExit.hitTest(MX,MY))
      {
         uiLootTable.fxExit._alpha = 100;
         if(isMouseDown)
         {
            flash.external.ExternalInterface.call("HideLootWindow");
         }
      }
      if(Item2_Quant > 1)
      {
         uiLootTable.fxItem02.lbQuant.text = Item2_Quant;
      }
      if(Item3_Quant > 1)
      {
         uiLootTable.fxItem03.lbQuant.text = Item3_Quant;
      }
      if(Item4_Quant > 1)
      {
         uiLootTable.fxItem04.lbQuant.text = Item4_Quant;
      }
      if(Item5_Quant > 1)
      {
         uiLootTable.fxItem05.lbQuant.text = Item5_Quant;
      }
      if(Item6_Quant > 1)
      {
         uiLootTable.fxItem06.lbQuant.text = Item6_Quant;
      }
      if(Item7_Quant > 1)
      {
         uiLootTable.fxItem07.lbQuant.text = Item7_Quant;
      }
      if(Item8_Quant > 1)
      {
         uiLootTable.fxItem08.lbQuant.text = Item8_Quant;
      }
      uiLootTable.fxItem01._visible = false;
      uiLootTable.fxItem02._visible = false;
      uiLootTable.fxItem03._visible = false;
      uiLootTable.fxItem04._visible = false;
      uiLootTable.fxItem05._visible = false;
      uiLootTable.fxItem06._visible = false;
      uiLootTable.fxItem07._visible = false;
      uiLootTable.fxItem08._visible = false;
      if(HowMany > 0)
      {
         uiLootTable.fxItem01._visible = true;
      }
      if(HowMany > 1)
      {
         uiLootTable.fxItem02._visible = true;
      }
      if(HowMany > 2)
      {
         uiLootTable.fxItem03._visible = true;
      }
      if(HowMany > 3)
      {
         uiLootTable.fxItem04._visible = true;
      }
      if(HowMany > 4)
      {
         uiLootTable.fxItem05._visible = true;
      }
      if(HowMany > 5)
      {
         uiLootTable.fxItem06._visible = true;
      }
      if(HowMany > 6)
      {
         uiLootTable.fxItem07._visible = true;
      }
      if(HowMany > 7)
      {
         uiLootTable.fxItem08._visible = true;
      }
      iselected = 1;
      if(HowMany > 0 && uiLootTable.fxItem01.sel.hitTest(MX,MY))
      {
         iselected = 1;
         uiLootTable.fxItem01.sel._alpha = 50;
         if(isMouseDown)
         {
            getItem(1);
         }
      }
      if(HowMany > 1 && uiLootTable.fxItem02.sel.hitTest(MX,MY))
      {
         iselected = 2;
         uiLootTable.fxItem02.sel._alpha = 50;
         if(isMouseDown)
         {
            getItem(2);
         }
      }
      if(HowMany > 2 && uiLootTable.fxItem03.sel.hitTest(MX,MY))
      {
         iselected = 3;
         uiLootTable.fxItem03.sel._alpha = 50;
         if(isMouseDown)
         {
            getItem(3);
         }
      }
      if(HowMany > 3 && uiLootTable.fxItem04.sel.hitTest(MX,MY))
      {
         iselected = 4;
         uiLootTable.fxItem04.sel._alpha = 50;
         if(isMouseDown)
         {
            getItem(4);
         }
      }
      if(HowMany > 4 && uiLootTable.fxItem05.sel.hitTest(MX,MY))
      {
         iselected = 5;
         uiLootTable.fxItem05.sel._alpha = 50;
         if(isMouseDown)
         {
            getItem(5);
         }
      }
      if(HowMany > 5 && uiLootTable.fxItem06.sel.hitTest(MX,MY))
      {
         iselected = 6;
         uiLootTable.fxItem06.sel._alpha = 50;
         if(isMouseDown)
         {
            getItem(6);
         }
      }
      if(HowMany > 6 && uiLootTable.fxItem07.sel.hitTest(MX,MY))
      {
         iselected = 7;
         uiLootTable.fxItem07.sel._alpha = 50;
         if(isMouseDown)
         {
            getItem(7);
         }
      }
      if(HowMany > 7 && uiLootTable.fxItem08.sel.hitTest(MX,MY))
      {
         iselected = 8;
         uiLootTable.fxItem08.sel._alpha = 50;
         if(isMouseDown)
         {
            getItem(8);
         }
      }
   }
};

##############################################################
#region New class
class Pokemon
{
   [int]$PokedexNr   
   [String]$Name
   [int]$Wettkampfpunkte
   [int]$Lebenspunkte
   [ValidateSet("Normal","Flug","Pflanze","Feuer", 
                "Eis","Unlicht","Boden","Gestein",
                "Wasser")][String]$Typ

}
#endregion

##############################################################
#region Example 1 

$Pokemon                 = [Pokemon]::new()
$Pokemon.PokedexNr       = 6
$Pokemon.Name            = "Glurak"
$Pokemon.Wettkampfpunkte = 2500
$Pokemon.Typ             = "Feuer"
$Pokemon.Lebenspunkte    = 150

$Pokemon | Get-Member
#--> Ergebnis
#-------------
#    TypeName: Pokemon
# 
# Name            MemberType Definition                    
# ----            ---------- ----------                    
# Equals          Method     bool Equals(System.Object obj)
# GetHashCode     Method     int GetHashCode()             
# GetType         Method     type GetType()                
# ToString        Method     string ToString()             
# Lebenspunkte    Property   int Lebenspunkte {get;set;}   
# Name            Property   string Name {get;set;}        
# Typ             Property   string Typ {get;set;}         
# Wettkampfpunkte Property   int Wettkampfpunkte {get;set;}
#endregion

##############################################################
#region Example 2

[Pokemon[]]$Pokemon_Array = @()

$Pokemon_Array += @{
                    PokedexNr       = 4
                    Name            = "Glumanda"
                    Wettkampfpunkte = 250
                    Typ             = "Feuer"
                    Lebenspunkte    = 15
                    } 

$Pokemon_Array += @{
                    PokedexNr       = 5
                    Name            = "Glutexo"
                    Wettkampfpunkte = 1000
                    Typ             = "Feuer"
                    Lebenspunkte    = 50
                    } 

#--> Result
#-------------
# PS C:\> $Pokemons | Format-Table
#
# PokedexNr Name     Wettkampfpunkte Lebenspunkte Typ  
# --------- ----     --------------- ------------ ---  
#         4 Glumanda             250           15 Feuer
#         5 Glutexo             1000           50 Feuer
#endregion
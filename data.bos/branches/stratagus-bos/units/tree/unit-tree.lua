--            ____            
--           / __ )____  _____
--          / __  / __ \/ ___/
--         / /_/ / /_/ (__  ) 
--        /_____/\____/____/  
--
--  Invasion - Battle of Survival                  
--   A GPL'd futuristic RTS game
--
--	unit-tree.lua	-	Define the radar unit.
--
--	(c) Copyright 2005 by Fran�ois Beerten.
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
--
--	$Id$

DefineAnimations("animations-tree", {
    Still = {"frame 0", "random-wait 255 5000", "frame 1", "wait 6", 
        "frame 2", "wait 6", "frame 3", "wait 6", "frame 2", "wait 6", 
        "frame 1", "wait 6", },
    Death = {"unbreakable begin", "frame 0", "unbreakable end", "wait 10", },
    })

DefineIcon({
	Name = "icon-tree",
	Size = {46, 38},
	Frame = 0,
	File = "units/tree/tree01_i.png"})

DefineConstruction("construction-tree", {
	Constructions = {
		{Percent = 0, File = "main", Frame = 0},
	}
})

DefineUnitType("unit-tree", {
	Name = "Tree",
	Image = {"file", "units/tree/tree01.png", "size", {105, 105}},
	Offset = {16, -24},
	Shadow = {"file", "units/tree/tree01_s.png", "size", {105, 105}},
	Animations = "animations-tree", Icon = "icon-tree",
	Costs = {"time", 1},
	Construction = "construction-tree",
	Speed = 0, HitPoints = 50, DrawLevel = 25, 
	TileSize  = {1, 1}, BoxSize = {32, 32},
	NeutralMinimapColor = {10, 250, 10},
	SightRange = 1, Armor = 0 , BasicDamage = 0, PiercingDamage = 0,
	Missile = "missile-none", Priority = 0, AnnoyComputerFactor = 0,
	Points = 10, Supply = 0, ExplodeWhenKilled = "missile-64x64-explosion",
	Corpse = {"unit-destroyed-1x1-place", 0}, 
	Type = "land",
	Building = true, BuilderOutside = true,
	VisibleUnderFog = false,
	NumDirections = 1,
	Sounds = {}
})

DefineAllow("unit-tree", "AAAAAAAA")






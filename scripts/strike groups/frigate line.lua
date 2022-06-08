-- LuaDC version 0.9.19
-- 5/23/2004 7:23:48 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
strikegroup = 
{ 
    Name = "Core", 
    DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
    OffsetFromParent = 
        { 0, 0, 0, }, 
    Children = 
        { 
        { 
            Name = "CoreRight", 
            DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
            OffsetFromParent = 
                { -1, 0, 0, }, 
            Children = 
                { 
                { 
                    Name = "CoreRightRight", 
                    DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                    OffsetFromParent = 
                        { -1, 0, 0, }, }, 
                { 
                    Name = "CoreRightUP", 
                    DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                    OffsetFromParent = 
                        { 0, 1, 0, }, 
                    Children = 
                        { 
                        { 
                            Name = "CoreRightUPRight", 
                            DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                            OffsetFromParent = 
                                { -1, 0, 0, }, }, 
                        }, }, 
                { 
                    Name = "CoreRightDown", 
                    DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                    OffsetFromParent = 
                        { 0, -1, 0, }, 
                    Children = 
                        { 
                        { 
                            Name = "CoreRightDownRight", 
                            DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                            OffsetFromParent = 
                                { -1, 0, 0, }, }, 
                        }, }, 
                }, }, 
        { 
            Name = "CoreLeft", 
            DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
            OffsetFromParent = 
                { 1, 0, 0, }, 
            Children = 
                { 
                { 
                    Name = "CoreLeftLeft", 
                    DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                    OffsetFromParent = 
                        { 1, 0, 0, }, }, 
                { 
                    Name = "CoreLeftUP", 
                    DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                    OffsetFromParent = 
                        { 0, 1, 0, }, 
                    Children = 
                        { 
                        { 
                            Name = "CoreLeftUPLeft", 
                            DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                            OffsetFromParent = 
                                { 1, 0, 0, }, }, 
                        }, }, 
                { 
                    Name = "CoreLeftDown", 
                    DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                    OffsetFromParent = 
                        { 0, -1, 0, }, 
                    Children = 
                        { 
                        { 
                            Name = "CoreLeftDownLeft", 
                            DesiredShipTypes = "SmallCapitalShip, BigCapitalShip, Mothership", 
                            OffsetFromParent = 
                                { 1, 0, 0, }, }, 
                        }, }, 
                }, }, 
        { 
            Name = "Frigate Front", 
            DesiredShipTypes = "Frigate, Capturer", 
            OffsetFromParent = 
                { 0, 0, 1, }, 
            Children = 
                { 
                { 
                    Name = "FrigateUp", 
                    DesiredShipTypes = "Frigate, Capturer", 
                    OffsetFromParent = 
                        { 0, 1, 0, }, 
                    Children = 
                        { 
                        { 
                            Name = "FrigateLeft", 
                            DesiredShipTypes = "Frigate, Capturer", 
                            OffsetFromParent = 
                                { -1, 0, 0, }, }, 
                        { 
                            Name = "FrigateRight", 
                            DesiredShipTypes = "Frigate, Capturer", 
                            OffsetFromParent = 
                                { 1, 0, 0, }, }, 
                        }, }, 
                { 
                    Name = "FrigateLeft", 
                    DesiredShipTypes = "Frigate, Capturer", 
                    OffsetFromParent = 
                        { 1, 0, 0, }, }, 
                { 
                    Name = "FrigateRight", 
                    DesiredShipTypes = "Frigate, Capturer", 
                    OffsetFromParent = 
                        { -1, 0, 0, }, }, 
                { 
                    Name = "FrigateDown", 
                    DesiredShipTypes = "Frigate, Capturer", 
                    OffsetFromParent = 
                        { 0, -1, 0, }, 
                    Children = 
                        { 
                        { 
                            Name = "FrigateRight", 
                            DesiredShipTypes = "Frigate, Capturer", 
                            OffsetFromParent = 
                                { -1, 0, 0, }, }, 
                        { 
                            Name = "FrigateLeft", 
                            DesiredShipTypes = "Frigate, Capturer", 
                            OffsetFromParent = 
                                { 1, 0, 0, }, }, 
                        }, }, 
                }, }, 
        { 
            Name = "Strike Up", 
            DesiredShipTypes = "Fighter, Corvette, Utility", 
            OffsetFromParent = 
                { 0, 0.75, 0, }, 
            Children = 
                { 
                { 
                    Name = "StrikeLeft", 
                    DesiredShipTypes = "Fighter, Corvette, Utility", 
                    OffsetFromParent = 
                        { -1, 0, 0, }, }, 
                { 
                    Name = "StrikeRight", 
                    DesiredShipTypes = "Fighter, Corvette, Utility", 
                    OffsetFromParent = 
                        { 1, 0, 0, }, }, 
                { 
                    Name = "Strike Back", 
                    DesiredShipTypes = "Fighter, Corvette, Utility", 
                    OffsetFromParent = 
                        { 0, 0, -1, }, }, 
                }, }, 
        { 
            Name = "Strike Down", 
            DesiredShipTypes = "Fighter, Corvette, Utility", 
            OffsetFromParent = 
                { 0, -0.75, 0, }, 
            Children = 
                { 
                { 
                    Name = "StrikeLeft", 
                    DesiredShipTypes = "Fighter, Corvette, Utility", 
                    OffsetFromParent = 
                        { -1, 0, 0, }, }, 
                { 
                    Name = "StrikeRight", 
                    DesiredShipTypes = "Fighter, Corvette, Utility", 
                    OffsetFromParent = 
                        { 1, 0, 0, }, }, 
                { 
                    Name = "Strike Back", 
                    DesiredShipTypes = "Fighter, Corvette, Utility", 
                    OffsetFromParent = 
                        { 0, 0, -1, }, }, 
                }, }, 
        }, }

﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[dbo].[ud_Object]') IS NOT NULL
	DROP TYPE [dbo].[ud_Object];

GO
CREATE TYPE [dbo].[ud_Object] AS TABLE
(
[ObjectValue] [nvarchar] (max) COLLATE Persian_100_CS_AI NULL
)
GO

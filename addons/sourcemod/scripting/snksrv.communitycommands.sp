#include <sourcemod>
#include <multicolors>

#pragma newdecls required

public Plugin myinfo = 
{
    name = "Community Commands",
    author = ".sneaK",
    description = "Replies to basic player commands requesting information",
    version = "1.0",
    url = "https://snksrv.com"
}

public void OnPluginStart()
{
	RegConsoleCmd("sm_discord", Command_Discord, "Replies with Discord link");
	RegConsoleCmd("sm_donate", Command_Donate, "Replies with Donate link");
	RegConsoleCmd("sm_forum", Command_Forum, "Replies with Forum link");
	RegConsoleCmd("sm_teamspeak", Command_Teamspeak, "Replies with Teamspeak link");
	RegConsoleCmd("sm_website", Command_Website, "Replies with Website link");
	
	LoadTranslations("snksrv.community.commands.phrases");
}

public Action Command_Discord(int client, int args)
{
	if (IsClientConnected(client) && IsClientInGame(client))
	{
		SetGlobalTransTarget(client);
		CPrintToChat(client, "%t", "Community Discord");
	}
}

public Action Command_Donate(int client, int args)
{
	if (IsClientConnected(client) && IsClientInGame(client))
	{
		SetGlobalTransTarget(client);
		CPrintToChat(client, "%t", "Community Donate");
	}
}

public Action Command_Forum(int client, int args)
{
	if (IsClientConnected(client) && IsClientInGame(client))
	{
		SetGlobalTransTarget(client);
		CPrintToChat(client, "%t", "Community Forum");
	}
}

public Action Command_Teamspeak(int client, int args)
{
	if (IsClientConnected(client) && IsClientInGame(client))
	{
		SetGlobalTransTarget(client);
		CPrintToChat(client, "%t", "Community Teamspeak");
	}
}

public Action Command_Website(int client, int args)
{
	if (IsClientConnected(client) && IsClientInGame(client))
	{
		SetGlobalTransTarget(client);
		CPrintToChat(client, "%t", "Community Website");
	}
}

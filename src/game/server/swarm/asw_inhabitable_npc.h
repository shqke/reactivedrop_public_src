#ifndef ASW_INHABITABLE_NPC_H
#define ASW_INHABITABLE_NPC_H
#pragma once

#include "ai_playerally.h"

class CASW_Player;
class CASW_Weapon;

class CASW_Inhabitable_NPC : public CAI_PlayerAlly
{
public:
	DECLARE_CLASS( CASW_Inhabitable_NPC, CAI_PlayerAlly );
	DECLARE_SERVERCLASS();
	DECLARE_DATADESC();

	CASW_Inhabitable_NPC();
	virtual ~CASW_Inhabitable_NPC();

	void SetCommander( CASW_Player *player );
	CASW_Player *GetCommander() const;
	HSCRIPT ScriptGetCommander() const;
	CNetworkHandle( CASW_Player, m_Commander );

	virtual bool IsInhabited() { return false; }
	virtual void SetInhabited( bool bInhabited ) { }
	virtual void InhabitedBy( CASW_Player *player ) { }
	virtual void UninhabitedBy( CASW_Player *player ) { }

	void SetInitialCommander( CASW_Player *player );
	char m_szInitialCommanderNetworkID[64]; // ASWNetworkID of the first commander for this marine in this mission
	const char *GetPlayerName() const;

	virtual void Suicide();

	CASW_Weapon *GetASWWeapon( int index ) const;
	CASW_Weapon *GetActiveASWWeapon() const;

	virtual bool StartUsing( CBaseEntity *pEntity );
	virtual void StopUsing();
	inline CBaseEntity *GetUsingEntity() const { return m_hUsingEntity.Get(); }
	CNetworkHandle( CBaseEntity, m_hUsingEntity );
	void SetFacingPoint( const Vector &vec, float fDuration );
	CNetworkVar( Vector, m_vecFacingPointFromServer );
	float m_fStopFacingPointTime;
};

#endif /* ASW_INHABITABLE_NPC_H */

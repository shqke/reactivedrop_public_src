#ifndef _DEFINED_ASW_FLARE_PROJECTILE_H
#define _DEFINED_ASW_FLARE_PROJECTILE_H
#pragma once

#include "basecombatcharacter.h"

class CSprite;
class CSpriteTrail;
class CASW_Emitter;
class CASW_Radiation_Volume;

class CASW_Gas_Grenade_Projectile : public CBaseCombatCharacter
{
	DECLARE_CLASS( CASW_Gas_Grenade_Projectile, CBaseCombatCharacter );

	DECLARE_SERVERCLASS();
	DECLARE_DATADESC();

	CASW_Gas_Grenade_Projectile();
	virtual ~CASW_Gas_Grenade_Projectile();

public:
	void	Spawn( void );
	void	Precache( void );

	//void	SetVelocity( const Vector &velocity, const AngularImpulse &angVelocity );
	//void	VPhysicsUpdate( IPhysicsObject *pPhysics );
	unsigned int PhysicsSolidMaskForEntity() const;
	void	Gas_GrenadeTouch( CBaseEntity *pOther );
	void	Gas_GrenadeBurnTouch( CBaseEntity *pOther );
	void LayFlat();

	// copied from asw_grenade_vindicator.h
	virtual void SetFuseLength( float fSeconds );
	// emits radiation
	virtual void Detonate();

	const Vector& GetEffectOrigin();

	static CASW_Gas_Grenade_Projectile* Gas_Grenade_Projectile_Create( const Vector &position, const QAngle &angles, const Vector &velocity, const AngularImpulse &angVelocity, CBaseEntity *pOwner);

	float GetDuration() { return m_flTimeBurnOut; }
	void SetDuration( float fDuration ) { m_flTimeBurnOut = fDuration; }

protected:
	CHandle<CSpriteTrail>	m_pGlowTrail;

	float	m_flDamage;
	bool	m_inSolid;	

public:
	int		Restore( IRestore &restore );

	void	Start( float lifeTime );
	void	Die( float fadeTime );
	void	Launch( const Vector &direction, float speed );

	Class_T Classify( void );

	void	Gas_GrenadeThink( void );

	int			m_nBounces;			// how many times has this flare bounced?
	CNetworkVar( float, m_flTimeBurnOut );	// when will the flare burn out?
	CNetworkVar( float, m_flScale );
	float		m_flDuration;
	float		m_flNextDamage;
	
	bool		m_bFading;
	CNetworkVar( bool, m_bSmoke );

	virtual void DrawDebugGeometryOverlays();	// visualise the autoaim radius

	CHandle<CASW_Emitter> m_hRadJet;
	CHandle<CASW_Emitter> m_hRadCloud;
	CHandle<CASW_Radiation_Volume> m_hRadVolume;

	// sound
	virtual void			StopLoopingSounds();
	virtual void			StartRadLoopSound();

	CSoundPatch	*m_pRadSound;
};

#endif // _DEFINED_ASW_FLARE_PROJECTILE_H

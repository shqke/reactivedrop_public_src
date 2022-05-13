#include "cbase.h"
#include "asw_mission_chooser_frame.h"
#include "asw_mission_chooser_list.h"
#include "asw_mission_chooser_entry.h"
#include "rd_missions_shared.h"
#include <vgui/IInput.h>

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"

CASW_Mission_Chooser_List::CASW_Mission_Chooser_List( vgui::Panel *pParent, const char *pElementName, ASW_CHOOSER_TYPE iChooserType, ASW_HOST_TYPE iHostType ) : BaseClass( pParent, pElementName )
{
	m_nDataResets = 0;
	m_nLastX = -1;
	m_nLastY = -1;
	m_ChooserType = iChooserType;
	m_HostType = iHostType;
}

CASW_Mission_Chooser_List::~CASW_Mission_Chooser_List()
{
}

void CASW_Mission_Chooser_List::OnThink()
{
	BaseClass::OnThink();

	int x, y;
	vgui::input()->GetCursorPos( x, y );
	if ( m_Entries.Count() != 0 && ( x != m_nLastX || y != m_nLastY ) )
	{
		FOR_EACH_VEC( m_Entries, i )
		{
			if ( m_Entries[i]->IsWithin( x, y ) )
			{
				NavigateToChild( m_Entries[i] );
				break;
			}
		}

		m_nLastX = x;
		m_nLastY = y;
	}

	// make sure data reset count is up to date.
	ReactiveDropMissions::GetCampaign( -1 );

	if ( ReactiveDropMissions::s_nDataResets == m_nDataResets )
	{
		return;
	}

	switch ( m_ChooserType )
	{
	case ASW_CHOOSER_TYPE::CAMPAIGN:
		BuildCampaignList( NULL );
		break;
	case ASW_CHOOSER_TYPE::SAVED_CAMPAIGN:
		Assert( !"Saved campaign mission chooser list not implemented!" );
		break;
	case ASW_CHOOSER_TYPE::SINGLE_MISSION:
		BuildMissionList( NULL );
		break;
	case ASW_CHOOSER_TYPE::BONUS_MISSION:
		BuildMissionList( "bonus" );
		break;
	case ASW_CHOOSER_TYPE::DEATHMATCH:
		BuildMissionList( "deathmatch" );
		break;
	default:
		Assert( !"Unhandled ASW_CHOOSER_TYPE in CASW_Mission_Chooser_List" );
		break;
	}

	m_nDataResets = ReactiveDropMissions::s_nDataResets;

	InvalidateLayout();
}

void CASW_Mission_Chooser_List::ApplySchemeSettings( vgui::IScheme *pScheme )
{
	LoadControlSettings( "Resource/UI/MissionChooserList.res" );

	BaseClass::ApplySchemeSettings( pScheme );
}

void CASW_Mission_Chooser_List::PerformLayout()
{
	BaseClass::PerformLayout();

	if ( m_Entries.Count() == 0 )
		return;

	int totalWide, totalTall, eachWide, eachTall;
	GetSize( totalWide, totalTall );

	m_Entries[0]->GetSize( eachWide, eachTall );

	int perRow = totalWide / eachWide;

	FOR_EACH_VEC( m_Entries, i )
	{
		int col = i % perRow;
		int row = i / perRow;

		m_Entries[i]->SetPos( col * eachWide, row * eachTall );

		int up = col + ( row - 1 ) * perRow;
		int down = col + ( row + 1 ) * perRow;
		int left = col == 0 ? -1 : col - 1 + row * perRow;
		int right = col == perRow - 1 ? -1 : col + 1 + row * perRow;

		m_Entries[i]->SetNavUp( up >= 0 && up < m_Entries.Count() ? m_Entries[up].Get() : NULL );
		m_Entries[i]->SetNavDown( down >= 0 && down < m_Entries.Count() ? m_Entries[down].Get() : NULL );
		m_Entries[i]->SetNavLeft( left >= 0 && left < m_Entries.Count() ? m_Entries[left].Get() : NULL );
		m_Entries[i]->SetNavRight( right >= 0 && right < m_Entries.Count() ? m_Entries[right].Get() : NULL );
	}

	if ( m_Entries.Count() > 0 )
	{
		NavigateToChild( m_Entries[0] );
	}

	m_nLastX = -1;
	m_nLastY = -1;
}

void CASW_Mission_Chooser_List::ClearList()
{
	FOR_EACH_VEC_BACK( m_Entries, i )
	{
		m_Entries[i]->SetVisible( false );
		m_Entries[i]->MarkForDeletion();
	}

	m_Entries.Purge();
}

void CASW_Mission_Chooser_List::AddEntry( CASW_Mission_Chooser_Entry *pEntry )
{
	pEntry->SetParent( this );
	int i = m_Entries.AddToTail();
	m_Entries[i].Set( pEntry );
}

void CASW_Mission_Chooser_List::BuildCampaignList( const char *szRequiredTag )
{
	ClearList();

	for ( int i = 0; i < ReactiveDropMissions::CountCampaigns(); i++ )
	{
		const RD_Campaign_t *pCampaign = ReactiveDropMissions::GetCampaign( i );
		Assert( pCampaign );
		if ( !pCampaign )
			continue;

		if ( szRequiredTag && !pCampaign->HasTag( szRequiredTag ) )
			continue;

		AddEntry( new CASW_Mission_Chooser_Entry( this, "MissionChooserEntry", m_ChooserType, m_HostType, pCampaign, NULL ) );
	}
}

void CASW_Mission_Chooser_List::BuildMissionList( const char *szRequiredTag )
{
	ClearList();

	for ( int i = 0; i < ReactiveDropMissions::CountMissions(); i++ )
	{
		const RD_Mission_t *pMission = ReactiveDropMissions::GetMission( i );
		Assert( pMission );
		if ( !pMission )
			continue;

		if ( szRequiredTag && !pMission->HasTag( szRequiredTag ) )
			continue;

		AddEntry( new CASW_Mission_Chooser_Entry( this, "MissionChooserEntry", m_ChooserType, m_HostType, NULL, pMission ) );
	}
}

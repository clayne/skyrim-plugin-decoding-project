/*===========================================================================
 *
 * File:		Srgrupcont.CPP
 * Author:		Dave Humphrey (dave@uesp.net)
 * Created On:	26 November 2011
 *
 * Description
 *
 *=========================================================================*/

	/* Include Files */
#include "srgrupcont.h"


/*===========================================================================
 *
 * Class CSrGrupContainer Constructor
 *
 *=========================================================================*/
CSrGrupContainer::CSrGrupContainer()
{
}
/*===========================================================================
 *		End of Class CSrGrupContainer Constructor
 *=========================================================================*/


/*===========================================================================
 *
 * Class CSrGrupContainer Method - void Destroy (void);
 *
 * Delete object contents.
 *
 *=========================================================================*/
void CSrGrupContainer::Destroy (void)
{
  m_Groups.Destroy();
}
/*===========================================================================
 *		End of Class Method CSrGrupContainer::Destroy()
 *=========================================================================*/



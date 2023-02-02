%dw 2.0
output application/json
---
{
  "status": if(isEmpty(vars.vErrorSet)) Mule::p('operations.constants.status.success')
  				else Mule::p('operations.constants.status.error'),
  "errorCode": vars.vErrorType default '',
  "errorDesc": vars.vErrorDescription default ''
}

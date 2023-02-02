%dw 2.0
output application/json
import substringBefore from dw::core::Strings
---

	"data": {
        "httpStatusCode": Mule::p('operations.constants.response.code'),
		"status": Mule::p('operations.constants.status.success'),
        "message": 'E & T orders status was successfully updated',
        "correlationId": vars.vCorrelationId default correlationId,
      	"appName": Mule::p('app.name'),
      	"timestamp": now()
        
    }

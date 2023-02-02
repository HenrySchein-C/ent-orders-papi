%dw 2.0
output application/json
import substringBefore from dw::core::Strings
---

	"data": {
        "httpStatusCode": Mule::p('operations.constants.response.code.success'),
		"status": Mule::p('operations.constants.status.success'),
        "message": 'No E & T orders is in pending status for processing',
        "correlationId": vars.vCorrelationId default correlationId,
      	"appName": Mule::p('app.name'),
      	"timestamp": now()
        
    }

package ca.bc.gov.restapi.results.postgres.dto;

import java.time.LocalDateTime;
import lombok.Builder;
import lombok.With;
import org.springframework.aot.hint.annotation.RegisterReflectionForBinding;

/**
 * This record represents an opening activity in the requests tab.
 */
@RegisterReflectionForBinding
@Builder
@With
public record MyRecentActionsRequestsDto(
    String activityType,
    Long openingId,
    String statusCode,
    String statusDescription,
    String lastUpdatedLabel,
    LocalDateTime lastUpdated
) {

}

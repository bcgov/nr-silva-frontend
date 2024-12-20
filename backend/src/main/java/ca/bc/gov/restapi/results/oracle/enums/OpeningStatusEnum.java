package ca.bc.gov.restapi.results.oracle.enums;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Objects;
import org.springframework.aot.hint.annotation.RegisterReflectionForBinding;

/**
 * This enumeration represents all possible values for the Opening Status column from the Opening
 * table.
 */
@JsonFormat(shape = JsonFormat.Shape.OBJECT)
@RegisterReflectionForBinding
public enum OpeningStatusEnum {
  AMD("AMD", "Amended"),
  AMG("AMG", "Amalgamate"),
  APP("APP", "Approved"),
  DFT("DFT", "Draft"),
  FG("FG", "Free Growing"),
  RET("RET", "Retired"),
  SUB("SUB", "Submitted");

  private final String code;
  private final String description;

  private OpeningStatusEnum(String code, String description) {
    this.code = code;
    this.description = description;
  }

  /**
   * Get the {@link OpeningStatusEnum} code.
   *
   * @return OpeningStatusEnum code.
   */
  public String getCode() {
    return code;
  }

  /**
   * Get the {@link OpeningStatusEnum} description.
   *
   * @return OpeningStatusEnum description.
   */
  public String getDescription() {
    return description;
  }

  /**
   * Get a {@link OpeningStatusEnum} given its code.
   *
   * @param code The code to be get.
   * @return OpeningStatusEnum or null if not found.
   */
  public static OpeningStatusEnum of(String code) {
    if (!Objects.isNull(code) && code.contains("\'")) {
      code = code.replace("'", "");
    }
    for (OpeningStatusEnum status : values()) {
      if (status.code.equals(code)) {
        return status;
      }
    }
    return null;
  }
}

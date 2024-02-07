package ca.bc.gov.restapi.results.enums;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * This enumeration represents all possible values for the Opening Category column from the Opening
 * table.
 */
@JsonFormat(shape = JsonFormat.Shape.OBJECT)
public enum OpeningCategoryEnum {
  CONT("CONT", "SP as a part of contractual agreement"),
  EXCLU("EXCLU", "Openings excluded from Crown managed forests"),
  FFTFLTC("FFTFLTC", "Forest For Tomorrow - Forestry Licence to Cut"),
  FFTITSL("FFTITSL", "Forest For Tomorrow - Innovative Timber Sale Licence"),
  FTCF("FTCF", "Forest Tenure - Site Plan under Community Forest"),
  FTFSM("FTFSM", "Forest Tenure - Forest Stand Management FPC s.71"),
  FTLEVY("FTLEVY", "Forest Stand Levy under FSM Fund Reg."),
  FTML("FTML", "Forest Tenure - Major Licensee"),
  FTMSL("FTMSL", "Forest Tenure Ministry Silviculture Liability"),
  FTNOLVY(
      "FTNOLVY",
      "Post April 1/09 blocks (1-5 ha) for which there is no opportunity within the appraisal"
          + " manual to collect a levy."),
  FTPI("FTPI", "Forest Tenure - pilot agreement"),
  FTSBF("FTSBF", "Forest Tenure - Small Business Forest Enterprise Program"),
  FTWL("FTWL", "Forest Tenure - Woodlot: Site Plan"),
  NDAML("NDAML", "Natural Disturbance - area-based Major Licensee"),
  NDCF("NDCF", "Natural Disturbance - Community Forest"),
  NDVML("NDVML", "Natural Disturbance - volume-based Major Licensee"),
  NDWL("NDWL", "Natural Disturbance - Woodlot License"),
  NREQ("NREQ", "Areas where SP/SMP's are not required by law"),
  SPEX(
      "SPEX",
      "Areas with no reforestation or FG obligations and the area is exempt from a site plan"
          + " requirement"),
  UHRV("UHRV", "Unauthorized Harvesting");

  private final String code;
  private final String description;

  private OpeningCategoryEnum(String code, String description) {
    this.code = code;
    this.description = description;
  }

  /**
   * Get the {@link OpeningCategoryEnum} code.
   *
   * @return OpeningCategoryEnum code.
   */
  public String getCode() {
    return code;
  }

  /**
   * Get the {@link OpeningCategoryEnum} description.
   *
   * @return OpeningCategoryEnum description.
   */
  public String getDescription() {
    return description;
  }

  /**
   * Get a {@link OpeningCategoryEnum} given its code.
   *
   * @param code The code to be get.
   * @return OpeningCategoryEnum or null if not found.
   */
  public static OpeningCategoryEnum of(String code) {
    for (OpeningCategoryEnum cat : values()) {
      if (cat.code.equals(code)) {
        return cat;
      }
    }

    return null;
  }
}

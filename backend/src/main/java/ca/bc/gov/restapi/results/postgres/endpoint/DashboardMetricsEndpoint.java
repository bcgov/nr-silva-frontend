package ca.bc.gov.restapi.results.postgres.endpoint;

import ca.bc.gov.restapi.results.postgres.dto.OpeningsPerYearDto;
import ca.bc.gov.restapi.results.postgres.dto.OpeningsPerYearFiltersDto;
import ca.bc.gov.restapi.results.postgres.service.DashboardMetricsService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Objects;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/** This class holds resources for the dashboard metrics page. */
@RestController
@RequestMapping("/api/dashboard-metrics")
@Tag(name = "Dashboard Metrics", description = "Resources fot the Dashboard metrics charts")
@RequiredArgsConstructor
public class DashboardMetricsEndpoint {

  private final DashboardMetricsService dashboardMetricsService;

  /**
   * Get data for the Submission Trends Chart, Openings per Year.
   *
   * @param orgUnitCode The district code to filter.
   * @param statusCode The opening status code to filter.
   * @param entryDateStart The opening entry timestamp start date filter.
   * @param entryDateEnd The opening entry timestamp end date filter.
   * @return A list of values to populate the chart or 204 no content if no data.
   */
  @GetMapping("/submission-trends")
  @Operation(
      summary = "Get data for the Submission Trends Chart, Openings per Year",
      description = "Fetches data from the last years for the openings per year chart.",
      responses = {
        @ApiResponse(
            responseCode = "200",
            description = "An array with twelve objects for the last 12 months."),
        @ApiResponse(
            responseCode = "204",
            description = "No data found in the dable. No response body."),
        @ApiResponse(
            responseCode = "401",
            description = "Access token is missing or invalid",
            content = @Content(schema = @Schema(implementation = Void.class)))
      })
  public ResponseEntity<List<OpeningsPerYearDto>> getOpeningsSubmissionTrends(
      @RequestParam(value = "orgUnitCode", required = false)
          @Parameter(
              name = "orgUnitCode",
              in = ParameterIn.QUERY,
              description = "The Org Unit code to filter, same as District",
              required = false,
              example = "DCR")
          String orgUnitCode,
      @RequestParam(value = "statusCode", required = false)
          @Parameter(
              name = "statusCode",
              in = ParameterIn.QUERY,
              description = "The Openins Status code to filter",
              required = false,
              example = "APP")
          String statusCode,
      @RequestParam(value = "entryDateStart", required = false)
          @Parameter(
              name = "entryDateStart",
              in = ParameterIn.QUERY,
              description = "The Openins entry timestamp start date to filter, format yyyy-MM-dd",
              required = false,
              example = "2024-03-11")
          String entryDateStart,
      @RequestParam(value = "entryDateEnd", required = false)
          @Parameter(
              name = "entryDateEnd",
              in = ParameterIn.QUERY,
              description = "The Openins entry timestamp end date to filter, format yyyy-MM-dd",
              required = false,
              example = "2024-03-11")
          String entryDateEnd) {
    LocalDateTime entryDateStartDate = null;
    LocalDateTime entryDateEndDate = null;
    DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    if (!Objects.isNull(entryDateStart)) {
      LocalDate entryDateStartLd = LocalDate.parse(entryDateStart, fmt);
      entryDateStartDate = entryDateStartLd.atStartOfDay();
    }

    if (!Objects.isNull(entryDateEnd)) {
      LocalDate entryDateEndLd = LocalDate.parse(entryDateEnd, fmt);
      entryDateEndDate = entryDateEndLd.atStartOfDay();
    }

    OpeningsPerYearFiltersDto filtersDto =
        new OpeningsPerYearFiltersDto(
            orgUnitCode, statusCode, entryDateStartDate, entryDateEndDate);

    List<OpeningsPerYearDto> resultList =
        dashboardMetricsService.getOpeningsSubmissionTrends(filtersDto);

    if (resultList.isEmpty()) {
      return ResponseEntity.noContent().build();
    }

    return ResponseEntity.ok(resultList);
  }
}

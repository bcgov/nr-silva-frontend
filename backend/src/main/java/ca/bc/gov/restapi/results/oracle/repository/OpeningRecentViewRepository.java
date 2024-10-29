package ca.bc.gov.restapi.results.oracle.repository;

import ca.bc.gov.restapi.results.common.config.ConstantsConfig;
import ca.bc.gov.restapi.results.common.pagination.PaginatedResult;
import ca.bc.gov.restapi.results.common.pagination.PaginationParameters;
import ca.bc.gov.restapi.results.oracle.dto.OpeningSearchFiltersDto;
import ca.bc.gov.restapi.results.oracle.dto.OpeningSearchResponseDto;
import ca.bc.gov.restapi.results.oracle.enums.OpeningCategoryEnum;
import ca.bc.gov.restapi.results.oracle.enums.OpeningStatusEnum;
import ca.bc.gov.restapi.results.oracle.util.PaginationUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/** This class represents the Openings Search repository database access. */
@Slf4j
@Component
@AllArgsConstructor
public class OpeningRecentViewRepository {

  private final EntityManager em;

  /**
   * Search Opening with filters.
   *
   * @param filtersDto All possible filters to search openings.
   * @param pagination Pagination parameters with pagination settings.
   * @return Paginated result with found records, if any.
   */
  public PaginatedResult<OpeningSearchResponseDto> getUserRecentOpenings(List<String> openingIds,PaginationParameters pagination) {
    final String sqlQuery = createNativeSqlQuery(openingIds);
    final Query query = setQueryParameters(sqlQuery, openingIds);

    // Limit to 500 records at the database
    query.setMaxResults(ConstantsConfig.MAX_PAGE_SIZE);

    List<?> result = query.getResultList();
    int lastPage = PaginationUtil.getLastPage(result.size(), pagination.perPage());

    PaginatedResult<OpeningSearchResponseDto> paginatedResult = new PaginatedResult<>();
    paginatedResult.setPageIndex(pagination.page());
    paginatedResult.setPerPage(pagination.perPage());
    paginatedResult.setTotalPages(lastPage);

    if (result.isEmpty() || pagination.page() > lastPage) {
      log.info("No search openings result for the search given page index and size!");
      paginatedResult.setData(List.of());
      paginatedResult.setTotalPages(result.isEmpty() ? 0 : lastPage);
      paginatedResult.setHasNextPage(false);
      return paginatedResult;
    }

    int startIndex = PaginationUtil.getStartIndex(pagination.page(), pagination.perPage());
    int endIndex = PaginationUtil.getEndIndex(startIndex, pagination.perPage(), result.size());

    List<OpeningSearchResponseDto> resultList =
        buildResultListDto(result.subList(startIndex, endIndex));

    paginatedResult.setData(resultList);
    paginatedResult.setPerPage(resultList.size());
    paginatedResult.setTotalPages(lastPage);
    paginatedResult.setHasNextPage(pagination.page() < lastPage && pagination.page() > 0);

    return paginatedResult;
  }

  private List<OpeningSearchResponseDto> buildResultListDto(List<?> result) {
    List<OpeningSearchResponseDto> resultList = new ArrayList<>();

    for (Object obj : result) {
      int index = 0;
      if (obj.getClass().isArray()) {
        Object[] row = (Object[]) obj;
        OpeningSearchResponseDto searchOpeningDto = new OpeningSearchResponseDto();
        if (row.length > index) {
          searchOpeningDto.setOpeningId(getValue(Integer.class, row[index++], "openingId"));
        }

        if (row.length > index) {
          String openingNumber = getValue(String.class, row[index++], "openingNumber");
          if (!Objects.isNull(openingNumber)) {
            searchOpeningDto.setOpeningNumber(openingNumber.trim());
          }
        }

        if (row.length > index) {
          String category = getValue(String.class, row[index++], "category");
          searchOpeningDto.setCategory(OpeningCategoryEnum.of(category));
        }

        if (row.length > index) {
          String status = getValue(String.class, row[index++], "status");
          searchOpeningDto.setStatus(OpeningStatusEnum.of(status));
        }

        if (row.length > index) {
          String cuttingPermitId = getValue(String.class, row[index++], "cuttingPermitId");
          searchOpeningDto.setCuttingPermitId(cuttingPermitId);
        }

        if (row.length > index) {
          String timberMark = getValue(String.class, row[index++], "timberMark");
          searchOpeningDto.setTimberMark(timberMark);
        }

        if (row.length > index) {
          String cutBlockId = getValue(String.class, row[index++], "cutBlockId");
          searchOpeningDto.setCutBlockId(cutBlockId);
        }

        if (row.length > index) {
          BigDecimal openingGrossAreaHa =
              getValue(BigDecimal.class, row[index++], "openingGrossAreaHa");
          searchOpeningDto.setOpeningGrossAreaHa(openingGrossAreaHa);
        }

        if (row.length > index) {
          Timestamp startDate = getValue(Timestamp.class, row[index++], "disturbanceStartDate");
          if (!Objects.isNull(startDate)) {
            searchOpeningDto.setDisturbanceStartDate(startDate.toLocalDateTime());
          }
        }

        if (row.length > index) {
          String forestFileId = getValue(String.class, row[index++], "forestFileId");
          searchOpeningDto.setForestFileId(forestFileId);
        }

        if (row.length > index) {
          String orgUnitCode = getValue(String.class, row[index++], "orgUnitCode");
          searchOpeningDto.setOrgUnitCode(orgUnitCode);
        }

        if (row.length > index) {
          String orgUnitName = getValue(String.class, row[index++], "orgUnitName");
          searchOpeningDto.setOrgUnitName(orgUnitName);
        }

        if (row.length > index) {
          String clientNumber = getValue(String.class, row[index++], "clientNumber");
          searchOpeningDto.setClientNumber(clientNumber);
        }

        if (row.length > index) {
          String clientLocation = getValue(String.class, row[index++], "clientLocation");
          searchOpeningDto.setClientLocation(clientLocation);
        }

        if (row.length > index) {
          Timestamp regenDelayDate = getValue(Timestamp.class, row[index++], "regenDelayDate");
          if (!Objects.isNull(regenDelayDate)) {
            searchOpeningDto.setRegenDelayDate(regenDelayDate.toLocalDateTime());
          }
        }

        if (row.length > index) {
          Timestamp earlyDate = getValue(Timestamp.class, row[index++], "earlyFreeGrowingDate");
          if (!Objects.isNull(earlyDate)) {
            searchOpeningDto.setEarlyFreeGrowingDate(earlyDate.toLocalDateTime());
          }
        }

        if (row.length > index) {
          Timestamp dateDate = getValue(Timestamp.class, row[index++], "lateFreeGrowingDate");
          if (!Objects.isNull(dateDate)) {
            searchOpeningDto.setLateFreeGrowingDate(dateDate.toLocalDateTime());
          }
        }

        if (row.length > index) {
          Timestamp updateTimestamp = getValue(Timestamp.class, row[index++], "updateTimestamp");
          searchOpeningDto.setUpdateTimestamp(updateTimestamp.toLocalDateTime());
        }

        if (row.length > index) {
          String entryUserId = getValue(String.class, row[index++], "entryUserId");
          searchOpeningDto.setEntryUserId(entryUserId);
        }

        if (row.length > index) {
          BigDecimal silvaReliefAppId =
              getValue(BigDecimal.class, row[index++], "submittedToFrpa108");
          boolean submittedApp = silvaReliefAppId.compareTo(BigDecimal.ZERO) > 0;
          searchOpeningDto.setSubmittedToFrpa(submittedApp);
          if (submittedApp) {
            searchOpeningDto.setSilvaReliefAppId(silvaReliefAppId.longValue());
          }
        }

        resultList.add(searchOpeningDto);
      }
    }

    return resultList;
  }

  private <T> T getValue(Class<T> clazz, Object obj, String name) {
    if (Objects.isNull(obj)) {
      log.debug("{} is null", name);
      return null;
    }
    if (clazz.equals(Integer.class) && obj instanceof Integer intVal) {
      log.debug("Integer {}={}", name, intVal);
      return clazz.cast(obj);
    }
    if (clazz.equals(String.class) && obj instanceof String strVal) {
      log.debug("String {}={}", name, strVal);
      return clazz.cast(obj);
    }
    if (clazz.equals(LocalDateTime.class) && obj instanceof LocalDateTime localDateTime) {
      log.debug("LocalDateTime {}={}", name, localDateTime);
      return clazz.cast(obj);
    }
    if (clazz.equals(BigDecimal.class) && obj instanceof BigDecimal bigDecValue) {
      log.debug("BigDecimal {}={}", name, bigDecValue);
      return clazz.cast(obj);
    }
    if (clazz.equals(Timestamp.class) && obj instanceof Timestamp timestamp) {
      log.debug("Timestamp {}={}", name, timestamp);
      return clazz.cast(obj);
    }
    log.info("Unhandled class {} for {}", obj.getClass().getName(), name);
    return null;
  }

  private Query setQueryParameters(String nativeQuery, List<String> openingIds) {
    Query query = em.createNativeQuery(nativeQuery);
    // Binding the openingIds parameters
    for (int i = 0; i < openingIds.size(); i++) {
        query.setParameter(i + 1, openingIds.get(i)); // 1-based index for parameters
    }
    return query;
  }

  private String createNativeSqlQuery(List<String> openingIds) {
    StringBuilder builder = new StringBuilder();
    builder.append("SELECT o.OPENING_ID AS openingId");
    builder.append(",o.OPENING_NUMBER AS openingNumber");
    builder.append(",o.OPEN_CATEGORY_CODE AS category");
    builder.append(",o.OPENING_STATUS_CODE AS status");
    builder.append(",MAX(cboa.CUTTING_PERMIT_ID) AS cuttingPermitId");
    builder.append(",MAX(cboa.TIMBER_MARK) AS timberMark");
    builder.append(",MAX(cboa.CUT_BLOCK_ID) AS cutBlockId");
    builder.append(",MAX(cboa.OPENING_GROSS_AREA) AS openingGrossArea");
    builder.append(",MAX(cboa.DISTURBANCE_START_DATE) AS disturbanceStartDate");
    builder.append(",MAX(cboa.FOREST_FILE_ID) AS forestFileId");
    builder.append(",MAX(ou.ORG_UNIT_CODE) AS orgUnitCode");
    builder.append(",MAX(ou.ORG_UNIT_NAME) AS orgUnitName");
    builder.append(",MAX(res.CLIENT_NUMBER) AS clientNumber");
    builder.append(",MAX(res.CLIENT_LOCN_CODE) AS clientLocation");

    builder.append(",ADD_MONTHS(MAX(cboa.DISTURBANCE_START_DATE), (COALESCE(MAX(SMRG.LATE_OFFSET_YEARS),0)*12)) AS regenDelayDate");
    builder.append(",ADD_MONTHS(MAX(cboa.DISTURBANCE_START_DATE), (COALESCE(MAX(SMFG.EARLY_OFFSET_YEARS),0)*12)) AS earlyFreeGrowingDate");
    builder.append(",ADD_MONTHS(MAX(cboa.DISTURBANCE_START_DATE), (COALESCE(MAX(SMFG.LATE_OFFSET_YEARS),0)*12)) AS lateFreeGrowingDate");

    builder.append(",MAX(o.UPDATE_TIMESTAMP) AS updateTimestamp");
    builder.append(",MAX(o.ENTRY_USERID) AS entryUserId");
    builder.append(",COALESCE(MAX(sra.SILV_RELIEF_APPLICATION_ID), 0) AS submittedToFrpa108 ");
    
    builder.append("FROM THE.OPENING o ");
    builder.append("LEFT JOIN THE.CUT_BLOCK_OPEN_ADMIN cboa ON (cboa.OPENING_ID = o.OPENING_ID) ");
    builder.append("LEFT JOIN THE.ORG_UNIT ou ON (ou.ORG_UNIT_NO = o.ADMIN_DISTRICT_NO) ");
    builder.append("LEFT JOIN THE.RESULTS_ELECTRONIC_SUBMISSION res ON (res.RESULTS_SUBMISSION_ID = o.RESULTS_SUBMISSION_ID) ");
    builder.append("LEFT JOIN THE.CLIENT_ACRONYM ca ON (ca.CLIENT_NUMBER = res.CLIENT_NUMBER) ");
    builder.append("LEFT JOIN THE.ACTIVITY_TREATMENT_UNIT atu ON (atu.OPENING_ID = o.OPENING_ID) ");
    builder.append("LEFT JOIN THE.SILV_RELIEF_APPLICATION sra ON (sra.ACTIVITY_TREATMENT_UNIT_ID = atu.ACTIVITY_TREATMENT_UNIT_ID AND sra.SILV_RELIEF_APPL_STATUS_CODE = 'APP') ");
    builder.append("LEFT JOIN THE.STOCKING_STANDARD_UNIT ssu ON (ssu.OPENING_ID = o.OPENING_ID) ");
    builder.append("LEFT JOIN THE.STOCKING_MILESTONE smrg ON (smrg.STOCKING_STANDARD_UNIT_ID = ssu.STOCKING_STANDARD_UNIT_ID AND SMRG.SILV_MILESTONE_TYPE_CODE = 'RG') ");
    builder.append("LEFT JOIN THE.STOCKING_MILESTONE smfg ON (smfg.STOCKING_STANDARD_UNIT_ID = ssu.STOCKING_STANDARD_UNIT_ID AND smfg.SILV_MILESTONE_TYPE_CODE = 'FG') ");
    
    builder.append("WHERE 1=1 ");
    if (openingIds != null && !openingIds.isEmpty()) {
        builder.append("AND o.OPENING_ID IN (");
        for (int i = 0; i < openingIds.size(); i++) {
            builder.append("?");
            if (i < openingIds.size() - 1) {
                builder.append(",");
            }
        }
        builder.append(") ");
    }

    // Group by the primary keys
    builder.append("GROUP BY o.OPENING_ID, o.OPENING_NUMBER, o.OPEN_CATEGORY_CODE, o.OPENING_STATUS_CODE ");
    
    // Order by
    builder.append("ORDER BY o.OPENING_ID DESC");

    return builder.toString();
}

}
package ca.bc.gov.restapi.results.postgres.service;

import ca.bc.gov.restapi.results.common.exception.OpeningNotFoundException;
import ca.bc.gov.restapi.results.common.exception.UserFavoriteNotFoundException;
import ca.bc.gov.restapi.results.common.exception.UserOpeningNotFoundException;
import ca.bc.gov.restapi.results.common.security.LoggedUserService;
import ca.bc.gov.restapi.results.oracle.dto.OpeningSearchResponseDto;
import ca.bc.gov.restapi.results.oracle.enums.OpeningCategoryEnum;
import ca.bc.gov.restapi.results.oracle.enums.OpeningStatusEnum;
import ca.bc.gov.restapi.results.oracle.repository.OpeningRepository;
import ca.bc.gov.restapi.results.postgres.dto.MyRecentActionsRequestsDto;
import ca.bc.gov.restapi.results.postgres.entity.OpeningsActivityEntity;
import ca.bc.gov.restapi.results.postgres.entity.UserOpeningEntity;
import ca.bc.gov.restapi.results.postgres.entity.UserOpeningEntityId;
import ca.bc.gov.restapi.results.postgres.repository.OpeningsActivityRepository;
import ca.bc.gov.restapi.results.postgres.repository.UserOpeningRepository;
import jakarta.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.ocpsoft.prettytime.PrettyTime;
import org.springframework.stereotype.Service;

/**
 * This class contains methods for handling User favourite Openings.
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class UserOpeningService {

  private final LoggedUserService loggedUserService;

  private final UserOpeningRepository userOpeningRepository;

  private final OpeningsActivityRepository openingsActivityRepository;

  private final OpeningRepository openingRepository;

  /**
   * Gets user's tracked Openings.
   *
   * @return A list of {@link MyRecentActionsRequestsDto} containing the found records.
   */
  public List<MyRecentActionsRequestsDto> getUserTrackedOpenings() {
    log.info("Getting all user openings for the Track openings table");

    String userId = loggedUserService.getLoggedUserId();
    List<UserOpeningEntity> userList = userOpeningRepository.findAllByUserId(userId);

    if (userList.isEmpty()) {
      log.info("No saved openings for the current user!");
      return List.of();
    }

    List<Long> openingIds = userList.stream().map(UserOpeningEntity::getOpeningId).toList();
    List<OpeningsActivityEntity> openingActivities =
        openingsActivityRepository.findAllByOpeningIdIn(openingIds);

    if (openingActivities.isEmpty()) {
      log.info("No records found on the opening activity table for the opening ID list!");
      return List.of();
    }

    List<MyRecentActionsRequestsDto> resultList = new ArrayList<>();

    PrettyTime prettyTime = new PrettyTime();

    for (OpeningsActivityEntity activityEntity : openingActivities) {
      MyRecentActionsRequestsDto requestsDto =
          new MyRecentActionsRequestsDto(
              activityEntity.getActivityTypeDesc(),
              activityEntity.getOpeningId(),
              activityEntity.getStatusCode(),
              activityEntity.getStatusDesc(),
              prettyTime.format(activityEntity.getLastUpdated()),
              activityEntity.getLastUpdated());

      resultList.add(requestsDto);

      if (resultList.size() == 3) {
        break;
      }
    }

    return resultList;
  }

  public List<OpeningSearchResponseDto> listUserFavoriteOpenings() {
    log.info("Getting all user openings for the Track openings table");

    List<UserOpeningEntity> userList = userOpeningRepository
        .findAllByUserId(loggedUserService.getLoggedUserId());

    if (userList.isEmpty()) {
      log.info("No saved openings for the current user!");
      return List.of();
    }

    return
        openingRepository
            .findAllById(
                userList
                    .stream()
                    .map(UserOpeningEntity::getOpeningId)
                    .toList()
            )
            .stream()
            .map(opening ->
                new OpeningSearchResponseDto(
                    opening.getId().intValue(),
                    null,
                    OpeningCategoryEnum.of(opening.getCategory()),
                    OpeningStatusEnum.of(opening.getStatus()),
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    opening.getUpdateTimestamp(),
                    opening.getEntryUserId(),
                    null,
                    null,
                    null
                )
            )
            .toList();

  }

  @Transactional
  public void addUserFavoriteOpening(Long openingId) {

    openingRepository
        .findById(openingId)
        .orElseThrow(() -> {
          log.info("Opening ID not found: {}", openingId);
          return new OpeningNotFoundException();
        });

    log.info("Opening ID {} added as favorite for user {}", openingId,
        loggedUserService.getLoggedUserId());
    userOpeningRepository.saveAndFlush(
        new UserOpeningEntity(
            loggedUserService.getLoggedUserId(),
            openingId
        )
    );
  }

  @Transactional
  public void removeUserFavoriteOpening(Long openingId) {
    log.info("Opening ID to delete from the user's favourites: {}", openingId);

    userOpeningRepository.findById(
        new UserOpeningEntityId(
            loggedUserService.getLoggedUserId(),
            openingId
        )
    ).ifPresentOrElse(
        userOpening -> {
          userOpeningRepository.delete(userOpening);
          userOpeningRepository.flush();
          log.info("Opening ID deleted from the favourites!");
        },
        () -> {
          log.info("Opening id {} not found in the user's favourite list!", openingId);
          throw new UserFavoriteNotFoundException();
        }
    );
  }
}

package ca.bc.gov.restapi.results.oracle.repository;

import ca.bc.gov.restapi.results.oracle.entity.OrgUnitEntity;
import java.time.LocalDate;
import java.util.List;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.jdbc.Sql;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Sql(scripts = {"classpath:sql_scripts/OrgUnitRepositoryIntegrationTest.sql"})
class OrgUnitRepositoryIntegrationTest {

  @Autowired private OrgUnitRepository orgUnitRepository;

  @Test
  @DisplayName("Find all by expiry date after happy path should succeed")
  void findAllByExpiryDateAfter_happyPath_shouldSucceed() {
    List<OrgUnitEntity> list = orgUnitRepository.findAllByExpiryDateAfter(LocalDate.now());

    Assertions.assertNotNull(list);
    Assertions.assertEquals(1, list.size());

    OrgUnitEntity orgUnit = list.get(0);
    Assertions.assertEquals(1L, orgUnit.getOrgUnitNo());
    Assertions.assertEquals("ONE", orgUnit.getOrgUnitCode());
    Assertions.assertEquals("Org one", orgUnit.getOrgUnitName());
    Assertions.assertEquals("001", orgUnit.getLocationCode());
    Assertions.assertEquals("AAA", orgUnit.getAreaCode());
    Assertions.assertEquals("1122334", orgUnit.getTelephoneNo());
    Assertions.assertEquals('H', orgUnit.getOrgLevelCode());
    Assertions.assertEquals("VI", orgUnit.getOfficeNameCode());
    Assertions.assertEquals(111L, orgUnit.getRollupRegionNo());
    Assertions.assertEquals("1Code", orgUnit.getRollupRegionCode());
    Assertions.assertEquals(222L, orgUnit.getRollupDistNo());
    Assertions.assertEquals("22Code", orgUnit.getRollupDistCode());
    Assertions.assertTrue(orgUnit.getEffectiveDate().isBefore(LocalDate.now()));
    Assertions.assertTrue(orgUnit.getExpiryDate().isAfter(LocalDate.now()));
  }
}

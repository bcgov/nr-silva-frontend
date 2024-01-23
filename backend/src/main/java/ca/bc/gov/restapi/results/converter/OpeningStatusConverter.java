package ca.bc.gov.restapi.results.converter;

import ca.bc.gov.restapi.results.enums.OpeningStatusEnum;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import java.util.Objects;

@Converter(autoApply = true)
public class OpeningStatusConverter implements AttributeConverter<OpeningStatusEnum, String> {

  @Override
  public String convertToDatabaseColumn(OpeningStatusEnum attribute) {
    if (Objects.isNull(attribute)) {
      return null;
    }

    return attribute.getCode();
  }

  @Override
  public OpeningStatusEnum convertToEntityAttribute(String dbData) {
    return OpeningStatusEnum.of(dbData);
  }
}

package ca.bc.gov.restapi.results.postgres.configuration;

import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextClosedEvent;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;

/** This class adds a listener for closing connection gracefully. */
@Component
public class PostgresGracefulShutdownConfiguration implements ApplicationListener<ContextClosedEvent> {

  @Autowired private EntityManager postgresEntityManager;

  @Override
  public void onApplicationEvent(@NonNull ContextClosedEvent event) {
    postgresEntityManager.close();
  }
}

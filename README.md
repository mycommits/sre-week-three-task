# Toil Management Strategies

To aggregate and correlate alerts, it's necessary to use tools such as the ELK stack or Prometheus stack. This process aids in identifying recurring patterns and grouping related alerts together, thereby providing a candidate list for prioritizing toil elimination. Additionally, incorporating labels such as severity, component name, workload name, and environment can enhance the identification and measurement of toil tickets.

Enhance alerts with contextual information such as historical data, related incidents, or relevant documentation. This helps engineers in quickly understanding and resolving issues. Use SLOs as a guiding principle for prioritizing engineering efforts and investments. Focus on addressing issues that directly impact SLOs and user experience, rather than chasing after every operational alert. This approach helps reduce toil by concentrating efforts on the most critical areas. Utilising tools such as OpsLevel, the Prometheus stack, and PagerDuty can be beneficial.


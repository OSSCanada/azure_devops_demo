# DataOps

The main goal here is to setup essentially two intersecting automated tracks:
- (1) **Data Pipeline Track** that allows for a structured and automated workflow of how data traverses across 4 primary pillars of data work/transformation:
    - Ingestion
    - (Cold) Raw Storage
    - Raw Processing/Analytics
    - (Hot) Data Service

In this track, data flows from one pilar into the next taking on some form of mutation/transformation/storage.  The movement of data is not necessiarily unidirectional and indeed at some points, data can flow backward in order to be further refined or stored for near (hot) or long (cold) processing.  Typically this primarily track does not incur a large amount of churn when it comes to iterative updates, at least not from the Data Pipeline perspective.  There may be some churn when declaritviely defining the scale/size of services being used in a vertical or horizontal fashion as loads/demands dictate.  It is critical that this change in underlying data services be defined and committed to code following Infrastructure as Code ([IAC](https://en.wikipedia.org/wiki/Infrastructure_as_code)) best practices and as of the writting of this document, following [GitOps](https://www.weave.works/blog/what-is-gitops-really) practices as well - where Git (source control) becomes the single source of truth for the desired state of the data platform(s).  The process to transform data is stable and the size of the data set is constantly growing or variable.

While the deployment of data models is important and core to this track, the refinement of the model and tracking the iterative changes of it are not the responsibility of this track. Defining the requirements that can repeatably and reliable transform and deliver data **AND** serve the data model along side other applications in an organization's infrastructure are the primary responsibilities of this track.  In otherwords, how do we ensure we're laying down the pipes to ensure that data flows and is used/processed as it's intended to be, reliably and repeatedly?  It is more in alignment with an I.T Operator's (Database Administrator/Architect or Engineer) role/concerns than of an I.T Developer's (Data Developer/Scientist) role/concerns.

- (2) **Data Development/Science Track** that allows Data Science Teams to iterate constantly on how to produce better analytics/predictions by developing new data models

This track is primarily concerned with how the sepcific analytics model(s) for an organization are iteratively improved upon in quick incremental (aka Agile) cycles.  How can we leverage or consume the data we have access to in a better fashion and how can we become more accurate in predicting the outcome(s) we're attempting to measure?

This track is fundamentally the compliment to the Production Track, and is the concern/role of what some may align more with a Developer - in most cases a Data Scientist.

Unlike how data is processed in a production data pipeline, data pipelines in a Development/Science Track face frequent churn and changes.  As a consequence, one large and critical departure from what "traditional" Software Development processes take as a secondary concern, the process managing how data is reproduced/redeployed/copied for quick development needs is a first order concern, not an after thought.  Data models require a method to reliably show that there is an improvement in outcomes vs. previous methods.  As such data sources sample set/size generally experience far less churn than in the production track.  That is to say, we're dealing with a snapshot or specific slice of data vs. a constant stream of new telemetry as is expected in a production "real world" use case.  Here data is typically constant but the transformations are constantly changing.

## Environments
- Sandbox
- Testing
- Development (Secondary)
- Staging
- Production (Primary)

## Data Pipelines
- Sandbox
- Development (Secondary)
- Test/Integration
- Production (Primary)
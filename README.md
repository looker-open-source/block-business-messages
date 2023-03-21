<h1><span style="color:#2d7eea">README - Google Business Messages Block</span></h1>

<h2><span style="color:#2d7eea">What does this block do for me?</span></h2>


This block presents users metrics from Google Business Messages product.
With this block, you can :
1. Track weekly sessions, messages, customer satisfaction rates and response rates
2. Compare current period values to same period in previous year
3. See details of the sessions/messages by entrypoint, agent type
4. Highlight inactive entrypoints

<h3><span style="color:#2d7eea">Block Data Structure</span></h3>
This block is modeled after the [Google Business Messages schema](https://developers.google.com/business-communications/business-messages/guides/how-to/qa/metrics#metrics)

The [view files](https://github.com/looker-open-source/block-business-messages/views) used in the model include -
 <ul>
 <li> session_metrics - fields derived from and modeled on top of session_metrics table </li>
 <li> message_metrics - fields derived from and modeled on top of message_metrics table </li>
 <li> quality_metrics - fields derived from and modeled on top of quality_metrics table </li>
 <li> intent_metrics - fields derived from and modeled on top of intent_metrics table </li>

 <li> period_over_period - this is an extension only file to capture the code for year_over_year analysis. This is used to extend session_metrics and quality_metrics views. <br> <b> NOTE: 1. date_filter is REQUIRED for year-over-year analysis. If not selected, the date range selected is past 7 days by default. <br> 2. Comparison of the current period is to the same period in the previous year.</b> </li>
 <li> derived_tables/session_entrypoint_superset - this is a derived table that lists all the valid entrypoints for Business Messages product. This is created as a reference for possible entrypoints for each brand, irrespective of what is currently activated by them. <br> <b> NOTE: If a new entrypoint is added to the product in the future, this derived table will need to be updated by Looker block developer to include the new entrypoint. </b></li>
 <li> derived_tables/session_metrics_by_entrypoint - this is a derived table to capture the sessions by entrypoint for each brand and agent. </li>
 <li> derived_tables/entrypoint_activity - this is the final derived table for entrypoint analysis which combines the entrypoint superset rows to the session numbers by entrypoint for each brand. This union will ensure that all entrypoints are available for reporting irrespective if they are active or not in a brand. </li>

</ul>

<h3><span style="color:#2d7eea">Dashboards</span></h3>
The block includes -  Business Messages Dashboard. This dashboard presents high level session and quality metrics, along with weekly deep dive and year over year analysis.<br>
Additional dashboards can be added by the user by adding data from the existing or added explores.

<h2><span style="color:#2d7eea">Installation</span></h2>
During installation, set the following constants for the project -
<ul>
<li> Connection Name - Your Looker Connection with access to the Business Messages data tables in BigQuery </li>
<li> Schema Name  - Your schema in BigQuery that contains the Business Messages tables </li>
<li> Optionally map the table names to the names in your schema, if different from the default names in the block. </li>
</ul>



<h2><span style="color:#2d7eea">Post Installation</span></h2>
This block uses refinements to allow for modification or extension of the LookML content. You can learn more about how to use extentions [here] (https://cloud.google.com/looker/docs/lookml-refinements)
